package androidx.collection;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes5.dex */
public final class ArraySet<E> implements Collection<E>, Set<E> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static Object[] sBaseCache;
    private static int sBaseCacheSize;
    private static Object[] sTwiceBaseCache;
    private static int sTwiceBaseCacheSize;
    Object[] mArray;
    private int[] mHashes;
    int mSize;
    private static final String TAG = NPStringFog.decode(new byte[]{121, 70, 69, 83, 24, 97, 93, 64}, "8472a2", -2.33535922E8d);
    private static final Object sBaseCacheLock = new Object();
    private static final Object sTwiceBaseCacheLock = new Object();

    private class ElementIterator extends IndexBasedArrayIterator<E> {
        final ArraySet this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ElementIterator(ArraySet arraySet) {
            super(arraySet.mSize);
            this.this$0 = arraySet;
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected E elementAt(int i) {
            return (E) this.this$0.valueAt(i);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected void removeAt(int i) {
            this.this$0.removeAt(i);
        }
    }

    public ArraySet() {
        this(0);
    }

    public ArraySet(int i) {
        if (i == 0) {
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            allocArrays(i);
        }
        this.mSize = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(ArraySet<E> arraySet) {
        this();
        if (arraySet != 0) {
            addAll((ArraySet) arraySet);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }

    public ArraySet(E[] eArr) {
        this();
        if (eArr != null) {
            for (E e : eArr) {
                add(e);
            }
        }
    }

    private void allocArrays(int i) {
        if (i == 8) {
            synchronized (sTwiceBaseCacheLock) {
                Object[] objArr = sTwiceBaseCache;
                if (objArr != null) {
                    try {
                        this.mArray = objArr;
                        sTwiceBaseCache = (Object[]) objArr[0];
                        int[] iArr = (int[]) objArr[1];
                        this.mHashes = iArr;
                        if (iArr != null) {
                            objArr[1] = null;
                            objArr[0] = null;
                            sTwiceBaseCacheSize--;
                            return;
                        }
                    } catch (ClassCastException e) {
                    }
                    System.out.println(NPStringFog.decode(new byte[]{39, 68, 75, 81, 64, 102, 3, 66, 25, 118, 86, 64, 8, 82, 25, 83, 86, 71, 20, 67, 73, 68, 25, 116, 20, 68, 88, 73, 106, 80, 18, 22, 90, 81, 90, 93, 3, 12, 25, 107, 9, 104, 91}, "f69095", 486969414L) + objArr[0] + NPStringFog.decode(new byte[]{65, 109, 0, 104, 10}, "a61579", 1212948499L) + objArr[1]);
                    sTwiceBaseCache = null;
                    sTwiceBaseCacheSize = 0;
                }
            }
        } else if (i == 4) {
            synchronized (sBaseCacheLock) {
                Object[] objArr2 = sBaseCache;
                if (objArr2 != null) {
                    try {
                        this.mArray = objArr2;
                        sBaseCache = (Object[]) objArr2[0];
                        int[] iArr2 = (int[]) objArr2[1];
                        this.mHashes = iArr2;
                        if (iArr2 != null) {
                            objArr2[1] = null;
                            objArr2[0] = null;
                            sBaseCacheSize--;
                            return;
                        }
                    } catch (ClassCastException e2) {
                    }
                    System.out.println(NPStringFog.decode(new byte[]{113, 22, 67, 84, 64, 54, 85, 16, 17, 115, 86, 16, 94, 0, 17, 86, 86, 23, 66, 17, 65, 65, 25, 36, 66, 22, 80, 76, 106, 0, 68, 68, 82, 84, 90, 13, 85, 94, 17, 110, 9, 56, 13}, "0d159e", 1.410362887E9d) + objArr2[0] + NPStringFog.decode(new byte[]{22, 111, 83, 104, 13}, "64b509", -1.5200196E9f) + objArr2[1]);
                    sBaseCache = null;
                    sBaseCacheSize = 0;
                }
            }
        }
        this.mHashes = new int[i];
        this.mArray = new Object[i];
    }

    private int binarySearch(int i) {
        try {
            return ContainerHelpers.binarySearch(this.mHashes, this.mSize, i);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ConcurrentModificationException();
        }
    }

    private static void freeArrays(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (sTwiceBaseCacheLock) {
                if (sTwiceBaseCacheSize < 10) {
                    objArr[0] = sTwiceBaseCache;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    sTwiceBaseCache = objArr;
                    sTwiceBaseCacheSize++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (sBaseCacheLock) {
                if (sBaseCacheSize < 10) {
                    objArr[0] = sBaseCache;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    sBaseCache = objArr;
                    sBaseCacheSize++;
                }
            }
        }
    }

    private int indexOf(Object obj, int i) {
        int i2 = this.mSize;
        if (i2 == 0) {
            return -1;
        }
        int iBinarySearch = binarySearch(i);
        if (iBinarySearch < 0 || obj.equals(this.mArray[iBinarySearch])) {
            return iBinarySearch;
        }
        int i3 = iBinarySearch + 1;
        while (i3 < i2 && this.mHashes[i3] == i) {
            if (obj.equals(this.mArray[i3])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iBinarySearch - 1; i4 >= 0 && this.mHashes[i4] == i; i4--) {
            if (obj.equals(this.mArray[i4])) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    private int indexOfNull() {
        int i = this.mSize;
        if (i == 0) {
            return -1;
        }
        int iBinarySearch = binarySearch(0);
        if (iBinarySearch < 0 || this.mArray[iBinarySearch] == null) {
            return iBinarySearch;
        }
        int i2 = iBinarySearch + 1;
        while (i2 < i && this.mHashes[i2] == 0) {
            if (this.mArray[i2] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iBinarySearch - 1; i3 >= 0 && this.mHashes[i3] == 0; i3--) {
            if (this.mArray[i3] == null) {
                return i3;
            }
        }
        return i2 ^ (-1);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int iHashCode;
        int iIndexOf;
        int i = 8;
        int i2 = this.mSize;
        if (e == null) {
            iIndexOf = indexOfNull();
            iHashCode = 0;
        } else {
            iHashCode = e.hashCode();
            iIndexOf = indexOf(e, iHashCode);
        }
        if (iIndexOf >= 0) {
            return false;
        }
        int i3 = iIndexOf ^ (-1);
        if (i2 >= this.mHashes.length) {
            if (i2 >= 8) {
                i = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i = 4;
            }
            int[] iArr = this.mHashes;
            Object[] objArr = this.mArray;
            allocArrays(i);
            if (i2 != this.mSize) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.mHashes;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.mArray, 0, objArr.length);
            }
            freeArrays(iArr, objArr, i2);
        }
        if (i3 < i2) {
            int[] iArr3 = this.mHashes;
            System.arraycopy(iArr3, i3, iArr3, i3 + 1, i2 - i3);
            Object[] objArr2 = this.mArray;
            System.arraycopy(objArr2, i3, objArr2, i3 + 1, i2 - i3);
        }
        int i4 = this.mSize;
        if (i2 == i4) {
            int[] iArr4 = this.mHashes;
            if (i3 < iArr4.length) {
                iArr4[i3] = iHashCode;
                this.mArray[i3] = e;
                this.mSize = i4 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void addAll(ArraySet<? extends E> arraySet) {
        int i = arraySet.mSize;
        ensureCapacity(this.mSize + i);
        if (this.mSize != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                add(arraySet.valueAt(i2));
            }
        } else if (i > 0) {
            System.arraycopy(arraySet.mHashes, 0, this.mHashes, 0, i);
            System.arraycopy(arraySet.mArray, 0, this.mArray, 0, i);
            if (this.mSize != 0) {
                throw new ConcurrentModificationException();
            }
            this.mSize = i;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        ensureCapacity(this.mSize + collection.size());
        boolean zAdd = false;
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (this.mSize != 0) {
            int[] iArr = this.mHashes;
            Object[] objArr = this.mArray;
            int i = this.mSize;
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
            this.mSize = 0;
            freeArrays(iArr, objArr, i);
        }
        if (this.mSize != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public void ensureCapacity(int i) {
        int i2 = this.mSize;
        if (this.mHashes.length < i) {
            int[] iArr = this.mHashes;
            Object[] objArr = this.mArray;
            allocArrays(i);
            int i3 = this.mSize;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.mHashes, 0, i3);
                System.arraycopy(objArr, 0, this.mArray, 0, this.mSize);
            }
            freeArrays(iArr, objArr, this.mSize);
        }
        if (this.mSize != i2) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        for (int i = 0; i < this.mSize; i++) {
            try {
                if (!set.contains(valueAt(i))) {
                    return false;
                }
            } catch (ClassCastException e) {
                return false;
            } catch (NullPointerException e2) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.mHashes;
        int i = this.mSize;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public int indexOf(Object obj) {
        return obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new ElementIterator(this);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public boolean removeAll(ArraySet<? extends E> arraySet) {
        int i = arraySet.mSize;
        int i2 = this.mSize;
        for (int i3 = 0; i3 < i; i3++) {
            remove(arraySet.valueAt(i3));
        }
        return i2 != this.mSize;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        boolean zRemove = false;
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    public E removeAt(int i) {
        int i2;
        int i3 = this.mSize;
        E e = (E) this.mArray[i];
        if (i3 <= 1) {
            clear();
        } else {
            int i4 = i3 - 1;
            int[] iArr = this.mHashes;
            if (iArr.length <= 8 || (i2 = this.mSize) >= iArr.length / 3) {
                if (i < i4) {
                    System.arraycopy(iArr, i + 1, iArr, i, i4 - i);
                    Object[] objArr = this.mArray;
                    System.arraycopy(objArr, i + 1, objArr, i, i4 - i);
                }
                this.mArray[i4] = null;
            } else {
                int i5 = i2 > 8 ? (i2 >> 1) + i2 : 8;
                int[] iArr2 = this.mHashes;
                Object[] objArr2 = this.mArray;
                allocArrays(i5);
                if (i > 0) {
                    System.arraycopy(iArr2, 0, this.mHashes, 0, i);
                    System.arraycopy(objArr2, 0, this.mArray, 0, i);
                }
                if (i < i4) {
                    System.arraycopy(iArr2, i + 1, this.mHashes, i, i4 - i);
                    System.arraycopy(objArr2, i + 1, this.mArray, i, i4 - i);
                }
            }
            if (i3 != this.mSize) {
                throw new ConcurrentModificationException();
            }
            this.mSize = i4;
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.mSize - 1; i >= 0; i--) {
            if (!collection.contains(this.mArray[i])) {
                removeAt(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.mSize;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.mSize;
        Object[] objArr = new Object[i];
        System.arraycopy(this.mArray, 0, objArr, 0, i);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        Object[] objArr = tArr.length < this.mSize ? (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.mSize)) : tArr;
        System.arraycopy(this.mArray, 0, objArr, 0, this.mSize);
        int length = objArr.length;
        int i = this.mSize;
        if (length > i) {
            objArr[i] = null;
        }
        return (T[]) objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return NPStringFog.decode(new byte[]{79, 25}, "4d87f0", 517);
        }
        StringBuilder sb = new StringBuilder(this.mSize * 14);
        sb.append('{');
        for (int i = 0; i < this.mSize; i++) {
            if (i > 0) {
                sb.append(NPStringFog.decode(new byte[]{31, 67}, "3c9b03", true, false));
            }
            E eValueAt = valueAt(i);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append(NPStringFog.decode(new byte[]{75, 77, 92, 95, 23, 69, 48, 92, 64, 31}, "c946de", -1.867049519E9d));
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public E valueAt(int i) {
        return (E) this.mArray[i];
    }
}
