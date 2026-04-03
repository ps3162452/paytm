package com.google.firebase.database.collection;

import com.google.firebase.database.collection.LLRBNode;
import java.util.Comparator;

/* JADX INFO: loaded from: classes60.dex */
public abstract class LLRBValueNode<K, V> implements LLRBNode<K, V> {
    private final K key;
    private LLRBNode<K, V> left;
    private final LLRBNode<K, V> right;
    private final V value;

    LLRBValueNode(K k, V v, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2) {
        this.key = k;
        this.value = v;
        this.left = lLRBNode == null ? LLRBEmptyNode.getInstance() : lLRBNode;
        this.right = lLRBNode2 == null ? LLRBEmptyNode.getInstance() : lLRBNode2;
    }

    private LLRBValueNode<K, V> colorFlip() {
        return copy((Object) null, (Object) null, oppositeColor(this), (LLRBNode) this.left.copy(null, null, oppositeColor(this.left), null, null), (LLRBNode) this.right.copy(null, null, oppositeColor(this.right), null, null));
    }

    private LLRBValueNode<K, V> fixUp() {
        if (this.right.isRed() && !this.left.isRed()) {
            this = rotateLeft();
        }
        if (this.left.isRed() && ((LLRBValueNode) this.left).left.isRed()) {
            this = this.rotateRight();
        }
        return (this.left.isRed() && this.right.isRed()) ? this.colorFlip() : this;
    }

    private LLRBValueNode<K, V> moveRedLeft() {
        LLRBValueNode<K, V> lLRBValueNodeColorFlip = colorFlip();
        return lLRBValueNodeColorFlip.getRight().getLeft().isRed() ? lLRBValueNodeColorFlip.copy(null, null, null, ((LLRBValueNode) lLRBValueNodeColorFlip.getRight()).rotateRight()).rotateLeft().colorFlip() : lLRBValueNodeColorFlip;
    }

    private LLRBValueNode<K, V> moveRedRight() {
        LLRBValueNode<K, V> lLRBValueNodeColorFlip = colorFlip();
        return lLRBValueNodeColorFlip.getLeft().getLeft().isRed() ? lLRBValueNodeColorFlip.rotateRight().colorFlip() : lLRBValueNodeColorFlip;
    }

    private static LLRBNode.Color oppositeColor(LLRBNode lLRBNode) {
        return lLRBNode.isRed() ? LLRBNode.Color.BLACK : LLRBNode.Color.RED;
    }

    private LLRBNode<K, V> removeMin() {
        if (this.left.isEmpty()) {
            return LLRBEmptyNode.getInstance();
        }
        if (!getLeft().isRed() && !getLeft().getLeft().isRed()) {
            this = moveRedLeft();
        }
        return this.copy(null, null, ((LLRBValueNode) this.left).removeMin(), null).fixUp();
    }

    private LLRBValueNode<K, V> rotateLeft() {
        return (LLRBValueNode) this.right.copy(null, null, getColor(), copy((Object) null, (Object) null, LLRBNode.Color.RED, (LLRBNode) null, (LLRBNode) ((LLRBValueNode) this.right).left), null);
    }

    private LLRBValueNode<K, V> rotateRight() {
        return (LLRBValueNode) this.left.copy(null, null, getColor(), null, copy((Object) null, (Object) null, LLRBNode.Color.RED, (LLRBNode) ((LLRBValueNode) this.left).right, (LLRBNode) null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.firebase.database.collection.LLRBNode
    public /* bridge */ /* synthetic */ LLRBNode copy(Object obj, Object obj2, LLRBNode.Color color, LLRBNode lLRBNode, LLRBNode lLRBNode2) {
        return copy(obj, obj2, color, (LLRBNode<Object, Object>) lLRBNode, (LLRBNode<Object, Object>) lLRBNode2);
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBValueNode<K, V> copy(K k, V v, LLRBNode.Color color, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2) {
        if (k == null) {
            k = this.key;
        }
        if (v == null) {
            v = this.value;
        }
        if (lLRBNode == null) {
            lLRBNode = this.left;
        }
        if (lLRBNode2 == null) {
            lLRBNode2 = this.right;
        }
        return color == LLRBNode.Color.RED ? new LLRBRedValueNode(k, v, lLRBNode, lLRBNode2) : new LLRBBlackValueNode(k, v, lLRBNode, lLRBNode2);
    }

    protected abstract LLRBValueNode<K, V> copy(K k, V v, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2);

    protected abstract LLRBNode.Color getColor();

    @Override // com.google.firebase.database.collection.LLRBNode
    public K getKey() {
        return this.key;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> getLeft() {
        return this.left;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> getMax() {
        return this.right.isEmpty() ? this : this.right.getMax();
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> getMin() {
        return this.left.isEmpty() ? this : this.left.getMin();
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> getRight() {
        return this.right;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public V getValue() {
        return this.value;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public void inOrderTraversal(LLRBNode.NodeVisitor<K, V> nodeVisitor) {
        this.left.inOrderTraversal(nodeVisitor);
        nodeVisitor.visitEntry(this.key, this.value);
        this.right.inOrderTraversal(nodeVisitor);
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> insert(K k, V v, Comparator<K> comparator) {
        int iCompare = comparator.compare(k, this.key);
        return (iCompare < 0 ? copy(null, null, this.left.insert(k, v, comparator), null) : iCompare == 0 ? copy(k, v, null, null) : copy(null, null, null, this.right.insert(k, v, comparator))).fixUp();
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public boolean isEmpty() {
        return false;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> remove(K k, Comparator<K> comparator) {
        LLRBValueNode<K, V> lLRBValueNodeCopy;
        if (comparator.compare(k, this.key) < 0) {
            if (!this.left.isEmpty() && !this.left.isRed() && !((LLRBValueNode) this.left).left.isRed()) {
                this = moveRedLeft();
            }
            lLRBValueNodeCopy = this.copy(null, null, this.left.remove(k, comparator), null);
        } else {
            if (this.left.isRed()) {
                this = rotateRight();
            }
            if (!this.right.isEmpty() && !this.right.isRed() && !((LLRBValueNode) this.right).left.isRed()) {
                this = this.moveRedRight();
            }
            if (comparator.compare(k, this.key) == 0) {
                if (this.right.isEmpty()) {
                    return LLRBEmptyNode.getInstance();
                }
                LLRBNode<K, V> min = this.right.getMin();
                this = this.copy(min.getKey(), min.getValue(), null, ((LLRBValueNode) this.right).removeMin());
            }
            lLRBValueNodeCopy = this.copy(null, null, null, this.right.remove(k, comparator));
        }
        return lLRBValueNodeCopy.fixUp();
    }

    void setLeft(LLRBNode<K, V> lLRBNode) {
        this.left = lLRBNode;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public boolean shortCircuitingInOrderTraversal(LLRBNode.ShortCircuitingNodeVisitor<K, V> shortCircuitingNodeVisitor) {
        if (this.left.shortCircuitingInOrderTraversal(shortCircuitingNodeVisitor) && shortCircuitingNodeVisitor.shouldContinue(this.key, this.value)) {
            return this.right.shortCircuitingInOrderTraversal(shortCircuitingNodeVisitor);
        }
        return false;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public boolean shortCircuitingReverseOrderTraversal(LLRBNode.ShortCircuitingNodeVisitor<K, V> shortCircuitingNodeVisitor) {
        if (this.right.shortCircuitingReverseOrderTraversal(shortCircuitingNodeVisitor) && shortCircuitingNodeVisitor.shouldContinue(this.key, this.value)) {
            return this.left.shortCircuitingReverseOrderTraversal(shortCircuitingNodeVisitor);
        }
        return false;
    }
}
