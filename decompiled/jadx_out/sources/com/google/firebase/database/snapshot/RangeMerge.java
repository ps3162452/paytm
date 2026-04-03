package com.google.firebase.database.snapshot;

import com.google.firebase.database.core.Path;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class RangeMerge {
    static final boolean $assertionsDisabled = false;
    private final Path optExclusiveStart;
    private final Path optInclusiveEnd;
    private final Node snap;

    public RangeMerge(com.google.firebase.database.connection.RangeMerge rangeMerge) {
        List<String> optExclusiveStart = rangeMerge.getOptExclusiveStart();
        this.optExclusiveStart = optExclusiveStart != null ? new Path(optExclusiveStart) : null;
        List<String> optInclusiveEnd = rangeMerge.getOptInclusiveEnd();
        this.optInclusiveEnd = optInclusiveEnd != null ? new Path(optInclusiveEnd) : null;
        this.snap = NodeUtilities.NodeFromJSON(rangeMerge.getSnap());
    }

    public RangeMerge(Path path, Path path2, Node node) {
        this.optExclusiveStart = path;
        this.optInclusiveEnd = path2;
        this.snap = node;
    }

    private Node updateRangeInNode(Path path, Node node, Node node2) {
        boolean z = false;
        Path path2 = this.optExclusiveStart;
        int iCompareTo = path2 == null ? 1 : path.compareTo(path2);
        Path path3 = this.optInclusiveEnd;
        int iCompareTo2 = path3 == null ? -1 : path.compareTo(path3);
        Path path4 = this.optExclusiveStart;
        boolean z2 = path4 != null && path.contains(path4);
        Path path5 = this.optInclusiveEnd;
        if (path5 != null && path.contains(path5)) {
            z = true;
        }
        if (iCompareTo > 0 && iCompareTo2 < 0 && !z) {
            return node2;
        }
        if (iCompareTo > 0 && z && node2.isLeafNode()) {
            return node2;
        }
        if (iCompareTo > 0 && iCompareTo2 == 0) {
            return node.isLeafNode() ? EmptyNode.Empty() : node;
        }
        if (!z2 && !z) {
            return node;
        }
        HashSet hashSet = new HashSet();
        Iterator<NamedNode> it = node.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getName());
        }
        Iterator<NamedNode> it2 = node2.iterator();
        while (it2.hasNext()) {
            hashSet.add(it2.next().getName());
        }
        ArrayList<ChildKey> arrayList = new ArrayList(hashSet.size() + 1);
        arrayList.addAll(hashSet);
        if (!node2.getPriority().isEmpty() || !node.getPriority().isEmpty()) {
            arrayList.add(ChildKey.getPriorityKey());
        }
        Node nodeUpdateImmediateChild = node;
        for (ChildKey childKey : arrayList) {
            Node immediateChild = node.getImmediateChild(childKey);
            Node nodeUpdateRangeInNode = updateRangeInNode(path.child(childKey), node.getImmediateChild(childKey), node2.getImmediateChild(childKey));
            nodeUpdateImmediateChild = nodeUpdateRangeInNode != immediateChild ? nodeUpdateImmediateChild.updateImmediateChild(childKey, nodeUpdateRangeInNode) : nodeUpdateImmediateChild;
        }
        return nodeUpdateImmediateChild;
    }

    public Node applyTo(Node node) {
        return updateRangeInNode(Path.getEmptyPath(), node, this.snap);
    }

    Path getEnd() {
        return this.optInclusiveEnd;
    }

    Path getStart() {
        return this.optExclusiveStart;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{54, 7, 11, 81, 85, 47, 1, 20, 2, 83, 75, 13, 20, 18, 32, 78, 83, 14, 17, 21, 12, 64, 85, 49, 16, 7, 23, 66, 13}, "dfe60b", 1.059521162E9d) + this.optExclusiveStart + NPStringFog.decode(new byte[]{78, 25, 9, 64, 71, 47, 12, 90, 10, 69, 64, 15, 20, 92, 35, 94, 87, 91}, "b9f03f", true, false) + this.optInclusiveEnd + NPStringFog.decode(new byte[]{77, 66, 18, 13, 81, 67, 92}, "abac03", -7.0034496E8f) + this.snap + '}';
    }
}
