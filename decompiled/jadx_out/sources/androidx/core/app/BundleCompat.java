package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class BundleCompat {

    static class BundleCompatBaseImpl {
        private static final String TAG = NPStringFog.decode(new byte[]{35, 69, 92, 6, 15, 87, 34, 95, 95, 18, 2, 70, 35, 81, 65, 7, 42, 95, 17, 92}, "a02bc2", false, true);
        private static Method sGetIBinderMethod;
        private static boolean sGetIBinderMethodFetched;
        private static Method sPutIBinderMethod;
        private static boolean sPutIBinderMethodFetched;

        private BundleCompatBaseImpl() {
        }

        public static IBinder getBinder(Bundle bundle, String str) {
            if (!sGetIBinderMethodFetched) {
                try {
                    Method method = Bundle.class.getMethod(NPStringFog.decode(new byte[]{82, 85, 71, 125, 112, 80, 91, 84, 86, 70}, "503429", true, false), String.class);
                    sGetIBinderMethod = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i(TAG, NPStringFog.decode(new byte[]{112, 2, 94, 90, 80, 6, 22, 23, 88, 22, 71, 7, 66, 17, 94, 83, 67, 7, 22, 4, 82, 66, 124, 32, 95, 13, 83, 83, 71, 66, 91, 6, 67, 94, 90, 6}, "6c765b", 23756), e);
                }
                sGetIBinderMethodFetched = true;
            }
            Method method2 = sGetIBinderMethod;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i(TAG, NPStringFog.decode(new byte[]{32, 81, 8, 91, 1, 92, 70, 68, 14, 23, 13, 86, 16, 95, 10, 82, 68, 95, 3, 68, 40, 117, 13, 86, 2, 85, 19, 23, 18, 81, 7, 16, 19, 82, 2, 84, 3, 83, 21, 94, 11, 86}, "f0a7d8", true, false), e2);
                    sGetIBinderMethod = null;
                }
            }
            return null;
        }

        public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
            if (!sPutIBinderMethodFetched) {
                try {
                    Method method = Bundle.class.getMethod(NPStringFog.decode(new byte[]{73, 65, 69, 44, 36, 10, 87, 80, 84, 23}, "941efc", -4.7809514E8f), String.class, IBinder.class);
                    sPutIBinderMethod = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i(TAG, NPStringFog.decode(new byte[]{114, 5, 91, 95, 82, 81, 20, 16, 93, 19, 69, 80, 64, 22, 91, 86, 65, 80, 20, 20, 71, 71, 126, 119, 93, 10, 86, 86, 69, 21, 89, 1, 70, 91, 88, 81}, "4d2375", -1004), e);
                }
                sPutIBinderMethodFetched = true;
            }
            Method method2 = sPutIBinderMethod;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i(TAG, NPStringFog.decode(new byte[]{117, 82, 12, 9, 85, 6, 19, 71, 10, 69, 89, 12, 69, 92, 14, 0, 16, 18, 70, 71, 44, 39, 89, 12, 87, 86, 23, 69, 70, 11, 82, 19, 23, 0, 86, 14, 86, 80, 17, 12, 95, 12}, "33ee0b", false, false), e2);
                    sPutIBinderMethod = null;
                }
            }
        }
    }

    private BundleCompat() {
    }

    public static IBinder getBinder(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : BundleCompatBaseImpl.getBinder(bundle, str);
    }

    public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            BundleCompatBaseImpl.putBinder(bundle, str, iBinder);
        }
    }
}
