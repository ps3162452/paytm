package com.google.firebase.database.collection;

import com.google.firebase.database.collection.ImmutableSortedMap;
import com.google.firebase.database.collection.LLRBNode;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes60.dex */
public class ArraySortedMap<K, V> extends ImmutableSortedMap<K, V> {
    private final Comparator<K> comparator;
    private final K[] keys;
    private final V[] values;

    public ArraySortedMap(Comparator<K> comparator) {
        this.keys = (K[]) new Object[0];
        this.values = (V[]) new Object[0];
        this.comparator = comparator;
    }

    private ArraySortedMap(Comparator<K> comparator, K[] kArr, V[] vArr) {
        this.keys = kArr;
        this.values = vArr;
        this.comparator = comparator;
    }

    private static <T> T[] addToArray(T[] tArr, int i, T t) {
        T[] tArr2 = (T[]) new Object[tArr.length + 1];
        System.arraycopy(tArr, 0, tArr2, 0, i);
        tArr2[i] = t;
        System.arraycopy(tArr, i, tArr2, i + 1, (r0 - i) - 1);
        return tArr2;
    }

    public static <A, B, C> ArraySortedMap<A, C> buildFrom(List<A> list, Map<B, C> map, ImmutableSortedMap.Builder.KeyTranslator<A, B> keyTranslator, Comparator<A> comparator) {
        Collections.sort(list, comparator);
        int size = list.size();
        Object[] objArr = new Object[size];
        Object[] objArr2 = new Object[size];
        int i = 0;
        for (A a : list) {
            objArr[i] = a;
            objArr2[i] = map.get(keyTranslator.translate(a));
            i++;
        }
        return new ArraySortedMap<>(comparator, objArr, objArr2);
    }

    private int findKey(K k) {
        int i = 0;
        K[] kArr = this.keys;
        int length = kArr.length;
        int i2 = 0;
        while (i2 < length) {
            if (this.comparator.compare(k, kArr[i2]) == 0) {
                return i;
            }
            i2++;
            i++;
        }
        return -1;
    }

    private int findKeyOrInsertPosition(K k) {
        int i = 0;
        while (i < this.keys.length && this.comparator.compare(this.keys[i], k) < 0) {
            i++;
        }
        return i;
    }

    public static <K, V> ArraySortedMap<K, V> fromMap(Map<K, V> map, Comparator<K> comparator) {
        return buildFrom(new ArrayList(map.keySet()), map, ImmutableSortedMap.Builder.identityTranslator(), comparator);
    }

    private Iterator<Map.Entry<K, V>> iterator(int i, boolean z) {
        return new Iterator<Map.Entry<K, V>>(this, i, z) { // from class: com.google.firebase.database.collection.ArraySortedMap.1
            int currentPos;
            final ArraySortedMap this$0;
            final int val$pos;
            final boolean val$reverse;

            {
                this.this$0 = this;
                this.val$pos = i;
                this.val$reverse = z;
                this.currentPos = this.val$pos;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.val$reverse) {
                    if (this.currentPos < 0) {
                        return false;
                    }
                } else if (this.currentPos >= this.this$0.keys.length) {
                    return false;
                }
                return true;
            }

            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                Object obj = this.this$0.keys[this.currentPos];
                Object obj2 = this.this$0.values[this.currentPos];
                this.currentPos = this.val$reverse ? this.currentPos - 1 : this.currentPos + 1;
                return new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{113, 5, 92, 68, 64, 69, 64, 1, 95, 12, 66, 0, 18, 1, 94, 6, 89, 0, 92, 16, 65, 67, 82, 23, 93, 9, 18, 42, 89, 8, 71, 16, 83, 1, 88, 0, 97, 11, 64, 23, 81, 1, 127, 5, 66}, "2d2c4e", false));
            }
        };
    }

    private static <T> T[] removeFromArray(T[] tArr, int i) {
        int length = tArr.length - 1;
        T[] tArr2 = (T[]) new Object[length];
        System.arraycopy(tArr, 0, tArr2, 0, i);
        System.arraycopy(tArr, i + 1, tArr2, i, length - i);
        return tArr2;
    }

    private static <T> T[] replaceInArray(T[] tArr, int i, T t) {
        int length = tArr.length;
        T[] tArr2 = (T[]) new Object[length];
        System.arraycopy(tArr, 0, tArr2, 0, length);
        tArr2[i] = t;
        return tArr2;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public boolean containsKey(K k) {
        return findKey(k) != -1;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public V get(K k) {
        int iFindKey = findKey(k);
        if (iFindKey != -1) {
            return this.values[iFindKey];
        }
        return null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public Comparator<K> getComparator() {
        return this.comparator;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public K getMaxKey() {
        if (this.keys.length > 0) {
            return this.keys[this.keys.length - 1];
        }
        return null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public K getMinKey() {
        if (this.keys.length > 0) {
            return this.keys[0];
        }
        return null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public K getPredecessorKey(K k) {
        int iFindKey = findKey(k);
        if (iFindKey == -1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{39, 83, 89, 21, 67, 68, 2, 91, 89, 86, 23, 20, 22, 87, 83, 87, 84, 1, 23, 65, 88, 64, 23, 11, 2, 18, 89, 93, 89, 1, 28, 91, 68, 70, 82, 10, 16, 18, 92, 87, 78}, "d2727d", 8.353279E7f));
        }
        if (iFindKey > 0) {
            return this.keys[iFindKey - 1];
        }
        return null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public K getSuccessorKey(K k) {
        int iFindKey = findKey(k);
        if (iFindKey == -1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 80, 87, 30, 18, 65, 84, 88, 87, 93, 70, 18, 71, 82, 90, 92, 21, 18, 93, 67, 25, 86, 0, 65, 92, 94, 87, 92, 30, 8, 65, 69, 92, 87, 18, 65, 89, 84, 64}, "2199fa", -16744));
        }
        if (iFindKey < this.keys.length - 1) {
            return this.keys[iFindKey + 1];
        }
        return null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public void inOrderTraversal(LLRBNode.NodeVisitor<K, V> nodeVisitor) {
        for (int i = 0; i < this.keys.length; i++) {
            nodeVisitor.visitEntry(this.keys[i], this.values[i]);
        }
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public int indexOf(K k) {
        return findKey(k);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public ImmutableSortedMap<K, V> insert(K k, V v) {
        int iFindKey = findKey(k);
        if (iFindKey != -1) {
            if (this.keys[iFindKey] == k && this.values[iFindKey] == v) {
                return this;
            }
            return new ArraySortedMap(this.comparator, replaceInArray(this.keys, iFindKey, k), replaceInArray(this.values, iFindKey, v));
        }
        if (this.keys.length <= 25) {
            int iFindKeyOrInsertPosition = findKeyOrInsertPosition(k);
            return new ArraySortedMap(this.comparator, addToArray(this.keys, iFindKeyOrInsertPosition, k), addToArray(this.values, iFindKeyOrInsertPosition, v));
        }
        HashMap map = new HashMap(this.keys.length + 1);
        for (int i = 0; i < this.keys.length; i++) {
            map.put(this.keys[i], this.values[i]);
        }
        map.put(k, v);
        return RBTreeSortedMap.fromMap(map, this.comparator);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public boolean isEmpty() {
        return this.keys.length == 0;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return iterator(0, false);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public Iterator<Map.Entry<K, V>> iteratorFrom(K k) {
        return iterator(findKeyOrInsertPosition(k), false);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public ImmutableSortedMap<K, V> remove(K k) {
        int iFindKey = findKey(k);
        if (iFindKey == -1) {
            return this;
        }
        return new ArraySortedMap(this.comparator, removeFromArray(this.keys, iFindKey), removeFromArray(this.values, iFindKey));
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public Iterator<Map.Entry<K, V>> reverseIterator() {
        return iterator(this.keys.length - 1, true);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public Iterator<Map.Entry<K, V>> reverseIteratorFrom(K k) {
        int iFindKeyOrInsertPosition = findKeyOrInsertPosition(k);
        return (iFindKeyOrInsertPosition >= this.keys.length || this.comparator.compare(this.keys[iFindKeyOrInsertPosition], k) != 0) ? iterator(iFindKeyOrInsertPosition - 1, true) : iterator(iFindKeyOrInsertPosition, true);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public int size() {
        return this.keys.length;
    }
}
