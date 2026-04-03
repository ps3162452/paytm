package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Method;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class DrawableCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{116, 20, 3, 19, 84, 86, 92, 3, 33, 11, 88, 68, 81, 18}, "0fbd54", true);
    private static Method sGetLayoutDirectionMethod;
    private static boolean sGetLayoutDirectionMethodFetched;
    private static Method sSetLayoutDirectionMethod;
    private static boolean sSetLayoutDirectionMethodFetched;

    private DrawableCompat() {
    }

    public static void applyTheme(Drawable drawable, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    public static boolean canApplyTheme(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void clearColorFilter(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
            return;
        }
        if (Build.VERSION.SDK_INT < 21) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            clearColorFilter(((InsetDrawable) drawable).getDrawable());
            return;
        }
        if (drawable instanceof WrappedDrawable) {
            clearColorFilter(((WrappedDrawable) drawable).getWrappedDrawable());
            return;
        }
        if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
            return;
        }
        int childCount = drawableContainerState.getChildCount();
        for (int i = 0; i < childCount; i++) {
            Drawable child = drawableContainerState.getChild(i);
            if (child != null) {
                clearColorFilter(child);
            }
        }
    }

    public static int getAlpha(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    public static ColorFilter getColorFilter(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    public static int getLayoutDirection(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23) {
            return drawable.getLayoutDirection();
        }
        if (Build.VERSION.SDK_INT < 17) {
            return 0;
        }
        if (!sGetLayoutDirectionMethodFetched) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod(NPStringFog.decode(new byte[]{2, 84, 64, 122, 3, 29, 10, 68, 64, 114, 11, 22, 0, 82, 64, 95, 13, 10}, "e146bd", -2.99323157E8d), new Class[0]);
                sGetLayoutDirectionMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i(TAG, NPStringFog.decode(new byte[]{115, 83, 8, 92, 3, 2, 21, 70, 14, 16, 20, 3, 65, 64, 8, 85, 16, 3, 21, 85, 4, 68, 42, 7, 76, 93, 20, 68, 34, 15, 71, 87, 2, 68, 15, 9, 91, 26, 72, 16, 11, 3, 65, 90, 14, 84}, "52a0ff", -226), e);
            }
            sGetLayoutDirectionMethodFetched = true;
        }
        Method method = sGetLayoutDirectionMethod;
        if (method != null) {
            try {
                return ((Integer) method.invoke(drawable, new Object[0])).intValue();
            } catch (Exception e2) {
                Log.i(TAG, NPStringFog.decode(new byte[]{35, 81, 95, 9, 93, 1, 69, 68, 89, 69, 81, 11, 19, 95, 93, 0, 24, 2, 0, 68, 122, 4, 65, 10, 16, 68, 114, 12, 74, 0, 6, 68, 95, 10, 86, 77, 76, 16, 64, 12, 89, 69, 23, 85, 80, 9, 93, 6, 17, 89, 89, 11}, "e06e8e", -499292828L), e2);
                sGetLayoutDirectionMethod = null;
            }
        }
        return 0;
    }

    public static void inflate(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    public static boolean isAutoMirrored(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    @Deprecated
    public static void jumpToCurrentState(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void setAutoMirrored(Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z);
        }
    }

    public static void setHotspot(Drawable drawable, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f, f2);
        }
    }

    public static void setHotspotBounds(Drawable drawable, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    public static boolean setLayoutDirection(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return drawable.setLayoutDirection(i);
        }
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (!sSetLayoutDirectionMethodFetched) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod(NPStringFog.decode(new byte[]{66, 93, 77, 125, 87, 78, 94, 77, 77, 117, 95, 69, 84, 91, 77, 88, 89, 89}, "189167", 1.768425E9f), Integer.TYPE);
                sSetLayoutDirectionMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i(TAG, NPStringFog.decode(new byte[]{113, 82, 8, 84, 87, 86, 23, 71, 14, 24, 64, 87, 67, 65, 8, 93, 68, 87, 23, 64, 4, 76, 126, 83, 78, 92, 20, 76, 118, 91, 69, 86, 2, 76, 91, 93, 89, 27, 8, 86, 70, 27, 23, 94, 4, 76, 90, 93, 83}, "73a822", 1.2654168E9f), e);
            }
            sSetLayoutDirectionMethodFetched = true;
        }
        Method method = sSetLayoutDirectionMethod;
        if (method != null) {
            try {
                method.invoke(drawable, Integer.valueOf(i));
                return true;
            } catch (Exception e2) {
                Log.i(TAG, NPStringFog.decode(new byte[]{117, 84, 90, 8, 0, 80, 19, 65, 92, 68, 12, 90, 69, 90, 88, 1, 69, 71, 86, 65, 127, 5, 28, 91, 70, 65, 119, 13, 23, 81, 80, 65, 90, 11, 11, 28, 90, 91, 71, 77, 69, 66, 90, 84, 19, 22, 0, 82, 95, 80, 80, 16, 12, 91, 93}, "353de4", -6.62511265E8d), e2);
                sSetLayoutDirectionMethod = null;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setTint(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i);
        } else if (drawable instanceof TintAwareDrawable) {
            ((TintAwareDrawable) drawable).setTint(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setTintList(Drawable drawable, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (drawable instanceof TintAwareDrawable) {
            ((TintAwareDrawable) drawable).setTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setTintMode(Drawable drawable, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (drawable instanceof TintAwareDrawable) {
            ((TintAwareDrawable) drawable).setTintMode(mode);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T unwrap(Drawable drawable) {
        return drawable instanceof WrappedDrawable ? (T) ((WrappedDrawable) drawable).getWrappedDrawable() : drawable;
    }

    public static Drawable wrap(Drawable drawable) {
        return Build.VERSION.SDK_INT >= 23 ? drawable : Build.VERSION.SDK_INT >= 21 ? !(drawable instanceof TintAwareDrawable) ? new WrappedDrawableApi21(drawable) : drawable : !(drawable instanceof TintAwareDrawable) ? new WrappedDrawableApi14(drawable) : drawable;
    }
}
