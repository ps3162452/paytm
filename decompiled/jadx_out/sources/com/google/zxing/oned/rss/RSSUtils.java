package com.google.zxing.oned.rss;

/* JADX INFO: loaded from: classes65.dex */
public final class RSSUtils {
    private RSSUtils() {
    }

    private static int combins(int i, int i2) {
        int i3;
        int i4 = 1;
        if (i - i2 > i2) {
            i3 = i2;
            i2 = i - i2;
        } else {
            i3 = i - i2;
        }
        int i5 = 1;
        while (i > i2) {
            i4 *= i;
            if (i5 <= i3) {
                i4 /= i5;
                i5++;
            }
            i--;
        }
        int i6 = i4;
        int i7 = i6;
        for (int i8 = i5; i8 <= i3; i8++) {
            i7 /= i8;
        }
        return i7;
    }

    public static int getRSSvalue(int[] iArr, int i, boolean z) {
        int length = iArr.length;
        int length2 = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length2) {
            int i4 = iArr[i2] + i3;
            i2++;
            i3 = i4;
        }
        int i5 = i3;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < length - 1) {
            i7 = (1 << i6) | i7;
            int i9 = i8;
            int i10 = 1;
            while (i10 < iArr[i6]) {
                int iCombins = combins((i5 - i10) - 1, (length - i6) - 2);
                if (z && i7 == 0 && (i5 - i10) - ((length - i6) - 1) >= (length - i6) - 1) {
                    iCombins -= combins((i5 - i10) - (length - i6), (length - i6) - 2);
                }
                if ((length - i6) - 1 > 1) {
                    int iCombins2 = 0;
                    for (int i11 = (i5 - i10) - ((length - i6) - 2); i11 > i; i11--) {
                        iCombins2 += combins(((i5 - i10) - i11) - 1, (length - i6) - 3);
                    }
                    iCombins -= iCombins2 * ((length - 1) - i6);
                } else if (i5 - i10 > i) {
                    iCombins--;
                }
                i9 += iCombins;
                i10++;
                i7 &= (1 << i6) ^ (-1);
            }
            i5 -= i10;
            i6++;
            i8 = i9;
        }
        return i8;
    }
}
