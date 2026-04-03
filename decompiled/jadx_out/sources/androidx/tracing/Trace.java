package androidx.tracing;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes19.dex */
public final class Trace {
    static final String TAG = NPStringFog.decode(new byte[]{96, 64, 2, 82, 82}, "42c171", 1.7063418E8f);
    private static Method sAsyncTraceBeginMethod;
    private static Method sAsyncTraceEndMethod;
    private static Method sIsTagEnabledMethod;
    private static Method sTraceCounterMethod;
    private static long sTraceTagApp;

    private Trace() {
    }

    public static void beginAsyncSection(String str, int i) {
        try {
            if (sAsyncTraceBeginMethod == null) {
                TraceApi29Impl.beginAsyncSection(str, i);
                return;
            }
        } catch (NoClassDefFoundError e) {
        } catch (NoSuchMethodError e2) {
        }
        beginAsyncSectionFallback(str, i);
    }

    private static void beginAsyncSectionFallback(String str, int i) {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (sAsyncTraceBeginMethod == null) {
                    sAsyncTraceBeginMethod = android.os.Trace.class.getMethod(NPStringFog.decode(new byte[]{88, 22, 73, 93, 81, 97, 75, 4, 83, 86, 112, 80, 94, 12, 94}, "9e0325", false, true), Long.TYPE, String.class, Integer.TYPE);
                }
                sAsyncTraceBeginMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i));
            } catch (Exception e) {
                handleException(NPStringFog.decode(new byte[]{87, 22, 74, 94, 85, 100, 68, 4, 80, 85, 116, 85, 81, 12, 93}, "6e3060", true), e);
            }
        }
    }

    public static void beginSection(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            TraceApi18Impl.beginSection(str);
        }
    }

    public static void endAsyncSection(String str, int i) {
        try {
            if (sAsyncTraceEndMethod == null) {
                TraceApi29Impl.endAsyncSection(str, i);
                return;
            }
        } catch (NoClassDefFoundError e) {
        } catch (NoSuchMethodError e2) {
        }
        endAsyncSectionFallback(str, i);
    }

    private static void endAsyncSectionFallback(String str, int i) {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (sAsyncTraceEndMethod == null) {
                    sAsyncTraceEndMethod = android.os.Trace.class.getMethod(NPStringFog.decode(new byte[]{83, 71, 27, 94, 90, 100, 64, 85, 1, 85, 124, 94, 86}, "24b090", 8.59758162E8d), Long.TYPE, String.class, Integer.TYPE);
                }
                sAsyncTraceEndMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i));
            } catch (Exception e) {
                handleException(NPStringFog.decode(new byte[]{85, 67, 27, 87, 86, 98, 70, 81, 1, 92, 112, 88, 80}, "40b956", false, true), e);
            }
        }
    }

    public static void endSection() {
        if (Build.VERSION.SDK_INT >= 18) {
            TraceApi18Impl.endSection();
        }
    }

    private static void handleException(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (!(cause instanceof RuntimeException)) {
                throw new RuntimeException(cause);
            }
            throw ((RuntimeException) cause);
        }
        Log.v(TAG, NPStringFog.decode(new byte[]{100, 11, 86, 0, 10, 0, 17, 17, 88, 66, 5, 4, 93, 9, 23}, "1e7bfe", 1.540482465E9d) + str + NPStringFog.decode(new byte[]{16, 78, 8, 86, 67, 20, 85, 94, 13, 82, 0, 18, 89, 87, 15}, "08a7cf", false), exc);
    }

    public static boolean isEnabled() {
        try {
            if (sIsTagEnabledMethod == null) {
                return android.os.Trace.isEnabled();
            }
        } catch (NoClassDefFoundError e) {
        } catch (NoSuchMethodError e2) {
        }
        return isEnabledFallback();
    }

    private static boolean isEnabledFallback() {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (sIsTagEnabledMethod == null) {
                    sTraceTagApp = android.os.Trace.class.getField(NPStringFog.decode(new byte[]{97, 49, 121, 113, 116, 58, 97, 34, 127, 109, 112, 53, 101}, "5c821e", -1057334717L)).getLong(null);
                    sIsTagEnabledMethod = android.os.Trace.class.getMethod(NPStringFog.decode(new byte[]{92, 74, 49, 85, 5, 119, 91, 88, 7, 88, 7, 86}, "59e4b2", true, false), Long.TYPE);
                }
                return ((Boolean) sIsTagEnabledMethod.invoke(null, Long.valueOf(sTraceTagApp))).booleanValue();
            } catch (Exception e) {
                handleException(NPStringFog.decode(new byte[]{13, 23, 101, 3, 95, 118, 10, 5, 83, 14, 93, 87}, "dd1b83", -1621708341L), e);
            }
        }
        return false;
    }

    public static void setCounter(String str, int i) {
        try {
            if (sTraceCounterMethod == null) {
                TraceApi29Impl.setCounter(str, i);
                return;
            }
        } catch (NoClassDefFoundError e) {
        } catch (NoSuchMethodError e2) {
        }
        setCounterFallback(str, i);
    }

    private static void setCounterFallback(String str, int i) {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (sTraceCounterMethod == null) {
                    sTraceCounterMethod = android.os.Trace.class.getMethod(NPStringFog.decode(new byte[]{65, 69, 2, 85, 3, 116, 90, 66, 13, 66, 3, 69}, "57c6f7", true, false), Long.TYPE, String.class, Integer.TYPE);
                }
                sTraceCounterMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i));
            } catch (Exception e) {
                handleException(NPStringFog.decode(new byte[]{66, 65, 2, 81, 81, 116, 89, 70, 13, 70, 81, 69}, "63c247", -16603), e);
            }
        }
    }
}
