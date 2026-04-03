package androidx.core.os;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public final class TraceCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{53, 66, 82, 84, 7, 114, 14, 93, 67, 86, 22}, "a037b1", -27767027L);
    private static Method sAsyncTraceBeginMethod;
    private static Method sAsyncTraceEndMethod;
    private static Method sIsTagEnabledMethod;
    private static Method sTraceCounterMethod;
    private static long sTraceTagApp;

    static {
        if (Build.VERSION.SDK_INT < 18 || Build.VERSION.SDK_INT >= 29) {
            return;
        }
        try {
            sTraceTagApp = Trace.class.getField(NPStringFog.decode(new byte[]{53, 55, 32, 115, 35, 111, 53, 36, 38, 111, 39, 96, 49}, "aea0f0", -1.432299055E9d)).getLong(null);
            sIsTagEnabledMethod = Trace.class.getMethod(NPStringFog.decode(new byte[]{93, 18, 102, 86, 80, 35, 90, 0, 80, 91, 82, 2}, "4a277f", true), Long.TYPE);
            sAsyncTraceBeginMethod = Trace.class.getMethod(NPStringFog.decode(new byte[]{83, 71, 31, 94, 84, 96, 64, 85, 5, 85, 117, 81, 85, 93, 8}, "24f074", -1296045658L), Long.TYPE, String.class, Integer.TYPE);
            sAsyncTraceEndMethod = Trace.class.getMethod(NPStringFog.decode(new byte[]{85, 21, 65, 15, 2, 49, 70, 7, 91, 4, 36, 11, 80}, "4f8aae", true, true), Long.TYPE, String.class, Integer.TYPE);
            sTraceCounterMethod = Trace.class.getMethod(NPStringFog.decode(new byte[]{18, 22, 84, 6, 86, 39, 9, 17, 91, 17, 86, 22}, "fd5e3d", 11445), Long.TYPE, String.class, Integer.TYPE);
        } catch (Exception e) {
            Log.i(NPStringFog.decode(new byte[]{103, 22, 5, 87, 4, 39, 92, 9, 20, 85, 21}, "3dd4ad", -8.92809547E8d), NPStringFog.decode(new byte[]{108, 92, 89, 1, 9, 93, 25, 70, 87, 67, 12, 86, 80, 70, 81, 2, 9, 81, 67, 87, 24, 21, 12, 89, 25, 64, 93, 5, 9, 93, 90, 70, 81, 12, 11, 22}, "928ce8", 646405744L), e);
        }
    }

    private TraceCompat() {
    }

    public static void beginAsyncSection(String str, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.beginAsyncSection(str, i);
        } else if (Build.VERSION.SDK_INT >= 18) {
            try {
                sAsyncTraceBeginMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i));
            } catch (Exception e) {
                Log.v(TAG, NPStringFog.decode(new byte[]{49, 87, 84, 84, 90, 86, 68, 77, 90, 22, 95, 93, 18, 86, 94, 83, 22, 82, 23, 64, 91, 85, 98, 65, 5, 90, 80, 116, 83, 84, 13, 87, 29, 31, 22, 69, 13, 88, 21, 68, 83, 85, 8, 92, 86, 66, 95, 92, 10, 23}, "d95663", 1430438067L));
            }
        }
    }

    public static void beginSection(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void endAsyncSection(String str, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.endAsyncSection(str, i);
        } else if (Build.VERSION.SDK_INT >= 18) {
            try {
                sAsyncTraceEndMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i));
            } catch (Exception e) {
                Log.v(TAG, NPStringFog.decode(new byte[]{98, 89, 83, 1, 89, 7, 23, 67, 93, 67, 92, 12, 65, 88, 89, 6, 21, 7, 89, 83, 115, 16, 76, 12, 84, 100, 87, 0, 65, 11, 88, 89, 26, 74, 21, 20, 94, 86, 18, 17, 80, 4, 91, 82, 81, 23, 92, 13, 89, 25}, "772c5b", true, true));
            }
        }
    }

    public static void endSection() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    public static boolean isEnabled() {
        if (Build.VERSION.SDK_INT >= 29) {
            return Trace.isEnabled();
        }
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                return ((Boolean) sIsTagEnabledMethod.invoke(null, Long.valueOf(sTraceTagApp))).booleanValue();
            } catch (Exception e) {
                Log.v(TAG, NPStringFog.decode(new byte[]{103, 95, 82, 87, 14, 7, 18, 69, 92, 21, 11, 12, 68, 94, 88, 80, 66, 11, 65, 101, 82, 82, 39, 12, 83, 83, 95, 80, 6, 74, 27, 17, 69, 92, 3, 66, 64, 84, 85, 89, 7, 1, 70, 88, 92, 91, 76}, "2135bb", -1861779320L));
            }
        }
        return false;
    }

    public static void setCounter(String str, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.setCounter(str, i);
        } else if (Build.VERSION.SDK_INT >= 18) {
            try {
                sTraceCounterMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i));
            } catch (Exception e) {
                Log.v(TAG, NPStringFog.decode(new byte[]{103, 10, 4, 1, 14, 93, 18, 16, 10, 67, 11, 86, 68, 11, 14, 6, 66, 76, 64, 5, 6, 6, 33, 87, 71, 10, 17, 6, 16, 16, 27, 68, 19, 10, 3, 24, 64, 1, 3, 15, 7, 91, 70, 13, 10, 13, 76}, "2decb8", 9.1463386E8f));
            }
        }
    }
}
