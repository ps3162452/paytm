package com.google.firebase.database.snapshot;

import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.snapshot.LeafNode;
import com.google.firebase.database.snapshot.Node;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public abstract class LeafNode<T extends LeafNode> implements Node {
    static final boolean $assertionsDisabled = false;
    private String lazyHash;
    protected final Node priority;

    /* JADX INFO: renamed from: com.google.firebase.database.snapshot.LeafNode$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion;

        static {
            int[] iArr = new int[Node.HashVersion.values().length];
            $SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion = iArr;
            try {
                iArr[Node.HashVersion.V1.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion[Node.HashVersion.V2.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    protected enum LeafType {
        DeferredValue,
        Boolean,
        Number,
        String
    }

    LeafNode(Node node) {
        this.priority = node;
    }

    private static int compareLongDoubleNodes(LongNode longNode, DoubleNode doubleNode) {
        return Double.valueOf(((Long) longNode.getValue()).longValue()).compareTo((Double) doubleNode.getValue());
    }

    protected abstract int compareLeafValues(T t);

    @Override // java.lang.Comparable
    public int compareTo(Node node) {
        if (node.isEmpty()) {
            return 1;
        }
        if (node instanceof ChildrenNode) {
            return -1;
        }
        return ((this instanceof LongNode) && (node instanceof DoubleNode)) ? compareLongDoubleNodes((LongNode) this, (DoubleNode) node) : ((this instanceof DoubleNode) && (node instanceof LongNode)) ? compareLongDoubleNodes((LongNode) node, (DoubleNode) this) * (-1) : leafCompare((LeafNode) node);
    }

    public abstract boolean equals(Object obj);

    @Override // com.google.firebase.database.snapshot.Node
    public Node getChild(Path path) {
        return path.isEmpty() ? this : path.getFront().isPriorityChildName() ? this.priority : EmptyNode.Empty();
    }

    @Override // com.google.firebase.database.snapshot.Node
    public int getChildCount() {
        return 0;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public String getHash() {
        if (this.lazyHash == null) {
            this.lazyHash = Utilities.sha1HexDigest(getHashRepresentation(Node.HashVersion.V1));
        }
        return this.lazyHash;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Node getImmediateChild(ChildKey childKey) {
        return childKey.isPriorityChildName() ? this.priority : EmptyNode.Empty();
    }

    protected abstract LeafType getLeafType();

    @Override // com.google.firebase.database.snapshot.Node
    public ChildKey getPredecessorChildKey(ChildKey childKey) {
        return null;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Node getPriority() {
        return this.priority;
    }

    protected String getPriorityHash(Node.HashVersion hashVersion) {
        switch (AnonymousClass1.$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion[hashVersion.ordinal()]) {
            case 1:
            case 2:
                return this.priority.isEmpty() ? "" : NPStringFog.decode(new byte[]{70, 65, 94, 93, 16, 8, 66, 74, 13}, "6372ba", false, true) + this.priority.getHashRepresentation(hashVersion) + NPStringFog.decode(new byte[]{92}, "f7369b", false, false);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{98, 8, 95, 87, 88, 65, 89, 70, 92, 88, 68, 94, 23, 16, 81, 75, 68, 95, 88, 8, 14, 25}, "7f4976", true, false) + hashVersion);
        }
    }

    @Override // com.google.firebase.database.snapshot.Node
    public ChildKey getSuccessorChildKey(ChildKey childKey) {
        return null;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Object getValue(boolean z) {
        if (!z || this.priority.isEmpty()) {
            return getValue();
        }
        HashMap map = new HashMap();
        map.put(NPStringFog.decode(new byte[]{28, 70, 89, 8, 76, 4}, "208d9a", 2.0485772E9f), getValue());
        map.put(NPStringFog.decode(new byte[]{22, 21, 16, 15, 92, 65, 81, 17, 27}, "8ebf33", true), this.priority.getValue());
        return map;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public boolean hasChild(ChildKey childKey) {
        return false;
    }

    public abstract int hashCode();

    @Override // com.google.firebase.database.snapshot.Node
    public boolean isEmpty() {
        return false;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public boolean isLeafNode() {
        return true;
    }

    @Override // java.lang.Iterable
    public Iterator<NamedNode> iterator() {
        return Collections.emptyList().iterator();
    }

    protected int leafCompare(LeafNode<?> leafNode) {
        LeafType leafType = getLeafType();
        LeafType leafType2 = leafNode.getLeafType();
        return leafType.equals(leafType2) ? compareLeafValues(leafNode) : leafType.compareTo(leafType2);
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Iterator<NamedNode> reverseIterator() {
        return Collections.emptyList().iterator();
    }

    public String toString() {
        String string = getValue(true).toString();
        return string.length() <= 100 ? string : string.substring(0, 100) + NPStringFog.decode(new byte[]{72, 74, 22}, "fd8b1e", 8.513362E8f);
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Node updateChild(Path path, Node node) {
        ChildKey front = path.getFront();
        return front == null ? node : (!node.isEmpty() || front.isPriorityChildName()) ? updateImmediateChild(front, EmptyNode.Empty().updateChild(path.popFront(), node)) : this;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Node updateImmediateChild(ChildKey childKey, Node node) {
        return childKey.isPriorityChildName() ? updatePriority(node) : !node.isEmpty() ? EmptyNode.Empty().updateImmediateChild(childKey, node).updatePriority(this.priority) : this;
    }
}
