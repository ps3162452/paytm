package com.google.zxing.aztec.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class Decoder {
    private AztecDetectorResult ddata;
    private static final String[] UPPER_TABLE = {NPStringFog.decode(new byte[]{33, 99, 97, 41, 60, 50, 49}, "b73ecb", -1902794354L), " ", NPStringFog.decode(new byte[]{114}, "330f34", 3.9200118E8f), NPStringFog.decode(new byte[]{35}, "a6f952", true, false), NPStringFog.decode(new byte[]{37}, "f8ee44", -1.62567054E9d), NPStringFog.decode(new byte[]{38}, "bfb138", -1.041132E9f), NPStringFog.decode(new byte[]{35}, "f71151", true), NPStringFog.decode(new byte[]{37}, "c33064", -24933), NPStringFog.decode(new byte[]{114}, "5e753f", false, false), NPStringFog.decode(new byte[]{120}, "0895ff", false), NPStringFog.decode(new byte[]{121}, "0725d8", false, false), NPStringFog.decode(new byte[]{123}, "15930a", false, false), NPStringFog.decode(new byte[]{127}, "470d6d", true, false), NPStringFog.decode(new byte[]{47}, "c3593f", 2.2398466E8f), NPStringFog.decode(new byte[]{126}, "3fdc93", -1.447274302E9d), NPStringFog.decode(new byte[]{120}, "6a788d", true), NPStringFog.decode(new byte[]{119}, "8f5432", true, false), NPStringFog.decode(new byte[]{102}, "6e4424", -30698), NPStringFog.decode(new byte[]{99}, "2a87c2", 2021634420L), NPStringFog.decode(new byte[]{51}, "a4600a", true, true), NPStringFog.decode(new byte[]{48}, "cf4c68", -2.0241229E9f), NPStringFog.decode(new byte[]{101}, "111369", -27057), NPStringFog.decode(new byte[]{108}, "9718b6", -1094677365L), NPStringFog.decode(new byte[]{53}, "cc9d02", false, true), NPStringFog.decode(new byte[]{103}, "0d60c2", 3.8906768E8f), NPStringFog.decode(new byte[]{60}, "d5e688", false, true), NPStringFog.decode(new byte[]{104}, "138ac3", true, true), NPStringFog.decode(new byte[]{98}, "803666", -9.42368677E8d), NPStringFog.decode(new byte[]{34, 102, 100, 116, 111, 45, 45}, "a2680a", -1026300381L), NPStringFog.decode(new byte[]{115, 101, 51, 121, 103, 121, 124}, "01a584", 234680821L), NPStringFog.decode(new byte[]{115, 98, 54, 120, 62, 116, 124}, "06d4a0", -18409), NPStringFog.decode(new byte[]{119, 55, 103, 42, 60, 36, 103}, "4c5fcf", -1.9037321E9f)};
    private static final String[] LOWER_TABLE = {NPStringFog.decode(new byte[]{33, 100, 97, 122, 106, 101, 49}, "b03655", -8.043867E8f), " ", NPStringFog.decode(new byte[]{80}, "1e036f", -79232584L), NPStringFog.decode(new byte[]{6}, "dd7baf", true), NPStringFog.decode(new byte[]{85}, "68e28f", false), NPStringFog.decode(new byte[]{83}, "732418", -4.6878822E8f), NPStringFog.decode(new byte[]{4}, "a6d8d4", 5.0434859E7d), NPStringFog.decode(new byte[]{95}, "945c41", -4.14553041E8d), NPStringFog.decode(new byte[]{4}, "c1945f", false, false), NPStringFog.decode(new byte[]{9}, "ac8ec1", true, false), NPStringFog.decode(new byte[]{13}, "d77627", 3.11890119E8d), NPStringFog.decode(new byte[]{15}, "e79951", 1571643445L), NPStringFog.decode(new byte[]{15}, "d1e27b", -22727), NPStringFog.decode(new byte[]{90}, "672e62", true), NPStringFog.decode(new byte[]{85}, "8cd2ac", -1.378808807E9d), NPStringFog.decode(new byte[]{12}, "b7ded8", 5.269049E8f), NPStringFog.decode(new byte[]{14}, "a88d5f", 12835), NPStringFog.decode(new byte[]{71}, "74a8be", true, false), NPStringFog.decode(new byte[]{16}, "a8a234", 1.227567E9f), NPStringFog.decode(new byte[]{65}, "392b75", -518860541L), NPStringFog.decode(new byte[]{65}, "228049", -10208), NPStringFog.decode(new byte[]{76}, "85097e", false), NPStringFog.decode(new byte[]{16}, "e118fd", true, true), NPStringFog.decode(new byte[]{69}, "31de43", false, true), NPStringFog.decode(new byte[]{68}, "37e7c7", -1693105355L), NPStringFog.decode(new byte[]{76}, "414c63", 6.28946382E8d), NPStringFog.decode(new byte[]{74}, "3d9b77", -305399116L), NPStringFog.decode(new byte[]{28}, "f55d7d", false), NPStringFog.decode(new byte[]{117, 102, 96, 46, 109, 96, 101}, "622b25", true, false), NPStringFog.decode(new byte[]{32, 50, 51, 47, 109, 126, 47}, "cfac23", 1.474586062E9d), NPStringFog.decode(new byte[]{114, 102, 55, 127, 62, 38, 125}, "12e3ab", 1755590214L), NPStringFog.decode(new byte[]{114, 100, 107, 41, 61, 38, 98}, "109ebd", true)};
    private static final String[] MIXED_TABLE = {NPStringFog.decode(new byte[]{113, 102, 100, 127, 58, 96, 97}, "2263e0", -7.902218E8f), " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", NPStringFog.decode(new byte[]{113}, "175f22", -8.8468416E8f), NPStringFog.decode(new byte[]{56}, "d13536", true), NPStringFog.decode(new byte[]{56}, "f2f99e", false, false), NPStringFog.decode(new byte[]{109}, "253f43", 1.9200648E9f), NPStringFog.decode(new byte[]{86}, "650f69", 5839), NPStringFog.decode(new byte[]{26}, "f941b2", true, false), NPStringFog.decode(new byte[]{29}, "c934f4", true), NPStringFog.decode(new byte[]{27}, "d222eb", true, true), NPStringFog.decode(new byte[]{119, 109, 107, 127, 102, 46, 120}, "49939b", 1.776893086E9d), NPStringFog.decode(new byte[]{112, 109, 102, 46, 106, 55, 127}, "394b5b", -1.516944187E9d), NPStringFog.decode(new byte[]{33, 55, 100, 45, 106, 100, 46}, "bc6a54", -18960), NPStringFog.decode(new byte[]{39, 55, 96, 46, 108, 119, 55}, "dc2b35", -2769)};
    private static final String[] PUNCT_TABLE = {"", "\r", "\r\n", NPStringFog.decode(new byte[]{27, 18}, "52702b", 18269), NPStringFog.decode(new byte[]{74, 65}, "fa7630", false, true), NPStringFog.decode(new byte[]{8, 65}, "2aafbf", -17657), NPStringFog.decode(new byte[]{20}, "5e336b", true), NPStringFog.decode(new byte[]{26}, "815f50", 18303), NPStringFog.decode(new byte[]{26}, "9cd45e", -31693), NPStringFog.decode(new byte[]{17}, "5e75da", 27388), NPStringFog.decode(new byte[]{28}, "9eb078", -332129293L), NPStringFog.decode(new byte[]{23}, "1e86b1", 9524), NPStringFog.decode(new byte[]{23}, "02c4da", false, true), NPStringFog.decode(new byte[]{27}, "395ee8", true, false), NPStringFog.decode(new byte[]{24}, "1161b0", true, true), NPStringFog.decode(new byte[]{18}, "8c588a", true), NPStringFog.decode(new byte[]{79}, "defa0e", 2.9273945E7d), NPStringFog.decode(new byte[]{28}, "017f53", -5.10208408E8d), NPStringFog.decode(new byte[]{76}, "a6e019", 2.22059072E8d), NPStringFog.decode(new byte[]{29}, "336f6d", 8.3459897E7d), NPStringFog.decode(new byte[]{75}, "d73dd8", false), NPStringFog.decode(new byte[]{9}, "318f70", false), NPStringFog.decode(new byte[]{15}, "4b8036", -1462230156L), NPStringFog.decode(new byte[]{93}, "a0c730", 1556177139L), NPStringFog.decode(new byte[]{14}, "3bd5f9", -27146), NPStringFog.decode(new byte[]{13}, "312c83", true), NPStringFog.decode(new byte[]{9}, "67dedf", false, false), NPStringFog.decode(new byte[]{107}, "0bc209", true, true), NPStringFog.decode(new byte[]{107}, "6ca01b", false, true), NPStringFog.decode(new byte[]{24}, "cfe3e5", 2.94011522E8d), NPStringFog.decode(new byte[]{25}, "da67c6", -929395905L), NPStringFog.decode(new byte[]{116, 50, 98, 116, 109, 51, 123}, "7f082f", true, true)};
    private static final String[] DIGIT_TABLE = {NPStringFog.decode(new byte[]{33, 97, 102, 41, 59, 49, 49}, "b54eda", -8300), " ", NPStringFog.decode(new byte[]{9}, "971c3d", -71), NPStringFog.decode(new byte[]{8}, "995648", false), NPStringFog.decode(new byte[]{11}, "9ea5b4", false, true), NPStringFog.decode(new byte[]{10}, "9938f3", 10554), NPStringFog.decode(new byte[]{5}, "178be5", -1.7714066E9f), NPStringFog.decode(new byte[]{86}, "caeb19", -532449356L), NPStringFog.decode(new byte[]{2}, "46388f", 1.38700885E8d), NPStringFog.decode(new byte[]{7}, "0d14a8", false, true), NPStringFog.decode(new byte[]{15}, "79b580", 2.09579377E9d), NPStringFog.decode(new byte[]{92}, "e11ade", 1644), NPStringFog.decode(new byte[]{72}, "df5a2d", -7741), NPStringFog.decode(new byte[]{25}, "72c368", 1706400113L), NPStringFog.decode(new byte[]{39, 49, 103, 45, 102, 108, 40}, "de5a99", 15569), NPStringFog.decode(new byte[]{117, 49, 99, 121, 105, 102, 101}, "6e1563", false)};

    /* JADX INFO: renamed from: com.google.zxing.aztec.decoder.Decoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table = new int[Table.values().length];

        static {
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.DIGIT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    private boolean[] correctBits(boolean[] zArr) throws FormatException {
        GenericGF genericGF;
        int i;
        int i2 = 8;
        if (this.ddata.getNbLayers() <= 2) {
            i2 = 6;
            genericGF = GenericGF.AZTEC_DATA_6;
        } else if (this.ddata.getNbLayers() <= 8) {
            genericGF = GenericGF.AZTEC_DATA_8;
        } else if (this.ddata.getNbLayers() <= 22) {
            i2 = 10;
            genericGF = GenericGF.AZTEC_DATA_10;
        } else {
            i2 = 12;
            genericGF = GenericGF.AZTEC_DATA_12;
        }
        int nbDatablocks = this.ddata.getNbDatablocks();
        int length = zArr.length / i2;
        if (length < nbDatablocks) {
            throw FormatException.getFormatInstance();
        }
        int[] iArr = new int[length];
        int length2 = zArr.length % i2;
        int i3 = 0;
        while (i3 < length) {
            iArr[i3] = readCode(zArr, length2, i2);
            i3++;
            length2 += i2;
        }
        try {
            new ReedSolomonDecoder(genericGF).decode(iArr, length - nbDatablocks);
            int i4 = (1 << i2) - 1;
            int i5 = 0;
            for (int i6 = 0; i6 < nbDatablocks; i6++) {
                int i7 = iArr[i6];
                if (i7 == 0 || i7 == i4) {
                    throw FormatException.getFormatInstance();
                }
                if (i7 == 1 || i7 == i4 - 1) {
                    i5++;
                }
            }
            boolean[] zArr2 = new boolean[(nbDatablocks * i2) - i5];
            int i8 = 0;
            int i9 = 0;
            while (i8 < nbDatablocks) {
                int i10 = iArr[i8];
                if (i10 == 1 || i10 == i4 - 1) {
                    Arrays.fill(zArr2, i9, (i9 + i2) - 1, i10 > 1);
                    i = (i2 - 1) + i9;
                } else {
                    int i11 = i2 - 1;
                    i = i9;
                    while (i11 >= 0) {
                        int i12 = i + 1;
                        zArr2[i] = ((1 << i11) & i10) != 0;
                        i11--;
                        i = i12;
                    }
                }
                i8++;
                i9 = i;
            }
            return zArr2;
        } catch (ReedSolomonException e) {
            throw FormatException.getFormatInstance(e);
        }
    }

    private static String getCharacter(Table table, int i) {
        switch (AnonymousClass1.$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[table.ordinal()]) {
            case 1:
                return UPPER_TABLE[i];
            case 2:
                return LOWER_TABLE[i];
            case 3:
                return MIXED_TABLE[i];
            case 4:
                return PUNCT_TABLE[i];
            case 5:
                return DIGIT_TABLE[i];
            default:
                throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 83, 87, 22, 67, 86, 84, 94, 86}, "623677", 1.3343126E9f));
        }
    }

    private static String getEncodedData(boolean[] zArr) {
        int i;
        Table table;
        int length = zArr.length;
        Table table2 = Table.UPPER;
        Table table3 = Table.UPPER;
        StringBuilder sb = new StringBuilder(20);
        int i2 = 0;
        Table table4 = table3;
        Table table5 = table2;
        while (i2 < length) {
            if (table4 != Table.BINARY) {
                int i3 = table4 == Table.DIGIT ? 4 : 5;
                if (length - i2 < i3) {
                    break;
                }
                int code = readCode(zArr, i2, i3);
                i2 += i3;
                String character = getCharacter(table4, code);
                if (character.startsWith(NPStringFog.decode(new byte[]{123, 108, 103, 127, 109}, "885320", 30470))) {
                    table = getTable(character.charAt(5));
                    if (character.charAt(6) == 'L') {
                        table5 = table;
                    }
                } else {
                    sb.append(character);
                    table = table5;
                }
                table4 = table;
            } else {
                if (length - i2 < 5) {
                    break;
                }
                int code2 = readCode(zArr, i2, 5);
                int i4 = i2 + 5;
                if (code2 == 0) {
                    if (length - i4 < 11) {
                        break;
                    }
                    code2 = readCode(zArr, i4, 11) + 31;
                    i4 += 11;
                }
                int i5 = 0;
                while (true) {
                    if (i5 >= code2) {
                        i = i4;
                        break;
                    }
                    if (length - i4 < 8) {
                        i = length;
                        break;
                    }
                    sb.append((char) readCode(zArr, i4, 8));
                    i5++;
                    i4 += 8;
                }
                i2 = i;
                table4 = table5;
            }
        }
        return sb.toString();
    }

    private static Table getTable(char c) {
        switch (c) {
            case 'B':
                return Table.BINARY;
            case 'D':
                return Table.DIGIT;
            case 'L':
                return Table.LOWER;
            case 'M':
                return Table.MIXED;
            case 'P':
                return Table.PUNCT;
            default:
                return Table.UPPER;
        }
    }

    public static String highLevelDecode(boolean[] zArr) {
        return getEncodedData(zArr);
    }

    private static int readCode(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }

    private static int totalBitsInLayer(int i, boolean z) {
        return ((z ? 88 : 112) + (i * 16)) * i;
    }

    public DecoderResult decode(AztecDetectorResult aztecDetectorResult) throws FormatException {
        this.ddata = aztecDetectorResult;
        return new DecoderResult(null, getEncodedData(correctBits(extractBits(aztecDetectorResult.getBits()))), null, null);
    }

    boolean[] extractBits(BitMatrix bitMatrix) {
        boolean zIsCompact = this.ddata.isCompact();
        int nbLayers = this.ddata.getNbLayers();
        int i = zIsCompact ? (nbLayers * 4) + 11 : (nbLayers * 4) + 14;
        int[] iArr = new int[i];
        boolean[] zArr = new boolean[totalBitsInLayer(nbLayers, zIsCompact)];
        if (zIsCompact) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr[i2] = i2;
            }
        } else {
            int i3 = i / 2;
            int i4 = (((((i / 2) - 1) / 15) * 2) + (i + 1)) / 2;
            for (int i5 = 0; i5 < i3; i5++) {
                iArr[(i3 - i5) - 1] = (i4 - r7) - 1;
                iArr[i3 + i5] = (i5 / 15) + i5 + i4 + 1;
            }
        }
        int i6 = 0;
        for (int i7 = 0; i7 < nbLayers; i7++) {
            int i8 = zIsCompact ? ((nbLayers - i7) * 4) + 9 : ((nbLayers - i7) * 4) + 12;
            int i9 = i7 * 2;
            int i10 = (i - 1) - i9;
            for (int i11 = 0; i11 < i8; i11++) {
                int i12 = i11 * 2;
                for (int i13 = 0; i13 < 2; i13++) {
                    zArr[i6 + i12 + i13] = bitMatrix.get(iArr[i9 + i13], iArr[i9 + i11]);
                    zArr[(i8 * 2) + i6 + i12 + i13] = bitMatrix.get(iArr[i9 + i11], iArr[i10 - i13]);
                    zArr[(i8 * 4) + i6 + i12 + i13] = bitMatrix.get(iArr[i10 - i13], iArr[i10 - i11]);
                    zArr[(i8 * 6) + i6 + i12 + i13] = bitMatrix.get(iArr[i10 - i11], iArr[i9 + i13]);
                }
            }
            i6 = (i8 * 8) + i6;
        }
        return zArr;
    }
}
