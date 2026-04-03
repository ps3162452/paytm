package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class WindowCompat {
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;

    private static class Impl16 {
        private Impl16() {
        }

        static void setDecorFitsSystemWindows(Window window, boolean z) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    private static class Impl30 {
        private Impl30() {
        }

        static WindowInsetsControllerCompat getInsetsController(Window window) {
            WindowInsetsController insetsController = window.getInsetsController();
            if (insetsController != null) {
                return WindowInsetsControllerCompat.toWindowInsetsControllerCompat(insetsController);
            }
            return null;
        }

        static void setDecorFitsSystemWindows(Window window, boolean z) {
            window.setDecorFitsSystemWindows(z);
        }
    }

    private WindowCompat() {
    }

    public static WindowInsetsControllerCompat getInsetsController(Window window, View view) {
        return Build.VERSION.SDK_INT >= 30 ? Impl30.getInsetsController(window) : new WindowInsetsControllerCompat(window, view);
    }

    public static <T extends View> T requireViewById(Window window, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) window.requireViewById(i);
        }
        T t = (T) window.findViewById(i);
        if (t == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 32, 20, 80, 10, 6, 65, 68, 90, 91, 17, 67, 64, 1, 82, 81, 23, 6, 92, 7, 81, 20, 4, 67, 100, 13, 81, 67, 69, 10, 92, 23, 93, 80, 0, 67, 70, 12, 93, 71, 69, 52, 91, 10, 80, 91, 18}, "2d44ec", -1.326246797E9d));
        }
        return t;
    }

    public static void setDecorFitsSystemWindows(Window window, boolean z) {
        if (Build.VERSION.SDK_INT >= 30) {
            Impl30.setDecorFitsSystemWindows(window, z);
        } else if (Build.VERSION.SDK_INT >= 16) {
            Impl16.setDecorFitsSystemWindows(window, z);
        }
    }
}
