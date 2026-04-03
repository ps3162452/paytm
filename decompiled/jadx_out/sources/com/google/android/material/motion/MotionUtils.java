package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.TypedValue;
import androidx.core.graphics.PathParser;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.resources.MaterialAttributes;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class MotionUtils {
    private static final String EASING_TYPE_CUBIC_BEZIER = NPStringFog.decode(new byte[]{91, 20, 7, 81, 83, 21, 90, 4, 31, 81, 85, 74}, "8ae808", -11384);
    private static final String EASING_TYPE_FORMAT_END = NPStringFog.decode(new byte[]{24}, "196c26", 820183216L);
    private static final String EASING_TYPE_FORMAT_START = NPStringFog.decode(new byte[]{24}, "0ef515", true);
    private static final String EASING_TYPE_PATH = NPStringFog.decode(new byte[]{66, 2, 66, 11}, "2c6c35", 1382918545L);

    private MotionUtils() {
    }

    private static float getControlPoint(String[] strArr, int i) {
        float f = Float.parseFloat(strArr[i]);
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{40, 89, 69, 11, 13, 87, 69, 83, 80, 17, 11, 87, 2, 22, 82, 13, 12, 77, 23, 89, 93, 66, 18, 86, 12, 88, 69, 66, 20, 88, 9, 67, 84, 66, 15, 76, 22, 66, 17, 0, 7, 25, 7, 83, 69, 21, 7, 92, 11, 22, 1, 66, 3, 87, 1, 22, 0, 89, 66, 80, 11, 69, 69, 7, 3, 93, 69, 81, 94, 22, 88, 25}, "e61bb9", 4714) + f);
        }
        return f;
    }

    private static String getEasingContent(String str, String str2) {
        return str.substring(str2.length() + EASING_TYPE_FORMAT_START.length(), str.length() - EASING_TYPE_FORMAT_END.length());
    }

    private static boolean isEasingType(String str, String str2) {
        return str.startsWith(new StringBuilder().append(str2).append(EASING_TYPE_FORMAT_START).toString()) && str.endsWith(EASING_TYPE_FORMAT_END);
    }

    public static int resolveThemeDuration(Context context, int i, int i2) {
        return MaterialAttributes.resolveInteger(context, i, i2);
    }

    public static TimeInterpolator resolveThemeInterpolator(Context context, int i, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 91, 22, 80, 13, 11, 25, 81, 3, 74, 11, 11, 94, 20, 22, 81, 7, 8, 92, 20, 3, 77, 22, 23, 80, 86, 23, 77, 7, 69, 84, 65, 17, 77, 66, 7, 92, 20, 3, 25, 17, 17, 75, 93, 12, 94}, "94b9be", -1.143703356E9d));
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!isEasingType(strValueOf, EASING_TYPE_CUBIC_BEZIER)) {
            if (isEasingType(strValueOf, EASING_TYPE_PATH)) {
                return PathInterpolatorCompat.create(PathParser.createPathFromPathData(getEasingContent(strValueOf, EASING_TYPE_PATH)));
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 86, 65, 82, 90, 15, 92, 24, 90, 92, 66, 15, 87, 86, 23, 86, 87, 21, 81, 86, 80, 19, 66, 31, 72, 93, 13, 19}, "88736f", 1580) + strValueOf);
        }
        String[] strArrSplit = getEasingContent(strValueOf, EASING_TYPE_CUBIC_BEZIER).split(NPStringFog.decode(new byte[]{20}, "8ee996", 1777));
        if (strArrSplit.length == 4) {
            return PathInterpolatorCompat.create(getControlPoint(strArrSplit, 0), getControlPoint(strArrSplit, 1), getControlPoint(strArrSplit, 2), getControlPoint(strArrSplit, 3));
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{125, 92, 77, 89, 90, 8, 16, 86, 88, 67, 92, 8, 87, 19, 77, 88, 80, 11, 85, 19, 88, 68, 65, 20, 89, 81, 76, 68, 80, 70, 93, 70, 74, 68, 21, 14, 81, 69, 92, 16, 1, 70, 83, 92, 87, 68, 71, 9, 92, 19, 73, 95, 92, 8, 68, 64, 25, 89, 83, 70, 69, 64, 80, 94, 82, 70, 82, 86, 67, 89, 80, 20, 16, 80, 76, 66, 67, 3, 16, 85, 86, 66, 88, 7, 68, 8, 25, 89, 91, 21, 68, 86, 88, 84, 21, 1, 95, 71, 3, 16}, "03905f", -24450) + strArrSplit.length);
    }
}
