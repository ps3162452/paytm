package androidx.core.util;

import android.text.TextUtils;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static void checkArgument(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void checkArgument(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static double checkArgumentInRange(double d, double d2, double d3, String str) {
        if (d < d2) {
            throw new IllegalArgumentException(String.format(Locale.US, NPStringFog.decode(new byte[]{18, 66, 65, 8, 22, 16, 88, 68, 21, 65, 10, 86, 23, 67, 0, 15, 2, 85, 23, 94, 7, 65, 62, 21, 81, 29, 65, 68, 3, 109, 23, 25, 21, 14, 10, 16, 91, 94, 22, 72}, "71aae0", true, true), str, Double.valueOf(d2), Double.valueOf(d3)));
        }
        if (d <= d3) {
            return d;
        }
        throw new IllegalArgumentException(String.format(Locale.US, NPStringFog.decode(new byte[]{65, 17, 21, 15, 18, 24, 11, 23, 65, 70, 14, 94, 68, 16, 84, 8, 6, 93, 68, 13, 83, 70, 58, 29, 2, 78, 21, 67, 7, 101, 68, 74, 65, 9, 14, 24, 12, 11, 82, 14, 72}, "db5fa8", -1022632202L), str, Double.valueOf(d2), Double.valueOf(d3)));
    }

    public static float checkArgumentInRange(float f, float f2, float f3, String str) {
        if (f < f2) {
            throw new IllegalArgumentException(String.format(Locale.US, NPStringFog.decode(new byte[]{71, 65, 68, 92, 74, 25, 13, 71, 16, 21, 86, 95, 66, 64, 5, 91, 94, 92, 66, 93, 2, 21, 98, 28, 4, 30, 68, 16, 95, 100, 66, 26, 16, 90, 86, 25, 14, 93, 19, 28}, "b2d599", 30295), str, Float.valueOf(f2), Float.valueOf(f3)));
        }
        if (f <= f3) {
            return f;
        }
        throw new IllegalArgumentException(String.format(Locale.US, NPStringFog.decode(new byte[]{71, 74, 18, 91, 17, 68, 13, 76, 70, 18, 13, 2, 66, 75, 83, 92, 5, 1, 66, 86, 84, 18, 57, 65, 4, 21, 18, 23, 4, 57, 66, 17, 70, 93, 13, 68, 10, 80, 85, 90, 75}, "b922bd", false), str, Float.valueOf(f2), Float.valueOf(f3)));
    }

    public static int checkArgumentInRange(int i, int i2, int i3, String str) {
        if (i < i2) {
            throw new IllegalArgumentException(String.format(Locale.US, NPStringFog.decode(new byte[]{71, 21, 65, 93, 23, 69, 13, 19, 21, 20, 11, 3, 66, 20, 0, 90, 3, 0, 66, 9, 7, 20, 63, 64, 6, 74, 65, 17, 0, 56, 66, 78, 21, 91, 11, 69, 14, 9, 22, 29}, "bfa4de", -30386), str, Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        if (i <= i3) {
            return i;
        }
        throw new IllegalArgumentException(String.format(Locale.US, NPStringFog.decode(new byte[]{20, 71, 24, 80, 21, 17, 94, 65, 76, 25, 9, 87, 17, 70, 89, 87, 1, 84, 17, 91, 94, 25, 61, 20, 85, 24, 24, 28, 2, 108, 17, 28, 76, 86, 9, 17, 89, 93, 95, 81, 79}, "1489f1", false), str, Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public static long checkArgumentInRange(long j, long j2, long j3, String str) {
        if (j < j2) {
            throw new IllegalArgumentException(String.format(Locale.US, NPStringFog.decode(new byte[]{21, 68, 18, 15, 68, 24, 95, 66, 70, 70, 88, 94, 16, 69, 83, 8, 80, 93, 16, 88, 84, 70, 108, 29, 84, 27, 18, 67, 83, 101, 16, 31, 70, 9, 88, 24, 92, 88, 69, 79}, "072f78", -15209), str, Long.valueOf(j2), Long.valueOf(j3)));
        }
        if (j <= j3) {
            return j;
        }
        throw new IllegalArgumentException(String.format(Locale.US, NPStringFog.decode(new byte[]{16, 74, 25, 10, 65, 67, 90, 76, 77, 67, 93, 5, 21, 75, 88, 13, 85, 6, 21, 86, 95, 67, 105, 70, 81, 21, 25, 70, 86, 62, 21, 17, 77, 12, 93, 67, 93, 80, 94, 11, 27}, "599c2c", 1.7546477E9f), str, Long.valueOf(j2), Long.valueOf(j3)));
    }

    public static int checkArgumentNonnegative(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    public static int checkArgumentNonnegative(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str);
    }

    public static int checkFlagsArgument(int i, int i2) {
        if ((i & i2) == i) {
            return i;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{48, 7, 23, 64, 7, 65, 22, 7, 2, 21, 4, 94, 3, 5, 21, 21, 82, 74}, "bbf5b2", 69204088L) + Integer.toHexString(i) + NPStringFog.decode(new byte[]{28, 23, 90, 66, 21, 69, 95, 89, 84, 78, 65, 85, 72}, "0787ae", false) + Integer.toHexString(i2) + NPStringFog.decode(new byte[]{20, 83, 69, 4, 17, 2, 88, 94, 88, 22, 84, 7}, "427a1c", true));
    }

    public static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static <T> T checkNotNull(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void checkState(boolean z) {
        checkState(z, null);
    }

    public static void checkState(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    public static <T extends CharSequence> T checkStringNotEmpty(T t) {
        if (TextUtils.isEmpty(t)) {
            throw new IllegalArgumentException();
        }
        return t;
    }

    public static <T extends CharSequence> T checkStringNotEmpty(T t, Object obj) {
        if (TextUtils.isEmpty(t)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return t;
    }

    public static <T extends CharSequence> T checkStringNotEmpty(T t, String str, Object... objArr) {
        if (TextUtils.isEmpty(t)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t;
    }
}
