package com.google.zxing.client.j2se;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ResultParser;
import com.google.zxing.common.GlobalHistogramBinarizer;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.Hashtable;
import java.util.Vector;
import javax.imageio.ImageIO;
import n.NPStringFog;

/* JADX INFO: loaded from: classes66.dex */
public final class CommandLineRunner {
    private CommandLineRunner() {
    }

    private static Hashtable<DecodeHintType, Object> buildHints() {
        Hashtable<DecodeHintType, Object> hashtable = new Hashtable<>(3);
        Vector vector = new Vector(8);
        vector.addElement(BarcodeFormat.UPC_A);
        vector.addElement(BarcodeFormat.UPC_E);
        vector.addElement(BarcodeFormat.EAN_13);
        vector.addElement(BarcodeFormat.EAN_8);
        vector.addElement(BarcodeFormat.CODE_39);
        vector.addElement(BarcodeFormat.CODE_128);
        vector.addElement(BarcodeFormat.ITF);
        vector.addElement(BarcodeFormat.QR_CODE);
        vector.addElement(BarcodeFormat.DATAMATRIX);
        vector.addElement(BarcodeFormat.PDF417);
        hashtable.put(DecodeHintType.POSSIBLE_FORMATS, vector);
        return hashtable;
    }

    private static Result decode(URI uri, Hashtable<DecodeHintType, Object> hashtable, boolean z) throws Throwable {
        try {
            BufferedImage bufferedImage = ImageIO.read(uri.toURL());
            if (bufferedImage == null) {
                System.err.println(uri.toString() + NPStringFog.decode(new byte[]{13, 17, 33, 13, 69, 9, 83, 17, 12, 13, 68, 69, 91, 94, 3, 6, 16, 12, 90, 80, 5, 7}, "71bb0e", false));
                return null;
            }
            try {
                BinaryBitmap binaryBitmap = new BinaryBitmap(new GlobalHistogramBinarizer(new BufferedImageLuminanceSource(bufferedImage)));
                if (z) {
                    dumpBlackPoint(uri, bufferedImage, binaryBitmap);
                }
                Result resultDecode = new MultiFormatReader().decode(binaryBitmap, (Hashtable) hashtable);
                ParsedResult result = ResultParser.parseResult(resultDecode);
                System.out.println(uri.toString() + NPStringFog.decode(new byte[]{23, 29, 3, 86, 68, 8, 86, 65, 95, 25}, "75e96e", -1.571636297E9d) + resultDecode.getBarcodeFormat() + NPStringFog.decode(new byte[]{73, 65, 70, 65, 66, 80, 95, 65}, "ea2825", 7.3319405E8f) + result.getType() + NPStringFog.decode(new byte[]{76, 88, 57, 52, 2, 79, 69, 16, 86, 21, 22, 84, 17, 88, 57}, "eb3fc8", -24142) + resultDecode.getText() + NPStringFog.decode(new byte[]{62, 96, 0, 22, 75, 87, 80, 16, 19, 1, 75, 71, 88, 68, 91, 110}, "40ad82", 22348) + result.getDisplayResult());
                return resultDecode;
            } catch (ReaderException e) {
                System.out.println(uri.toString() + NPStringFog.decode(new byte[]{10, 20, 47, 14, 65, 0, 81, 70, 2, 14, 5, 7, 16, 82, 14, 20, 15, 6}, "04aaab", -173993188L));
                return null;
            }
        } catch (IllegalArgumentException e2) {
            throw new FileNotFoundException(NPStringFog.decode(new byte[]{100, 82, 71, 95, 17, 71, 85, 82, 20, 94, 11, 65, 22, 81, 91, 69, 10, 81, 12, 23}, "6740d5", -21708) + uri);
        }
    }

    private static void decodeOneArgument(String str, Hashtable<DecodeHintType, Object> hashtable, boolean z, boolean z2) throws Throwable {
        File file = new File(str);
        if (!file.exists()) {
            decode(new URI(str), hashtable, z2);
            return;
        }
        if (!file.isDirectory()) {
            Result resultDecode = decode(file.toURI(), hashtable, z2);
            if (z) {
                dumpResult(file, resultDecode);
                return;
            }
            return;
        }
        int i = 0;
        File[] fileArrListFiles = file.listFiles();
        int length = fileArrListFiles.length;
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            File file2 = fileArrListFiles[i3];
            String lowerCase = file2.getName().toLowerCase();
            if (!lowerCase.startsWith(NPStringFog.decode(new byte[]{79}, "a4f0d0", -2137536380L)) && !lowerCase.endsWith(NPStringFog.decode(new byte[]{27, 69, 75, 68}, "51302b", true, true)) && !lowerCase.contains(NPStringFog.decode(new byte[]{23, 85, 88, 91, 95, 29, 73, 86, 80}, "987503", 5.51514418E8d))) {
                Result resultDecode2 = decode(file2.toURI(), hashtable, z2);
                if (resultDecode2 != null) {
                    i2++;
                    if (z) {
                        dumpResult(file2, resultDecode2);
                    }
                }
                i++;
            }
            i3++;
            i2 = i2;
            i = i;
        }
        System.out.println(NPStringFog.decode(new byte[]{60, 124, 7, 91, 93, 80, 83, 92, 66}, "68b824", 1.079408304E9d) + i2 + NPStringFog.decode(new byte[]{25, 85, 92, 14, 93, 71, 25, 92, 64, 22, 24, 91, 95, 19}, "935b84", 38015383L) + i + NPStringFog.decode(new byte[]{21, 69, 22, 86, 1, 92, 70, 69, 5, 64, 14, 85, 76, 22, 75}, "56c5b9", -21034445L) + ((i2 * 100) / i) + NPStringFog.decode(new byte[]{28, 30, 104}, "97b2b3", 1312622947L));
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void dumpBlackPoint(java.net.URI r13, java.awt.image.BufferedImage r14, com.google.zxing.BinaryBitmap r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.j2se.CommandLineRunner.dumpBlackPoint(java.net.URI, java.awt.image.BufferedImage, com.google.zxing.BinaryBitmap):void");
    }

    private static void dumpResult(File file, Result result) throws IOException {
        String absolutePath = file.getAbsolutePath();
        int iLastIndexOf = absolutePath.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            absolutePath = absolutePath.substring(0, iLastIndexOf);
        }
        writeStringToFile(result.getText(), new File(absolutePath + NPStringFog.decode(new byte[]{79, 17, 26, 16}, "aebd1a", false)));
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr == null || strArr.length == 0) {
            printUsage();
            return;
        }
        Hashtable<DecodeHintType, Object> hashtableBuildHints = buildHints();
        boolean z = false;
        boolean z2 = false;
        for (String str : strArr) {
            if (NPStringFog.decode(new byte[]{20, 26, 67, 75, 29, 104, 81, 86, 69, 93, 1, 69}, "9779d7", 4.4946372E7f).equals(str)) {
                hashtableBuildHints.put(DecodeHintType.TRY_HARDER, Boolean.TRUE);
            } else if (NPStringFog.decode(new byte[]{24, 75, 7, 17, 92, 67, 106, 20, 6, 23, 68, 95, 65, 21}, "5fcd13", 1200149704L).equals(str)) {
                z2 = true;
            } else if (NPStringFog.decode(new byte[]{29, 21, 92, 23, 89, 68, 111, 90, 84, 3, 87, 95, 111, 72, 87, 11, 90, 64}, "088b44", 1.9866802E9f).equals(str)) {
                z = true;
            } else if (str.startsWith(NPStringFog.decode(new byte[]{24}, "506fad", false, true))) {
                System.err.println(NPStringFog.decode(new byte[]{48, 87, 15, 92, 90, 79, 11, 25, 7, 93, 88, 85, 4, 87, 0, 18, 89, 81, 11, 92, 68, 93, 69, 76, 12, 86, 10, 18}, "e9d258", -1.83429525E9d) + str);
                printUsage();
                return;
            }
        }
        for (String str2 : strArr) {
            if (!str2.startsWith(NPStringFog.decode(new byte[]{79, 31}, "b2e279", 1.4581805E9f))) {
                decodeOneArgument(str2, hashtableBuildHints, z2, z);
            }
        }
    }

    private static void printUsage() {
        System.err.println(NPStringFog.decode(new byte[]{124, 86, 80, 14, 84, 93, 24, 81, 82, 19, 83, 87, 92, 86, 19, 8, 93, 89, 95, 86, 64, 65, 69, 75, 81, 93, 84, 65, 68, 80, 93, 19, 105, 57, 89, 86, 95, 19, 95, 8, 82, 74, 89, 65, 74, 107}, "833a08", 1177482233L));
        System.err.println(NPStringFog.decode(new byte[]{69, 69, 89, 80, 85, 91, 16, 117, 87, 90, 93, 0, 94, 82, 116, 94, 94, 4, 98, 67, 86, 89, 85, 19, 16, 77, 24, 81, 89, 13, 85, 22, 68, 23, 84, 8, 66, 22, 68, 23, 69, 19, 92, 22, 69, 23, 107, 65, 95, 70, 76, 94, 95, 15, 67, 22, 101}, "06870a", -1.479895182E9d));
        System.err.println(NPStringFog.decode(new byte[]{65, 65, 20, 78, 71, 70, 24, 62, 81, 2, 65, 80, 4, 19, 3, 67, 102, 71, 4, 65, 77, 11, 86, 20, 53, 51, 96, 60, 123, 117, 51, 37, 124, 49, 19, 92, 8, 15, 77, 79, 19, 80, 4, 7, 88, 22, 95, 64, 65, 8, 74, 67, 93, 91, 19, 12, 88, 15, 19, 28, 12, 14, 91, 10, 95, 81, 72, 65, 84, 12, 87, 81}, "aa9c34", 1153880642L));
        System.err.println(NPStringFog.decode(new byte[]{69, 19, 29, 28, 85, 22, 8, 67, 111, 67, 84, 16, 16, 95, 68, 66, 11, 67, 50, 65, 89, 69, 84, 67, 17, 91, 85, 17, 85, 6, 6, 92, 84, 84, 85, 67, 6, 92, 94, 69, 84, 13, 17, 64, 16, 69, 94, 67, 12, 93, 64, 68, 69, 77, 17, 75, 68}, "e3011c", false, false));
        System.err.println(NPStringFog.decode(new byte[]{68, 67, 29, 25, 5, 71, 9, 19, 111, 86, 13, 83, 7, 8, 111, 68, 14, 91, 10, 23, 10, 20, 34, 93, 9, 19, 81, 70, 4, 18, 6, 15, 81, 87, 10, 18, 20, 12, 89, 90, 21, 18, 5, 15, 87, 91, 19, 91, 16, 11, 93, 71, 65, 83, 23, 67, 89, 90, 17, 71, 16, 77, 93, 91, 15, 93, 74, 19, 94, 83}, "dc04a2", true));
    }

    private static void writeStringToFile(String str, File file) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), Charset.forName(NPStringFog.decode(new byte[]{54, 49, 118, 11}, "ce03c7", 1.597998763E9d)));
        try {
            outputStreamWriter.write(str);
        } finally {
            outputStreamWriter.close();
        }
    }
}
