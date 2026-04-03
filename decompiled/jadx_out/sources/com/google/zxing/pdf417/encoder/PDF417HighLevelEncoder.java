package com.google.zxing.pdf417.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class PDF417HighLevelEncoder {
    private static final int BYTE_COMPACTION = 1;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final int LATCH_TO_BYTE = 924;
    private static final int LATCH_TO_BYTE_PADDED = 901;
    private static final int LATCH_TO_NUMERIC = 902;
    private static final int LATCH_TO_TEXT = 900;
    private static final int NUMERIC_COMPACTION = 2;
    private static final int SHIFT_TO_BYTE = 913;
    private static final int SUBMODE_ALPHA = 0;
    private static final int SUBMODE_LOWER = 1;
    private static final int SUBMODE_MIXED = 2;
    private static final int SUBMODE_PUNCTUATION = 3;
    private static final int TEXT_COMPACTION = 0;
    private static final byte[] TEXT_MIXED_RAW = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};
    private static final byte[] TEXT_PUNCTUATION_RAW = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};
    private static final byte[] MIXED = new byte[128];
    private static final byte[] PUNCTUATION = new byte[128];
    private static final Charset DEFAULT_ENCODING = Charset.forName(NPStringFog.decode(new byte[]{113, 50, 44, 20, 1, 91, 13, 88, 78, 8}, "8ac99c", 21401));

    static {
        Arrays.fill(MIXED, (byte) -1);
        for (byte b = 0; b < TEXT_MIXED_RAW.length; b = (byte) (b + 1)) {
            byte b2 = TEXT_MIXED_RAW[b];
            if (b2 > 0) {
                MIXED[b2] = b;
            }
        }
        Arrays.fill(PUNCTUATION, (byte) -1);
        for (byte b3 = 0; b3 < TEXT_PUNCTUATION_RAW.length; b3 = (byte) (b3 + 1)) {
            byte b4 = TEXT_PUNCTUATION_RAW[b3];
            if (b4 > 0) {
                PUNCTUATION[b4] = b3;
            }
        }
    }

    private PDF417HighLevelEncoder() {
    }

    private static int determineConsecutiveBinaryCount(String str, int i, Charset charset) throws WriterException {
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        int length = str.length();
        int i2 = i;
        while (i2 < length) {
            int i3 = 0;
            char cCharAt = str.charAt(i2);
            while (i3 < 13 && isDigit(cCharAt)) {
                i3++;
                int i4 = i2 + i3;
                if (i4 >= length) {
                    break;
                }
                cCharAt = str.charAt(i4);
            }
            if (i3 >= 13) {
                return i2 - i;
            }
            char cCharAt2 = str.charAt(i2);
            if (!charsetEncoderNewEncoder.canEncode(cCharAt2)) {
                throw new WriterException(NPStringFog.decode(new byte[]{40, 9, 92, 27, 85, 13, 5, 9, 86, 87, 82, 15, 3, 70, 81, 94, 81, 17, 7, 5, 70, 83, 66, 67, 2, 3, 70, 83, 83, 23, 3, 2, 8, 22}, "ff260c", true, true) + cCharAt2 + NPStringFog.decode(new byte[]{23, 17, 99, 94, 10, 84, 88, 93, 83, 10, 67}, "7960c7", 8.19418067E8d) + ((int) cCharAt2) + ')');
            }
            i2++;
        }
        return i2 - i;
    }

    private static int determineConsecutiveDigitCount(CharSequence charSequence, int i) {
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

    private static int determineConsecutiveTextCount(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = i;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            int i3 = 0;
            while (i3 < 13 && isDigit(cCharAt) && i2 < length) {
                i3++;
                int i4 = i2 + 1;
                if (i4 < length) {
                    cCharAt = charSequence.charAt(i4);
                    i2 = i4;
                } else {
                    i2 = i4;
                }
            }
            if (i3 >= 13) {
                return (i2 - i) - i3;
            }
            if (i3 <= 0) {
                if (!isText(charSequence.charAt(i2))) {
                    break;
                }
                i2++;
            }
        }
        return i2 - i;
    }

    private static void encodeBinary(byte[] bArr, int i, int i2, int i3, StringBuilder sb) {
        int i4;
        if (i2 == 1 && i3 == 0) {
            sb.append((char) 913);
        } else if (i2 % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        if (i2 >= 6) {
            char[] cArr = new char[5];
            i4 = i;
            while ((i + i2) - i4 >= 6) {
                long j = 0;
                for (int i5 = 0; i5 < 6; i5++) {
                    j = (j << 8) + ((long) (bArr[i4 + i5] & 255));
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    cArr[i6] = (char) (j % 900);
                    j /= 900;
                }
                for (int length = cArr.length - 1; length >= 0; length--) {
                    sb.append(cArr[length]);
                }
                i4 += 6;
            }
        } else {
            i4 = i;
        }
        while (i4 < i + i2) {
            sb.append((char) (bArr[i4] & 255));
            i4++;
        }
    }

    static String encodeHighLevel(String str, Compaction compaction, Charset charset) throws WriterException {
        CharacterSetECI characterSetECIByName;
        int iEncodeText;
        int i;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset = DEFAULT_ENCODING;
        } else if (!DEFAULT_ENCODING.equals(charset) && (characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(charset.name())) != null) {
            encodingECI(characterSetECIByName.getValue(), sb);
        }
        int length = str.length();
        if (compaction == Compaction.TEXT) {
            encodeText(str, 0, length, sb, 0);
        } else if (compaction == Compaction.BYTE) {
            byte[] bytes = str.getBytes(charset);
            encodeBinary(bytes, 0, bytes.length, 1, sb);
        } else if (compaction == Compaction.NUMERIC) {
            sb.append((char) 902);
            encodeNumeric(str, 0, length, sb);
        } else {
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (i4 < length) {
                int iDetermineConsecutiveDigitCount = determineConsecutiveDigitCount(str, i4);
                if (iDetermineConsecutiveDigitCount >= 13) {
                    sb.append((char) 902);
                    i2 = 2;
                    encodeNumeric(str, i4, iDetermineConsecutiveDigitCount, sb);
                    i = i4 + iDetermineConsecutiveDigitCount;
                    iEncodeText = 0;
                } else {
                    int iDetermineConsecutiveTextCount = determineConsecutiveTextCount(str, i4);
                    if (iDetermineConsecutiveTextCount >= 5 || iDetermineConsecutiveDigitCount == length) {
                        if (i2 != 0) {
                            sb.append((char) 900);
                            i2 = 0;
                            i3 = 0;
                        }
                        iEncodeText = encodeText(str, i4, iDetermineConsecutiveTextCount, sb, i3);
                        i = i4 + iDetermineConsecutiveTextCount;
                    } else {
                        int iDetermineConsecutiveBinaryCount = determineConsecutiveBinaryCount(str, i4, charset);
                        if (iDetermineConsecutiveBinaryCount == 0) {
                            iDetermineConsecutiveBinaryCount = 1;
                        }
                        byte[] bytes2 = str.substring(i4, i4 + iDetermineConsecutiveBinaryCount).getBytes(charset);
                        if (bytes2.length == 1 && i2 == 0) {
                            encodeBinary(bytes2, 0, 1, 0, sb);
                        } else {
                            encodeBinary(bytes2, 0, bytes2.length, i2, sb);
                            i2 = 1;
                            i3 = 0;
                        }
                        int i5 = iDetermineConsecutiveBinaryCount + i4;
                        iEncodeText = i3;
                        i = i5;
                    }
                }
                i4 = i;
                i3 = iEncodeText;
            }
        }
        return sb.toString();
    }

    private static void encodeNumeric(String str, int i, int i2, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i2 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i3 = 0;
        while (i3 < i2) {
            sb2.setLength(0);
            int iMin = Math.min(44, i2 - i3);
            BigInteger bigInteger = new BigInteger('1' + str.substring(i + i3, i + i3 + iMin));
            do {
                sb2.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i3 += iMin;
        }
    }

    private static int encodeText(CharSequence charSequence, int i, int i2, StringBuilder sb, int i3) {
        char cCharAt;
        StringBuilder sb2 = new StringBuilder(i2);
        int i4 = 0;
        while (true) {
            char cCharAt2 = charSequence.charAt(i + i4);
            switch (i3) {
                case 0:
                    if (!isAlphaUpper(cCharAt2)) {
                        if (isAlphaLower(cCharAt2)) {
                            sb2.append((char) 27);
                            i3 = 1;
                        } else if (!isMixed(cCharAt2)) {
                            sb2.append((char) 29);
                            sb2.append((char) PUNCTUATION[cCharAt2]);
                        } else {
                            i3 = 2;
                            sb2.append((char) 28);
                        }
                        break;
                    } else if (cCharAt2 != ' ') {
                        sb2.append((char) (cCharAt2 - 'A'));
                    } else {
                        sb2.append((char) 26);
                    }
                    break;
                case 1:
                    if (!isAlphaLower(cCharAt2)) {
                        if (isAlphaUpper(cCharAt2)) {
                            sb2.append((char) 27);
                            sb2.append((char) (cCharAt2 - 'A'));
                        } else if (!isMixed(cCharAt2)) {
                            sb2.append((char) 29);
                            sb2.append((char) PUNCTUATION[cCharAt2]);
                        } else {
                            i3 = 2;
                            sb2.append((char) 28);
                        }
                    } else if (cCharAt2 != ' ') {
                        sb2.append((char) (cCharAt2 - 'a'));
                    } else {
                        sb2.append((char) 26);
                    }
                    break;
                case 2:
                    if (isMixed(cCharAt2)) {
                        sb2.append((char) MIXED[cCharAt2]);
                    } else if (isAlphaUpper(cCharAt2)) {
                        sb2.append((char) 28);
                        i3 = 0;
                    } else if (isAlphaLower(cCharAt2)) {
                        sb2.append((char) 27);
                        i3 = 1;
                    } else if (i + i4 + 1 >= i2 || !isPunctuation(charSequence.charAt(i + i4 + 1))) {
                        sb2.append((char) 29);
                        sb2.append((char) PUNCTUATION[cCharAt2]);
                    } else {
                        i3 = 3;
                        sb2.append((char) 25);
                    }
                    break;
                default:
                    if (!isPunctuation(cCharAt2)) {
                        sb2.append((char) 29);
                        i3 = 0;
                    } else {
                        sb2.append((char) PUNCTUATION[cCharAt2]);
                    }
                    break;
            }
            i4++;
            if (i4 >= i2) {
                int length = sb2.length();
                char c = 0;
                int i5 = 0;
                while (i5 < length) {
                    if (i5 % 2 != 0) {
                        cCharAt = (char) ((c * 30) + sb2.charAt(i5));
                        sb.append(cCharAt);
                    } else {
                        cCharAt = sb2.charAt(i5);
                    }
                    i5++;
                    c = cCharAt;
                }
                if (length % 2 != 0) {
                    sb.append((char) ((c * 30) + 29));
                }
                return i3;
            }
        }
    }

    private static void encodingECI(int i, StringBuilder sb) throws WriterException {
        if (i >= 0 && i < 900) {
            sb.append((char) 927);
            sb.append((char) i);
        } else if (i < 810900) {
            sb.append((char) 926);
            sb.append((char) ((i / 900) - 1));
            sb.append((char) (i % 900));
        } else {
            if (i >= 811800) {
                throw new WriterException(NPStringFog.decode(new byte[]{115, 112, 43, 19, 93, 16, 91, 81, 7, 65, 19, 11, 89, 71, 66, 90, 93, 69, 64, 82, 14, 90, 87, 69, 68, 82, 12, 84, 86, 69, 80, 65, 13, 94, 19, 85, 24, 29, 90, 2, 2, 82, 15, 10, 78, 19, 81, 16, 66, 19, 21, 82, 64, 69}, "63b33e", -30645) + i);
            }
            sb.append((char) 925);
            sb.append((char) (810900 - i));
        }
    }

    private static boolean isAlphaLower(char c) {
        return c == ' ' || (c >= 'a' && c <= 'z');
    }

    private static boolean isAlphaUpper(char c) {
        return c == ' ' || (c >= 'A' && c <= 'Z');
    }

    private static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    private static boolean isMixed(char c) {
        return MIXED[c] != -1;
    }

    private static boolean isPunctuation(char c) {
        return PUNCTUATION[c] != -1;
    }

    private static boolean isText(char c) {
        return c == '\t' || c == '\n' || c == '\r' || (c >= ' ' && c <= '~');
    }
}
