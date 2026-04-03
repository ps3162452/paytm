package androidx.core.view;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class ViewConfigurationCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{99, 12, 93, 22, 33, 93, 91, 3, 81, 6, 33, 93, 88, 21, 89, 21}, "5e8ab2", 7.70528903E8d);
    private static Method sGetScaledScrollFactorMethod;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                sGetScaledScrollFactorMethod = ViewConfiguration.class.getDeclaredMethod(NPStringFog.decode(new byte[]{84, 84, 16, 107, 83, 84, 95, 84, 0, 107, 83, 71, 92, 93, 8, 126, 81, 86, 71, 94, 22}, "31d805", -3.8731046E8f), new Class[0]);
            } catch (Exception e) {
                Log.i(NPStringFog.decode(new byte[]{96, 10, 80, 18, 123, 13, 88, 5, 92, 2, 123, 13, 91, 19, 84, 17}, "6c5e8b", 684787930L), NPStringFog.decode(new byte[]{112, 9, 20, 9, 86, 67, 93, 9, 21, 69, 84, 10, 93, 2, 65, 8, 87, 23, 91, 9, 5, 69, 85, 6, 71, 53, 2, 4, 94, 6, 87, 53, 2, 23, 93, 15, 95, 32, 0, 6, 70, 12, 65, 78, 72, 69, 93, 13, 19, 48, 8, 0, 69, 32, 92, 8, 7, 12, 85, 22, 65, 7, 21, 12, 93, 13}, "3fae2c", -5.95146618E8d));
            }
        }
    }

    private ViewConfigurationCompat() {
    }

    private static float getLegacyScrollFactor(ViewConfiguration viewConfiguration, Context context) {
        Method method;
        if (Build.VERSION.SDK_INT >= 25 && (method = sGetScaledScrollFactorMethod) != null) {
            try {
                return ((Integer) method.invoke(viewConfiguration, new Object[0])).intValue();
            } catch (Exception e) {
                Log.i(TAG, NPStringFog.decode(new byte[]{112, 87, 67, 13, 6, 69, 93, 87, 66, 65, 4, 12, 93, 92, 22, 12, 7, 17, 91, 87, 82, 65, 5, 0, 71, 107, 85, 0, 14, 0, 87, 107, 85, 19, 13, 9, 95, 126, 87, 2, 22, 10, 65, 16, 31, 65, 13, 11, 19, 110, 95, 4, 21, 38, 92, 86, 80, 8, 5, 16, 65, 89, 66, 8, 13, 11}, "386abe", 622141456L));
            }
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }

    public static float getScaledHorizontalScrollFactor(ViewConfiguration viewConfiguration, Context context) {
        return Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledHorizontalScrollFactor() : getLegacyScrollFactor(viewConfiguration, context);
    }

    public static int getScaledHoverSlop(ViewConfiguration viewConfiguration) {
        return Build.VERSION.SDK_INT >= 28 ? viewConfiguration.getScaledHoverSlop() : viewConfiguration.getScaledTouchSlop() / 2;
    }

    @Deprecated
    public static int getScaledPagingTouchSlop(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledPagingTouchSlop();
    }

    public static float getScaledVerticalScrollFactor(ViewConfiguration viewConfiguration, Context context) {
        return Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledVerticalScrollFactor() : getLegacyScrollFactor(viewConfiguration, context);
    }

    @Deprecated
    public static boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
        return viewConfiguration.hasPermanentMenuKey();
    }

    public static boolean shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration viewConfiguration, Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
        }
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier(NPStringFog.decode(new byte[]{86, 14, 88, 95, 95, 1, 106, 18, 94, 86, 65, 43, 80, 15, 67, 106, 94, 9, 71, 21, 85, 76, 66, 21, 98, 9, 83, 87, 125, 3, 76, 3, 89, 88, 68, 2, 101, 19, 83, 74, 83, 8, 65}, "5a696f", -6.99275802E8d), NPStringFog.decode(new byte[]{81, 13, 86, 85}, "3b997e", false), NPStringFog.decode(new byte[]{87, 10, 92, 71, 87, 11, 82}, "6d858b", true));
        return identifier != 0 && resources.getBoolean(identifier);
    }
}
