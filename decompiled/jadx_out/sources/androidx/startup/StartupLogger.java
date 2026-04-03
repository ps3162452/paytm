package androidx.startup;

import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes29.dex */
public final class StartupLogger {
    static final boolean DEBUG = false;
    private static final String TAG = NPStringFog.decode(new byte[]{49, 16, 0, 65, 16, 64, 18, 40, 14, 84, 3, 80, 16}, "bda3d5", 1.185836892E9d);

    private StartupLogger() {
    }

    public static void e(String str, Throwable th) {
        Log.e(TAG, str, th);
    }

    public static void i(String str) {
        Log.i(TAG, str);
    }
}
