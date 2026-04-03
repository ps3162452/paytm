package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class ThemeEnforcement {
    private static final String APPCOMPAT_THEME_NAME = NPStringFog.decode(new byte[]{103, 94, 1, 90, 1, 23, 114, 70, 20, 116, 11, 84, 67, 87, 16}, "36d7d9", 5.6977621E8d);
    private static final String MATERIAL_THEME_NAME = NPStringFog.decode(new byte[]{50, 12, 1, 93, 86, 29, 43, 5, 16, 85, 65, 90, 7, 8, 39, 95, 94, 67, 9, 10, 1, 94, 71, 64}, "fdd033", 12131);
    private static final int[] APPCOMPAT_CHECK_ATTRS = {R.attr.colorPrimary};
    private static final int[] MATERIAL_CHECK_ATTRS = {R.attr.colorPrimaryVariant};

    private ThemeEnforcement() {
    }

    public static void checkAppCompatTheme(Context context) {
        checkTheme(context, APPCOMPAT_CHECK_ATTRS, APPCOMPAT_THEME_NAME);
    }

    private static void checkCompatibleTheme(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i, i2);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceMaterialTheme, false);
        typedArrayObtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                checkMaterialTheme(context);
            }
        }
        checkAppCompatTheme(context);
    }

    public static void checkMaterialTheme(Context context) {
        checkTheme(context, MATERIAL_CHECK_ATTRS, MATERIAL_THEME_NAME);
    }

    private static void checkTextAppearance(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        boolean zIsCustomTextAppearanceValid = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i, i2);
        if (!typedArrayObtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceTextAppearance, false)) {
            typedArrayObtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 != null && iArr2.length != 0) {
            zIsCustomTextAppearanceValid = isCustomTextAppearanceValid(context, attributeSet, iArr, i, i2, iArr2);
        } else if (typedArrayObtainStyledAttributes.getResourceId(R.styleable.ThemeEnforcement_android_textAppearance, -1) != -1) {
            zIsCustomTextAppearanceValid = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!zIsCustomTextAppearanceValid) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{98, 13, 12, 74, 20, 0, 89, 8, 21, 86, 90, 6, 88, 17, 69, 75, 81, 18, 67, 12, 23, 92, 71, 67, 66, 13, 4, 77, 20, 26, 89, 16, 69, 74, 68, 6, 85, 12, 3, 64, 20, 2, 22, 19, 4, 85, 93, 7, 22, 49, 0, 65, 64, 34, 70, 21, 0, 88, 70, 2, 88, 6, 0, 25, 85, 23, 66, 23, 12, 91, 65, 23, 83, 75, 69, 108, 68, 7, 87, 17, 0, 25, 77, 12, 67, 23, 69, 88, 68, 19, 22, 17, 13, 92, 89, 6, 22, 17, 10, 25, 93, 13, 94, 0, 23, 80, 64, 67, 80, 23, 10, 84, 20, 55, 94, 0, 8, 92, 26, 46, 87, 17, 0, 75, 93, 2, 90, 38, 10, 84, 68, 12, 88, 0, 11, 77, 71, 67, 30, 10, 23, 25, 85, 67, 82, 0, 22, 90, 81, 13, 82, 4, 11, 77, 29, 77}, "6ee94c", -1.9586513E9f));
        }
    }

    private static void checkTheme(Context context, int[] iArr, String str) {
        if (!isTheme(context, iArr)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{54, 92, 93, 24, 74, 66, 27, 88, 93, 24, 86, 88, 66, 64, 80, 81, 74, 22, 1, 91, 85, 72, 86, 88, 7, 90, 76, 24, 75, 83, 19, 65, 81, 74, 92, 69, 66, 77, 87, 77, 75, 22, 3, 68, 72, 24, 77, 94, 7, 89, 93, 24, 77, 89, 66, 86, 93, 24}, "b48896", -769272201L) + str + NPStringFog.decode(new byte[]{25, 25, 12, 22, 68, 89, 25, 85, 6, 23, 7, 93, 87, 85, 2, 10, 16, 17, 23}, "91cdd8", -26701));
        }
    }

    public static boolean isAppCompatTheme(Context context) {
        return isTheme(context, APPCOMPAT_CHECK_ATTRS);
    }

    private static boolean isCustomTextAppearanceValid(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        for (int i3 : iArr2) {
            if (typedArrayObtainStyledAttributes.getResourceId(i3, -1) == -1) {
                typedArrayObtainStyledAttributes.recycle();
                return false;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    public static boolean isMaterialTheme(Context context) {
        return isTheme(context, MATERIAL_CHECK_ATTRS);
    }

    private static boolean isTheme(Context context, int[] iArr) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i = 0; i < iArr.length; i++) {
            if (!typedArrayObtainStyledAttributes.hasValue(i)) {
                typedArrayObtainStyledAttributes.recycle();
                return false;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    public static TypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        checkCompatibleTheme(context, attributeSet, i, i2);
        checkTextAppearance(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    public static TintTypedArray obtainTintedStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        checkCompatibleTheme(context, attributeSet, i, i2);
        checkTextAppearance(context, attributeSet, iArr, i, i2, iArr2);
        return TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, i2);
    }
}
