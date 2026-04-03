package com.google.firebase.database.collection;

import com.google.firebase.database.collection.LLRBNode;
import n.NPStringFog;

/* JADX INFO: loaded from: classes60.dex */
public class LLRBBlackValueNode<K, V> extends LLRBValueNode<K, V> {
    private int size;

    LLRBBlackValueNode(K k, V v, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2) {
        super(k, v, lLRBNode, lLRBNode2);
        this.size = -1;
    }

    @Override // com.google.firebase.database.collection.LLRBValueNode
    protected LLRBValueNode<K, V> copy(K k, V v, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2) {
        if (k == null) {
            k = getKey();
        }
        if (v == null) {
            v = getValue();
        }
        if (lLRBNode == null) {
            lLRBNode = getLeft();
        }
        if (lLRBNode2 == null) {
            lLRBNode2 = getRight();
        }
        return new LLRBBlackValueNode(k, v, lLRBNode, lLRBNode2);
    }

    @Override // com.google.firebase.database.collection.LLRBValueNode
    protected LLRBNode.Color getColor() {
        return LLRBNode.Color.BLACK;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public boolean isRed() {
        return false;
    }

    @Override // com.google.firebase.database.collection.LLRBValueNode
    void setLeft(LLRBNode<K, V> lLRBNode) {
        if (this.size != -1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 88, 91, 16, 76, 16, 66, 92, 65, 23, 84, 85, 87, 77, 21, 86, 94, 68, 84, 75, 21, 66, 75, 89, 95, 94, 21, 68, 81, 74, 84}, "195780", 26620));
        }
        super.setLeft(lLRBNode);
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public int size() {
        if (this.size == -1) {
            this.size = getLeft().size() + 1 + getRight().size();
        }
        return this.size;
    }
}
