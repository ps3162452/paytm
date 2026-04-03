package com.google.zxing.qrcode.encoder;

import java.lang.reflect.Array;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class ByteMatrix {
    private final byte[][] bytes;
    private final int height;
    private final int width;

    public ByteMatrix(int i, int i2) {
        this.bytes = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i2, i);
        this.width = i;
        this.height = i2;
    }

    public void clear(byte b) {
        for (int i = 0; i < this.height; i++) {
            for (int i2 = 0; i2 < this.width; i2++) {
                this.bytes[i][i2] = b;
            }
        }
    }

    public byte get(int i, int i2) {
        return this.bytes[i2][i];
    }

    public byte[][] getArray() {
        return this.bytes;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public void set(int i, int i2, byte b) {
        this.bytes[i2][i] = b;
    }

    public void set(int i, int i2, int i3) {
        this.bytes[i2][i] = (byte) i3;
    }

    public void set(int i, int i2, boolean z) {
        this.bytes[i2][i] = (byte) (z ? 1 : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.width * 2 * this.height) + 2);
        for (int i = 0; i < this.height; i++) {
            for (int i2 = 0; i2 < this.width; i2++) {
                switch (this.bytes[i][i2]) {
                    case 0:
                        sb.append(NPStringFog.decode(new byte[]{19, 82}, "3bb491", false, true));
                        break;
                    case 1:
                        sb.append(NPStringFog.decode(new byte[]{67, 5}, "c49f58", false));
                        break;
                    default:
                        sb.append("  ");
                        break;
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
