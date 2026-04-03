package com.google.android.material.resources;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import com.google.android.material.R;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class MaterialAttributes {
    public static TypedValue resolve(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean resolveBoolean(Context context, int i, boolean z) {
        TypedValue typedValueResolve = resolve(context, i);
        return (typedValueResolve == null || typedValueResolve.type != 18) ? z : typedValueResolve.data != 0;
    }

    public static boolean resolveBooleanOrThrow(Context context, int i, String str) {
        return resolveOrThrow(context, i, str) != 0;
    }

    public static int resolveDimension(Context context, int i, int i2) {
        TypedValue typedValueResolve = resolve(context, i);
        return (typedValueResolve == null || typedValueResolve.type != 5) ? (int) context.getResources().getDimension(i2) : (int) typedValueResolve.getDimension(context.getResources().getDisplayMetrics());
    }

    public static int resolveInteger(Context context, int i, int i2) {
        TypedValue typedValueResolve = resolve(context, i);
        return (typedValueResolve == null || typedValueResolve.type != 16) ? i2 : typedValueResolve.data;
    }

    public static int resolveMinimumAccessibleTouchTarget(Context context) {
        return resolveDimension(context, R.attr.minTouchTargetSize, R.dimen.mtrl_min_touch_target_size);
    }

    public static int resolveOrThrow(Context context, int i, String str) {
        TypedValue typedValueResolve = resolve(context, i);
        if (typedValueResolve != null) {
            return typedValueResolve.data;
        }
        throw new IllegalArgumentException(String.format(NPStringFog.decode(new byte[]{67, 0, 19, 75, 20, 20, 3, 64, 66, 81, 70, 3, 21, 17, 86, 24, 66, 7, 10, 68, 82, 24, 82, 9, 20, 17, 67, 80, 81, 70, 67, 3, 19, 75, 20, 7, 18, 69, 69, 81, 86, 19, 18, 84, 23, 76, 91, 70, 4, 84, 23, 75, 81, 18, 70, 88, 89, 24, 77, 9, 19, 67, 23, 89, 68, 22, 70, 69, 95, 93, 89, 3, 72, 17, 110, 87, 65, 70, 5, 80, 89, 24, 81, 15, 18, 89, 82, 74, 20, 21, 3, 69, 23, 76, 92, 3, 70, 80, 67, 76, 70, 15, 4, 68, 67, 93, 20, 15, 8, 17, 78, 87, 65, 20, 70, 69, 95, 93, 89, 3, 70, 94, 69, 24, 65, 22, 2, 80, 67, 93, 20, 31, 9, 68, 69, 24, 64, 14, 3, 92, 82, 24, 64, 9, 70, 88, 89, 80, 81, 20, 15, 69, 23, 94, 70, 9, 11, 17, 99, 80, 81, 11, 3, 31, 122, 89, 64, 3, 20, 88, 86, 84, 119, 9, 11, 65, 88, 86, 81, 8, 18, 66, 23, 16, 91, 20, 70, 80, 23, 92, 81, 21, 5, 84, 89, 92, 85, 8, 18, 24, 25}, "f1784f", true), str, context.getResources().getResourceName(i)));
    }

    public static int resolveOrThrow(View view, int i) {
        return resolveOrThrow(view.getContext(), i, view.getClass().getCanonicalName());
    }
}
