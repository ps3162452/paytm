package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class HighLevelEncoder {
    static final int ASCII_ENCODATION = 0;
    static final int BASE256_ENCODATION = 5;
    static final int C40_ENCODATION = 1;
    static final char C40_UNLATCH = 254;
    static final int EDIFACT_ENCODATION = 4;
    static final char LATCH_TO_ANSIX12 = 238;
    static final char LATCH_TO_BASE256 = 231;
    static final char LATCH_TO_C40 = 230;
    static final char LATCH_TO_EDIFACT = 240;
    static final char LATCH_TO_TEXT = 239;
    private static final char MACRO_05 = 236;
    private static final char MACRO_06 = 237;
    private static final char PAD = 129;
    static final int TEXT_ENCODATION = 2;
    static final char UPPER_SHIFT = 235;
    static final int X12_ENCODATION = 3;
    static final char X12_UNLATCH = 254;
    private static final String MACRO_05_HEADER = NPStringFog.decode(new byte[]{56, 74, 12, 47, 7, 3, 126}, "cc2176", 1130835464L);
    private static final String MACRO_06_HEADER = NPStringFog.decode(new byte[]{111, 75, 14, 40, 83, 87, 41}, "4b06ca", false);
    private static final String MACRO_TRAILER = NPStringFog.decode(new byte[]{45, 98}, "3f34b5", false);

    private HighLevelEncoder() {
    }

    public static int determineConsecutiveDigitCount(CharSequence charSequence, int i) {
        int i2 = 0;
        int length = charSequence.length();
        if (i < length) {
            char cCharAt = charSequence.charAt(i);
            while (isDigit(cCharAt) && i < length) {
                i2++;
                i++;
                if (i < length) {
                    cCharAt = charSequence.charAt(i);
                }
            }
        }
        return i2;
    }

    public static String encodeHighLevel(String str) {
        return encodeHighLevel(str, SymbolShapeHint.FORCE_NONE, null, null);
    }

    public static String encodeHighLevel(String str, SymbolShapeHint symbolShapeHint, Dimension dimension, Dimension dimension2) {
        ASCIIEncoder aSCIIEncoder = new ASCIIEncoder();
        C40Encoder c40Encoder = new C40Encoder();
        TextEncoder textEncoder = new TextEncoder();
        X12Encoder x12Encoder = new X12Encoder();
        EdifactEncoder edifactEncoder = new EdifactEncoder();
        Base256Encoder base256Encoder = new Base256Encoder();
        EncoderContext encoderContext = new EncoderContext(str);
        encoderContext.setSymbolShape(symbolShapeHint);
        encoderContext.setSizeConstraints(dimension, dimension2);
        if (str.startsWith(MACRO_05_HEADER) && str.endsWith("\u001e\u0004")) {
            encoderContext.writeCodeword(MACRO_05);
            encoderContext.setSkipAtEnd(2);
            encoderContext.pos += MACRO_05_HEADER.length();
        } else if (str.startsWith(MACRO_06_HEADER) && str.endsWith("\u001e\u0004")) {
            encoderContext.writeCodeword(MACRO_06);
            encoderContext.setSkipAtEnd(2);
            encoderContext.pos += MACRO_06_HEADER.length();
        }
        int newEncoding = 0;
        while (encoderContext.hasMoreCharacters()) {
            new Encoder[]{aSCIIEncoder, c40Encoder, textEncoder, x12Encoder, edifactEncoder, base256Encoder}[newEncoding].encode(encoderContext);
            if (encoderContext.getNewEncoding() >= 0) {
                newEncoding = encoderContext.getNewEncoding();
                encoderContext.resetEncoderSignal();
            }
        }
        int codewordCount = encoderContext.getCodewordCount();
        encoderContext.updateSymbolInfo();
        int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity();
        if (codewordCount < dataCapacity && newEncoding != 0 && newEncoding != 5) {
            encoderContext.writeCodeword((char) 254);
        }
        StringBuilder codewords = encoderContext.getCodewords();
        if (codewords.length() < dataCapacity) {
            codewords.append(PAD);
        }
        while (codewords.length() < dataCapacity) {
            codewords.append(randomize253State(PAD, codewords.length() + 1));
        }
        return encoderContext.getCodewords().toString();
    }

    private static int findMinimums(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        int i2 = i;
        for (int i3 = 0; i3 < 6; i3++) {
            iArr[i3] = (int) Math.ceil(fArr[i3]);
            int i4 = iArr[i3];
            if (i2 > i4) {
                Arrays.fill(bArr, (byte) 0);
                i2 = i4;
            }
            if (i2 == i4) {
                bArr[i3] = (byte) (bArr[i3] + 1);
            }
        }
        return i2;
    }

    private static int getMinimumCount(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }

    static void illegalCharacter(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{112, 93, 90, 83, 80, 87, 85, 17, 85, 94, 86, 68, 88, 82, 66, 83, 69, 12, 25}, "916676", false, true) + c + NPStringFog.decode(new byte[]{70, 76, 85, 65}, "fde9d2", false) + (NPStringFog.decode(new byte[]{8, 8, 0, 7}, "8807c8", -21188).substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    static boolean isExtendedASCII(char c) {
        return c >= 128 && c <= 255;
    }

    private static boolean isNativeC40(char c) {
        return c == ' ' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z');
    }

    private static boolean isNativeEDIFACT(char c) {
        return c >= ' ' && c <= '^';
    }

    private static boolean isNativeText(char c) {
        return c == ' ' || (c >= '0' && c <= '9') || (c >= 'a' && c <= 'z');
    }

    private static boolean isNativeX12(char c) {
        return isX12TermSep(c) || c == ' ' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z');
    }

    private static boolean isSpecialB256(char c) {
        return false;
    }

    private static boolean isX12TermSep(char c) {
        return c == '\r' || c == '*' || c == '>';
    }

    static int lookAheadTest(CharSequence charSequence, int i, int i2) {
        float[] fArr;
        char cCharAt;
        if (i >= charSequence.length()) {
            return i2;
        }
        if (i2 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[]{1.0f, 2.0f, 2.0f, 2.0f, 2.0f, 2.25f};
            fArr[i2] = 0.0f;
        }
        int i3 = 0;
        while (i + i3 != charSequence.length()) {
            char cCharAt2 = charSequence.charAt(i + i3);
            i3++;
            if (isDigit(cCharAt2)) {
                fArr[0] = (float) (((double) fArr[0]) + 0.5d);
            } else if (isExtendedASCII(cCharAt2)) {
                fArr[0] = (int) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 2.0f;
            } else {
                fArr[0] = (int) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 1.0f;
            }
            if (isNativeC40(cCharAt2)) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (isExtendedASCII(cCharAt2)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (isNativeText(cCharAt2)) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (isExtendedASCII(cCharAt2)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (isNativeX12(cCharAt2)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (isExtendedASCII(cCharAt2)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (isNativeEDIFACT(cCharAt2)) {
                fArr[4] = fArr[4] + 0.75f;
            } else if (isExtendedASCII(cCharAt2)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            if (isSpecialB256(cCharAt2)) {
                fArr[5] = fArr[5] + 4.0f;
            } else {
                fArr[5] = fArr[5] + 1.0f;
            }
            if (i3 >= 4) {
                int[] iArr = new int[6];
                byte[] bArr = new byte[6];
                findMinimums(fArr, iArr, Integer.MAX_VALUE, bArr);
                int minimumCount = getMinimumCount(bArr);
                if (iArr[0] < iArr[5] && iArr[0] < iArr[1] && iArr[0] < iArr[2] && iArr[0] < iArr[3] && iArr[0] < iArr[4]) {
                    return 0;
                }
                if (iArr[5] < iArr[0] || bArr[1] + bArr[2] + bArr[3] + bArr[4] == 0) {
                    return 5;
                }
                if (minimumCount == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (minimumCount == 1 && bArr[2] > 0) {
                    return 2;
                }
                if (minimumCount == 1 && bArr[3] > 0) {
                    return 3;
                }
                if (iArr[1] + 1 < iArr[0] && iArr[1] + 1 < iArr[5] && iArr[1] + 1 < iArr[4] && iArr[1] + 1 < iArr[2]) {
                    if (iArr[1] < iArr[3]) {
                        return 1;
                    }
                    if (iArr[1] == iArr[3]) {
                        int i4 = i + i3;
                        do {
                            i4++;
                            if (i4 >= charSequence.length()) {
                                break;
                            }
                            cCharAt = charSequence.charAt(i4);
                            if (isX12TermSep(cCharAt)) {
                                return 3;
                            }
                        } while (isNativeX12(cCharAt));
                        return 1;
                    }
                }
            }
        }
        byte[] bArr2 = new byte[6];
        int[] iArr2 = new int[6];
        int iFindMinimums = findMinimums(fArr, iArr2, Integer.MAX_VALUE, bArr2);
        int minimumCount2 = getMinimumCount(bArr2);
        if (iArr2[0] == iFindMinimums) {
            return 0;
        }
        if (minimumCount2 == 1 && bArr2[5] > 0) {
            return 5;
        }
        if (minimumCount2 == 1 && bArr2[4] > 0) {
            return 4;
        }
        if (minimumCount2 != 1 || bArr2[2] <= 0) {
            return (minimumCount2 != 1 || bArr2[3] <= 0) ? 1 : 3;
        }
        return 2;
    }

    private static char randomize253State(char c, int i) {
        int i2 = ((i * 149) % 253) + 1 + c;
        return i2 <= 254 ? (char) i2 : (char) (i2 - 254);
    }
}
