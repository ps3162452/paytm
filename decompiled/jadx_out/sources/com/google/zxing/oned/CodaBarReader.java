package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class CodaBarReader extends OneDReader {
    private static final float MAX_ACCEPTABLE = 2.0f;
    private static final int MIN_CHARACTER_LENGTH = 3;
    private static final float PADDING = 1.5f;
    private static final String ALPHABET_STRING = NPStringFog.decode(new byte[]{7, 85, 0, 3, 0, 6, 1, 83, 10, 9, 25, 23, 13, 75, 28, 27, 117, 113, 116, 32}, "7d2043", -1052859277L);
    static final char[] ALPHABET = NPStringFog.decode(new byte[]{86, 84, 83, 11, 86, 6, 80, 82, 89, 1, 79, 23, 92, 74, 79, 19, 35, 113, 37, 33}, "fea8b3", 1778001384L).toCharArray();
    static final int[] CHARACTER_ENCODINGS = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};
    private static final char[] STARTEND_ENCODING = {'A', 'B', 'C', 'D'};
    private final StringBuilder decodeRowResult = new StringBuilder(20);
    private int[] counters = new int[80];
    private int counterLength = 0;

    static boolean arrayContains(char[] cArr, char c) {
        if (cArr == null) {
            return false;
        }
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    private void counterAppend(int i) {
        this.counters[this.counterLength] = i;
        this.counterLength++;
        if (this.counterLength >= this.counters.length) {
            int[] iArr = new int[this.counterLength * 2];
            System.arraycopy(this.counters, 0, iArr, 0, this.counterLength);
            this.counters = iArr;
        }
    }

    private int findStartPattern() throws NotFoundException {
        for (int i = 1; i < this.counterLength; i += 2) {
            int narrowWidePattern = toNarrowWidePattern(i);
            if (narrowWidePattern != -1 && arrayContains(STARTEND_ENCODING, ALPHABET[narrowWidePattern])) {
                int i2 = 0;
                for (int i3 = i; i3 < i + 7; i3++) {
                    i2 += this.counters[i3];
                }
                if (i == 1 || this.counters[i - 1] >= i2 / 2) {
                    return i;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void setCounters(BitArray bitArray) throws NotFoundException {
        this.counterLength = 0;
        int nextUnset = bitArray.getNextUnset(0);
        int size = bitArray.getSize();
        if (nextUnset >= size) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z = true;
        int i = 0;
        for (int i2 = nextUnset; i2 < size; i2++) {
            if (bitArray.get(i2) ^ z) {
                i++;
            } else {
                counterAppend(i);
                z = !z;
                i = 1;
            }
        }
        counterAppend(i);
    }

    private int toNarrowWidePattern(int i) {
        int i2 = Integer.MAX_VALUE;
        int i3 = i + 7;
        if (i3 >= this.counterLength) {
            return -1;
        }
        int[] iArr = this.counters;
        int i4 = i;
        int i5 = Integer.MAX_VALUE;
        int i6 = 0;
        while (i4 < i3) {
            int i7 = iArr[i4];
            if (i7 < i5) {
                i5 = i7;
            }
            if (i7 <= i6) {
                i7 = i6;
            }
            i4 += 2;
            i6 = i7;
        }
        int i8 = (i5 + i6) / 2;
        int i9 = 0;
        int i10 = i + 1;
        while (i10 < i3) {
            int i11 = iArr[i10];
            if (i11 < i2) {
                i2 = i11;
            }
            if (i11 <= i9) {
                i11 = i9;
            }
            i10 += 2;
            i9 = i11;
        }
        int i12 = (i2 + i9) / 2;
        int i13 = 128;
        int i14 = 0;
        int i15 = 0;
        while (i15 < 7) {
            i13 >>= 1;
            int i16 = iArr[i + i15] > ((i15 & 1) == 0 ? i8 : i12) ? i14 | i13 : i14;
            i15++;
            i14 = i16;
        }
        for (int i17 = 0; i17 < CHARACTER_ENCODINGS.length; i17++) {
            if (CHARACTER_ENCODINGS[i17] == i14) {
                return i17;
            }
        }
        return -1;
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        Arrays.fill(this.counters, 0);
        setCounters(bitArray);
        int iFindStartPattern = findStartPattern();
        this.decodeRowResult.setLength(0);
        int i2 = iFindStartPattern;
        do {
            int narrowWidePattern = toNarrowWidePattern(i2);
            if (narrowWidePattern == -1) {
                throw NotFoundException.getNotFoundInstance();
            }
            this.decodeRowResult.append((char) narrowWidePattern);
            i2 += 8;
            if (this.decodeRowResult.length() > 1 && arrayContains(STARTEND_ENCODING, ALPHABET[narrowWidePattern])) {
                break;
            }
        } while (i2 < this.counterLength);
        int i3 = this.counters[i2 - 1];
        int i4 = 0;
        for (int i5 = -8; i5 < -1; i5++) {
            i4 += this.counters[i2 + i5];
        }
        if (i2 < this.counterLength && i3 < i4 / 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        validatePattern(iFindStartPattern);
        for (int i6 = 0; i6 < this.decodeRowResult.length(); i6++) {
            this.decodeRowResult.setCharAt(i6, ALPHABET[this.decodeRowResult.charAt(i6)]);
        }
        if (!arrayContains(STARTEND_ENCODING, this.decodeRowResult.charAt(0))) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (!arrayContains(STARTEND_ENCODING, this.decodeRowResult.charAt(this.decodeRowResult.length() - 1))) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (this.decodeRowResult.length() <= 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (map == null || !map.containsKey(DecodeHintType.RETURN_CODABAR_START_END)) {
            this.decodeRowResult.deleteCharAt(this.decodeRowResult.length() - 1);
            this.decodeRowResult.deleteCharAt(0);
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < iFindStartPattern) {
            int i9 = this.counters[i7] + i8;
            i7++;
            i8 = i9;
        }
        float f = i8;
        int i10 = i8;
        int i11 = i10;
        for (int i12 = iFindStartPattern; i12 < i2 - 1; i12++) {
            i11 += this.counters[i12];
        }
        return new Result(this.decodeRowResult.toString(), null, new ResultPoint[]{new ResultPoint(f, i), new ResultPoint(i11, i)}, BarcodeFormat.CODABAR);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00d3, code lost:
    
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void validatePattern(int r12) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.CodaBarReader.validatePattern(int):void");
    }
}
