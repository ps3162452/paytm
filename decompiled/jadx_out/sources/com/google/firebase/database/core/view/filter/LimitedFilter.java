package com.google.firebase.database.core.view.filter;

import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.view.Change;
import com.google.firebase.database.core.view.QueryParams;
import com.google.firebase.database.core.view.filter.NodeFilter;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.Index;
import com.google.firebase.database.snapshot.IndexedNode;
import com.google.firebase.database.snapshot.NamedNode;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.PriorityUtilities;
import java.util.Iterator;

/* JADX INFO: loaded from: classes57.dex */
public class LimitedFilter implements NodeFilter {
    static final boolean $assertionsDisabled = false;
    private final Index index;
    private final int limit;
    private final RangedFilter rangedFilter;
    private final boolean reverse;

    public LimitedFilter(QueryParams queryParams) {
        this.rangedFilter = new RangedFilter(queryParams);
        this.index = queryParams.getIndex();
        this.limit = queryParams.getLimit();
        this.reverse = !queryParams.isViewFromLeft();
    }

    private IndexedNode fullLimitUpdateChild(IndexedNode indexedNode, ChildKey childKey, Node node, NodeFilter.CompleteChildSource completeChildSource, ChildChangeAccumulator childChangeAccumulator) {
        NamedNode namedNode = new NamedNode(childKey, node);
        NamedNode firstChild = this.reverse ? indexedNode.getFirstChild() : indexedNode.getLastChild();
        boolean zMatches = this.rangedFilter.matches(namedNode);
        if (!indexedNode.getNode().hasChild(childKey)) {
            if (node.isEmpty() || !zMatches || this.index.compare(firstChild, namedNode, this.reverse) < 0) {
                return indexedNode;
            }
            if (childChangeAccumulator != null) {
                childChangeAccumulator.trackChildChange(Change.childRemovedChange(firstChild.getName(), firstChild.getNode()));
                childChangeAccumulator.trackChildChange(Change.childAddedChange(childKey, node));
            }
            return indexedNode.updateChild(childKey, node).updateChild(firstChild.getName(), EmptyNode.Empty());
        }
        Node immediateChild = indexedNode.getNode().getImmediateChild(childKey);
        NamedNode childAfterChild = completeChildSource.getChildAfterChild(this.index, firstChild, this.reverse);
        while (childAfterChild != null && (childAfterChild.getName().equals(childKey) || indexedNode.getNode().hasChild(childAfterChild.getName()))) {
            childAfterChild = completeChildSource.getChildAfterChild(this.index, childAfterChild, this.reverse);
        }
        if (zMatches && !node.isEmpty() && (childAfterChild == null ? 1 : this.index.compare(childAfterChild, namedNode, this.reverse)) >= 0) {
            if (childChangeAccumulator != null) {
                childChangeAccumulator.trackChildChange(Change.childChangedChange(childKey, node, immediateChild));
            }
            return indexedNode.updateChild(childKey, node);
        }
        if (childChangeAccumulator != null) {
            childChangeAccumulator.trackChildChange(Change.childRemovedChange(childKey, immediateChild));
        }
        IndexedNode indexedNodeUpdateChild = indexedNode.updateChild(childKey, EmptyNode.Empty());
        if (!(childAfterChild != null && this.rangedFilter.matches(childAfterChild))) {
            return indexedNodeUpdateChild;
        }
        if (childChangeAccumulator != null) {
            childChangeAccumulator.trackChildChange(Change.childAddedChange(childAfterChild.getName(), childAfterChild.getNode()));
        }
        return indexedNodeUpdateChild.updateChild(childAfterChild.getName(), childAfterChild.getNode());
    }

    @Override // com.google.firebase.database.core.view.filter.NodeFilter
    public boolean filtersNodes() {
        return true;
    }

    @Override // com.google.firebase.database.core.view.filter.NodeFilter
    public Index getIndex() {
        return this.index;
    }

    @Override // com.google.firebase.database.core.view.filter.NodeFilter
    public NodeFilter getIndexedFilter() {
        return this.rangedFilter.getIndexedFilter();
    }

    @Override // com.google.firebase.database.core.view.filter.NodeFilter
    public IndexedNode updateChild(IndexedNode indexedNode, ChildKey childKey, Node node, Path path, NodeFilter.CompleteChildSource completeChildSource, ChildChangeAccumulator childChangeAccumulator) {
        Node nodeEmpty = !this.rangedFilter.matches(new NamedNode(childKey, node)) ? EmptyNode.Empty() : node;
        return indexedNode.getNode().getImmediateChild(childKey).equals(nodeEmpty) ? indexedNode : indexedNode.getNode().getChildCount() < this.limit ? this.rangedFilter.getIndexedFilter().updateChild(indexedNode, childKey, nodeEmpty, path, completeChildSource, childChangeAccumulator) : fullLimitUpdateChild(indexedNode, childKey, nodeEmpty, completeChildSource, childChangeAccumulator);
    }

    @Override // com.google.firebase.database.core.view.filter.NodeFilter
    public IndexedNode updateFullNode(IndexedNode indexedNode, IndexedNode indexedNode2, ChildChangeAccumulator childChangeAccumulator) {
        IndexedNode indexedNodeFrom;
        NamedNode startPost;
        Iterator<NamedNode> itReverseIterator;
        int i;
        NamedNode endPost;
        IndexedNode indexedNodeUpdateChild;
        int i2;
        if (indexedNode2.getNode().isLeafNode() || indexedNode2.getNode().isEmpty()) {
            indexedNodeFrom = IndexedNode.from(EmptyNode.Empty(), this.index);
        } else {
            indexedNodeFrom = indexedNode2.updatePriority(PriorityUtilities.NullPriority());
            if (this.reverse) {
                itReverseIterator = indexedNode2.reverseIterator();
                startPost = this.rangedFilter.getEndPost();
                endPost = this.rangedFilter.getStartPost();
                i = -1;
            } else {
                Iterator<NamedNode> it = indexedNode2.iterator();
                startPost = this.rangedFilter.getStartPost();
                itReverseIterator = it;
                i = 1;
                endPost = this.rangedFilter.getEndPost();
            }
            boolean z = false;
            int i3 = 0;
            while (itReverseIterator.hasNext()) {
                NamedNode next = itReverseIterator.next();
                if (!z && this.index.compare(startPost, next) * i <= 0) {
                    z = true;
                }
                if (z && i3 < this.limit && this.index.compare(next, endPost) * i <= 0) {
                    i2 = i3 + 1;
                    indexedNodeUpdateChild = indexedNodeFrom;
                } else {
                    int i4 = i3;
                    indexedNodeUpdateChild = indexedNodeFrom.updateChild(next.getName(), EmptyNode.Empty());
                    i2 = i4;
                }
                indexedNodeFrom = indexedNodeUpdateChild;
                i3 = i2;
            }
        }
        return this.rangedFilter.getIndexedFilter().updateFullNode(indexedNode, indexedNodeFrom, childChangeAccumulator);
    }

    @Override // com.google.firebase.database.core.view.filter.NodeFilter
    public IndexedNode updatePriority(IndexedNode indexedNode, Node node) {
        return indexedNode;
    }
}
