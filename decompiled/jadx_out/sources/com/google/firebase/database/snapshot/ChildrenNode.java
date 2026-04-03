package com.google.firebase.database.snapshot;

import com.google.firebase.database.collection.ImmutableSortedMap;
import com.google.firebase.database.collection.LLRBNode;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.snapshot.Node;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class ChildrenNode implements Node {
    static final boolean $assertionsDisabled = false;
    public static Comparator<ChildKey> NAME_ONLY_COMPARATOR = new Comparator<ChildKey>() { // from class: com.google.firebase.database.snapshot.ChildrenNode.1
        @Override // java.util.Comparator
        public int compare(ChildKey childKey, ChildKey childKey2) {
            return childKey.compareTo(childKey2);
        }
    };
    private final ImmutableSortedMap<ChildKey, Node> children;
    private String lazyHash;
    private final Node priority;

    public static abstract class ChildVisitor extends LLRBNode.NodeVisitor<ChildKey, Node> {
        public abstract void visitChild(ChildKey childKey, Node node);

        @Override // com.google.firebase.database.collection.LLRBNode.NodeVisitor
        public void visitEntry(ChildKey childKey, Node node) {
            visitChild(childKey, node);
        }
    }

    private static class NamedNodeIterator implements Iterator<NamedNode> {
        private final Iterator<Map.Entry<ChildKey, Node>> iterator;

        public NamedNodeIterator(Iterator<Map.Entry<ChildKey, Node>> it) {
            this.iterator = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public NamedNode next() {
            Map.Entry<ChildKey, Node> next = this.iterator.next();
            return new NamedNode(next.getKey(), next.getValue());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.iterator.remove();
        }
    }

    protected ChildrenNode() {
        this.lazyHash = null;
        this.children = ImmutableSortedMap.Builder.emptyMap(NAME_ONLY_COMPARATOR);
        this.priority = PriorityUtilities.NullPriority();
    }

    protected ChildrenNode(ImmutableSortedMap<ChildKey, Node> immutableSortedMap, Node node) {
        this.lazyHash = null;
        if (immutableSortedMap.isEmpty() && !node.isEmpty()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{38, 85, 15, 22, 68, 17, 6, 70, 4, 80, 68, 84, 69, 81, 12, 65, 68, 72, 69, 119, 9, 88, 92, 85, 23, 81, 15, 127, 95, 85, 0, 20, 22, 88, 68, 89, 69, 68, 19, 88, 95, 67, 12, 64, 24, 16}, "e4a101", 1.351176616E9d));
        }
        this.priority = node;
        this.children = immutableSortedMap;
    }

    private static void addIndentation(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(" ");
        }
    }

    private void toString(StringBuilder sb, int i) {
        if (this.children.isEmpty() && this.priority.isEmpty()) {
            sb.append(NPStringFog.decode(new byte[]{30, 25, 79}, "e92a06", false));
            return;
        }
        sb.append(NPStringFog.decode(new byte[]{26, 59}, "a1a743", -1917479534L));
        for (Map.Entry<ChildKey, Node> entry : this.children) {
            addIndentation(sb, i + 2);
            sb.append(entry.getKey().asString());
            sb.append(NPStringFog.decode(new byte[]{91}, "f3d3e0", -1.5809904E8f));
            if (entry.getValue() instanceof ChildrenNode) {
                ((ChildrenNode) entry.getValue()).toString(sb, i + 2);
            } else {
                sb.append(entry.getValue().toString());
            }
            sb.append("\n");
        }
        if (!this.priority.isEmpty()) {
            addIndentation(sb, i + 2);
            sb.append(NPStringFog.decode(new byte[]{28, 68, 71, 8, 91, 16, 91, 64, 76, 92}, "245a4b", 2.1005056E9f));
            sb.append(this.priority.toString());
            sb.append("\n");
        }
        addIndentation(sb, i);
        sb.append(NPStringFog.decode(new byte[]{72}, "536f67", 1007567310L));
    }

    @Override // java.lang.Comparable
    public int compareTo(Node node) {
        if (isEmpty()) {
            return node.isEmpty() ? 0 : -1;
        }
        if (!node.isLeafNode() && !node.isEmpty()) {
            return node == Node.MAX_NODE ? -1 : 0;
        }
        return 1;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChildrenNode)) {
            return false;
        }
        ChildrenNode childrenNode = (ChildrenNode) obj;
        if (getPriority().equals(childrenNode.getPriority()) && this.children.size() == childrenNode.children.size()) {
            Iterator<Map.Entry<ChildKey, Node>> it = this.children.iterator();
            Iterator<Map.Entry<ChildKey, Node>> it2 = childrenNode.children.iterator();
            while (it.hasNext() && it2.hasNext()) {
                Map.Entry<ChildKey, Node> next = it.next();
                Map.Entry<ChildKey, Node> next2 = it2.next();
                if (!next.getKey().equals(next2.getKey()) || !next.getValue().equals(next2.getValue())) {
                    return false;
                }
            }
            if (it.hasNext() || it2.hasNext()) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{106, 90, 12, 81, 71, 94, 80, 91, 6, 20, 68, 83, 87, 65, 65, 67, 65, 89, 87, 82, 65, 93, 93, 66, 92, 71, 15, 85, 95, 90, 64, 27}, "95a436", -1.2431215E9f));
            }
            return true;
        }
        return false;
    }

    public void forEachChild(ChildVisitor childVisitor) {
        forEachChild(childVisitor, false);
    }

    public void forEachChild(ChildVisitor childVisitor, boolean z) {
        if (!z || getPriority().isEmpty()) {
            this.children.inOrderTraversal(childVisitor);
        } else {
            this.children.inOrderTraversal(new LLRBNode.NodeVisitor<ChildKey, Node>(this, childVisitor) { // from class: com.google.firebase.database.snapshot.ChildrenNode.2
                boolean passedPriorityKey = false;
                final ChildrenNode this$0;
                final ChildVisitor val$visitor;

                {
                    this.this$0 = this;
                    this.val$visitor = childVisitor;
                }

                @Override // com.google.firebase.database.collection.LLRBNode.NodeVisitor
                public void visitEntry(ChildKey childKey, Node node) {
                    if (!this.passedPriorityKey && childKey.compareTo(ChildKey.getPriorityKey()) > 0) {
                        this.passedPriorityKey = true;
                        this.val$visitor.visitChild(ChildKey.getPriorityKey(), this.this$0.getPriority());
                    }
                    this.val$visitor.visitChild(childKey, node);
                }
            });
        }
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Node getChild(Path path) {
        ChildKey front = path.getFront();
        return front == null ? this : getImmediateChild(front).getChild(path.popFront());
    }

    @Override // com.google.firebase.database.snapshot.Node
    public int getChildCount() {
        return this.children.size();
    }

    public ChildKey getFirstChildKey() {
        return this.children.getMinKey();
    }

    @Override // com.google.firebase.database.snapshot.Node
    public String getHash() {
        if (this.lazyHash == null) {
            String hashRepresentation = getHashRepresentation(Node.HashVersion.V1);
            this.lazyHash = hashRepresentation.isEmpty() ? "" : Utilities.sha1HexDigest(hashRepresentation);
        }
        return this.lazyHash;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public String getHashRepresentation(Node.HashVersion hashVersion) {
        if (hashVersion != Node.HashVersion.V1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 83, 18, 89, 87, 69, 25, 93, 15, 17, 81, 94, 80, 94, 5, 67, 87, 88, 25, 92, 14, 85, 87, 69, 25, 93, 15, 93, 75, 22, 74, 71, 17, 65, 93, 68, 77, 87, 5, 17, 84, 89, 75, 18, 55, 0}, "92a126", 1.687062305E9d));
        }
        StringBuilder sb = new StringBuilder();
        if (!this.priority.isEmpty()) {
            sb.append(NPStringFog.decode(new byte[]{73, 19, 15, 10, 16, 81, 77, 24, 92}, "9afeb8", false));
            sb.append(this.priority.getHashRepresentation(Node.HashVersion.V1));
            sb.append(NPStringFog.decode(new byte[]{92}, "f1bd9e", 1.29293544E8f));
        }
        ArrayList<NamedNode> arrayList = new ArrayList();
        boolean z = false;
        for (NamedNode namedNode : this) {
            arrayList.add(namedNode);
            z = z || !namedNode.getNode().getPriority().isEmpty();
        }
        if (z) {
            Collections.sort(arrayList, PriorityIndex.getInstance());
        }
        for (NamedNode namedNode2 : arrayList) {
            String hash = namedNode2.getNode().getHash();
            if (!hash.equals("")) {
                sb.append(NPStringFog.decode(new byte[]{15}, "5733ab", 9.55001063E8d));
                sb.append(namedNode2.getName().asString());
                sb.append(NPStringFog.decode(new byte[]{91}, "ac6967", 2132502833L));
                sb.append(hash);
            }
        }
        return sb.toString();
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Node getImmediateChild(ChildKey childKey) {
        return (!childKey.isPriorityChildName() || this.priority.isEmpty()) ? this.children.containsKey(childKey) ? this.children.get(childKey) : EmptyNode.Empty() : this.priority;
    }

    public ChildKey getLastChildKey() {
        return this.children.getMaxKey();
    }

    @Override // com.google.firebase.database.snapshot.Node
    public ChildKey getPredecessorChildKey(ChildKey childKey) {
        return this.children.getPredecessorKey(childKey);
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Node getPriority() {
        return this.priority;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public ChildKey getSuccessorChildKey(ChildKey childKey) {
        return this.children.getSuccessorKey(childKey);
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Object getValue() {
        return getValue(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00bf  */
    @Override // com.google.firebase.database.snapshot.Node
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getValue(boolean r11) {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.database.snapshot.ChildrenNode.getValue(boolean):java.lang.Object");
    }

    @Override // com.google.firebase.database.snapshot.Node
    public boolean hasChild(ChildKey childKey) {
        return !getImmediateChild(childKey).isEmpty();
    }

    public int hashCode() {
        int iHashCode = 0;
        Iterator<NamedNode> it = iterator();
        while (true) {
            int i = iHashCode;
            if (!it.hasNext()) {
                return i;
            }
            NamedNode next = it.next();
            iHashCode = next.getNode().hashCode() + (((i * 31) + next.getName().hashCode()) * 17);
        }
    }

    @Override // com.google.firebase.database.snapshot.Node
    public boolean isEmpty() {
        return this.children.isEmpty();
    }

    @Override // com.google.firebase.database.snapshot.Node
    public boolean isLeafNode() {
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<NamedNode> iterator() {
        return new NamedNodeIterator(this.children.iterator());
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Iterator<NamedNode> reverseIterator() {
        return new NamedNodeIterator(this.children.reverseIterator());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        toString(sb, 0);
        return sb.toString();
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Node updateChild(Path path, Node node) {
        ChildKey front = path.getFront();
        return front == null ? node : front.isPriorityChildName() ? updatePriority(node) : updateImmediateChild(front, getImmediateChild(front).updateChild(path.popFront(), node));
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Node updateImmediateChild(ChildKey childKey, Node node) {
        if (childKey.isPriorityChildName()) {
            return updatePriority(node);
        }
        ImmutableSortedMap<ChildKey, Node> immutableSortedMapInsert = this.children;
        if (immutableSortedMapInsert.containsKey(childKey)) {
            immutableSortedMapInsert = immutableSortedMapInsert.remove(childKey);
        }
        if (!node.isEmpty()) {
            immutableSortedMapInsert = immutableSortedMapInsert.insert(childKey, node);
        }
        return immutableSortedMapInsert.isEmpty() ? EmptyNode.Empty() : new ChildrenNode(immutableSortedMapInsert, this.priority);
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Node updatePriority(Node node) {
        return this.children.isEmpty() ? EmptyNode.Empty() : new ChildrenNode(this.children, node);
    }
}
