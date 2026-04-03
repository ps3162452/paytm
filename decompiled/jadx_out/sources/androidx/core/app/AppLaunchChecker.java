package androidx.core.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class AppLaunchChecker {
    private static final String KEY_STARTED_FROM_LAUNCHER = NPStringFog.decode(new byte[]{67, 21, 80, 71, 65, 80, 84, 39, 67, 90, 88, 121, 81, 20, 95, 86, 93, 80, 66}, "0a1555", -6.22002275E8d);
    private static final String SHARED_PREFS_NAME = NPStringFog.decode(new byte[]{5, 94, 5, 64, 11, 15, 0, 30, 18, 71, 20, 22, 11, 66, 21, 28, 37, 22, 20, 124, 0, 71, 10, 5, 12, 115, 9, 87, 7, 13, 1, 66}, "d0a2df", 1.848138534E9d);

    @Deprecated
    public AppLaunchChecker() {
    }

    public static boolean hasStartedFromLauncher(Context context) {
        return context.getSharedPreferences(SHARED_PREFS_NAME, 0).getBoolean(KEY_STARTED_FROM_LAUNCHER, false);
    }

    public static void onActivityCreate(Activity activity) {
        Intent intent;
        SharedPreferences sharedPreferences = activity.getSharedPreferences(SHARED_PREFS_NAME, 0);
        if (sharedPreferences.getBoolean(KEY_STARTED_FROM_LAUNCHER, false) || (intent = activity.getIntent()) == null || !NPStringFog.decode(new byte[]{0, 94, 84, 65, 13, 93, 5, 30, 89, 93, 22, 81, 15, 68, 30, 82, 1, 64, 8, 95, 94, 29, 47, 117, 40, 126}, "a003b4", 5.92643816E8d).equals(intent.getAction())) {
            return;
        }
        if (intent.hasCategory(NPStringFog.decode(new byte[]{4, 93, 92, 22, 89, 89, 1, 29, 81, 10, 66, 85, 11, 71, 22, 7, 87, 68, 0, 84, 87, 22, 79, 30, 41, 114, 109, 42, 117, 120, 32, 97}, "e38d60", -2.1794496E8f)) || intent.hasCategory(NPStringFog.decode(new byte[]{82, 12, 0, 71, 95, 80, 87, 76, 13, 91, 68, 92, 93, 22, 74, 86, 81, 77, 86, 5, 11, 71, 73, 23, 127, 39, 37, 123, 114, 120, 112, 41, 59, 121, 113, 108, 125, 33, 44, 112, 98}, "3bd509", 6.346837E8f))) {
            sharedPreferences.edit().putBoolean(KEY_STARTED_FROM_LAUNCHER, true).apply();
        }
    }
}
