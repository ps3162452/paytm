package com.google.zxing;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class RGBLuminanceSource extends LuminanceSource {
    private final int dataHeight;
    private final int dataWidth;
    private final int left;
    private final byte[] luminances;
    private final int top;

    public RGBLuminanceSource(int i, int i2, int[] iArr) {
        super(i, i2);
        this.dataWidth = i;
        this.dataHeight = i2;
        this.left = 0;
        this.top = 0;
        this.luminances = new byte[i * i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * i;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = iArr[i4 + i5];
                int i7 = (i6 >> 16) & 255;
                int i8 = (i6 >> 8) & 255;
                int i9 = i6 & 255;
                if (i7 == i8 && i8 == i9) {
                    this.luminances[i4 + i5] = (byte) i7;
                } else {
                    this.luminances[i4 + i5] = (byte) ((i9 + (i7 + (i8 * 2))) / 4);
                }
            }
        }
    }

    private RGBLuminanceSource(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        super(i5, i6);
        if (i3 + i5 > i || i4 + i6 > i2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 66, 12, 20, 22, 16, 93, 83, 23, 5, 88, 5, 84, 85, 67, 0, 89, 7, 75, 16, 13, 11, 66, 66, 94, 89, 23, 68, 65, 11, 76, 88, 10, 10, 22, 11, 85, 81, 4, 1, 22, 6, 89, 68, 2, 74}, "80cd6b", -1.5626115E9f));
        }
        this.luminances = bArr;
        this.dataWidth = i;
        this.dataHeight = i2;
        this.left = i3;
        this.top = i4;
    }

    @Override // com.google.zxing.LuminanceSource
    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        return new RGBLuminanceSource(this.luminances, this.dataWidth, this.dataHeight, this.left + i, this.top + i2, i3, i4);
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        if (width == this.dataWidth && height == this.dataHeight) {
            return this.luminances;
        }
        int i = width * height;
        byte[] bArr = new byte[i];
        int i2 = (this.top * this.dataWidth) + this.left;
        if (width == this.dataWidth) {
            System.arraycopy(this.luminances, i2, bArr, 0, i);
            return bArr;
        }
        byte[] bArr2 = this.luminances;
        for (int i3 = 0; i3 < height; i3++) {
            System.arraycopy(bArr2, i2, bArr, i3 * width, width);
            i2 += this.dataWidth;
        }
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int i, byte[] bArr) {
        if (i < 0 || i >= getHeight()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{102, 81, 73, 77, 4, 17, 64, 81, 92, 24, 19, 13, 67, 20, 81, 75, 65, 13, 65, 64, 75, 81, 5, 7, 20, 64, 80, 93, 65, 11, 89, 85, 95, 93, 91, 66}, "4488ab", -7.93178125E8d) + i);
        }
        int width = getWidth();
        if (bArr == null || bArr.length < width) {
            bArr = new byte[width];
        }
        int i2 = this.top;
        System.arraycopy(this.luminances, ((i2 + i) * this.dataWidth) + this.left, bArr, 0, width);
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }
}
