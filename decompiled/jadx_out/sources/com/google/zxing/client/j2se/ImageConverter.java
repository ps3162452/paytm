package com.google.zxing.client.j2se;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.ReaderException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GlobalHistogramBinarizer;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import javax.imageio.ImageIO;
import n.NPStringFog;

/* JADX INFO: loaded from: classes66.dex */
public final class ImageConverter {
    private static final int BLACK = -16777216;
    private static final int RED = -65536;
    private static final int WHITE = -1;
    private static final String FORMAT = NPStringFog.decode(new byte[]{73, 95, 4}, "91cb4b", 1.1986716E9f);
    private static boolean rowSampling = false;

    private ImageConverter() {
    }

    private static void convertImage(URI uri) throws IOException {
        BinaryBitmap binaryBitmap = new BinaryBitmap(new GlobalHistogramBinarizer(new BufferedImageLuminanceSource(ImageIO.read(uri.toURL()))));
        int width = binaryBitmap.getWidth();
        int height = binaryBitmap.getHeight();
        BufferedImage bufferedImage = new BufferedImage(width, height, 2);
        BitArray bitArray = new BitArray(width);
        if (rowSampling) {
            for (int i = 0; i < height; i++) {
                try {
                    BitArray blackRow = binaryBitmap.getBlackRow(i, bitArray);
                    for (int i2 = 0; i2 < width; i2++) {
                        bufferedImage.setRGB(i2, i, blackRow.get(i2) ? -16777216 : -1);
                    }
                    bitArray = blackRow;
                } catch (ReaderException e) {
                    for (int i3 = 0; i3 < width; i3++) {
                        bufferedImage.setRGB(i3, i, -65536);
                    }
                }
            }
        } else {
            try {
                BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
                for (int i4 = 0; i4 < height; i4++) {
                    for (int i5 = 0; i5 < width; i5++) {
                        bufferedImage.setRGB(i5, i4, blackMatrix.get(i5, i4) ? -16777216 : -1);
                    }
                }
            } catch (ReaderException e2) {
            }
        }
        File output = getOutput(uri);
        System.out.printf(NPStringFog.decode(new byte[]{100, 22, 94, 65, 13, 88, 84, 68, 88, 64, 16, 70, 70, 16, 23, 65, 11, 22, 22, 23, 61}, "3d75d6", -8457), output);
        ImageIO.write(bufferedImage, FORMAT, output);
    }

    private static File getFileOfUri(URI uri) {
        String strDecode;
        String path = uri.getPath();
        int iLastIndexOf = path.lastIndexOf(47);
        if (iLastIndexOf == -1 || iLastIndexOf == path.length() - 1) {
            strDecode = NPStringFog.decode(new byte[]{28}, "212846", -7332);
        } else {
            strDecode = path.substring(0, iLastIndexOf);
            path = path.substring(iLastIndexOf + 1);
        }
        if (!new File(strDecode).exists()) {
            return null;
        }
        File file = new File(strDecode, path);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    private static File getOutput(URI uri) {
        File fileOfUri = getFileOfUri(uri);
        if (fileOfUri == null) {
            return new File(NPStringFog.decode(new byte[]{38, 93, 90, 20, 1, 75, 17, 87, 80, 43, 9, 88, 2, 87, 26, 18, 10, 94}, "e24bd9", -844829167L));
        }
        String path = fileOfUri.getPath();
        int iLastIndexOf = path.lastIndexOf(46);
        return new File((iLastIndexOf != -1 ? path.substring(0, iLastIndexOf) : path) + '.' + (rowSampling ? NPStringFog.decode(new byte[]{19, 12, 67}, "ac4816", -6994) : NPStringFog.decode(new byte[]{7, 84}, "50ce6d", 1.9034107E9f)) + '.' + FORMAT);
    }

    public static void main(String[] strArr) throws Exception {
        for (String str : strArr) {
            if (NPStringFog.decode(new byte[]{27, 66, 91, 79}, "6048db", false, false).equals(str)) {
                rowSampling = true;
            } else if (NPStringFog.decode(new byte[]{31, 86, 93}, "2d97f2", 1.4992831E9f).equals(str)) {
                rowSampling = false;
            } else if (str.startsWith(NPStringFog.decode(new byte[]{24}, "5638fe", 1.892541138E9d))) {
                System.err.println(NPStringFog.decode(new byte[]{124, 81, 91, 11, 70, 15, 91, 81, 21, 17, 90, 20, 80, 85, 90, 3, 90, 15, 79, 83, 81, 68, 91, 22, 65, 95, 90, 10, 14, 70}, "565d4f", 8.175203E8f) + str);
            }
        }
        for (String str2 : strArr) {
            if (!str2.startsWith(NPStringFog.decode(new byte[]{24}, "58da31", -28566))) {
                File file = new File(str2);
                if (!file.exists()) {
                    convertImage(new URI(str2));
                } else if (file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        String lowerCase = file2.getName().toLowerCase();
                        if (!lowerCase.startsWith(NPStringFog.decode(new byte[]{30}, "0fdd2d", false)) && !lowerCase.endsWith(NPStringFog.decode(new byte[]{75, 64, 30, 70}, "e4f253", true, true)) && !lowerCase.contains(NPStringFog.decode(new byte[]{75, 11, 93, 15, 91, 24, 21, 8, 85}, "ef2a46", 1.6575585E9f)) && !lowerCase.contains(NPStringFog.decode(new byte[]{77, 23, 95, 68, 25, 70, 13, 2}, "ce0376", -26136)) && !lowerCase.contains(NPStringFog.decode(new byte[]{72, 11, 7, 74, 66, 11, 1}, "f9cd2e", -1319002948L))) {
                            convertImage(file2.toURI());
                        }
                    }
                } else {
                    convertImage(file.toURI());
                }
            }
        }
    }
}
