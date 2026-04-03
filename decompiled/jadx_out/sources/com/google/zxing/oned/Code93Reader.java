package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;
import n.NPStringFog;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes65.dex */
public final class Code93Reader extends OneDReader {
    private static final String ALPHABET_STRING = NPStringFog.decode(new byte[]{86, 9, 3, 85, 5, 81, 80, 15, 9, 95, 112, 38, 37, 124, 116, 32, 118, 44, 47, 114, 122, 42, 124, 42, 41, 104, 96, 52, 98, 48, 51, 110, 102, 62, 104, 62, 75, 22, 17, 66, 30, 79, 67, 89, 83, 5, 85, 78}, "f81f1d", 1.892385468E9d);
    private static final char[] ALPHABET = NPStringFog.decode(new byte[]{86, 82, 83, 2, 80, 3, 80, 84, 89, 8, 37, 116, 37, 39, 36, 119, 35, 126, 47, 41, 42, 125, 41, 120, 41, 51, 48, 99, 55, 98, 51, 53, 54, 105, 61, 108, 75, 77, 65, 21, 75, 29, 67, 2, 3, 82, 0, 28}, "fca1d6", 1902307735L).toCharArray();
    private static final int[] CHARACTER_ENCODINGS = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 424, 420, 418, HttpStatus.SC_NOT_FOUND, 402, 394, 360, 356, 354, 308, 282, 344, 332, 326, HttpStatus.SC_MULTIPLE_CHOICES, 278, 436, 434, 428, 422, HttpStatus.SC_NOT_ACCEPTABLE, HttpStatus.SC_GONE, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
    private static final int ASTERISK_ENCODING = CHARACTER_ENCODINGS[47];
    private final StringBuilder decodeRowResult = new StringBuilder(20);
    private final int[] counters = new int[6];

    private static void checkChecksums(CharSequence charSequence) throws ChecksumException {
        int length = charSequence.length();
        checkOneChecksum(charSequence, length - 2, 20);
        checkOneChecksum(charSequence, length - 1, 15);
    }

    private static void checkOneChecksum(CharSequence charSequence, int i, int i2) throws ChecksumException {
        int i3 = 1;
        int i4 = i - 1;
        int i5 = 0;
        while (i4 >= 0) {
            int iIndexOf = (ALPHABET_STRING.indexOf(charSequence.charAt(i4)) * i3) + i5;
            int i6 = i3 + 1;
            if (i6 > i2) {
                i6 = 1;
            }
            i4--;
            i3 = i6;
            i5 = iIndexOf;
        }
        if (charSequence.charAt(i) != ALPHABET[i5 % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    private static String decodeExtended(CharSequence charSequence) throws FormatException {
        int i;
        char c;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 'a' || cCharAt > 'd') {
                sb.append(cCharAt);
                i = i2;
            } else {
                if (i2 >= length - 1) {
                    throw FormatException.getFormatInstance();
                }
                char cCharAt2 = charSequence.charAt(i2 + 1);
                switch (cCharAt) {
                    case 'a':
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        }
                        c = (char) (cCharAt2 - '@');
                        break;
                    case 'b':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                            c = (char) (cCharAt2 - '&');
                        } else if (cCharAt2 >= 'F' && cCharAt2 <= 'J') {
                            c = (char) (cCharAt2 - 11);
                        } else if (cCharAt2 >= 'K' && cCharAt2 <= 'O') {
                            c = (char) (cCharAt2 + 16);
                        } else if (cCharAt2 >= 'P' && cCharAt2 <= 'S') {
                            c = (char) (cCharAt2 + '+');
                        } else {
                            if (cCharAt2 < 'T' || cCharAt2 > 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            c = 127;
                        }
                        break;
                    case 'c':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                            c = (char) (cCharAt2 - ' ');
                        } else {
                            if (cCharAt2 != 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            c = ':';
                        }
                        break;
                    case 'd':
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        }
                        c = (char) (cCharAt2 + ' ');
                        break;
                    default:
                        c = 0;
                        break;
                }
                sb.append(c);
                i = i2 + 1;
            }
            i2 = i + 1;
        }
        return sb.toString();
    }

    private int[] findAsteriskPattern(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        Arrays.fill(this.counters, 0);
        int[] iArr = this.counters;
        int length = iArr.length;
        int i = nextSet;
        int i2 = 0;
        boolean z = false;
        for (int i3 = nextSet; i3 < size; i3++) {
            if (bitArray.get(i3) ^ z) {
                iArr[i2] = iArr[i2] + 1;
            } else {
                if (i2 != length - 1) {
                    i2++;
                } else {
                    if (toPattern(iArr) == ASTERISK_ENCODING) {
                        return new int[]{i, i3};
                    }
                    i += iArr[0] + iArr[1];
                    System.arraycopy(iArr, 2, iArr, 0, length - 2);
                    iArr[length - 2] = 0;
                    iArr[length - 1] = 0;
                    i2--;
                }
                iArr[i2] = 1;
                z = !z;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char patternToChar(int i) throws NotFoundException {
        for (int i2 = 0; i2 < CHARACTER_ENCODINGS.length; i2++) {
            if (CHARACTER_ENCODINGS[i2] == i) {
                return ALPHABET[i2];
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int toPattern(int[] iArr) {
        int length = iArr.length;
        int length2 = iArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length2) {
            int i3 = iArr[i] + i2;
            i++;
            i2 = i3;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            int iRound = Math.round((iArr[i5] * 9.0f) / i2);
            if (iRound < 1 || iRound > 4) {
                return -1;
            }
            if ((i5 & 1) == 0) {
                int i6 = 0;
                while (i6 < iRound) {
                    i6++;
                    i4 = (i4 << 1) | 1;
                }
            } else {
                i4 <<= iRound;
            }
        }
        return i4;
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray)[1]);
        int size = bitArray.getSize();
        int[] iArr = this.counters;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.decodeRowResult;
        sb.setLength(0);
        while (true) {
            recordPattern(bitArray, nextSet, iArr);
            int pattern = toPattern(iArr);
            if (pattern < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char cPatternToChar = patternToChar(pattern);
            sb.append(cPatternToChar);
            int i2 = nextSet;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int nextSet2 = bitArray.getNextSet(i2);
            if (cPatternToChar == '*') {
                sb.deleteCharAt(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                if (nextSet2 == size || !bitArray.get(nextSet2)) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (sb.length() < 2) {
                    throw NotFoundException.getNotFoundInstance();
                }
                checkChecksums(sb);
                sb.setLength(sb.length() - 2);
                return new Result(decodeExtended(sb), null, new ResultPoint[]{new ResultPoint((r4[1] + r4[0]) / 2.0f, i), new ResultPoint(nextSet + (i4 / 2.0f), i)}, BarcodeFormat.CODE_93);
            }
            nextSet = nextSet2;
        }
    }
}
