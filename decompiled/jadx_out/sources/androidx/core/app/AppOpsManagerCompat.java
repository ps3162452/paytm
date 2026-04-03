package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class AppOpsManagerCompat {
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_ERRORED = 2;
    public static final int MODE_IGNORED = 1;

    static class Api29Impl {
        private Api29Impl() {
        }

        static int checkOpNoThrow(AppOpsManager appOpsManager, String str, int i, String str2) {
            if (appOpsManager == null) {
                return 1;
            }
            return appOpsManager.checkOpNoThrow(str, i, str2);
        }

        static String getOpPackageName(Context context) {
            return context.getOpPackageName();
        }

        static AppOpsManager getSystemService(Context context) {
            return (AppOpsManager) context.getSystemService(AppOpsManager.class);
        }
    }

    private AppOpsManagerCompat() {
    }

    public static int checkOrNoteProxyOp(Context context, int i, String str, String str2) {
        if (Build.VERSION.SDK_INT < 29) {
            return noteProxyOpNoThrow(context, str, str2);
        }
        AppOpsManager systemService = Api29Impl.getSystemService(context);
        int iCheckOpNoThrow = Api29Impl.checkOpNoThrow(systemService, str, Binder.getCallingUid(), str2);
        return iCheckOpNoThrow != 0 ? iCheckOpNoThrow : Api29Impl.checkOpNoThrow(systemService, str, i, Api29Impl.getOpPackageName(context));
    }

    public static int noteOp(Context context, String str, int i, String str2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return ((AppOpsManager) context.getSystemService(NPStringFog.decode(new byte[]{87, 73, 20, 89, 67, 65}, "69d632", -1610673773L))).noteOp(str, i, str2);
        }
        return 1;
    }

    public static int noteOpNoThrow(Context context, String str, int i, String str2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return ((AppOpsManager) context.getSystemService(NPStringFog.decode(new byte[]{7, 17, 19, 9, 18, 74}, "facfb9", -2003024110L))).noteOpNoThrow(str, i, str2);
        }
        return 1;
    }

    public static int noteProxyOp(Context context, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOp(str, str2);
        }
        return 1;
    }

    public static int noteProxyOpNoThrow(Context context, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(str, str2);
        }
        return 1;
    }

    public static String permissionToOp(String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return AppOpsManager.permissionToOp(str);
        }
        return null;
    }
}
