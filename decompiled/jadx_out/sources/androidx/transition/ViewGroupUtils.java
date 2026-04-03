package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
class ViewGroupUtils {
    private static Method sGetChildDrawingOrderMethod;
    private static boolean sGetChildDrawingOrderMethodFetched;
    private static boolean sTryHiddenSuppressLayout = true;

    private ViewGroupUtils() {
    }

    static int getChildDrawingOrder(@NonNull ViewGroup viewGroup, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i);
        }
        if (!sGetChildDrawingOrderMethodFetched) {
            try {
                sGetChildDrawingOrderMethod = ViewGroup.class.getDeclaredMethod(NPStringFog.decode(new byte[]{80, 80, 66, 33, 92, 80, 91, 81, 114, 16, 85, 78, 94, 91, 81, 45, 70, 93, 82, 71}, "756b49", true), Integer.TYPE, Integer.TYPE);
                sGetChildDrawingOrderMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            sGetChildDrawingOrderMethodFetched = true;
        }
        if (sGetChildDrawingOrderMethod == null) {
            return i;
        }
        try {
            return ((Integer) sGetChildDrawingOrderMethod.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i))).intValue();
        } catch (IllegalAccessException e2) {
            return i;
        } catch (InvocationTargetException e3) {
            return i;
        }
    }

    static ViewGroupOverlayImpl getOverlay(@NonNull ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new ViewGroupOverlayApi18(viewGroup) : ViewGroupOverlayApi14.createFrom(viewGroup);
    }

    @RequiresApi(18)
    @SuppressLint({"NewApi"})
    private static void hiddenSuppressLayout(@NonNull ViewGroup viewGroup, boolean z) {
        if (sTryHiddenSuppressLayout) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError e) {
                sTryHiddenSuppressLayout = false;
            }
        }
    }

    static void suppressLayout(@NonNull ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z);
        } else if (Build.VERSION.SDK_INT >= 18) {
            hiddenSuppressLayout(viewGroup, z);
        } else {
            ViewGroupUtilsApi14.suppressLayout(viewGroup, z);
        }
    }
}
