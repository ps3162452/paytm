package com.google.firebase.database.snapshot;

import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.snapshot.LeafNode;
import com.google.firebase.database.snapshot.Node;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class LongNode extends LeafNode<LongNode> {
    private final long value;

    public LongNode(Long l, Node node) {
        super(node);
        this.value = l.longValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.firebase.database.snapshot.LeafNode
    public int compareLeafValues(LongNode longNode) {
        return Utilities.compareLongs(this.value, longNode.value);
    }

    @Override // com.google.firebase.database.snapshot.LeafNode
    public boolean equals(Object obj) {
        if (!(obj instanceof LongNode)) {
            return false;
        }
        LongNode longNode = (LongNode) obj;
        return this.value == longNode.value && this.priority.equals(longNode.priority);
    }

    @Override // com.google.firebase.database.snapshot.Node
    public String getHashRepresentation(Node.HashVersion hashVersion) {
        return (getPriorityHash(hashVersion) + NPStringFog.decode(new byte[]{94, 68, 91, 4, 93, 23, 10}, "016f8e", false, false)) + Utilities.doubleToHashString(this.value);
    }

    @Override // com.google.firebase.database.snapshot.LeafNode
    protected LeafNode.LeafType getLeafType() {
        return LeafNode.LeafType.Number;
    }

    @Override // com.google.firebase.database.snapshot.Node
    public Object getValue() {
        return Long.valueOf(this.value);
    }

    @Override // com.google.firebase.database.snapshot.LeafNode
    public int hashCode() {
        long j = this.value;
        return ((int) (j ^ (j >>> 32))) + this.priority.hashCode();
    }

    @Override // com.google.firebase.database.snapshot.Node
    public LongNode updatePriority(Node node) {
        return new LongNode(Long.valueOf(this.value), node);
    }
}
