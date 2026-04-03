package androidx.core.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class PopupWindowCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{49, 9, 70, 16, 67, 101, 8, 8, 82, 10, 68, 113, 14, 11, 70, 4, 71, 115, 17, 15, 4, 84}, "af6e32", -2034);
    private static Method sGetWindowLayoutTypeMethod;
    private static boolean sGetWindowLayoutTypeMethodAttempted;
    private static Field sOverlapAnchorField;
    private static boolean sOverlapAnchorFieldAttempted;
    private static Method sSetWindowLayoutTypeMethod;
    private static boolean sSetWindowLayoutTypeMethodAttempted;

    static class Api19Impl {
        private Api19Impl() {
        }

        static void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            popupWindow.showAsDropDown(view, i, i2, i3);
        }
    }

    static class Api23Impl {
        private Api23Impl() {
        }

        static boolean getOverlapAnchor(PopupWindow popupWindow) {
            return popupWindow.getOverlapAnchor();
        }

        static int getWindowLayoutType(PopupWindow popupWindow) {
            return popupWindow.getWindowLayoutType();
        }

        static void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
            popupWindow.setOverlapAnchor(z);
        }

        static void setWindowLayoutType(PopupWindow popupWindow, int i) {
            popupWindow.setWindowLayoutType(i);
        }
    }

    private PopupWindowCompat() {
    }

    public static boolean getOverlapAnchor(PopupWindow popupWindow) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.getOverlapAnchor(popupWindow);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            if (!sOverlapAnchorFieldAttempted) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField(NPStringFog.decode(new byte[]{14, 118, 20, 86, 19, 14, 2, 73, 35, 93, 2, 10, 12, 75}, "c9b3ab", 587976165L));
                    sOverlapAnchorField = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i(TAG, NPStringFog.decode(new byte[]{38, 87, 69, 94, 83, 65, 11, 87, 68, 18, 81, 4, 17, 91, 88, 18, 90, 46, 19, 93, 66, 94, 86, 17, 36, 86, 83, 90, 88, 19, 69, 94, 89, 87, 91, 5, 69, 94, 66, 93, 90, 65, 53, 87, 64, 71, 71, 54, 12, 86, 84, 93, 64}, "e8027a", -1271486434L), e);
                }
                sOverlapAnchorFieldAttempted = true;
            }
            Field field = sOverlapAnchorField;
            if (field != null) {
                try {
                    return ((Boolean) field.get(popupWindow)).booleanValue();
                } catch (IllegalAccessException e2) {
                    Log.i(TAG, NPStringFog.decode(new byte[]{38, 94, 64, 91, 0, 17, 11, 94, 65, 23, 3, 84, 17, 17, 90, 65, 1, 67, 9, 80, 69, 23, 5, 95, 6, 89, 90, 69, 68, 87, 12, 84, 89, 83, 68, 88, 11, 17, 101, 88, 20, 68, 21, 102, 92, 89, 0, 94, 18}, "e157d1", true, false), e2);
                }
            }
        }
        return false;
    }

    public static int getWindowLayoutType(PopupWindow popupWindow) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.getWindowLayoutType(popupWindow);
        }
        if (!sGetWindowLayoutTypeMethodAttempted) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod(NPStringFog.decode(new byte[]{85, 80, 64, 100, 89, 94, 86, 90, 67, 127, 81, 73, 93, 64, 64, 103, 73, 64, 87}, "254300", 418287822L), new Class[0]);
                sGetWindowLayoutTypeMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
            }
            sGetWindowLayoutTypeMethodAttempted = true;
        }
        Method method = sGetWindowLayoutTypeMethod;
        if (method != null) {
            try {
                return ((Integer) method.invoke(popupWindow, new Object[0])).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }

    public static void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.setOverlapAnchor(popupWindow, z);
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            if (!sOverlapAnchorFieldAttempted) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField(NPStringFog.decode(new byte[]{11, 124, 67, 4, 22, 91, 7, 67, 116, 15, 7, 95, 9, 65}, "f35ad7", true));
                    sOverlapAnchorField = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i(TAG, NPStringFog.decode(new byte[]{117, 87, 70, 88, 0, 19, 88, 87, 71, 20, 2, 86, 66, 91, 91, 20, 9, 124, 64, 93, 65, 88, 5, 67, 119, 86, 80, 92, 11, 65, 22, 94, 90, 81, 8, 87, 22, 94, 65, 91, 9, 19, 102, 87, 67, 65, 20, 100, 95, 86, 87, 91, 19}, "6834d3", -3.33912079E8d), e);
                }
                sOverlapAnchorFieldAttempted = true;
            }
            Field field = sOverlapAnchorField;
            if (field != null) {
                try {
                    field.set(popupWindow, Boolean.valueOf(z));
                } catch (IllegalAccessException e2) {
                    Log.i(TAG, NPStringFog.decode(new byte[]{116, 12, 20, 88, 7, 68, 89, 12, 21, 20, 16, 1, 67, 67, 14, 66, 6, 22, 91, 2, 17, 20, 2, 10, 84, 11, 14, 70, 67, 2, 94, 6, 13, 80, 67, 13, 89, 67, 49, 91, 19, 17, 71, 52, 8, 90, 7, 11, 64}, "7ca4cd", 1009510814L), e2);
                }
            }
        }
    }

    public static void setWindowLayoutType(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.setWindowLayoutType(popupWindow, i);
            return;
        }
        if (!sSetWindowLayoutTypeMethodAttempted) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod(NPStringFog.decode(new byte[]{69, 82, 18, 97, 94, 89, 82, 88, 17, 122, 86, 78, 89, 66, 18, 98, 78, 71, 83}, "67f677", true), Integer.TYPE);
                sSetWindowLayoutTypeMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
            }
            sSetWindowLayoutTypeMethodAttempted = true;
        }
        Method method = sSetWindowLayoutTypeMethod;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i));
            } catch (Exception e2) {
            }
        }
    }

    public static void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 19) {
            Api19Impl.showAsDropDown(popupWindow, view, i, i2, i3);
            return;
        }
        if ((GravityCompat.getAbsoluteGravity(i3, ViewCompat.getLayoutDirection(view)) & 7) == 5) {
            i -= popupWindow.getWidth() - view.getWidth();
        }
        popupWindow.showAsDropDown(view, i, i2);
    }
}
