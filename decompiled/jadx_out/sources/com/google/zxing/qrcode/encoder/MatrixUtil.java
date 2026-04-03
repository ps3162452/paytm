package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Version;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class MatrixUtil {
    private static final int TYPE_INFO_MASK_PATTERN = 21522;
    private static final int TYPE_INFO_POLY = 1335;
    private static final int VERSION_INFO_POLY = 7973;
    private static final int[][] POSITION_DETECTION_PATTERN = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    private static final int[][] POSITION_ADJUSTMENT_PATTERN = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};
    private static final int[][] POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};
    private static final int[][] TYPE_INFO_COORDINATES = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    private MatrixUtil() {
    }

    static void buildMatrix(BitArray bitArray, ErrorCorrectionLevel errorCorrectionLevel, Version version, int i, ByteMatrix byteMatrix) throws WriterException {
        clearMatrix(byteMatrix);
        embedBasicPatterns(version, byteMatrix);
        embedTypeInfo(errorCorrectionLevel, i, byteMatrix);
        maybeEmbedVersionInfo(version, byteMatrix);
        embedDataBits(bitArray, i, byteMatrix);
    }

    static int calculateBCHCode(int i, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{7, 21, 18, 95, 9, 75, 89, 90, 15, 89, 4, 94}, "75b0e2", true, true));
        }
        int iFindMSBSet = findMSBSet(i2);
        int iFindMSBSet2 = i << (iFindMSBSet - 1);
        while (findMSBSet(iFindMSBSet2) >= iFindMSBSet) {
            iFindMSBSet2 ^= i2 << (findMSBSet(iFindMSBSet2) - iFindMSBSet);
        }
        return iFindMSBSet2;
    }

    static void clearMatrix(ByteMatrix byteMatrix) {
        byteMatrix.clear((byte) -1);
    }

    static void embedBasicPatterns(Version version, ByteMatrix byteMatrix) throws WriterException {
        embedPositionDetectionPatternsAndSeparators(byteMatrix);
        embedDarkDotAtLeftBottomCorner(byteMatrix);
        maybeEmbedPositionAdjustmentPatterns(version, byteMatrix);
        embedTimingPatterns(byteMatrix);
    }

    private static void embedDarkDotAtLeftBottomCorner(ByteMatrix byteMatrix) throws WriterException {
        if (byteMatrix.get(8, byteMatrix.getHeight() - 8) == 0) {
            throw new WriterException();
        }
        byteMatrix.set(8, byteMatrix.getHeight() - 8, 1);
    }

    static void embedDataBits(BitArray bitArray, int i, ByteMatrix byteMatrix) throws WriterException {
        int i2;
        int i3;
        int i4;
        boolean z;
        int width = byteMatrix.getWidth() - 1;
        int height = byteMatrix.getHeight() - 1;
        int i5 = -1;
        int i6 = 0;
        while (width > 0) {
            if (width == 6) {
                i2 = height;
                i3 = width - 1;
                i4 = i6;
            } else {
                i2 = height;
                i3 = width;
                i4 = i6;
            }
            while (i2 >= 0 && i2 < byteMatrix.getHeight()) {
                for (int i7 = 0; i7 < 2; i7++) {
                    int i8 = i3 - i7;
                    if (isEmpty(byteMatrix.get(i8, i2))) {
                        if (i4 < bitArray.getSize()) {
                            z = bitArray.get(i4);
                            i4++;
                        } else {
                            z = false;
                        }
                        if (i != -1 && MaskUtil.getDataMaskBit(i, i8, i2)) {
                            z = !z;
                        }
                        byteMatrix.set(i8, i2, z);
                    }
                }
                i2 += i5;
            }
            i5 = -i5;
            width = i3 - 2;
            i6 = i4;
            height = i2 + i5;
        }
        if (i6 != bitArray.getSize()) {
            throw new WriterException(NPStringFog.decode(new byte[]{47, 12, 71, 17, 5, 10, 13, 67, 81, 88, 16, 21, 65, 0, 92, 95, 23, 19, 12, 6, 87, 11, 68}, "ac31df", false) + i6 + '/' + bitArray.getSize());
        }
    }

    private static void embedHorizontalSeparationPattern(int i, int i2, ByteMatrix byteMatrix) throws WriterException {
        for (int i3 = 0; i3 < 8; i3++) {
            if (!isEmpty(byteMatrix.get(i + i3, i2))) {
                throw new WriterException();
            }
            byteMatrix.set(i + i3, i2, 0);
        }
    }

    private static void embedPositionAdjustmentPattern(int i, int i2, ByteMatrix byteMatrix) {
        for (int i3 = 0; i3 < 5; i3++) {
            for (int i4 = 0; i4 < 5; i4++) {
                byteMatrix.set(i + i4, i2 + i3, POSITION_ADJUSTMENT_PATTERN[i3][i4]);
            }
        }
    }

    private static void embedPositionDetectionPattern(int i, int i2, ByteMatrix byteMatrix) {
        for (int i3 = 0; i3 < 7; i3++) {
            for (int i4 = 0; i4 < 7; i4++) {
                byteMatrix.set(i + i4, i2 + i3, POSITION_DETECTION_PATTERN[i3][i4]);
            }
        }
    }

    private static void embedPositionDetectionPatternsAndSeparators(ByteMatrix byteMatrix) throws WriterException {
        int length = POSITION_DETECTION_PATTERN[0].length;
        embedPositionDetectionPattern(0, 0, byteMatrix);
        embedPositionDetectionPattern(byteMatrix.getWidth() - length, 0, byteMatrix);
        embedPositionDetectionPattern(0, byteMatrix.getWidth() - length, byteMatrix);
        embedHorizontalSeparationPattern(0, 7, byteMatrix);
        embedHorizontalSeparationPattern(byteMatrix.getWidth() - 8, 7, byteMatrix);
        embedHorizontalSeparationPattern(0, byteMatrix.getWidth() - 8, byteMatrix);
        embedVerticalSeparationPattern(7, 0, byteMatrix);
        embedVerticalSeparationPattern((byteMatrix.getHeight() - 7) - 1, 0, byteMatrix);
        embedVerticalSeparationPattern(7, byteMatrix.getHeight() - 7, byteMatrix);
    }

    private static void embedTimingPatterns(ByteMatrix byteMatrix) {
        for (int i = 8; i < byteMatrix.getWidth() - 8; i++) {
            int i2 = (i + 1) % 2;
            if (isEmpty(byteMatrix.get(i, 6))) {
                byteMatrix.set(i, 6, i2);
            }
            if (isEmpty(byteMatrix.get(6, i))) {
                byteMatrix.set(6, i, i2);
            }
        }
    }

    static void embedTypeInfo(ErrorCorrectionLevel errorCorrectionLevel, int i, ByteMatrix byteMatrix) throws WriterException {
        BitArray bitArray = new BitArray();
        makeTypeInfoBits(errorCorrectionLevel, i, bitArray);
        for (int i2 = 0; i2 < bitArray.getSize(); i2++) {
            boolean z = bitArray.get((bitArray.getSize() - 1) - i2);
            byteMatrix.set(TYPE_INFO_COORDINATES[i2][0], TYPE_INFO_COORDINATES[i2][1], z);
            if (i2 < 8) {
                byteMatrix.set((byteMatrix.getWidth() - i2) - 1, 8, z);
            } else {
                byteMatrix.set(8, (byteMatrix.getHeight() - 7) + (i2 - 8), z);
            }
        }
    }

    private static void embedVerticalSeparationPattern(int i, int i2, ByteMatrix byteMatrix) throws WriterException {
        for (int i3 = 0; i3 < 7; i3++) {
            if (!isEmpty(byteMatrix.get(i, i2 + i3))) {
                throw new WriterException();
            }
            byteMatrix.set(i, i2 + i3, 0);
        }
    }

    static int findMSBSet(int i) {
        int i2 = 0;
        while (i != 0) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }

    private static boolean isEmpty(int i) {
        return i == -1;
    }

    static void makeTypeInfoBits(ErrorCorrectionLevel errorCorrectionLevel, int i, BitArray bitArray) throws WriterException {
        if (!QRCode.isValidMaskPattern(i)) {
            throw new WriterException(NPStringFog.decode(new byte[]{43, 94, 64, 3, 94, 80, 6, 16, 91, 3, 65, 82, 66, 64, 87, 22, 70, 92, 16, 94}, "b06b29", -8.497505E8f));
        }
        int bits = (errorCorrectionLevel.getBits() << 3) | i;
        bitArray.appendBits(bits, 5);
        bitArray.appendBits(calculateBCHCode(bits, TYPE_INFO_POLY), 10);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(TYPE_INFO_MASK_PATTERN, 15);
        bitArray.xor(bitArray2);
        if (bitArray.getSize() != 15) {
            throw new WriterException(NPStringFog.decode(new byte[]{22, 13, 88, 71, 9, 6, 69, 11, 88, 70, 69, 10, 4, 21, 71, 87, 11, 66, 7, 16, 67, 18, 18, 7, 69, 2, 88, 70, 95, 66}, "ee72eb", 8421) + bitArray.getSize());
        }
    }

    static void makeVersionInfoBits(Version version, BitArray bitArray) throws WriterException {
        bitArray.appendBits(version.getVersionNumber(), 6);
        bitArray.appendBits(calculateBCHCode(version.getVersionNumber(), VERSION_INFO_POLY), 12);
        if (bitArray.getSize() != 18) {
            throw new WriterException(NPStringFog.decode(new byte[]{74, 12, 87, 67, 89, 85, 25, 10, 87, 66, 21, 89, 88, 20, 72, 83, 91, 17, 91, 17, 76, 22, 66, 84, 25, 3, 87, 66, 15, 17}, "9d8651", -4.73327665E8d) + bitArray.getSize());
        }
    }

    private static void maybeEmbedPositionAdjustmentPatterns(Version version, ByteMatrix byteMatrix) {
        if (version.getVersionNumber() < 2) {
            return;
        }
        int versionNumber = version.getVersionNumber() - 1;
        int[] iArr = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[versionNumber];
        int length = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[versionNumber].length;
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = iArr[i];
                int i4 = iArr[i2];
                if (i4 != -1 && i3 != -1 && isEmpty(byteMatrix.get(i4, i3))) {
                    embedPositionAdjustmentPattern(i4 - 2, i3 - 2, byteMatrix);
                }
            }
        }
    }

    static void maybeEmbedVersionInfo(Version version, ByteMatrix byteMatrix) throws WriterException {
        if (version.getVersionNumber() < 7) {
            return;
        }
        BitArray bitArray = new BitArray();
        makeVersionInfoBits(version, bitArray);
        int i = 17;
        int i2 = 0;
        while (i2 < 6) {
            int i3 = i;
            for (int i4 = 0; i4 < 3; i4++) {
                boolean z = bitArray.get(i3);
                i3--;
                byteMatrix.set(i2, (byteMatrix.getHeight() - 11) + i4, z);
                byteMatrix.set((byteMatrix.getHeight() - 11) + i4, i2, z);
            }
            i2++;
            i = i3;
        }
    }
}
