package androidx.collection;

import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes5.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
    ArrayMap<K, V>.EntrySet mEntrySet;
    ArrayMap<K, V>.KeySet mKeySet;
    ArrayMap<K, V>.ValueCollection mValues;

    final class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        final ArrayMap this$0;

        EntrySet(ArrayMap arrayMap) {
            this.this$0 = arrayMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new MapIterator(this.this$0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.this$0.mSize;
        }
    }

    final class KeyIterator extends IndexBasedArrayIterator<K> {
        final ArrayMap this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        KeyIterator(ArrayMap arrayMap) {
            super(arrayMap.mSize);
            this.this$0 = arrayMap;
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected K elementAt(int i) {
            return this.this$0.keyAt(i);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected void removeAt(int i) {
            this.this$0.removeAt(i);
        }
    }

    final class KeySet implements Set<K> {
        final ArrayMap this$0;

        KeySet(ArrayMap arrayMap) {
            this.this$0 = arrayMap;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            this.this$0.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return this.this$0.containsKey(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return this.this$0.containsAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return ArrayMap.equalsSetHelper(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int i = this.this$0.mSize - 1; i >= 0; i--) {
                K kKeyAt = this.this$0.keyAt(i);
                iHashCode += kKeyAt == null ? 0 : kKeyAt.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return this.this$0.isEmpty();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new KeyIterator(this.this$0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iIndexOfKey = this.this$0.indexOfKey(obj);
            if (iIndexOfKey < 0) {
                return false;
            }
            this.this$0.removeAt(iIndexOfKey);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return this.this$0.removeAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return this.this$0.retainAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return this.this$0.mSize;
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            int i = this.this$0.mSize;
            Object[] objArr = new Object[i];
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = this.this$0.keyAt(i2);
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) this.this$0.toArrayHelper(tArr, 0);
        }
    }

    final class MapIterator implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {
        int mEnd;
        boolean mEntryValid;
        int mIndex = -1;
        final ArrayMap this$0;

        MapIterator(ArrayMap arrayMap) {
            this.this$0 = arrayMap;
            this.mEnd = arrayMap.mSize - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.mEntryValid) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{54, 88, 13, 68, 23, 80, 13, 94, 16, 86, 94, 93, 7, 66, 68, 83, 88, 86, 17, 16, 10, 88, 67, 19, 17, 69, 20, 71, 88, 65, 22, 16, 22, 82, 67, 82, 11, 94, 13, 89, 80, 19, 47, 81, 20, 25, 114, 93, 22, 66, 29, 23, 88, 81, 8, 85, 7, 67, 68}, "b0d773", true));
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return ContainerHelpers.equal(entry.getKey(), this.this$0.keyAt(this.mIndex)) && ContainerHelpers.equal(entry.getValue(), this.this$0.valueAt(this.mIndex));
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.mEntryValid) {
                return this.this$0.keyAt(this.mIndex);
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{97, 81, 11, 64, 70, 82, 90, 87, 22, 82, 15, 95, 80, 75, 66, 87, 9, 84, 70, 25, 12, 92, 18, 17, 70, 76, 18, 67, 9, 67, 65, 25, 16, 86, 18, 80, 92, 87, 11, 93, 1, 17, 120, 88, 18, 29, 35, 95, 65, 75, 27, 19, 9, 83, 95, 92, 1, 71, 21}, "59b3f1", -1.038895691E9d));
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.mEntryValid) {
                return this.this$0.valueAt(this.mIndex);
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{50, 12, 90, 66, 70, 87, 9, 10, 71, 80, 15, 90, 3, 22, 19, 85, 9, 81, 21, 68, 93, 94, 18, 20, 21, 17, 67, 65, 9, 70, 18, 68, 65, 84, 18, 85, 15, 10, 90, 95, 1, 20, 43, 5, 67, 31, 35, 90, 18, 22, 74, 17, 9, 86, 12, 1, 80, 69, 21}, "fd31f4", true));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.mIndex < this.mEnd;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.mEntryValid) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{54, 91, 94, 70, 69, 90, 13, 93, 67, 84, 12, 87, 7, 65, 23, 81, 10, 92, 17, 19, 89, 90, 17, 25, 17, 70, 71, 69, 10, 75, 22, 19, 69, 80, 17, 88, 11, 93, 94, 91, 2, 25, 47, 82, 71, 27, 32, 87, 22, 65, 78, 21, 10, 91, 8, 86, 84, 65, 22}, "b375e9", 1481716017L));
            }
            K kKeyAt = this.this$0.keyAt(this.mIndex);
            V vValueAt = this.this$0.valueAt(this.mIndex);
            return (vValueAt != null ? vValueAt.hashCode() : 0) ^ (kKeyAt == null ? 0 : kKeyAt.hashCode());
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.mIndex++;
            this.mEntryValid = true;
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.mEntryValid) {
                throw new IllegalStateException();
            }
            this.this$0.removeAt(this.mIndex);
            this.mIndex--;
            this.mEnd--;
            this.mEntryValid = false;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.mEntryValid) {
                return this.this$0.setValueAt(this.mIndex, v);
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{49, 90, 12, 67, 68, 86, 10, 92, 17, 81, 13, 91, 0, 64, 69, 84, 11, 80, 22, 18, 11, 95, 16, 21, 22, 71, 21, 64, 11, 71, 17, 18, 23, 85, 16, 84, 12, 92, 12, 94, 3, 21, 40, 83, 21, 30, 33, 91, 17, 64, 28, 16, 11, 87, 15, 87, 6, 68, 23}, "e2e0d5", 1.21959019E9d));
        }

        public String toString() {
            return getKey() + NPStringFog.decode(new byte[]{14}, "39a887", -1174017500L) + getValue();
        }
    }

    final class ValueCollection implements Collection<V> {
        final ArrayMap this$0;

        ValueCollection(ArrayMap arrayMap) {
            this.this$0 = arrayMap;
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            this.this$0.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return this.this$0.indexOfValue(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.this$0.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new ValueIterator(this.this$0);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int iIndexOfValue = this.this$0.indexOfValue(obj);
            if (iIndexOfValue < 0) {
                return false;
            }
            this.this$0.removeAt(iIndexOfValue);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int i = 0;
            int i2 = this.this$0.mSize;
            boolean z = false;
            while (i < i2) {
                if (collection.contains(this.this$0.valueAt(i))) {
                    this.this$0.removeAt(i);
                    i--;
                    i2--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int i = 0;
            int i2 = this.this$0.mSize;
            boolean z = false;
            while (i < i2) {
                if (!collection.contains(this.this$0.valueAt(i))) {
                    this.this$0.removeAt(i);
                    i--;
                    i2--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return this.this$0.mSize;
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            int i = this.this$0.mSize;
            Object[] objArr = new Object[i];
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = this.this$0.valueAt(i2);
            }
            return objArr;
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) this.this$0.toArrayHelper(tArr, 1);
        }
    }

    final class ValueIterator extends IndexBasedArrayIterator<V> {
        final ArrayMap this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ValueIterator(ArrayMap arrayMap) {
            super(arrayMap.mSize);
            this.this$0 = arrayMap;
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected V elementAt(int i) {
            return this.this$0.valueAt(i);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected void removeAt(int i) {
            this.this$0.removeAt(i);
        }
    }

    public ArrayMap() {
    }

    public ArrayMap(int i) {
        super(i);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }

    static <T> boolean equalsSetHelper(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException e) {
            } catch (NullPointerException e2) {
            }
        }
        return false;
    }

    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        ArrayMap<K, V>.EntrySet entrySet = this.mEntrySet;
        if (entrySet != null) {
            return entrySet;
        }
        ArrayMap<K, V>.EntrySet entrySet2 = new EntrySet(this);
        this.mEntrySet = entrySet2;
        return entrySet2;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        ArrayMap<K, V>.KeySet keySet = this.mKeySet;
        if (keySet != null) {
            return keySet;
        }
        ArrayMap<K, V>.KeySet keySet2 = new KeySet(this);
        this.mKeySet = keySet2;
        return keySet2;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.mSize + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(Collection<?> collection) {
        int i = this.mSize;
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return i != this.mSize;
    }

    public boolean retainAll(Collection<?> collection) {
        int i = this.mSize;
        for (int i2 = this.mSize - 1; i2 >= 0; i2--) {
            if (!collection.contains(keyAt(i2))) {
                removeAt(i2);
            }
        }
        return i != this.mSize;
    }

    <T> T[] toArrayHelper(T[] tArr, int i) {
        int i2 = this.mSize;
        Object[] objArr = tArr.length < i2 ? (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i2)) : tArr;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = this.mArray[(i3 << 1) + i];
        }
        if (objArr.length > i2) {
            objArr[i2] = null;
        }
        return (T[]) objArr;
    }

    @Override // java.util.Map
    public Collection<V> values() {
        ArrayMap<K, V>.ValueCollection valueCollection = this.mValues;
        if (valueCollection != null) {
            return valueCollection;
        }
        ArrayMap<K, V>.ValueCollection valueCollection2 = new ValueCollection(this);
        this.mValues = valueCollection2;
        return valueCollection2;
    }
}
