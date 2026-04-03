package com.google.zxing.common;

/* JADX INFO: loaded from: classes65.dex */
public final class BitSource {
    private int bitOffset;
    private int byteOffset;
    private final byte[] bytes;

    public BitSource(byte[] bArr) {
        this.bytes = bArr;
    }

    public int available() {
        return ((this.bytes.length - this.byteOffset) * 8) - this.bitOffset;
    }

    public int getBitOffset() {
        return this.bitOffset;
    }

    public int getByteOffset() {
        return this.byteOffset;
    }

    public int readBits(int i) {
        int i2;
        int i3;
        if (i < 1 || i > 32 || i > available()) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
        if (this.bitOffset > 0) {
            int i4 = 8 - this.bitOffset;
            int i5 = i < i4 ? i : i4;
            int i6 = i4 - i5;
            int i7 = (this.bytes[this.byteOffset] & ((255 >> (8 - i5)) << i6)) >> i6;
            i2 = i - i5;
            this.bitOffset = i5 + this.bitOffset;
            if (this.bitOffset == 8) {
                this.bitOffset = 0;
                this.byteOffset++;
                i3 = i7;
            } else {
                i3 = i7;
            }
        } else {
            i2 = i;
            i3 = 0;
        }
        if (i2 <= 0) {
            return i3;
        }
        while (i2 >= 8) {
            int i8 = (this.bytes[this.byteOffset] & 255) | (i3 << 8);
            this.byteOffset++;
            i2 -= 8;
            i3 = i8;
        }
        if (i2 <= 0) {
            return i3;
        }
        int i9 = 8 - i2;
        int i10 = (i3 << i2) | ((this.bytes[this.byteOffset] & ((255 >> i9) << i9)) >> i9);
        this.bitOffset = i2 + this.bitOffset;
        return i10;
    }
}
