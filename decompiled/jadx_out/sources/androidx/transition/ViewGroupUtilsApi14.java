package androidx.transition;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.util.Log;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
class ViewGroupUtilsApi14 {
    private static final int LAYOUT_TRANSITION_CHANGING = 4;
    private static final String TAG = NPStringFog.decode(new byte[]{52, 89, 80, 18, 114, 17, 13, 69, 69, 48, 65, 10, 14, 67, 116, 21, 92, 82, 86}, "b05e5c", -665457874L);
    private static Method sCancelMethod;
    private static boolean sCancelMethodFetched;
    private static LayoutTransition sEmptyLayoutTransition;
    private static Field sLayoutSuppressedField;
    private static boolean sLayoutSuppressedFieldFetched;

    private ViewGroupUtilsApi14() {
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    private static void cancelLayoutTransition(LayoutTransition layoutTransition) {
        if (!sCancelMethodFetched) {
            try {
                sCancelMethod = LayoutTransition.class.getDeclaredMethod(NPStringFog.decode(new byte[]{7, 0, 11, 7, 85, 8}, "daed0d", true, false), new Class[0]);
                sCancelMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i(TAG, NPStringFog.decode(new byte[]{34, 0, 13, 95, 82, 82, 68, 21, 11, 19, 86, 85, 7, 4, 23, 64, 23, 85, 5, 15, 7, 86, 91, 22, 9, 4, 16, 91, 88, 82, 68, 3, 29, 19, 69, 83, 2, 13, 1, 80, 67, 95, 11, 15}, "dad376", -1.93426185E9d));
            }
            sCancelMethodFetched = true;
        }
        if (sCancelMethod != null) {
            try {
                sCancelMethod.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException e2) {
                Log.i(TAG, NPStringFog.decode(new byte[]{36, 89, 11, 90, 84, 87, 66, 76, 13, 22, 80, 80, 1, 93, 17, 69, 17, 80, 3, 86, 1, 83, 93, 19, 15, 93, 22, 94, 94, 87, 66, 90, 27, 22, 67, 86, 4, 84, 7, 85, 69, 90, 13, 86}, "b8b613", false, false));
            } catch (InvocationTargetException e3) {
                Log.i(TAG, NPStringFog.decode(new byte[]{126, 5, 81, 14, 87, 6, 24, 16, 87, 66, 91, 12, 78, 11, 83, 7, 18, 1, 89, 10, 91, 7, 94, 66, 85, 1, 76, 10, 93, 6, 24, 6, 65, 66, 64, 7, 94, 8, 93, 1, 70, 11, 87, 10}, "8d8b2b", true));
            }
        }
    }

    static void suppressLayout(@NonNull ViewGroup viewGroup, boolean z) {
        boolean z2;
        if (sEmptyLayoutTransition == null) {
            sEmptyLayoutTransition = new LayoutTransition() { // from class: androidx.transition.ViewGroupUtilsApi14.1
                @Override // android.animation.LayoutTransition
                public boolean isChangingLayout() {
                    return true;
                }
            };
            sEmptyLayoutTransition.setAnimator(2, null);
            sEmptyLayoutTransition.setAnimator(0, null);
            sEmptyLayoutTransition.setAnimator(1, null);
            sEmptyLayoutTransition.setAnimator(3, null);
            sEmptyLayoutTransition.setAnimator(4, null);
        }
        if (z) {
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null) {
                if (layoutTransition.isRunning()) {
                    cancelLayoutTransition(layoutTransition);
                }
                if (layoutTransition != sEmptyLayoutTransition) {
                    viewGroup.setTag(R.id.transition_layout_save, layoutTransition);
                }
            }
            viewGroup.setLayoutTransition(sEmptyLayoutTransition);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!sLayoutSuppressedFieldFetched) {
            try {
                sLayoutSuppressedField = ViewGroup.class.getDeclaredField(NPStringFog.decode(new byte[]{95, 125, 80, 74, 93, 67, 70, 98, 68, 67, 66, 68, 87, 66, 66, 86, 86}, "211326", 1169431601L));
                sLayoutSuppressedField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i(TAG, NPStringFog.decode(new byte[]{34, 86, 95, 15, 83, 93, 68, 67, 89, 67, 87, 90, 7, 82, 69, 16, 22, 84, 40, 86, 79, 12, 67, 77, 55, 66, 70, 19, 68, 92, 23, 68, 83, 7, 22, 95, 13, 82, 90, 7, 22, 91, 29, 23, 68, 6, 80, 85, 1, 84, 66, 10, 89, 87}, "d76c69", true));
            }
            sLayoutSuppressedFieldFetched = true;
        }
        if (sLayoutSuppressedField != null) {
            try {
                z2 = sLayoutSuppressedField.getBoolean(viewGroup);
                if (z2) {
                    try {
                        sLayoutSuppressedField.setBoolean(viewGroup, false);
                    } catch (IllegalAccessException e2) {
                        Log.i(TAG, NPStringFog.decode(new byte[]{32, 86, 91, 95, 93, 6, 70, 67, 93, 19, 95, 7, 18, 23, 95, 127, 89, 27, 9, 66, 70, 96, 77, 18, 22, 69, 87, 64, 75, 7, 2, 23, 84, 90, 93, 14, 2, 23, 80, 74, 24, 16, 3, 81, 94, 86, 91, 22, 15, 88, 92}, "f7238b", false));
                    }
                }
            } catch (IllegalAccessException e3) {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (z2) {
            viewGroup.requestLayout();
        }
        LayoutTransition layoutTransition2 = (LayoutTransition) viewGroup.getTag(R.id.transition_layout_save);
        if (layoutTransition2 != null) {
            viewGroup.setTag(R.id.transition_layout_save, null);
            viewGroup.setLayoutTransition(layoutTransition2);
        }
    }
}
