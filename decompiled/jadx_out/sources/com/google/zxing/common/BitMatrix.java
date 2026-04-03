package com.google.zxing.common;

import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class BitMatrix implements Cloneable {
    private final int[] bits;
    private final int height;
    private final int rowSize;
    private final int width;

    public BitMatrix(int i) {
        this(i, i);
    }

    public BitMatrix(int i, int i2) {
        if (i < 1 || i2 < 1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 12, 69, 13, 65, 93, 90, 14, 84, 11, 18, 80, 92, 13, 66, 69, 12, 76, 64, 23, 17, 7, 4, 25, 84, 17, 84, 4, 21, 92, 65, 67, 69, 13, 0, 87, 19, 83}, "3c1ea9", false));
        }
        this.width = i;
        this.height = i2;
        this.rowSize = (i + 31) / 32;
        this.bits = new int[this.rowSize * i2];
    }

    private BitMatrix(int i, int i2, int i3, int[] iArr) {
        this.width = i;
        this.height = i2;
        this.rowSize = i3;
        this.bits = iArr;
    }

    public static BitMatrix parse(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        boolean[] zArr = new boolean[str.length()];
        int length = 0;
        int i = 0;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (length < str.length()) {
            if (str.charAt(length) == '\n' || str.charAt(length) == '\r') {
                if (i4 > i3) {
                    if (i2 == -1) {
                        i2 = i4 - i3;
                    } else if (i4 - i3 != i2) {
                        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{22, 92, 18, 25, 93, 93, 10, 84, 17, 81, 66, 24, 0, 92, 69, 87, 94, 76, 68, 94, 4, 77, 82, 80}, "d3e918", -15207321L));
                    }
                    i++;
                    i3 = i4;
                }
                length++;
            } else if (str.substring(length, str2.length() + length).equals(str2)) {
                length += str2.length();
                zArr[i4] = true;
                i4++;
            } else {
                if (!str.substring(length, str3.length() + length).equals(str3)) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{95, 91, 94, 86, 86, 86, 90, 23, 81, 91, 80, 69, 87, 84, 70, 86, 67, 23, 83, 89, 81, 92, 68, 89, 66, 82, 64, 86, 85, 13, 22}, "672317", -8.6086161E7d) + str.substring(length));
                }
                length += str3.length();
                zArr[i4] = false;
                i4++;
            }
        }
        if (i4 > i3) {
            if (i2 == -1) {
                i2 = i4 - i3;
            } else if (i4 - i3 != i2) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{68, 92, 68, 17, 13, 82, 88, 84, 71, 89, 18, 23, 82, 92, 19, 95, 14, 67, 22, 94, 82, 69, 2, 95}, "6331a7", false));
            }
            i++;
        }
        BitMatrix bitMatrix = new BitMatrix(i2, i);
        for (int i5 = 0; i5 < i4; i5++) {
            if (zArr[i5]) {
                bitMatrix.set(i5 % i2, i5 / i2);
            }
        }
        return bitMatrix;
    }

    public void clear() {
        int length = this.bits.length;
        for (int i = 0; i < length; i++) {
            this.bits[i] = 0;
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitMatrix m97clone() {
        return new BitMatrix(this.width, this.height, this.rowSize, (int[]) this.bits.clone());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitMatrix)) {
            return false;
        }
        BitMatrix bitMatrix = (BitMatrix) obj;
        return this.width == bitMatrix.width && this.height == bitMatrix.height && this.rowSize == bitMatrix.rowSize && Arrays.equals(this.bits, bitMatrix.bits);
    }

    public void flip(int i, int i2) {
        int i3 = (this.rowSize * i2) + (i / 32);
        int[] iArr = this.bits;
        iArr[i3] = iArr[i3] ^ (1 << (i & 31));
    }

    public boolean get(int i, int i2) {
        return ((this.bits[(this.rowSize * i2) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public int[] getBottomRightOnBit() {
        int length = this.bits.length - 1;
        while (length >= 0 && this.bits[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i = length / this.rowSize;
        int i2 = this.rowSize;
        int i3 = 31;
        while (true) {
            int i4 = i3;
            if ((this.bits[length] >>> i4) != 0) {
                return new int[]{i4 + ((length % i2) * 32), i};
            }
            i3 = i4 - 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int[] getEnclosingRectangle() {
        /*
            r10 = this;
            r0 = -1
            r1 = 0
            int r3 = r10.width
            int r2 = r10.height
            r4 = r2
            r5 = r3
            r3 = r0
            r2 = r0
            r0 = r1
        Lb:
            int r6 = r10.height
            if (r0 >= r6) goto L60
            r6 = r1
        L10:
            int r7 = r10.rowSize
            if (r6 >= r7) goto L5d
            int[] r7 = r10.bits
            int r8 = r10.rowSize
            int r8 = r8 * r0
            int r8 = r8 + r6
            r8 = r7[r8]
            if (r8 == 0) goto L7d
            if (r0 >= r4) goto L21
            r4 = r0
        L21:
            if (r0 <= r2) goto L24
            r2 = r0
        L24:
            int r7 = r6 * 32
            if (r7 >= r5) goto L7b
            r7 = r1
        L29:
            int r9 = 31 - r7
            int r9 = r8 << r9
            if (r9 != 0) goto L32
            int r7 = r7 + 1
            goto L29
        L32:
            int r9 = r6 * 32
            int r9 = r9 + r7
            if (r9 >= r5) goto L7b
            int r5 = r6 * 32
            int r5 = r5 + r7
            r7 = r5
        L3b:
            int r5 = r6 * 32
            int r5 = r5 + 31
            if (r5 <= r3) goto L77
            r5 = 31
        L43:
            int r9 = r8 >>> r5
            if (r9 != 0) goto L4a
            int r5 = r5 + (-1)
            goto L43
        L4a:
            int r8 = r6 * 32
            int r8 = r8 + r5
            if (r8 <= r3) goto L77
            int r3 = r6 * 32
            int r3 = r3 + r5
            r5 = r4
            r4 = r3
            r3 = r2
        L55:
            int r2 = r6 + 1
            r6 = r2
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r7
            goto L10
        L5d:
            int r0 = r0 + 1
            goto Lb
        L60:
            int r3 = r3 - r5
            int r2 = r2 - r4
            if (r3 < 0) goto L66
            if (r2 >= 0) goto L68
        L66:
            r0 = 0
        L67:
            return r0
        L68:
            r0 = 4
            int[] r0 = new int[r0]
            r0[r1] = r5
            r1 = 1
            r0[r1] = r4
            r1 = 2
            r0[r1] = r3
            r1 = 3
            r0[r1] = r2
            goto L67
        L77:
            r5 = r4
            r4 = r3
            r3 = r2
            goto L55
        L7b:
            r7 = r5
            goto L3b
        L7d:
            r7 = r5
            r5 = r4
            r4 = r3
            r3 = r2
            goto L55
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.BitMatrix.getEnclosingRectangle():int[]");
    }

    public int getHeight() {
        return this.height;
    }

    public BitArray getRow(int i, BitArray bitArray) {
        if (bitArray == null || bitArray.getSize() < this.width) {
            bitArray = new BitArray(this.width);
        } else {
            bitArray.clear();
        }
        int i2 = this.rowSize;
        for (int i3 = 0; i3 < this.rowSize; i3++) {
            bitArray.setBulk(i3 * 32, this.bits[(i * i2) + i3]);
        }
        return bitArray;
    }

    public int getRowSize() {
        return this.rowSize;
    }

    public int[] getTopLeftOnBit() {
        int i = 0;
        while (i < this.bits.length && this.bits[i] == 0) {
            i++;
        }
        if (i == this.bits.length) {
            return null;
        }
        int i2 = i / this.rowSize;
        int i3 = this.rowSize;
        int i4 = 0;
        while ((this.bits[i] << (31 - i4)) == 0) {
            i4++;
        }
        return new int[]{((i % i3) * 32) + i4, i2};
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (((((((this.width * 31) + this.width) * 31) + this.height) * 31) + this.rowSize) * 31) + Arrays.hashCode(this.bits);
    }

    public void rotate180() {
        int width = getWidth();
        int height = getHeight();
        BitArray bitArray = new BitArray(width);
        BitArray bitArray2 = new BitArray(width);
        for (int i = 0; i < (height + 1) / 2; i++) {
            bitArray = getRow(i, bitArray);
            bitArray2 = getRow((height - 1) - i, bitArray2);
            bitArray.reverse();
            bitArray2.reverse();
            setRow(i, bitArray2);
            setRow((height - 1) - i, bitArray);
        }
    }

    public void set(int i, int i2) {
        int i3 = (this.rowSize * i2) + (i / 32);
        int[] iArr = this.bits;
        iArr[i3] = iArr[i3] | (1 << (i & 31));
    }

    public void setRegion(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{126, 82, 2, 64, 22, 80, 92, 83, 68, 64, 89, 65, 18, 90, 17, 71, 66, 17, 80, 82, 68, 90, 89, 95, 92, 82, 3, 85, 66, 88, 68, 82}, "27d461", 160451769L));
        }
        if (i4 < 1 || i3 < 1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{124, 83, 90, 2, 89, 16, 20, 87, 93, 1, 17, 19, 93, 82, 71, 13, 17, 9, 65, 69, 71, 69, 83, 1, 20, 87, 71, 69, 93, 1, 85, 69, 71, 69, 0}, "463e1d", false, true));
        }
        int i5 = i + i3;
        int i6 = i2 + i4;
        if (i6 > this.height || i5 > this.width) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{100, 93, 7, 24, 19, 1, 87, 92, 13, 86, 65, 9, 69, 70, 22, 24, 7, 13, 68, 21, 11, 86, 18, 13, 84, 80, 66, 76, 9, 1, 16, 88, 3, 76, 19, 13, 72}, "05b8ad", 988521969L));
        }
        while (i2 < i6) {
            int i7 = this.rowSize;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.bits;
                int i9 = (i2 * i7) + (i8 / 32);
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public void setRow(int i, BitArray bitArray) {
        System.arraycopy(bitArray.getBitArray(), 0, this.bits, this.rowSize * i, this.rowSize);
    }

    public String toString() {
        return toString(NPStringFog.decode(new byte[]{96, 68}, "8d8d88", -1424150475L), "  ");
    }

    public String toString(String str, String str2) {
        return toString(str, str2, "\n");
    }

    @Deprecated
    public String toString(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.height * (this.width + 1));
        for (int i = 0; i < this.height; i++) {
            for (int i2 = 0; i2 < this.width; i2++) {
                sb.append(get(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public void unset(int i, int i2) {
        int i3 = (this.rowSize * i2) + (i / 32);
        int[] iArr = this.bits;
        iArr[i3] = iArr[i3] & ((1 << (i & 31)) ^ (-1));
    }

    public void xor(BitMatrix bitMatrix) {
        if (this.width != bitMatrix.getWidth() || this.height != bitMatrix.getHeight() || this.rowSize != bitMatrix.getRowSize()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{80, 11, 72, 20, 66, 66, 84, 4, 76, 19, 95, 26, 25, 1, 81, 12, 83, 12, 74, 12, 87, 15, 69, 66, 93, 10, 24, 15, 89, 22, 25, 8, 89, 21, 85, 10}, "9e8a6b", 1658968142L));
        }
        BitArray bitArray = new BitArray((this.width / 32) + 1);
        for (int i = 0; i < this.height; i++) {
            int i2 = this.rowSize;
            int[] bitArray2 = bitMatrix.getRow(i, bitArray).getBitArray();
            for (int i3 = 0; i3 < this.rowSize; i3++) {
                int[] iArr = this.bits;
                int i4 = (i * i2) + i3;
                iArr[i4] = iArr[i4] ^ bitArray2[i3];
            }
        }
    }
}
