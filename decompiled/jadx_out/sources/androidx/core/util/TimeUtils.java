package androidx.core.util;

import java.io.PrintWriter;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private TimeUtils() {
    }

    private static int accumField(int i, int i2, boolean z, int i3) {
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (z || i > 0) {
            return i2 + 1;
        }
        return 0;
    }

    public static void formatDuration(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print(NPStringFog.decode(new byte[]{27, 20}, "69479d", 1.535135131E9d));
        } else {
            formatDuration(j - j2, printWriter, 0);
        }
    }

    public static void formatDuration(long j, PrintWriter printWriter) {
        formatDuration(j, printWriter, 0);
    }

    public static void formatDuration(long j, PrintWriter printWriter, int i) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j, i)));
        }
    }

    public static void formatDuration(long j, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j, 0));
        }
    }

    private static int formatDurationLocked(long j, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (sFormatStr.length < i) {
            sFormatStr = new char[i];
        }
        char[] cArr = sFormatStr;
        if (j == 0) {
            while (i - 1 < 0) {
                cArr[0] = (char) 32;
            }
            cArr[0] = (char) 48;
            return 1;
        }
        if (j > 0) {
            i2 = 43;
        } else {
            j = -j;
            i2 = 45;
        }
        int i9 = (int) (j % 1000);
        int iFloor = (int) Math.floor(j / 1000);
        if (iFloor > SECONDS_PER_DAY) {
            i3 = iFloor / SECONDS_PER_DAY;
            iFloor -= SECONDS_PER_DAY * i3;
        } else {
            i3 = 0;
        }
        if (iFloor > SECONDS_PER_HOUR) {
            int i10 = iFloor / SECONDS_PER_HOUR;
            i4 = i10;
            i5 = iFloor - (i10 * SECONDS_PER_HOUR);
        } else {
            i4 = 0;
            i5 = iFloor;
        }
        if (i5 > 60) {
            int i11 = i5 / 60;
            i6 = i5 - (i11 * 60);
            i7 = i11;
        } else {
            i6 = i5;
            i7 = 0;
        }
        int i12 = 0;
        if (i != 0) {
            int iAccumField = accumField(i3, 1, false, 0);
            int iAccumField2 = iAccumField + accumField(i4, 1, iAccumField > 0, 2);
            int iAccumField3 = iAccumField2 + accumField(i7, 1, iAccumField2 > 0, 2);
            int iAccumField4 = iAccumField3 + accumField(i6, 1, iAccumField3 > 0, 2);
            int iAccumField5 = accumField(i9, 2, true, iAccumField4 > 0 ? 3 : 0) + 1 + iAccumField4;
            while (true) {
                int i13 = iAccumField5;
                i8 = i12;
                if (i13 >= i) {
                    break;
                }
                cArr[i8] = (char) 32;
                i12 = i8 + 1;
                iAccumField5 = i13 + 1;
            }
        } else {
            i8 = 0;
        }
        cArr[i8] = (char) i2;
        int i14 = i8 + 1;
        boolean z = i != 0;
        int iPrintField = printField(cArr, i3, 'd', i14, false, 0);
        int iPrintField2 = printField(cArr, i4, 'h', iPrintField, iPrintField != i14, z ? 2 : 0);
        int iPrintField3 = printField(cArr, i7, 'm', iPrintField2, iPrintField2 != i14, z ? 2 : 0);
        int iPrintField4 = printField(cArr, i6, 's', iPrintField3, iPrintField3 != i14, z ? 2 : 0);
        int iPrintField5 = printField(cArr, i9, 'm', iPrintField4, true, (!z || iPrintField4 == i14) ? 0 : 3);
        cArr[iPrintField5] = (char) 115;
        return iPrintField5 + 1;
    }

    private static int printField(char[] cArr, int i, char c, int i2, boolean z, int i3) {
        int i4;
        int i5;
        if (!z && i <= 0) {
            return i2;
        }
        if ((!z || i3 < 3) && i <= 99) {
            i4 = i2;
            i5 = i;
        } else {
            cArr[i2] = (char) (r0 + 48);
            i4 = i2 + 1;
            i5 = i - ((i / 100) * 100);
        }
        if ((z && i3 >= 2) || i5 > 9 || i2 != i4) {
            cArr[i4] = (char) (r2 + 48);
            i4++;
            i5 -= (i5 / 10) * 10;
        }
        cArr[i4] = (char) (i5 + 48);
        int i6 = i4 + 1;
        cArr[i6] = c;
        return i6 + 1;
    }
}
