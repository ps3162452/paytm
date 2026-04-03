package com.google.zxing.client.j2se;

import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.ByteMatrix;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import javax.imageio.ImageIO;

/* JADX INFO: loaded from: classes66.dex */
public final class MatrixToImageWriter {
    private static final int BLACK = -16777216;
    private static final int WHITE = -1;

    private MatrixToImageWriter() {
    }

    public static BufferedImage toBufferedImage(BitMatrix bitMatrix) {
        int width = bitMatrix.getWidth();
        int height = bitMatrix.getHeight();
        BufferedImage bufferedImage = new BufferedImage(width, height, 2);
        for (int i = 0; i < width; i++) {
            for (int i2 = 0; i2 < height; i2++) {
                bufferedImage.setRGB(i, i2, bitMatrix.get(i, i2) ? -16777216 : -1);
            }
        }
        return bufferedImage;
    }

    public static BufferedImage toBufferedImage(ByteMatrix byteMatrix) {
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        BufferedImage bufferedImage = new BufferedImage(width, height, 2);
        for (int i = 0; i < width; i++) {
            for (int i2 = 0; i2 < height; i2++) {
                bufferedImage.setRGB(i, i2, byteMatrix.get(i, i2) == 0 ? -16777216 : -1);
            }
        }
        return bufferedImage;
    }

    public static void writeToFile(BitMatrix bitMatrix, String str, File file) throws IOException {
        ImageIO.write(toBufferedImage(bitMatrix), str, file);
    }

    public static void writeToFile(ByteMatrix byteMatrix, String str, File file) throws IOException {
        ImageIO.write(toBufferedImage(byteMatrix), str, file);
    }

    public static void writeToStream(BitMatrix bitMatrix, String str, OutputStream outputStream) throws IOException {
        ImageIO.write(toBufferedImage(bitMatrix), str, outputStream);
    }

    public static void writeToStream(ByteMatrix byteMatrix, String str, OutputStream outputStream) throws IOException {
        ImageIO.write(toBufferedImage(byteMatrix), str, outputStream);
    }
}
