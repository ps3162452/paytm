package com.google.zxing;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public abstract class LuminanceSource {
    private final int height;
    private final int width;

    protected LuminanceSource(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{108, 94, 11, 17, 17, 90, 77, 91, 11, 12, 80, 88, 91, 83, 66, 17, 94, 67, 74, 85, 7, 66, 85, 89, 93, 69, 66, 12, 94, 66, 24, 69, 23, 18, 65, 89, 74, 66, 66, 1, 67, 89, 72, 70, 11, 12, 86, 24}, "86bb16", 1.7898668E9f));
    }

    public final int getHeight() {
        return this.height;
    }

    public abstract byte[] getMatrix();

    public abstract byte[] getRow(int i, byte[] bArr);

    public final int getWidth() {
        return this.width;
    }

    public LuminanceSource invert() {
        return new InvertedLuminanceSource(this);
    }

    public boolean isCropSupported() {
        return false;
    }

    public boolean isRotateSupported() {
        return false;
    }

    public LuminanceSource rotateCounterClockwise() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{54, 90, 80, 18, 17, 8, 23, 95, 80, 15, 80, 10, 1, 87, 25, 18, 94, 17, 16, 81, 92, 65, 85, 11, 7, 65, 25, 15, 94, 16, 66, 65, 76, 17, 65, 11, 16, 70, 25, 19, 94, 16, 3, 70, 80, 14, 95, 68, 0, 75, 25, 88, 1, 68, 6, 87, 94, 19, 84, 1, 17, 28}, "b29a1d", 1.6290945E9f));
    }

    public LuminanceSource rotateCounterClockwise45() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{49, 13, 88, 70, 17, 9, 16, 8, 88, 91, 80, 11, 6, 0, 17, 70, 94, 16, 23, 6, 84, 21, 85, 10, 0, 22, 17, 91, 94, 17, 69, 22, 68, 69, 65, 10, 23, 17, 17, 71, 94, 17, 4, 17, 88, 90, 95, 69, 7, 28, 17, 1, 4, 69, 1, 0, 86, 71, 84, 0, 22, 75}, "ee151e", false));
    }

    public final String toString() {
        byte[] bArr = new byte[this.width];
        StringBuilder sb = new StringBuilder(this.height * (this.width + 1));
        byte[] row = bArr;
        for (int i = 0; i < this.height; i++) {
            row = getRow(i, row);
            for (int i2 = 0; i2 < this.width; i2++) {
                int i3 = row[i2] & 255;
                sb.append(i3 < 64 ? '#' : i3 < 128 ? '+' : i3 < 192 ? '.' : ' ');
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
