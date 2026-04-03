package androidx.core.content.res;

import android.content.res.Resources;
import android.os.Build;

/* JADX INFO: loaded from: classes6.dex */
public final class ConfigurationHelper {
    private ConfigurationHelper() {
    }

    public static int getDensityDpi(Resources resources) {
        return Build.VERSION.SDK_INT >= 17 ? resources.getConfiguration().densityDpi : resources.getDisplayMetrics().densityDpi;
    }
}
