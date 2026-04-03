package com.google.firebase.database.collection;

import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.EmptyStackException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes60.dex */
public class ImmutableSortedMapIterator<K, V> implements Iterator<Map.Entry<K, V>> {
    private final boolean isReverse;
    private final ArrayDeque<LLRBValueNode<K, V>> nodeStack = new ArrayDeque<>();

    ImmutableSortedMapIterator(LLRBNode<K, V> lLRBNode, K k, Comparator<K> comparator, boolean z) {
        this.isReverse = z;
        LLRBNode<K, V> left = lLRBNode;
        while (!left.isEmpty()) {
            int iCompare = k != null ? z ? comparator.compare(k, left.getKey()) : comparator.compare(left.getKey(), k) : 1;
            if (iCompare < 0) {
                left = z ? left.getLeft() : left.getRight();
            } else if (iCompare == 0) {
                this.nodeStack.push((LLRBValueNode) left);
                return;
            } else {
                this.nodeStack.push((LLRBValueNode) left);
                left = z ? left.getRight() : left.getLeft();
            }
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.nodeStack.size() > 0;
    }

    @Override // java.util.Iterator
    public Map.Entry<K, V> next() {
        try {
            LLRBValueNode<K, V> lLRBValueNodePop = this.nodeStack.pop();
            AbstractMap.SimpleEntry simpleEntry = new AbstractMap.SimpleEntry(lLRBValueNodePop.getKey(), lLRBValueNodePop.getValue());
            if (this.isReverse) {
                for (LLRBNode<K, V> left = lLRBValueNodePop.getLeft(); !left.isEmpty(); left = left.getRight()) {
                    this.nodeStack.push((LLRBValueNode) left);
                }
            } else {
                for (LLRBNode<K, V> right = lLRBValueNodePop.getRight(); !right.isEmpty(); right = right.getLeft()) {
                    this.nodeStack.push((LLRBValueNode) right);
                }
            }
            return simpleEntry;
        } catch (EmptyStackException e) {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{68, 86, 14, 89, 66, 4, 22, 80, 2, 90, 88, 4, 82, 19, 12, 88, 20, 8, 91, 94, 22, 66, 85, 3, 90, 86, 67, 85, 91, 13, 90, 86, 0, 66, 93, 14, 88}, "63c64a", 1396714971L));
    }
}
