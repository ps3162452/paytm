package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import n.NPStringFog;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes55.dex */
public final class Preconditions {
    private Preconditions() {
        throw new AssertionError(NPStringFog.decode(new byte[]{109, 87, 91, 88, 75, 22, 89, 87, 70, 95, 89, 0, 84, 92}, "89268b", -5.9081004E7f));
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
            throw new IllegalArgumentException(zza(NPStringFog.decode(new byte[]{16, 74, 65, 93, 64, 19, 90, 76, 21, 20, 92, 85, 21, 75, 0, 90, 84, 86, 21, 86, 7, 20, 104, 22, 83, 21, 65, 17, 85, 110, 21, 17, 21, 91, 92, 19, 89, 86, 22, 29}, "59a433", false, true), str, Double.valueOf(d2), Double.valueOf(d3)));
        }
        if (d <= d3) {
            return d;
        }
        throw new IllegalArgumentException(zza(NPStringFog.decode(new byte[]{19, 67, 70, 89, 69, 23, 89, 69, 18, 16, 89, 81, 22, 66, 7, 94, 81, 82, 22, 95, 0, 16, 109, 18, 80, 28, 70, 21, 80, 106, 22, 24, 18, 95, 89, 23, 94, 89, 1, 88, 31}, "60f067", -1.346602053E9d), str, Double.valueOf(d2), Double.valueOf(d3)));
    }

    public static float checkArgumentInRange(float f, float f2, float f3, String str) {
        if (f < f2) {
            throw new IllegalArgumentException(zza(NPStringFog.decode(new byte[]{28, 66, 17, 10, 16, 18, 86, 68, 69, 67, 12, 84, 25, 67, 80, 13, 4, 87, 25, 94, 87, 67, 56, 23, 95, 29, 17, 70, 5, 111, 25, 25, 69, 12, 12, 18, 85, 94, 70, 74}, "911cc2", true), str, Float.valueOf(f2), Float.valueOf(f3)));
        }
        if (f <= f3) {
            return f;
        }
        throw new IllegalArgumentException(zza(NPStringFog.decode(new byte[]{68, 64, 24, 89, 18, 69, 14, 70, 76, 16, 14, 3, 65, 65, 89, 94, 6, 0, 65, 92, 94, 16, 58, 64, 7, 31, 24, 21, 7, 56, 65, 27, 76, 95, 14, 69, 9, 90, 95, 88, 72}, "a380ae", -1586456966L), str, Float.valueOf(f2), Float.valueOf(f3)));
    }

    public static int checkArgumentInRange(int i, int i2, int i3, String str) {
        if (i < i2) {
            throw new IllegalArgumentException(zza(NPStringFog.decode(new byte[]{20, 67, 65, 13, 69, 25, 94, 69, 21, 68, 89, 95, 17, 66, 0, 10, 81, 92, 17, 95, 7, 68, 109, 28, 85, 28, 65, 65, 82, 100, 17, 24, 21, 11, 89, 25, 93, 95, 22, 77}, "10ad69", true), str, Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        if (i <= i3) {
            return i;
        }
        throw new IllegalArgumentException(zza(NPStringFog.decode(new byte[]{21, 70, 66, 88, 64, 66, 95, 64, 22, 17, 92, 4, 16, 71, 3, 95, 84, 7, 16, 90, 4, 17, 104, 71, 84, 25, 66, 20, 87, 63, 16, 29, 22, 94, 92, 66, 88, 92, 5, 89, 26}, "05b13b", true, true), str, Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public static long checkArgumentInRange(long j, long j2, long j3, String str) {
        if (j < j2) {
            throw new IllegalArgumentException(zza(NPStringFog.decode(new byte[]{71, 16, 25, 88, 69, 23, 13, 22, 77, 17, 89, 81, 66, 17, 88, 95, 81, 82, 66, 12, 95, 17, 109, 18, 6, 79, 25, 20, 82, 106, 66, 75, 77, 94, 89, 23, 14, 12, 78, 24}, "bc9167", -9798), str, Long.valueOf(j2), Long.valueOf(j3)));
        }
        if (j <= j3) {
            return j;
        }
        throw new IllegalArgumentException(zza(NPStringFog.decode(new byte[]{18, 74, 65, 8, 22, 65, 88, 76, 21, 65, 10, 7, 23, 75, 0, 15, 2, 4, 23, 86, 7, 65, 62, 68, 83, 21, 65, 68, 1, 60, 23, 17, 21, 14, 10, 65, 95, 80, 6, 9, 76}, "79aaea", 2.9289798E8d), str, Long.valueOf(j2), Long.valueOf(j3)));
    }

    public static void checkHandlerThread(Handler handler) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != handler.getLooper()) {
            String name = looperMyLooper != null ? looperMyLooper.getThread().getName() : NPStringFog.decode(new byte[]{95, 77, 15, 14, 65, 0, 68, 74, 17, 7, 15, 23, 17, 84, 12, 13, 17, 6, 67}, "18cbac", false);
            throw new IllegalStateException(NPStringFog.decode(new byte[]{41, 70, 69, 76, 17, 0, 1, 19, 85, 89, 93, 14, 1, 87, 22, 87, 95, 66}, "d3681b", -26158) + handler.getLooper().getThread().getName() + NPStringFog.decode(new byte[]{68, 18, 12, 75, 80, 89, 0, 74, 68, 91, 64, 76, 68, 1, 11, 77, 21}, "dfd958", 21558) + name + NPStringFog.decode(new byte[]{72}, "f1828e", false));
        }
    }

    public static void checkHandlerThread(Handler handler, String str) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static void checkMainThread() {
        checkMainThread(NPStringFog.decode(new byte[]{123, 20, 65, 17, 20, 84, 83, 65, 81, 4, 88, 90, 83, 5, 18, 10, 90, 22, 66, 9, 87, 69, 89, 87, 95, 15, 18, 4, 68, 70, 90, 8, 81, 4, 64, 95, 89, 15, 18, 17, 92, 68, 83, 0, 86}, "6a2e46", -8734));
    }

    public static void checkMainThread(String str) {
        if (!com.google.android.gms.common.util.zzb.zza()) {
            throw new IllegalStateException(str);
        }
    }

    @EnsuresNonNull({"#1"})
    public static String checkNotEmpty(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{38, 8, 69, 87, 86, 19, 50, 21, 65, 91, 86, 84, 65, 8, 64, 18, 93, 94, 17, 21, 74, 18, 87, 65, 65, 15, 70, 94, 84}, "aa3283", true));
        }
        return str;
    }

    @EnsuresNonNull({"#1"})
    public static String checkNotEmpty(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    public static void checkNotMainThread() {
        checkNotMainThread(NPStringFog.decode(new byte[]{117, 19, 64, 76, 66, 92, 87, 18, 19, 90, 7, 18, 91, 7, 95, 84, 7, 86, 24, 9, 93, 24, 22, 90, 93, 70, 94, 89, 11, 92, 24, 7, 67, 72, 14, 91, 91, 7, 71, 81, 13, 92, 24, 18, 91, 74, 7, 83, 92}, "8f38b2", false, false));
    }

    public static void checkNotMainThread(String str) {
        if (com.google.android.gms.common.util.zzb.zza()) {
            throw new IllegalStateException(str);
        }
    }

    @EnsuresNonNull({"#1"})
    public static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(NPStringFog.decode(new byte[]{11, 66, 91, 85, 23, 74, 0, 81, 82, 75, 82, 86, 6, 82}, "e77978", true));
    }

    @EnsuresNonNull({"#1"})
    public static <T> T checkNotNull(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static int checkNotZero(int i) {
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 88, 68, 81, 11, 69, 125, 95, 70, 81, 2, 0, 70, 17, 91, 71, 69, 31, 81, 67, 93}, "4124ee", -1.647935966E9d));
    }

    public static int checkNotZero(int i, Object obj) {
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    public static long checkNotZero(long j) {
        if (j != 0) {
            return j;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{36, 91, 70, 7, 95, 18, 47, 93, 94, 5, 17, 91, 16, 18, 74, 7, 67, 93}, "c20b12", true));
    }

    public static long checkNotZero(long j, Object obj) {
        if (j != 0) {
            return j;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    public static void checkState(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void checkState(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    static String zza(String str, Object... objArr) {
        StringBuilder sb = new StringBuilder(str.length() + 48);
        int i = 0;
        int i2 = 0;
        while (i2 < 3) {
            int iIndexOf = str.indexOf(NPStringFog.decode(new byte[]{28, 74}, "994e96", -1396098356L), i);
            if (iIndexOf == -1) {
                break;
            }
            sb.append(str.substring(i, iIndexOf));
            sb.append(objArr[i2]);
            i = iIndexOf + 2;
            i2++;
        }
        sb.append(str.substring(i));
        if (i2 < 3) {
            sb.append(NPStringFog.decode(new byte[]{16, 104}, "03732f", -2863));
            sb.append(objArr[i2]);
            for (int i3 = i2 + 1; i3 < 3; i3++) {
                sb.append(NPStringFog.decode(new byte[]{27, 70}, "7f4c92", true, false));
                sb.append(objArr[i3]);
            }
            sb.append(NPStringFog.decode(new byte[]{59}, "f213b6", -1.689605926E9d));
        }
        return sb.toString();
    }
}
