package com.google.zxing;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class PlanarYUVLuminanceSource extends LuminanceSource {
    private static final int THUMBNAIL_SCALE_FACTOR = 2;
    private final int dataHeight;
    private final int dataWidth;
    private final int left;
    private final int top;
    private final byte[] yuvData;

    public PlanarYUVLuminanceSource(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(i5, i6);
        if (i3 + i5 > i || i4 + i6 > i2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 64, 86, 17, 25, 75, 80, 81, 77, 0, 87, 94, 89, 87, 25, 5, 86, 92, 70, 18, 87, 14, 77, 25, 83, 91, 77, 65, 78, 80, 65, 90, 80, 15, 25, 80, 88, 83, 94, 4, 25, 93, 84, 70, 88, 79}, "529a99", 1.109817738E9d));
        }
        this.yuvData = bArr;
        this.dataWidth = i;
        this.dataHeight = i2;
        this.left = i3;
        this.top = i4;
        if (z) {
            reverseHorizontal(i5, i6);
        }
    }

    private void reverseHorizontal(int i, int i2) {
        byte[] bArr = this.yuvData;
        int i3 = this.left + (this.top * this.dataWidth);
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i / 2;
            int i6 = (i3 + i) - 1;
            int i7 = i3;
            while (i7 < i3 + i5) {
                byte b = bArr[i7];
                bArr[i7] = bArr[i6];
                bArr[i6] = b;
                i7++;
                i6--;
            }
            i3 += this.dataWidth;
        }
    }

    @Override // com.google.zxing.LuminanceSource
    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        return new PlanarYUVLuminanceSource(this.yuvData, this.dataWidth, this.dataHeight, this.left + i, this.top + i2, i3, i4, false);
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        if (width == this.dataWidth && height == this.dataHeight) {
            return this.yuvData;
        }
        int i = width * height;
        byte[] bArr = new byte[i];
        int i2 = (this.top * this.dataWidth) + this.left;
        if (width == this.dataWidth) {
            System.arraycopy(this.yuvData, i2, bArr, 0, i);
            return bArr;
        }
        byte[] bArr2 = this.yuvData;
        for (int i3 = 0; i3 < height; i3++) {
            System.arraycopy(bArr2, i2, bArr, i3 * width, width);
            i2 += this.dataWidth;
        }
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int i, byte[] bArr) {
        if (i < 0 || i >= getHeight()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{51, 6, 64, 71, 84, 70, 21, 6, 85, 18, 67, 90, 22, 67, 88, 65, 17, 90, 20, 23, 66, 91, 85, 80, 65, 23, 89, 87, 17, 92, 12, 2, 86, 87, 11, 21}, "ac1215", -1.559067177E9d) + i);
        }
        int width = getWidth();
        if (bArr == null || bArr.length < width) {
            bArr = new byte[width];
        }
        int i2 = this.top;
        System.arraycopy(this.yuvData, ((i2 + i) * this.dataWidth) + this.left, bArr, 0, width);
        return bArr;
    }

    public int getThumbnailHeight() {
        return getHeight() / 2;
    }

    public int getThumbnailWidth() {
        return getWidth() / 2;
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }

    public int[] renderThumbnail() {
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int[] iArr = new int[width * height];
        byte[] bArr = this.yuvData;
        int i = (this.top * this.dataWidth) + this.left;
        for (int i2 = 0; i2 < height; i2++) {
            for (int i3 = 0; i3 < width; i3++) {
                iArr[(i2 * width) + i3] = (-16777216) | ((bArr[(i3 * 2) + i] & 255) * 65793);
            }
            i += this.dataWidth * 2;
        }
        return iArr;
    }
}
