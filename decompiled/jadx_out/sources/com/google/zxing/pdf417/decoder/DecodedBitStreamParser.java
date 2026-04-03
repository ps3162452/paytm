package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.pdf417.PDF417ResultMetadata;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class DecodedBitStreamParser {
    private static final int AL = 28;
    private static final int AS = 27;
    private static final int BEGIN_MACRO_PDF417_CONTROL_BLOCK = 928;
    private static final int BEGIN_MACRO_PDF417_OPTIONAL_FIELD = 923;
    private static final int BYTE_COMPACTION_MODE_LATCH = 901;
    private static final int BYTE_COMPACTION_MODE_LATCH_6 = 924;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final int LL = 27;
    private static final int MACRO_PDF417_TERMINATOR = 922;
    private static final int MAX_NUMERIC_CODEWORDS = 15;
    private static final int ML = 28;
    private static final int MODE_SHIFT_TO_BYTE_COMPACTION_MODE = 913;
    private static final int NUMBER_OF_SEQUENCE_CODEWORDS = 2;
    private static final int NUMERIC_COMPACTION_MODE_LATCH = 902;
    private static final int PAL = 29;
    private static final int PL = 25;
    private static final int PS = 29;
    private static final int TEXT_COMPACTION_MODE_LATCH = 900;
    private static final char[] PUNCT_CHARS = {';', '<', '>', '@', '[', '\\', ']', '_', '`', '~', '!', '\r', '\t', ',', ':', '\n', '-', '.', '$', '/', '\"', '|', '*', '(', ')', '?', '{', '}', '\''};
    private static final char[] MIXED_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '&', '\r', '\t', ',', ':', '#', '-', '.', '$', '/', '+', '%', '*', '=', '^'};
    private static final Charset DEFAULT_ENCODING = Charset.forName(NPStringFog.decode(new byte[]{40, 102, 120, 27, 94, 89, 84, 12, 26, 7}, "a576fa", true));
    private static final BigInteger[] EXP900 = new BigInteger[16];

    /* JADX INFO: renamed from: com.google.zxing.pdf417.decoder.DecodedBitStreamParser$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode = new int[Mode.values().length];

        static {
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    private enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        EXP900[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        EXP900[1] = bigIntegerValueOf;
        for (int i = 2; i < EXP900.length; i++) {
            EXP900[i] = EXP900[i - 1].multiply(bigIntegerValueOf);
        }
    }

    private DecodedBitStreamParser() {
    }

    private static int byteCompaction(int i, int[] iArr, Charset charset, int i2, StringBuilder sb) {
        int i3;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (i == 901) {
            int i4 = 0;
            long j = 0;
            int[] iArr2 = new int[6];
            boolean z = false;
            int i5 = iArr[i2];
            i3 = i2 + 1;
            while (i3 < iArr[0] && !z) {
                int i6 = i4 + 1;
                iArr2[i4] = i5;
                j = (j * 900) + ((long) i5);
                int i7 = i3 + 1;
                i5 = iArr[i3];
                if (i5 == 900 || i5 == 901 || i5 == 902 || i5 == BYTE_COMPACTION_MODE_LATCH_6 || i5 == 928 || i5 == BEGIN_MACRO_PDF417_OPTIONAL_FIELD || i5 == MACRO_PDF417_TERMINATOR) {
                    z = true;
                    i3 = i7 - 1;
                    i4 = i6;
                } else if (i6 % 5 != 0 || i6 <= 0) {
                    i4 = i6;
                    i3 = i7;
                } else {
                    for (int i8 = 0; i8 < 6; i8++) {
                        byteArrayOutputStream.write((byte) (j >> ((5 - i8) * 8)));
                    }
                    j = 0;
                    i4 = 0;
                    i3 = i7;
                }
            }
            if (i3 == iArr[0] && i5 < 900) {
                iArr2[i4] = i5;
                i4++;
            }
            for (int i9 = 0; i9 < i4; i9++) {
                byteArrayOutputStream.write((byte) iArr2[i9]);
            }
        } else if (i == BYTE_COMPACTION_MODE_LATCH_6) {
            int i10 = 0;
            long j2 = 0;
            boolean z2 = false;
            i3 = i2;
            while (i3 < iArr[0] && !z2) {
                int i11 = i3 + 1;
                int i12 = iArr[i3];
                if (i12 < 900) {
                    i10++;
                    j2 = (j2 * 900) + ((long) i12);
                    i3 = i11;
                } else if (i12 == 900 || i12 == 901 || i12 == 902 || i12 == BYTE_COMPACTION_MODE_LATCH_6 || i12 == 928 || i12 == BEGIN_MACRO_PDF417_OPTIONAL_FIELD || i12 == MACRO_PDF417_TERMINATOR) {
                    i3 = i11 - 1;
                    z2 = true;
                } else {
                    i3 = i11;
                }
                if (i10 % 5 == 0 && i10 > 0) {
                    for (int i13 = 0; i13 < 6; i13++) {
                        byteArrayOutputStream.write((byte) (j2 >> ((5 - i13) * 8)));
                    }
                    j2 = 0;
                    i10 = 0;
                }
            }
        } else {
            i3 = i2;
        }
        sb.append(new String(byteArrayOutputStream.toByteArray(), charset));
        return i3;
    }

    static DecoderResult decode(int[] iArr, String str) throws FormatException {
        int iDecodeMacroBlock;
        StringBuilder sb = new StringBuilder(iArr.length * 2);
        Charset charsetForName = DEFAULT_ENCODING;
        int i = 2;
        int i2 = iArr[1];
        PDF417ResultMetadata pDF417ResultMetadata = new PDF417ResultMetadata();
        while (i < iArr[0]) {
            switch (i2) {
                case 900:
                    iDecodeMacroBlock = textCompaction(iArr, i, sb);
                    break;
                case 901:
                case BYTE_COMPACTION_MODE_LATCH_6 /* 924 */:
                    iDecodeMacroBlock = byteCompaction(i2, iArr, charsetForName, i, sb);
                    break;
                case 902:
                    iDecodeMacroBlock = numericCompaction(iArr, i, sb);
                    break;
                case MODE_SHIFT_TO_BYTE_COMPACTION_MODE /* 913 */:
                    iDecodeMacroBlock = i + 1;
                    sb.append((char) iArr[i]);
                    break;
                case MACRO_PDF417_TERMINATOR /* 922 */:
                case BEGIN_MACRO_PDF417_OPTIONAL_FIELD /* 923 */:
                    throw FormatException.getFormatInstance();
                case ECI_USER_DEFINED /* 925 */:
                    iDecodeMacroBlock = i + 1;
                    break;
                case ECI_GENERAL_PURPOSE /* 926 */:
                    iDecodeMacroBlock = i + 2;
                    break;
                case ECI_CHARSET /* 927 */:
                    iDecodeMacroBlock = i + 1;
                    charsetForName = Charset.forName(CharacterSetECI.getCharacterSetECIByValue(iArr[i]).name());
                    break;
                case 928:
                    iDecodeMacroBlock = decodeMacroBlock(iArr, i, pDF417ResultMetadata);
                    break;
                default:
                    iDecodeMacroBlock = textCompaction(iArr, i - 1, sb);
                    break;
            }
            if (iDecodeMacroBlock >= iArr.length) {
                throw FormatException.getFormatInstance();
            }
            i = iDecodeMacroBlock + 1;
            i2 = iArr[iDecodeMacroBlock];
        }
        if (sb.length() == 0) {
            throw FormatException.getFormatInstance();
        }
        DecoderResult decoderResult = new DecoderResult(null, sb.toString(), null, str);
        decoderResult.setOther(pDF417ResultMetadata);
        return decoderResult;
    }

    private static String decodeBase900toBase10(int[] iArr, int i) throws FormatException {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigIntegerAdd = bigIntegerAdd.add(EXP900[(i - i2) - 1].multiply(BigInteger.valueOf(iArr[i2])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) != '1') {
            throw FormatException.getFormatInstance();
        }
        return string.substring(1);
    }

    private static int decodeMacroBlock(int[] iArr, int i, PDF417ResultMetadata pDF417ResultMetadata) throws FormatException {
        if (i + 2 > iArr[0]) {
            throw FormatException.getFormatInstance();
        }
        int[] iArr2 = new int[2];
        int i2 = 0;
        while (i2 < 2) {
            iArr2[i2] = iArr[i];
            i2++;
            i++;
        }
        pDF417ResultMetadata.setSegmentIndex(Integer.parseInt(decodeBase900toBase10(iArr2, 2)));
        StringBuilder sb = new StringBuilder();
        int iTextCompaction = textCompaction(iArr, i, sb);
        pDF417ResultMetadata.setFileId(sb.toString());
        if (iArr[iTextCompaction] != BEGIN_MACRO_PDF417_OPTIONAL_FIELD) {
            if (iArr[iTextCompaction] != MACRO_PDF417_TERMINATOR) {
                return iTextCompaction;
            }
            pDF417ResultMetadata.setLastSegment(true);
            return iTextCompaction + 1;
        }
        int i3 = iTextCompaction + 1;
        int[] iArr3 = new int[iArr[0] - i3];
        int i4 = 0;
        int i5 = i3;
        boolean z = false;
        while (i5 < iArr[0] && !z) {
            int i6 = i5 + 1;
            int i7 = iArr[i5];
            if (i7 < 900) {
                iArr3[i4] = i7;
                i4++;
                i5 = i6;
            } else {
                switch (i7) {
                    case MACRO_PDF417_TERMINATOR /* 922 */:
                        pDF417ResultMetadata.setLastSegment(true);
                        i5 = i6 + 1;
                        z = true;
                        break;
                    default:
                        throw FormatException.getFormatInstance();
                }
            }
        }
        pDF417ResultMetadata.setOptionalData(Arrays.copyOf(iArr3, i4));
        return i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void decodeTextCompaction(int[] r8, int[] r9, int r10, java.lang.StringBuilder r11) {
        /*
            Method dump skipped, instruction units count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.decodeTextCompaction(int[], int[], int, java.lang.StringBuilder):void");
    }

    private static int numericCompaction(int[] iArr, int i, StringBuilder sb) throws FormatException {
        int[] iArr2 = new int[15];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i3 == iArr[0]) {
                z = true;
            }
            if (i4 < 900) {
                iArr2[i2] = i4;
                i2++;
                i = i3;
            } else if (i4 == 900 || i4 == 901 || i4 == BYTE_COMPACTION_MODE_LATCH_6 || i4 == 928 || i4 == BEGIN_MACRO_PDF417_OPTIONAL_FIELD || i4 == MACRO_PDF417_TERMINATOR) {
                i = i3 - 1;
                z = true;
            } else {
                i = i3;
            }
            if (i2 % 15 == 0 || i4 == 902 || z) {
                if (i2 > 0) {
                    sb.append(decodeBase900toBase10(iArr2, i2));
                    i2 = 0;
                }
            }
        }
        return i;
    }

    private static int textCompaction(int[] iArr, int i, StringBuilder sb) {
        int[] iArr2 = new int[(iArr[0] - i) * 2];
        int[] iArr3 = new int[(iArr[0] - i) * 2];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i4 >= 900) {
                switch (i4) {
                    case 900:
                        iArr2[i2] = 900;
                        i2++;
                        i = i3;
                        break;
                    case 901:
                    case 902:
                    case MACRO_PDF417_TERMINATOR /* 922 */:
                    case BEGIN_MACRO_PDF417_OPTIONAL_FIELD /* 923 */:
                    case BYTE_COMPACTION_MODE_LATCH_6 /* 924 */:
                    case 928:
                        i = i3 - 1;
                        z = true;
                        break;
                    case MODE_SHIFT_TO_BYTE_COMPACTION_MODE /* 913 */:
                        iArr2[i2] = MODE_SHIFT_TO_BYTE_COMPACTION_MODE;
                        i = i3 + 1;
                        iArr3[i2] = iArr[i3];
                        i2++;
                        break;
                    default:
                        i = i3;
                        break;
                }
            } else {
                iArr2[i2] = i4 / 30;
                iArr2[i2 + 1] = i4 % 30;
                i2 += 2;
                i = i3;
            }
        }
        decodeTextCompaction(iArr2, iArr3, i2, sb);
        return i;
    }
}
