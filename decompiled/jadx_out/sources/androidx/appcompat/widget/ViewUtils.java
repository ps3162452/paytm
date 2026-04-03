package androidx.appcompat.widget;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
public class ViewUtils {
    private static final String TAG = NPStringFog.decode(new byte[]{55, 91, 87, 20, 96, 67, 8, 94, 65}, "a22c57", 3.535209E8f);
    private static Method sComputeFitSystemWindowsMethod;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod(NPStringFog.decode(new byte[]{2, 95, 9, 67, 17, 76, 4, 118, 13, 71, 55, 65, 18, 68, 1, 94, 51, 81, 15, 84, 11, 68, 23}, "a0d3d8", 11947), Rect.class, Rect.class);
                sComputeFitSystemWindowsMethod = declaredMethod;
                if (declaredMethod.isAccessible()) {
                    return;
                }
                sComputeFitSystemWindowsMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.d(NPStringFog.decode(new byte[]{102, 11, 6, 17, 48, 21, 89, 14, 16}, "0bcfea", true), NPStringFog.decode(new byte[]{116, 90, 66, 85, 87, 17, 89, 90, 67, 25, 85, 88, 89, 81, 23, 84, 86, 69, 95, 90, 83, 25, 80, 94, 90, 69, 66, 77, 86, 119, 94, 65, 100, 64, 64, 69, 82, 88, 96, 80, 93, 85, 88, 66, 68, 23, 19, 126, 95, 21, 64, 92, 95, 93, 25}, "757931", 7.0663695E7d));
            }
        }
    }

    private ViewUtils() {
    }

    public static void computeFitSystemWindows(View view, Rect rect, Rect rect2) {
        Method method = sComputeFitSystemWindowsMethod;
        if (method != null) {
            try {
                method.invoke(view, rect, rect2);
            } catch (Exception e) {
                Log.d(TAG, NPStringFog.decode(new byte[]{117, 9, 65, 14, 5, 16, 88, 9, 64, 66, 8, 94, 64, 9, 95, 7, 65, 83, 89, 11, 68, 23, 21, 85, 112, 15, 64, 49, 24, 67, 66, 3, 89, 53, 8, 94, 82, 9, 67, 17}, "6f4ba0", 1.731455E9f), e);
            }
        }
    }

    public static boolean isLayoutRtl(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    public static void makeOptionalFitsSystemWindows(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                Method method = view.getClass().getMethod(NPStringFog.decode(new byte[]{88, 3, 82, 0, 123, 19, 65, 11, 86, 11, 85, 15, 115, 11, 77, 22, 103, 26, 70, 22, 92, 8, 99, 10, 91, 6, 86, 18, 71}, "5b9e4c", -1674196484L), new Class[0]);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                method.invoke(view, new Object[0]);
            } catch (IllegalAccessException e) {
                Log.d(TAG, NPStringFog.decode(new byte[]{119, 91, 76, 84, 2, 65, 90, 91, 77, 24, 15, 15, 66, 91, 82, 93, 70, 12, 85, 95, 92, 119, 22, 21, 93, 91, 87, 89, 10, 39, 93, 64, 74, 107, 31, 18, 64, 81, 84, 111, 15, 15, 80, 91, 78, 75}, "4498fa", -2.0924033E9f), e);
            } catch (NoSuchMethodException e2) {
                Log.d(TAG, NPStringFog.decode(new byte[]{38, 88, 77, 95, 1, 17, 11, 88, 76, 19, 3, 88, 11, 83, 24, 94, 0, 69, 13, 88, 92, 19, 8, 80, 14, 82, 119, 67, 17, 88, 10, 89, 89, 95, 35, 88, 17, 68, 107, 74, 22, 69, 0, 90, 111, 90, 11, 85, 10, 64, 75, 29, 69, 126, 13, 23, 79, 86, 9, 93, 75, 25, 22}, "e783e1", true));
            } catch (InvocationTargetException e3) {
                Log.d(TAG, NPStringFog.decode(new byte[]{34, 93, 20, 88, 1, 18, 15, 93, 21, 20, 12, 92, 23, 93, 10, 81, 69, 95, 0, 89, 4, 123, 21, 70, 8, 93, 15, 85, 9, 116, 8, 70, 18, 103, 28, 65, 21, 87, 12, 99, 12, 92, 5, 93, 22, 71}, "a2a4e2", true), e3);
            }
        }
    }
}
