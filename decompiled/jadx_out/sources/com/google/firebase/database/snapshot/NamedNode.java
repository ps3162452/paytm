package com.google.firebase.database.snapshot;

import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public final class NamedNode {
    private final ChildKey name;
    private final Node node;
    private static final NamedNode MIN_NODE = new NamedNode(ChildKey.getMinName(), EmptyNode.Empty());
    private static final NamedNode MAX_NODE = new NamedNode(ChildKey.getMaxName(), Node.MAX_NODE);

    public NamedNode(ChildKey childKey, Node node) {
        this.name = childKey;
        this.node = node;
    }

    public static NamedNode getMaxNode() {
        return MAX_NODE;
    }

    public static NamedNode getMinNode() {
        return MIN_NODE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NamedNode namedNode = (NamedNode) obj;
        return this.name.equals(namedNode.name) && this.node.equals(namedNode.node);
    }

    public ChildKey getName() {
        return this.name;
    }

    public Node getNode() {
        return this.node;
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.node.hashCode();
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{45, 2, 11, 7, 5, 126, 12, 7, 3, 25, 15, 81, 14, 6, 91}, "ccfba0", 235263044L) + this.name + NPStringFog.decode(new byte[]{77, 68, 93, 89, 84, 4, 92}, "ad360a", -1.07239526E9f) + this.node + '}';
    }
}
