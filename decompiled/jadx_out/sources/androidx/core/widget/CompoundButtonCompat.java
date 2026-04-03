package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class CompoundButtonCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{115, 88, 93, 18, 13, 65, 94, 83, 114, 23, 22, 64, 95, 89, 115, 13, 15, 68, 81, 67}, "070bb4", false, false);
    private static Field sButtonDrawableField;
    private static boolean sButtonDrawableFieldFetched;

    private CompoundButtonCompat() {
    }

    public static Drawable getButtonDrawable(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!sButtonDrawableFieldFetched) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField(NPStringFog.decode(new byte[]{94, 113, 22, 65, 23, 86, 93, 119, 17, 84, 20, 88, 81, 95, 6}, "33c5c9", 5.2830432E8d));
                sButtonDrawableField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i(TAG, NPStringFog.decode(new byte[]{126, 81, 80, 14, 4, 87, 24, 68, 86, 66, 19, 86, 76, 66, 80, 7, 23, 86, 24, 93, 123, 23, 21, 71, 87, 94, 125, 16, 0, 68, 89, 82, 85, 7, 65, 85, 81, 85, 85, 6}, "809ba3", true), e);
            }
            sButtonDrawableFieldFetched = true;
        }
        Field field = sButtonDrawableField;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException e2) {
                Log.i(TAG, NPStringFog.decode(new byte[]{32, 86, 10, 89, 3, 0, 70, 67, 12, 21, 1, 1, 18, 23, 1, 64, 18, 16, 9, 89, 67, 81, 20, 5, 17, 86, 1, 89, 3, 68, 16, 94, 2, 21, 20, 1, 0, 91, 6, 86, 18, 13, 9, 89}, "f7c5fd", 1319801848L), e2);
                sButtonDrawableField = null;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ColorStateList getButtonTintList(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (compoundButton instanceof TintableCompoundButton) {
            return ((TintableCompoundButton) compoundButton).getSupportButtonTintList();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PorterDuff.Mode getButtonTintMode(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintMode();
        }
        if (compoundButton instanceof TintableCompoundButton) {
            return ((TintableCompoundButton) compoundButton).getSupportButtonTintMode();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setButtonTintList(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (compoundButton instanceof TintableCompoundButton) {
            ((TintableCompoundButton) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setButtonTintMode(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (compoundButton instanceof TintableCompoundButton) {
            ((TintableCompoundButton) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
