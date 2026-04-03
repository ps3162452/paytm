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
public final class Code39Reader extends OneDReader {
    private final int[] counters;
    private final StringBuilder decodeRowResult;
    private final boolean extendedMode;
    private final boolean usingCheckDigit;
    static final String ALPHABET_STRING = NPStringFog.decode(new byte[]{6, 4, 83, 10, 7, 3, 0, 2, 89, 0, 114, 116, 117, 113, 36, 127, 116, 126, 127, 127, 42, 117, 126, 120, 121, 101, 48, 107, 96, 98, 99, 99, 54, 97, 106, 108, 27, 27, 65, 19, 23, 25, 29, 16}, "65a936", 2080870506L);
    private static final char[] ALPHABET = NPStringFog.decode(new byte[]{84, 0, 83, 86, 3, 1, 82, 6, 89, 92, 118, 118, 39, 117, 36, 35, 112, 124, 45, 123, 42, 41, 122, 122, 43, 97, 48, 55, 100, 96, 49, 103, 54, 61, 110, 110, 73, 31, 65, 79, 19, 27, 79, 20}, "d1ae74", 1893754691L).toCharArray();
    static final int[] CHARACTER_ENCODINGS = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, HttpStatus.SC_BAD_REQUEST, 208, 133, 388, 196, 148, 168, 162, 138, 42};
    private static final int ASTERISK_ENCODING = CHARACTER_ENCODINGS[39];

    public Code39Reader() {
        this(false);
    }

    public Code39Reader(boolean z) {
        this(z, false);
    }

    public Code39Reader(boolean z, boolean z2) {
        this.usingCheckDigit = z;
        this.extendedMode = z2;
        this.decodeRowResult = new StringBuilder(20);
        this.counters = new int[9];
    }

    private static String decodeExtended(CharSequence charSequence) throws FormatException {
        char c;
        int i;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt == '+' || cCharAt == '$' || cCharAt == '%' || cCharAt == '/') {
                char cCharAt2 = charSequence.charAt(i2 + 1);
                switch (cCharAt) {
                    case '$':
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        }
                        c = (char) (cCharAt2 - '@');
                        break;
                    case '%':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                            c = (char) (cCharAt2 - '&');
                        } else {
                            if (cCharAt2 < 'F' || cCharAt2 > 'W') {
                                throw FormatException.getFormatInstance();
                            }
                            c = (char) (cCharAt2 - 11);
                        }
                        break;
                    case '+':
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        }
                        c = (char) (cCharAt2 + ' ');
                        break;
                    case '/':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                            c = (char) (cCharAt2 - ' ');
                        } else {
                            if (cCharAt2 != 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            c = ':';
                        }
                        break;
                    default:
                        c = 0;
                        break;
                }
                sb.append(c);
                i = i2 + 1;
            } else {
                sb.append(cCharAt);
                i = i2;
            }
            i2 = i + 1;
        }
        return sb.toString();
    }

    private static int[] findAsteriskPattern(BitArray bitArray, int[] iArr) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int length = iArr.length;
        boolean z = false;
        int i = 0;
        for (int i2 = nextSet; i2 < size; i2++) {
            if (bitArray.get(i2) ^ z) {
                iArr[i] = iArr[i] + 1;
            } else {
                if (i != length - 1) {
                    i++;
                } else {
                    if (toNarrowWidePattern(iArr) == ASTERISK_ENCODING && bitArray.isRange(Math.max(0, nextSet - ((i2 - nextSet) / 2)), nextSet, false)) {
                        return new int[]{nextSet, i2};
                    }
                    nextSet += iArr[0] + iArr[1];
                    System.arraycopy(iArr, 2, iArr, 0, length - 2);
                    iArr[length - 2] = 0;
                    iArr[length - 1] = 0;
                    i--;
                }
                iArr[i] = 1;
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

    private static int toNarrowWidePattern(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        while (true) {
            int i2 = Integer.MAX_VALUE;
            for (int i3 : iArr) {
                if (i3 < i2 && i3 > i) {
                    i2 = i3;
                }
            }
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                int i8 = iArr[i7];
                if (i8 > i2) {
                    i6 |= 1 << ((length - 1) - i7);
                    i5++;
                    i4 += i8;
                }
            }
            if (i5 == 3) {
                int i9 = i5;
                for (int i10 = 0; i10 < length && i9 > 0; i10++) {
                    int i11 = iArr[i10];
                    if (i11 > i2) {
                        i9--;
                        if (i11 * 2 >= i4) {
                            return -1;
                        }
                    }
                }
                return i6;
            }
            if (i5 <= 3) {
                return -1;
            }
            i = i2;
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] iArr = this.counters;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.decodeRowResult;
        sb.setLength(0);
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray, iArr)[1]);
        int size = bitArray.getSize();
        while (true) {
            recordPattern(bitArray, nextSet, iArr);
            int narrowWidePattern = toNarrowWidePattern(iArr);
            if (narrowWidePattern < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char cPatternToChar = patternToChar(narrowWidePattern);
            sb.append(cPatternToChar);
            int i2 = nextSet;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int nextSet2 = bitArray.getNextSet(i2);
            if (cPatternToChar == '*') {
                sb.setLength(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                if (nextSet2 != size && ((nextSet2 - nextSet) - i4) * 2 < i4) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (this.usingCheckDigit) {
                    int length = sb.length() - 1;
                    int iIndexOf = 0;
                    for (int i6 = 0; i6 < length; i6++) {
                        iIndexOf += ALPHABET_STRING.indexOf(this.decodeRowResult.charAt(i6));
                    }
                    if (sb.charAt(length) != ALPHABET[iIndexOf % 43]) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    sb.setLength(length);
                }
                if (sb.length() == 0) {
                    throw NotFoundException.getNotFoundInstance();
                }
                return new Result(this.extendedMode ? decodeExtended(sb) : sb.toString(), null, new ResultPoint[]{new ResultPoint((r6[1] + r6[0]) / 2.0f, i), new ResultPoint(nextSet + (i4 / 2.0f), i)}, BarcodeFormat.CODE_39);
            }
            nextSet = nextSet2;
        }
    }
}
