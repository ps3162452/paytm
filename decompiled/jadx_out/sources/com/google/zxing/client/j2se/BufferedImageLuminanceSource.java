package com.google.zxing.client.j2se;

import com.google.zxing.LuminanceSource;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import n.NPStringFog;

/* JADX INFO: loaded from: classes66.dex */
public final class BufferedImageLuminanceSource extends LuminanceSource {
    private final BufferedImage image;
    private final int left;
    private int[] rgbData;
    private final int top;

    public BufferedImageLuminanceSource(BufferedImage bufferedImage) {
        this(bufferedImage, 0, 0, bufferedImage.getWidth(), bufferedImage.getHeight());
    }

    public BufferedImageLuminanceSource(BufferedImage bufferedImage, int i, int i2, int i3, int i4) {
        super(i3, i4);
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        if (i + i3 > width || i2 + i4 > height) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 64, 88, 73, 69, 64, 4, 81, 67, 88, 11, 85, 13, 87, 23, 93, 10, 87, 18, 18, 89, 86, 17, 18, 7, 91, 67, 25, 18, 91, 21, 90, 94, 87, 69, 91, 12, 83, 80, 92, 69, 86, 0, 70, 86, 23}, "a279e2", -6.0997254E8f));
        }
        this.image = bufferedImage;
        this.left = i;
        this.top = i2;
    }

    @Override // com.google.zxing.LuminanceSource
    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        return new BufferedImageLuminanceSource(this.image, i, i2, i3, i4);
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i = width * height;
        byte[] bArr = new byte[i];
        int[] iArr = new int[i];
        this.image.getRGB(this.left, this.top, width, height, iArr, 0, width);
        for (int i2 = 0; i2 < height; i2++) {
            int i3 = i2 * width;
            for (int i4 = 0; i4 < width; i4++) {
                int i5 = iArr[i3 + i4];
                bArr[i3 + i4] = (byte) ((((i5 & 255) * 117) + ((((i5 >> 16) & 255) * 306) + (((i5 >> 8) & 255) * 601))) >> 10);
            }
        }
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int i, byte[] bArr) {
        if (i < 0 || i >= getHeight()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{107, 1, 20, 23, 85, 65, 77, 1, 1, 66, 66, 93, 78, 68, 12, 17, 16, 93, 76, 16, 22, 11, 84, 87, 25, 16, 13, 7, 16, 91, 84, 5, 2, 7, 10, 18}, "9deb02", 26815) + i);
        }
        int width = getWidth();
        if (bArr == null || bArr.length < width) {
            bArr = new byte[width];
        }
        if (this.rgbData == null || this.rgbData.length < width) {
            this.rgbData = new int[width];
        }
        this.image.getRGB(this.left, this.top + i, width, 1, this.rgbData, 0, width);
        for (int i2 = 0; i2 < width; i2++) {
            int i3 = this.rgbData[i2];
            bArr[i2] = (byte) ((((i3 & 255) * 117) + ((((i3 >> 16) & 255) * 306) + (((i3 >> 8) & 255) * 601))) >> 10);
        }
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isRotateSupported() {
        return this.image.getType() != 0;
    }

    @Override // com.google.zxing.LuminanceSource
    public LuminanceSource rotateCounterClockwise() {
        if (!isRotateSupported()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{55, 89, 77, 5, 67, 7, 69, 88, 86, 16, 23, 17, 16, 70, 73, 11, 69, 22, 0, 82}, "e69d7b", false));
        }
        int width = this.image.getWidth();
        int height = this.image.getHeight();
        AffineTransformOp affineTransformOp = new AffineTransformOp(new AffineTransform(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, width), 1);
        BufferedImage bufferedImage = new BufferedImage(height, width, this.image.getType());
        affineTransformOp.filter(this.image, bufferedImage);
        int width2 = getWidth();
        return new BufferedImageLuminanceSource(bufferedImage, this.top, width - (this.left + width2), getHeight(), width2);
    }
}
