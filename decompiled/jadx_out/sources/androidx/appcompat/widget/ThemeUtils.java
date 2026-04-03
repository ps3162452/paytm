package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
public class ThemeUtils {
    private static final String TAG = NPStringFog.decode(new byte[]{54, 80, 3, 89, 3, 98, 22, 81, 10, 71}, "b8f4f7", 575963872L);
    private static final ThreadLocal<TypedValue> TL_TYPED_VALUE = new ThreadLocal<>();
    static final int[] DISABLED_STATE_SET = {-16842910};
    static final int[] FOCUSED_STATE_SET = {R.attr.state_focused};
    static final int[] ACTIVATED_STATE_SET = {R.attr.state_activated};
    static final int[] PRESSED_STATE_SET = {R.attr.state_pressed};
    static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    static final int[] SELECTED_STATE_SET = {R.attr.state_selected};
    static final int[] NOT_PRESSED_OR_FOCUSED_STATE_SET = {-16842919, -16842908};
    static final int[] EMPTY_STATE_SET = new int[0];
    private static final int[] TEMP_ARRAY = new int[1];

    private ThemeUtils() {
    }

    public static void checkAppCompatTheme(View view, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar)) {
                Log.e(TAG, NPStringFog.decode(new byte[]{52, 90, 80, 68, 22}, "b3536d", true, false) + view.getClass() + NPStringFog.decode(new byte[]{67, 95, 65, 25, 86, 89, 67, 119, 66, 73, 116, 88, 14, 70, 83, 77, 23, 64, 10, 82, 85, 92, 67, 23, 23, 94, 83, 77, 23, 84, 2, 88, 18, 86, 89, 91, 26, 22, 80, 92, 23, 66, 16, 83, 86, 25, 64, 94, 23, 94, 18, 88, 23, 99, 11, 83, 95, 92, 25, 118, 19, 70, 113, 86, 90, 71, 2, 66, 18, 77, 95, 82, 14, 83, 18, 17, 88, 69, 67, 82, 87, 74, 84, 82, 13, 82, 83, 87, 67, 30, 77}, "c62977", true));
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static ColorStateList createDisabledStateList(int i, int i2) {
        return new ColorStateList(new int[][]{DISABLED_STATE_SET, EMPTY_STATE_SET}, new int[]{i2, i});
    }

    public static int getDisabledThemeAttrColor(Context context, int i) {
        ColorStateList themeAttrColorStateList = getThemeAttrColorStateList(context, i);
        if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
            return themeAttrColorStateList.getColorForState(DISABLED_STATE_SET, themeAttrColorStateList.getDefaultColor());
        }
        TypedValue typedValue = getTypedValue();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true);
        return getThemeAttrColor(context, i, typedValue.getFloat());
    }

    public static int getThemeAttrColor(Context context, int i) {
        int[] iArr = TEMP_ARRAY;
        iArr[0] = i;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return tintTypedArrayObtainStyledAttributes.getColor(0, 0);
        } finally {
            tintTypedArrayObtainStyledAttributes.recycle();
        }
    }

    static int getThemeAttrColor(Context context, int i, float f) {
        return ColorUtils.setAlphaComponent(getThemeAttrColor(context, i), Math.round(Color.alpha(r0) * f));
    }

    public static ColorStateList getThemeAttrColorStateList(Context context, int i) {
        int[] iArr = TEMP_ARRAY;
        iArr[0] = i;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return tintTypedArrayObtainStyledAttributes.getColorStateList(0);
        } finally {
            tintTypedArrayObtainStyledAttributes.recycle();
        }
    }

    private static TypedValue getTypedValue() {
        ThreadLocal<TypedValue> threadLocal = TL_TYPED_VALUE;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }
}
