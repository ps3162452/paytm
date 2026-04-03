package com.google.firebase.database.collection;

import com.google.firebase.database.collection.ImmutableSortedMap;
import com.google.firebase.database.collection.LLRBNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes60.dex */
public class RBTreeSortedMap<K, V> extends ImmutableSortedMap<K, V> {
    private Comparator<K> comparator;
    private LLRBNode<K, V> root;

    private static class Builder<A, B, C> {
        private final ImmutableSortedMap.Builder.KeyTranslator<A, B> keyTranslator;
        private final List<A> keys;
        private LLRBValueNode<A, C> leaf;
        private LLRBValueNode<A, C> root;
        private final Map<B, C> values;

        static class Base1_2 implements Iterable<BooleanChunk> {
            private final int length;
            private long value;

            public Base1_2(int i) {
                int i2 = i + 1;
                this.length = (int) Math.floor(Math.log(i2) / Math.log(2.0d));
                this.value = ((long) i2) & (((long) Math.pow(2.0d, this.length)) - 1);
            }

            @Override // java.lang.Iterable
            public Iterator<BooleanChunk> iterator() {
                return new Iterator<BooleanChunk>(this) { // from class: com.google.firebase.database.collection.RBTreeSortedMap.Builder.Base1_2.1
                    private int current;
                    final Base1_2 this$0;

                    {
                        this.this$0 = this;
                        this.current = this.this$0.length - 1;
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.current >= 0;
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.Iterator
                    public BooleanChunk next() {
                        long j = this.this$0.value;
                        long j2 = 1 << this.current;
                        BooleanChunk booleanChunk = new BooleanChunk();
                        booleanChunk.isOne = (j & j2) == 0;
                        booleanChunk.chunkSize = (int) Math.pow(2.0d, this.current);
                        this.current--;
                        return booleanChunk;
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                    }
                };
            }
        }

        static class BooleanChunk {
            public int chunkSize;
            public boolean isOne;

            BooleanChunk() {
            }
        }

        private Builder(List<A> list, Map<B, C> map, ImmutableSortedMap.Builder.KeyTranslator<A, B> keyTranslator) {
            this.keys = list;
            this.values = map;
            this.keyTranslator = keyTranslator;
        }

        private LLRBNode<A, C> buildBalancedTree(int i, int i2) {
            if (i2 == 0) {
                return LLRBEmptyNode.getInstance();
            }
            if (i2 == 1) {
                A a = this.keys.get(i);
                return new LLRBBlackValueNode(a, getValue(a), null, null);
            }
            int i3 = i2 / 2;
            int i4 = i + i3;
            LLRBNode<A, C> lLRBNodeBuildBalancedTree = buildBalancedTree(i, i3);
            LLRBNode<A, C> lLRBNodeBuildBalancedTree2 = buildBalancedTree(i4 + 1, i3);
            A a2 = this.keys.get(i4);
            return new LLRBBlackValueNode(a2, getValue(a2), lLRBNodeBuildBalancedTree, lLRBNodeBuildBalancedTree2);
        }

        public static <A, B, C> RBTreeSortedMap<A, C> buildFrom(List<A> list, Map<B, C> map, ImmutableSortedMap.Builder.KeyTranslator<A, B> keyTranslator, Comparator<A> comparator) {
            Builder builder = new Builder(list, map, keyTranslator);
            Collections.sort(list, comparator);
            int size = list.size();
            for (BooleanChunk booleanChunk : new Base1_2(list.size())) {
                size -= booleanChunk.chunkSize;
                if (booleanChunk.isOne) {
                    builder.buildPennant(LLRBNode.Color.BLACK, booleanChunk.chunkSize, size);
                } else {
                    builder.buildPennant(LLRBNode.Color.BLACK, booleanChunk.chunkSize, size);
                    size -= booleanChunk.chunkSize;
                    builder.buildPennant(LLRBNode.Color.RED, booleanChunk.chunkSize, size);
                }
            }
            return new RBTreeSortedMap<>(builder.root == null ? LLRBEmptyNode.getInstance() : builder.root, comparator);
        }

        private void buildPennant(LLRBNode.Color color, int i, int i2) {
            LLRBNode<A, C> lLRBNodeBuildBalancedTree = buildBalancedTree(i2 + 1, i - 1);
            A a = this.keys.get(i2);
            LLRBValueNode<A, C> lLRBRedValueNode = color == LLRBNode.Color.RED ? new LLRBRedValueNode<>(a, getValue(a), null, lLRBNodeBuildBalancedTree) : new LLRBBlackValueNode<>(a, getValue(a), null, lLRBNodeBuildBalancedTree);
            if (this.root == null) {
                this.root = lLRBRedValueNode;
                this.leaf = lLRBRedValueNode;
            } else {
                this.leaf.setLeft(lLRBRedValueNode);
                this.leaf = lLRBRedValueNode;
            }
        }

        private C getValue(A a) {
            return this.values.get(this.keyTranslator.translate(a));
        }
    }

    private RBTreeSortedMap(LLRBNode<K, V> lLRBNode, Comparator<K> comparator) {
        this.root = lLRBNode;
        this.comparator = comparator;
    }

    RBTreeSortedMap(Comparator<K> comparator) {
        this.root = LLRBEmptyNode.getInstance();
        this.comparator = comparator;
    }

    public static <A, B, C> RBTreeSortedMap<A, C> buildFrom(List<A> list, Map<B, C> map, ImmutableSortedMap.Builder.KeyTranslator<A, B> keyTranslator, Comparator<A> comparator) {
        return Builder.buildFrom(list, map, keyTranslator, comparator);
    }

    public static <A, B> RBTreeSortedMap<A, B> fromMap(Map<A, B> map, Comparator<A> comparator) {
        return Builder.buildFrom(new ArrayList(map.keySet()), map, ImmutableSortedMap.Builder.identityTranslator(), comparator);
    }

    private LLRBNode<K, V> getNode(K k) {
        LLRBNode<K, V> left = this.root;
        while (!left.isEmpty()) {
            int iCompare = this.comparator.compare(k, left.getKey());
            if (iCompare < 0) {
                left = left.getLeft();
            } else {
                if (iCompare == 0) {
                    return left;
                }
                left = left.getRight();
            }
        }
        return null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public boolean containsKey(K k) {
        return getNode(k) != null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public V get(K k) {
        LLRBNode<K, V> node = getNode(k);
        if (node != null) {
            return node.getValue();
        }
        return null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public Comparator<K> getComparator() {
        return this.comparator;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public K getMaxKey() {
        return this.root.getMax().getKey();
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public K getMinKey() {
        return this.root.getMin().getKey();
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public K getPredecessorKey(K k) {
        LLRBNode<K, V> left = this.root;
        LLRBNode<K, V> lLRBNode = null;
        while (!left.isEmpty()) {
            int iCompare = this.comparator.compare(k, left.getKey());
            if (iCompare == 0) {
                if (left.getLeft().isEmpty()) {
                    if (lLRBNode != null) {
                        return lLRBNode.getKey();
                    }
                    return null;
                }
                LLRBNode<K, V> left2 = left.getLeft();
                while (!left2.getRight().isEmpty()) {
                    left2 = left2.getRight();
                }
                return left2.getKey();
            }
            if (iCompare < 0) {
                left = left.getLeft();
            } else {
                LLRBNode<K, V> lLRBNode2 = left;
                left = left.getRight();
                lLRBNode = lLRBNode2;
            }
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{39, 13, 17, 84, 87, 11, 67, 22, 68, 94, 90, 11, 0, 66, 20, 74, 86, 1, 1, 1, 1, 75, 64, 10, 22, 66, 15, 93, 74, 69, 11, 4, 68, 86, 92, 11, 73, 18, 22, 93, 64, 0, 10, 22, 68, 83, 86, 28, 94, 66}, "dbd83e", 8.75927594E8d) + k);
    }

    LLRBNode<K, V> getRoot() {
        return this.root;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public K getSuccessorKey(K k) {
        LLRBNode<K, V> right = this.root;
        LLRBNode<K, V> lLRBNode = null;
        while (!right.isEmpty()) {
            int iCompare = this.comparator.compare(right.getKey(), k);
            if (iCompare == 0) {
                if (right.getRight().isEmpty()) {
                    if (lLRBNode != null) {
                        return lLRBNode.getKey();
                    }
                    return null;
                }
                LLRBNode<K, V> right2 = right.getRight();
                while (!right2.getLeft().isEmpty()) {
                    right2 = right2.getLeft();
                }
                return right2.getKey();
            }
            if (iCompare < 0) {
                right = right.getRight();
            } else {
                LLRBNode<K, V> lLRBNode2 = right;
                right = right.getLeft();
                lLRBNode = lLRBNode2;
            }
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 90, 23, 14, 87, 87, 16, 65, 66, 4, 90, 87, 83, 21, 17, 23, 80, 90, 82, 70, 17, 13, 65, 25, 92, 80, 27, 66, 92, 95, 23, 91, 13, 12, 30, 73, 69, 80, 17, 7, 93, 77, 23, 94, 7, 27, 9, 25}, "75bb39", false) + k);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public void inOrderTraversal(LLRBNode.NodeVisitor<K, V> nodeVisitor) {
        this.root.inOrderTraversal(nodeVisitor);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public int indexOf(K k) {
        int size = 0;
        LLRBNode<K, V> left = this.root;
        while (!left.isEmpty()) {
            int iCompare = this.comparator.compare(k, left.getKey());
            if (iCompare == 0) {
                return left.getLeft().size() + size;
            }
            if (iCompare < 0) {
                left = left.getLeft();
            } else {
                size += left.getLeft().size() + 1;
                left = left.getRight();
            }
        }
        return -1;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public ImmutableSortedMap<K, V> insert(K k, V v) {
        return new RBTreeSortedMap(this.root.insert(k, v, this.comparator).copy(null, null, LLRBNode.Color.BLACK, null, null), this.comparator);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public boolean isEmpty() {
        return this.root.isEmpty();
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new ImmutableSortedMapIterator(this.root, null, this.comparator, false);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public Iterator<Map.Entry<K, V>> iteratorFrom(K k) {
        return new ImmutableSortedMapIterator(this.root, k, this.comparator, false);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public ImmutableSortedMap<K, V> remove(K k) {
        return !containsKey(k) ? this : new RBTreeSortedMap(this.root.remove(k, this.comparator).copy(null, null, LLRBNode.Color.BLACK, null, null), this.comparator);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public Iterator<Map.Entry<K, V>> reverseIterator() {
        return new ImmutableSortedMapIterator(this.root, null, this.comparator, true);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public Iterator<Map.Entry<K, V>> reverseIteratorFrom(K k) {
        return new ImmutableSortedMapIterator(this.root, k, this.comparator, true);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public int size() {
        return this.root.size();
    }
}
