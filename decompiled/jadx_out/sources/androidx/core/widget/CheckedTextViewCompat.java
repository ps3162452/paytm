package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CheckedTextView;
import java.lang.reflect.Field;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class CheckedTextViewCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{123, 9, 83, 82, 13, 80, 92, 53, 83, 73, 18, 99, 81, 4, 65, 114, 9, 88, 72, 0, 66}, "8a61f5", false);

    private static class Api14Impl {
        private static Field sCheckMarkDrawableField;
        private static boolean sResolved;

        private Api14Impl() {
        }

        static Drawable getCheckMarkDrawable(CheckedTextView checkedTextView) {
            if (!sResolved) {
                try {
                    Field declaredField = CheckedTextView.class.getDeclaredField(NPStringFog.decode(new byte[]{9, 112, 80, 3, 82, 10, 41, 82, 74, 13, 117, 19, 5, 68, 89, 4, 93, 4}, "d38f1a", 25943));
                    sCheckMarkDrawableField = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i(NPStringFog.decode(new byte[]{112, 90, 3, 90, 13, 4, 87, 102, 3, 65, 18, 55, 90, 87, 17, 122, 9, 12, 67, 83, 18}, "32f9fa", true, false), NPStringFog.decode(new byte[]{36, 5, 12, 85, 7, 2, 66, 16, 10, 25, 16, 3, 22, 22, 12, 92, 20, 3, 66, 9, 38, 81, 7, 5, 9, 41, 4, 75, 9, 34, 16, 5, 18, 88, 0, 10, 7, 68, 3, 80, 7, 10, 6}, "bde9bf", 1848462393L), e);
                }
                sResolved = true;
            }
            Field field = sCheckMarkDrawableField;
            if (field != null) {
                try {
                    return (Drawable) field.get(checkedTextView);
                } catch (IllegalAccessException e2) {
                    Log.i(NPStringFog.decode(new byte[]{33, 9, 7, 1, 89, 86, 6, 53, 7, 26, 70, 101, 11, 4, 21, 33, 93, 94, 18, 0, 22}, "babb23", -1178074635L), NPStringFog.decode(new byte[]{117, 5, 13, 89, 82, 84, 19, 16, 11, 21, 80, 85, 71, 68, 7, 93, 82, 83, 88, 68, 9, 84, 69, 91, 19, 0, 22, 84, 64, 81, 81, 8, 1, 21, 65, 89, 82, 68, 22, 80, 81, 92, 86, 7, 16, 92, 88, 94}, "3dd570", 1.2632237E9f), e2);
                    sCheckMarkDrawableField = null;
                }
            }
            return null;
        }
    }

    private static class Api16Impl {
        private Api16Impl() {
        }

        static Drawable getCheckMarkDrawable(CheckedTextView checkedTextView) {
            return checkedTextView.getCheckMarkDrawable();
        }
    }

    private static class Api21Impl {
        private Api21Impl() {
        }

        static ColorStateList getCheckMarkTintList(CheckedTextView checkedTextView) {
            return checkedTextView.getCheckMarkTintList();
        }

        static PorterDuff.Mode getCheckMarkTintMode(CheckedTextView checkedTextView) {
            return checkedTextView.getCheckMarkTintMode();
        }

        static void setCheckMarkTintList(CheckedTextView checkedTextView, ColorStateList colorStateList) {
            checkedTextView.setCheckMarkTintList(colorStateList);
        }

        static void setCheckMarkTintMode(CheckedTextView checkedTextView, PorterDuff.Mode mode) {
            checkedTextView.setCheckMarkTintMode(mode);
        }
    }

    private CheckedTextViewCompat() {
    }

    public static Drawable getCheckMarkDrawable(CheckedTextView checkedTextView) {
        return Build.VERSION.SDK_INT >= 16 ? Api16Impl.getCheckMarkDrawable(checkedTextView) : Api14Impl.getCheckMarkDrawable(checkedTextView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ColorStateList getCheckMarkTintList(CheckedTextView checkedTextView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.getCheckMarkTintList(checkedTextView);
        }
        if (checkedTextView instanceof TintableCheckedTextView) {
            return ((TintableCheckedTextView) checkedTextView).getSupportCheckMarkTintList();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PorterDuff.Mode getCheckMarkTintMode(CheckedTextView checkedTextView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.getCheckMarkTintMode(checkedTextView);
        }
        if (checkedTextView instanceof TintableCheckedTextView) {
            return ((TintableCheckedTextView) checkedTextView).getSupportCheckMarkTintMode();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setCheckMarkTintList(CheckedTextView checkedTextView, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.setCheckMarkTintList(checkedTextView, colorStateList);
        } else if (checkedTextView instanceof TintableCheckedTextView) {
            ((TintableCheckedTextView) checkedTextView).setSupportCheckMarkTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setCheckMarkTintMode(CheckedTextView checkedTextView, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.setCheckMarkTintMode(checkedTextView, mode);
        } else if (checkedTextView instanceof TintableCheckedTextView) {
            ((TintableCheckedTextView) checkedTextView).setSupportCheckMarkTintMode(mode);
        }
    }
}
