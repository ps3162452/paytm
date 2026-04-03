package com.google.firebase.database.core;

import com.google.firebase.database.core.utilities.ImmutableTree;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.NamedNode;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.NodeUtilities;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public final class CompoundWrite implements Iterable<Map.Entry<Path, Node>> {
    static final boolean $assertionsDisabled = false;
    private static final CompoundWrite EMPTY = new CompoundWrite(new ImmutableTree(null));
    private final ImmutableTree<Node> writeTree;

    private CompoundWrite(ImmutableTree<Node> immutableTree) {
        this.writeTree = immutableTree;
    }

    private Node applySubtreeWrite(Path path, ImmutableTree<Node> immutableTree, Node node) {
        Node nodeApplySubtreeWrite;
        Node value;
        if (immutableTree.getValue() != null) {
            return node.updateChild(path, immutableTree.getValue());
        }
        Node node2 = null;
        Node node3 = node;
        for (Map.Entry<ChildKey, ImmutableTree<Node>> entry : immutableTree.getChildren()) {
            ImmutableTree<Node> value2 = entry.getValue();
            ChildKey key = entry.getKey();
            if (key.isPriorityChildName()) {
                value = value2.getValue();
                nodeApplySubtreeWrite = node3;
            } else {
                nodeApplySubtreeWrite = applySubtreeWrite(path.child(key), value2, node3);
                value = node2;
            }
            node3 = nodeApplySubtreeWrite;
            node2 = value;
        }
        return (node3.getChild(path).isEmpty() || node2 == null) ? node3 : node3.updateChild(path.child(ChildKey.getPriorityKey()), node2);
    }

    public static CompoundWrite emptyWrite() {
        return EMPTY;
    }

    public static CompoundWrite fromChildMerge(Map<ChildKey, Node> map) {
        ImmutableTree immutableTreeEmptyInstance = ImmutableTree.emptyInstance();
        Iterator<Map.Entry<ChildKey, Node>> it = map.entrySet().iterator();
        while (true) {
            ImmutableTree immutableTree = immutableTreeEmptyInstance;
            if (!it.hasNext()) {
                return new CompoundWrite(immutableTree);
            }
            Map.Entry<ChildKey, Node> next = it.next();
            immutableTreeEmptyInstance = immutableTree.setTree(new Path(next.getKey()), new ImmutableTree(next.getValue()));
        }
    }

    public static CompoundWrite fromPathMerge(Map<Path, Node> map) {
        ImmutableTree immutableTreeEmptyInstance = ImmutableTree.emptyInstance();
        Iterator<Map.Entry<Path, Node>> it = map.entrySet().iterator();
        while (true) {
            ImmutableTree immutableTree = immutableTreeEmptyInstance;
            if (!it.hasNext()) {
                return new CompoundWrite(immutableTree);
            }
            Map.Entry<Path, Node> next = it.next();
            immutableTreeEmptyInstance = immutableTree.setTree(next.getKey(), new ImmutableTree(next.getValue()));
        }
    }

    public static CompoundWrite fromValue(Map<String, Object> map) {
        ImmutableTree immutableTreeEmptyInstance = ImmutableTree.emptyInstance();
        Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
        while (true) {
            ImmutableTree immutableTree = immutableTreeEmptyInstance;
            if (!it.hasNext()) {
                return new CompoundWrite(immutableTree);
            }
            Map.Entry<String, Object> next = it.next();
            immutableTreeEmptyInstance = immutableTree.setTree(new Path(next.getKey()), new ImmutableTree(NodeUtilities.NodeFromJSON(next.getValue())));
        }
    }

    public CompoundWrite addWrite(Path path, Node node) {
        if (path.isEmpty()) {
            return new CompoundWrite(new ImmutableTree(node));
        }
        Path pathFindRootMostPathWithValue = this.writeTree.findRootMostPathWithValue(path);
        if (pathFindRootMostPathWithValue == null) {
            return new CompoundWrite(this.writeTree.setTree(path, new ImmutableTree<>(node)));
        }
        Path relative = Path.getRelative(pathFindRootMostPathWithValue, path);
        Node node2 = this.writeTree.get(pathFindRootMostPathWithValue);
        ChildKey back = relative.getBack();
        if (back != null && back.isPriorityChildName() && node2.getChild(relative.getParent()).isEmpty()) {
            return this;
        }
        return new CompoundWrite(this.writeTree.set(pathFindRootMostPathWithValue, node2.updateChild(relative, node)));
    }

    public CompoundWrite addWrite(ChildKey childKey, Node node) {
        return addWrite(new Path(childKey), node);
    }

    public CompoundWrite addWrites(Path path, CompoundWrite compoundWrite) {
        return (CompoundWrite) compoundWrite.writeTree.fold(this, new ImmutableTree.TreeVisitor<Node, CompoundWrite>(this, path) { // from class: com.google.firebase.database.core.CompoundWrite.1
            final CompoundWrite this$0;
            final Path val$path;

            {
                this.this$0 = this;
                this.val$path = path;
            }

            @Override // com.google.firebase.database.core.utilities.ImmutableTree.TreeVisitor
            public CompoundWrite onNodeValue(Path path2, Node node, CompoundWrite compoundWrite2) {
                return compoundWrite2.addWrite(this.val$path.child(path2), node);
            }
        });
    }

    public Node apply(Node node) {
        return applySubtreeWrite(Path.getEmptyPath(), this.writeTree, node);
    }

    public CompoundWrite childCompoundWrite(Path path) {
        if (path.isEmpty()) {
            return this;
        }
        Node completeNode = getCompleteNode(path);
        return completeNode != null ? new CompoundWrite(new ImmutableTree(completeNode)) : new CompoundWrite(this.writeTree.subtree(path));
    }

    public Map<ChildKey, CompoundWrite> childCompoundWrites() {
        HashMap map = new HashMap();
        for (Map.Entry<ChildKey, ImmutableTree<Node>> entry : this.writeTree.getChildren()) {
            map.put(entry.getKey(), new CompoundWrite(entry.getValue()));
        }
        return map;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        return ((CompoundWrite) obj).getValue(true).equals(getValue(true));
    }

    public List<NamedNode> getCompleteChildren() {
        ArrayList arrayList = new ArrayList();
        if (this.writeTree.getValue() != null) {
            for (NamedNode namedNode : this.writeTree.getValue()) {
                arrayList.add(new NamedNode(namedNode.getName(), namedNode.getNode()));
            }
        } else {
            for (Map.Entry<ChildKey, ImmutableTree<Node>> entry : this.writeTree.getChildren()) {
                ImmutableTree<Node> value = entry.getValue();
                if (value.getValue() != null) {
                    arrayList.add(new NamedNode(entry.getKey(), value.getValue()));
                }
            }
        }
        return arrayList;
    }

    public Node getCompleteNode(Path path) {
        Path pathFindRootMostPathWithValue = this.writeTree.findRootMostPathWithValue(path);
        if (pathFindRootMostPathWithValue != null) {
            return this.writeTree.get(pathFindRootMostPathWithValue).getChild(Path.getRelative(pathFindRootMostPathWithValue, path));
        }
        return null;
    }

    public Map<String, Object> getValue(boolean z) {
        HashMap map = new HashMap();
        this.writeTree.foreach(new ImmutableTree.TreeVisitor<Node, Void>(this, map, z) { // from class: com.google.firebase.database.core.CompoundWrite.2
            final CompoundWrite this$0;
            final boolean val$exportFormat;
            final Map val$writes;

            {
                this.this$0 = this;
                this.val$writes = map;
                this.val$exportFormat = z;
            }

            @Override // com.google.firebase.database.core.utilities.ImmutableTree.TreeVisitor
            public Void onNodeValue(Path path, Node node, Void r6) {
                this.val$writes.put(path.wireFormat(), node.getValue(this.val$exportFormat));
                return null;
            }
        });
        return map;
    }

    public boolean hasCompleteWrite(Path path) {
        return getCompleteNode(path) != null;
    }

    public int hashCode() {
        return getValue(true).hashCode();
    }

    public boolean isEmpty() {
        return this.writeTree.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<Path, Node>> iterator() {
        return this.writeTree.iterator();
    }

    public CompoundWrite removeWrite(Path path) {
        return path.isEmpty() ? EMPTY : new CompoundWrite(this.writeTree.setTree(path, ImmutableTree.emptyInstance()));
    }

    public Node rootWrite() {
        return this.writeTree.getValue();
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{118, 90, 92, 20, 89, 69, 91, 81, 102, 22, 95, 68, 80, 78}, "551d60", -2.0259695E9f) + getValue(true).toString() + NPStringFog.decode(new byte[]{69}, "8bfa07", -569338413L);
    }
}
