package androidx.core.os;

import android.os.Build;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class EnvironmentCompat {
    public static final String MEDIA_UNKNOWN = NPStringFog.decode(new byte[]{20, 12, 13, 10, 86, 68, 15}, "abfd93", -1665);
    private static final String TAG = NPStringFog.decode(new byte[]{113, 8, 78, 15, 68, 93, 90, 11, 93, 8, 66, 113, 91, 11, 72, 7, 66}, "4f8f62", false);

    private EnvironmentCompat() {
    }

    public static String getStorageState(File file) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Environment.getExternalStorageState(file);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return Environment.getStorageState(file);
        }
        try {
            if (file.getCanonicalPath().startsWith(Environment.getExternalStorageDirectory().getCanonicalPath())) {
                return Environment.getExternalStorageState();
            }
        } catch (IOException e) {
            Log.w(TAG, NPStringFog.decode(new byte[]{32, 82, 81, 88, 84, 84, 70, 71, 87, 20, 67, 85, 21, 92, 84, 66, 84, 16, 5, 82, 86, 91, 95, 89, 5, 82, 84, 20, 65, 81, 18, 91, 2, 20}, "f38410", 2.107358584E9d) + e);
        }
        return MEDIA_UNKNOWN;
    }
}
