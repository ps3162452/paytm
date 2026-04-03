package androidx.collection;

import n.NPStringFog;

/* JADX INFO: loaded from: classes5.dex */
public final class CircularArray<E> {
    private int mCapacityBitmask;
    private E[] mElements;
    private int mHead;
    private int mTail;

    public CircularArray() {
        this(8);
    }

    public CircularArray(int i) {
        if (i < 1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{6, 7, 66, 5, 84, 10, 17, 31, 18, 9, 66, 16, 17, 70, 80, 1, 23, 93, 88, 70, 3}, "ef2d7c", false));
        }
        if (i > 1073741824) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{85, 85, 20, 3, 91, 95, 66, 77, 68, 15, 77, 69, 66, 20, 6, 7, 24, 10, 11, 20, 86, 60, 11, 6}, "64db86", -9.89732171E8d));
        }
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        this.mCapacityBitmask = i - 1;
        this.mElements = (E[]) new Object[i];
    }

    private void doubleCapacity() {
        E[] eArr = this.mElements;
        int length = eArr.length;
        int i = this.mHead;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 < 0) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{127, 2, 28, 65, 2, 69, 64, 2, 29, 65, 0, 86, 66, 2, 7, 8, 23, 78, 18, 6, 28, 2, 6, 82, 86, 6, 0}, "2cdac7", -1.6493205E8f));
        }
        E[] eArr2 = (E[]) new Object[i3];
        System.arraycopy(eArr, i, eArr2, 0, i2);
        System.arraycopy(this.mElements, 0, eArr2, i2, this.mHead);
        this.mElements = eArr2;
        this.mHead = 0;
        this.mTail = length;
        this.mCapacityBitmask = i3 - 1;
    }

    public void addFirst(E e) {
        int i = (this.mHead - 1) & this.mCapacityBitmask;
        this.mHead = i;
        this.mElements[i] = e;
        if (i == this.mTail) {
            doubleCapacity();
        }
    }

    public void addLast(E e) {
        E[] eArr = this.mElements;
        int i = this.mTail;
        eArr[i] = e;
        int i2 = this.mCapacityBitmask & (i + 1);
        this.mTail = i2;
        if (i2 == this.mHead) {
            doubleCapacity();
        }
    }

    public void clear() {
        removeFromStart(size());
    }

    public E get(int i) {
        if (i < 0 || i >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[(this.mHead + i) & this.mCapacityBitmask];
    }

    public E getFirst() {
        int i = this.mHead;
        if (i != this.mTail) {
            return this.mElements[i];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E getLast() {
        int i = this.mHead;
        int i2 = this.mTail;
        if (i != i2) {
            return this.mElements[(i2 - 1) & this.mCapacityBitmask];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public boolean isEmpty() {
        return this.mHead == this.mTail;
    }

    public E popFirst() {
        int i = this.mHead;
        if (i == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        E[] eArr = this.mElements;
        E e = eArr[i];
        eArr[i] = null;
        this.mHead = (i + 1) & this.mCapacityBitmask;
        return e;
    }

    public E popLast() {
        int i = this.mHead;
        int i2 = this.mTail;
        if (i == i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.mCapacityBitmask & (i2 - 1);
        E[] eArr = this.mElements;
        E e = eArr[i3];
        eArr[i3] = null;
        this.mTail = i3;
        return e;
    }

    public void removeFromEnd(int i) {
        int i2;
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.mTail;
        int i4 = i < i3 ? i3 - i : 0;
        int i5 = i4;
        while (true) {
            i2 = this.mTail;
            if (i5 >= i2) {
                break;
            }
            this.mElements[i5] = null;
            i5++;
        }
        int i6 = i2 - i4;
        int i7 = i - i6;
        this.mTail = i2 - i6;
        if (i7 > 0) {
            int length = this.mElements.length;
            this.mTail = length;
            int i8 = length - i7;
            for (int i9 = i8; i9 < this.mTail; i9++) {
                this.mElements[i9] = null;
            }
            this.mTail = i8;
        }
    }

    public void removeFromStart(int i) {
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = this.mElements.length;
        int i2 = this.mHead;
        if (i < length - i2) {
            length = i2 + i;
        }
        for (int i3 = this.mHead; i3 < length; i3++) {
            this.mElements[i3] = null;
        }
        int i4 = this.mHead;
        int i5 = length - i4;
        int i6 = i - i5;
        this.mHead = (i5 + i4) & this.mCapacityBitmask;
        if (i6 > 0) {
            for (int i7 = 0; i7 < i6; i7++) {
                this.mElements[i7] = null;
            }
            this.mHead = i6;
        }
    }

    public int size() {
        return (this.mTail - this.mHead) & this.mCapacityBitmask;
    }
}
