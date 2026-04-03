package com.google.zxing.common;

import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class BitArray implements Cloneable {
    private int[] bits;
    private int size;

    public BitArray() {
        this.size = 0;
        this.bits = new int[1];
    }

    public BitArray(int i) {
        this.size = i;
        this.bits = makeArray(i);
    }

    BitArray(int[] iArr, int i) {
        this.bits = iArr;
        this.size = i;
    }

    private void ensureCapacity(int i) {
        if (i > this.bits.length * 32) {
            int[] iArrMakeArray = makeArray(i);
            System.arraycopy(this.bits, 0, iArrMakeArray, 0, this.bits.length);
            this.bits = iArrMakeArray;
        }
    }

    private static int[] makeArray(int i) {
        return new int[(i + 31) / 32];
    }

    public void appendBit(boolean z) {
        ensureCapacity(this.size + 1);
        if (z) {
            int[] iArr = this.bits;
            int i = this.size / 32;
            iArr[i] = iArr[i] | (1 << (this.size & 31));
        }
        this.size++;
    }

    public void appendBitArray(BitArray bitArray) {
        int i = bitArray.size;
        ensureCapacity(this.size + i);
        for (int i2 = 0; i2 < i; i2++) {
            appendBit(bitArray.get(i2));
        }
    }

    public void appendBits(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 65, 88, 65, 82, 12, 76, 71, 21, 12, 69, 22, 76, 20, 87, 4, 16, 7, 93, 64, 66, 4, 85, 11, 24, 4, 21, 0, 94, 1, 24, 7, 7}, "845a0e", -1.537288E9f));
        }
        ensureCapacity(this.size + i2);
        while (i2 > 0) {
            appendBit(((i >> (i2 + (-1))) & 1) == 1);
            i2--;
        }
    }

    public void clear() {
        int length = this.bits.length;
        for (int i = 0; i < length; i++) {
            this.bits[i] = 0;
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitArray m96clone() {
        return new BitArray((int[]) this.bits.clone(), this.size);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitArray)) {
            return false;
        }
        BitArray bitArray = (BitArray) obj;
        return this.size == bitArray.size && Arrays.equals(this.bits, bitArray.bits);
    }

    public void flip(int i) {
        int[] iArr = this.bits;
        int i2 = i / 32;
        iArr[i2] = iArr[i2] ^ (1 << (i & 31));
    }

    public boolean get(int i) {
        return (this.bits[i / 32] & (1 << (i & 31))) != 0;
    }

    public int[] getBitArray() {
        return this.bits;
    }

    public int getNextSet(int i) {
        if (i >= this.size) {
            return this.size;
        }
        int i2 = i / 32;
        int i3 = this.bits[i2] & (((1 << (i & 31)) - 1) ^ (-1));
        while (i3 == 0) {
            i2++;
            if (i2 == this.bits.length) {
                return this.size;
            }
            i3 = this.bits[i2];
        }
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i3) + (i2 * 32);
        return iNumberOfTrailingZeros > this.size ? this.size : iNumberOfTrailingZeros;
    }

    public int getNextUnset(int i) {
        if (i >= this.size) {
            return this.size;
        }
        int i2 = i / 32;
        int i3 = (this.bits[i2] ^ (-1)) & (((1 << (i & 31)) - 1) ^ (-1));
        while (i3 == 0) {
            i2++;
            if (i2 == this.bits.length) {
                return this.size;
            }
            i3 = this.bits[i2] ^ (-1);
        }
        int iNumberOfTrailingZeros = (i2 * 32) + Integer.numberOfTrailingZeros(i3);
        return iNumberOfTrailingZeros > this.size ? this.size : iNumberOfTrailingZeros;
    }

    public int getSize() {
        return this.size;
    }

    public int getSizeInBytes() {
        return (this.size + 7) / 8;
    }

    public int hashCode() {
        return (this.size * 31) + Arrays.hashCode(this.bits);
    }

    public boolean isRange(int i, int i2, boolean z) {
        int i3;
        if (i2 < i) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return true;
        }
        int i4 = i2 - 1;
        int i5 = i / 32;
        int i6 = i4 / 32;
        int i7 = i5;
        while (i7 <= i6) {
            int i8 = i7 > i5 ? 0 : i & 31;
            int i9 = i7 < i6 ? 31 : i4 & 31;
            if (i8 == 0 && i9 == 31) {
                i3 = -1;
            } else {
                int i10 = i8;
                i3 = 0;
                while (i10 <= i9) {
                    int i11 = (1 << i10) | i3;
                    i10++;
                    i3 = i11;
                }
            }
            if ((i3 & this.bits[i7]) != (z ? i3 : 0)) {
                return false;
            }
            i7++;
        }
        return true;
    }

    public void reverse() {
        int i;
        int[] iArr = new int[this.bits.length];
        int i2 = (this.size - 1) / 32;
        int i3 = i2 + 1;
        for (int i4 = 0; i4 < i3; i4++) {
            long j = this.bits[i4];
            long j2 = ((j & 1431655765) << 1) | ((j >> 1) & 1431655765);
            long j3 = ((j2 & 858993459) << 2) | ((j2 >> 2) & 858993459);
            long j4 = ((j3 & 252645135) << 4) | ((j3 >> 4) & 252645135);
            long j5 = ((j4 & 16711935) << 8) | ((j4 >> 8) & 16711935);
            iArr[i2 - i4] = (int) (((j5 & 65535) << 16) | ((j5 >> 16) & 65535));
        }
        if (this.size != i3 * 32) {
            int i5 = (i3 * 32) - this.size;
            int i6 = 1;
            int i7 = 0;
            while (true) {
                i = i6;
                if (i7 >= 31 - i5) {
                    break;
                }
                i6 = (i << 1) | 1;
                i7++;
            }
            int i8 = (iArr[0] >> i5) & i;
            for (int i9 = 1; i9 < i3; i9++) {
                int i10 = iArr[i9];
                iArr[i9 - 1] = i8 | (i10 << (32 - i5));
                i8 = (i10 >> i5) & i;
            }
            iArr[i3 - 1] = i8;
        }
        this.bits = iArr;
    }

    public void set(int i) {
        int[] iArr = this.bits;
        int i2 = i / 32;
        iArr[i2] = iArr[i2] | (1 << (i & 31));
    }

    public void setBulk(int i, int i2) {
        this.bits[i / 32] = i2;
    }

    public void setRange(int i, int i2) {
        int i3;
        if (i2 < i) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return;
        }
        int i4 = i2 - 1;
        int i5 = i / 32;
        int i6 = i4 / 32;
        int i7 = i5;
        while (i7 <= i6) {
            int i8 = i7 > i5 ? 0 : i & 31;
            int i9 = i7 < i6 ? 31 : i4 & 31;
            if (i8 == 0 && i9 == 31) {
                i3 = -1;
            } else {
                int i10 = i8;
                i3 = 0;
                while (i10 <= i9) {
                    int i11 = (1 << i10) | i3;
                    i10++;
                    i3 = i11;
                }
            }
            int[] iArr = this.bits;
            iArr[i7] = i3 | iArr[i7];
            i7++;
        }
    }

    public void toBytes(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        int i5 = 0;
        while (i5 < i3) {
            int i6 = i4;
            int i7 = 0;
            for (int i8 = 0; i8 < 8; i8++) {
                if (get(i6)) {
                    i7 |= 1 << (7 - i8);
                }
                i6++;
            }
            bArr[i2 + i5] = (byte) i7;
            i5++;
            i4 = i6;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.size);
        for (int i = 0; i < this.size; i++) {
            if ((i & 7) == 0) {
                sb.append(' ');
            }
            sb.append(get(i) ? 'X' : '.');
        }
        return sb.toString();
    }

    public void xor(BitArray bitArray) {
        if (this.bits.length != bitArray.bits.length) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{54, 92, 76, 93, 17, 66, 1, 90, 88, 31, 22, 66, 8, 84, 66, 91, 10}, "e568bb", -1547884969L));
        }
        for (int i = 0; i < this.bits.length; i++) {
            int[] iArr = this.bits;
            iArr[i] = iArr[i] ^ bitArray.bits[i];
        }
    }
}
