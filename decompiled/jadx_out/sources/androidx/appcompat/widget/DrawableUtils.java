package androidx.appcompat.widget;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.WrappedDrawable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes20.dex */
public class DrawableUtils {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] EMPTY_STATE_SET = new int[0];
    public static final Rect INSETS_NONE = new Rect();

    static class Api18Impl {
        private static final Field sBottom;
        private static final Method sGetOpticalInsets;
        private static final Field sLeft;
        private static final boolean sReflectionSuccessful;
        private static final Field sRight;
        private static final Field sTop;

        static {
            Field field;
            Field field2;
            Field field3;
            Method method;
            Field field4;
            Method method2;
            Field field5;
            Field field6;
            Field field7;
            boolean z;
            try {
                Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{81, 13, 6, 22, 9, 8, 84, 77, 5, 22, 7, 17, 88, 10, 1, 23, 72, 40, 94, 16, 7, 16, 21}, "0cbdfa", true));
                method = Drawable.class.getMethod(NPStringFog.decode(new byte[]{84, 0, 64, 43, 18, 71, 90, 6, 85, 8, 43, 93, 64, 0, 64, 23}, "3e4db3", -13698), new Class[0]);
                try {
                    field3 = cls.getField(NPStringFog.decode(new byte[]{15, 3, 7, 77}, "cfa986", 366899869L));
                    try {
                        field2 = cls.getField(NPStringFog.decode(new byte[]{71, 87, 18}, "38b3e3", -2.9439453E8f));
                        try {
                            field = cls.getField(NPStringFog.decode(new byte[]{68, 11, 85, 14, 65}, "6b2f53", true));
                            try {
                                method2 = method;
                                field6 = field2;
                                z = true;
                                field7 = cls.getField(NPStringFog.decode(new byte[]{85, 92, 17, 16, 95, 94}, "73ed03", 2109294770L));
                                field4 = field3;
                                field5 = field;
                            } catch (ClassNotFoundException e) {
                                field4 = field3;
                                method2 = method;
                                field5 = field;
                                field6 = field2;
                                field7 = null;
                                z = false;
                            } catch (NoSuchFieldException e2) {
                                field4 = field3;
                                method2 = method;
                                field5 = field;
                                field6 = field2;
                                field7 = null;
                                z = false;
                            } catch (NoSuchMethodException e3) {
                                field4 = field3;
                                method2 = method;
                                field5 = field;
                                field6 = field2;
                                field7 = null;
                                z = false;
                            }
                        } catch (ClassNotFoundException e4) {
                            field = null;
                        } catch (NoSuchFieldException e5) {
                            field = null;
                        } catch (NoSuchMethodException e6) {
                            field = null;
                        }
                    } catch (ClassNotFoundException e7) {
                        field = null;
                        field2 = null;
                    } catch (NoSuchFieldException e8) {
                        field = null;
                        field2 = null;
                    } catch (NoSuchMethodException e9) {
                        field = null;
                        field2 = null;
                    }
                } catch (ClassNotFoundException e10) {
                    field = null;
                    field2 = null;
                    field3 = null;
                } catch (NoSuchFieldException e11) {
                    field = null;
                    field2 = null;
                    field3 = null;
                } catch (NoSuchMethodException e12) {
                    field = null;
                    field2 = null;
                    field3 = null;
                }
            } catch (ClassNotFoundException e13) {
                field = null;
                field2 = null;
                field3 = null;
                method = null;
            } catch (NoSuchFieldException e14) {
                field = null;
                field2 = null;
                field3 = null;
                method = null;
            } catch (NoSuchMethodException e15) {
                field = null;
                field2 = null;
                field3 = null;
                method = null;
            }
            if (z) {
                sGetOpticalInsets = method2;
                sLeft = field4;
                sTop = field6;
                sRight = field5;
                sBottom = field7;
                sReflectionSuccessful = true;
                return;
            }
            sGetOpticalInsets = null;
            sLeft = null;
            sTop = null;
            sRight = null;
            sBottom = null;
            sReflectionSuccessful = false;
        }

        private Api18Impl() {
        }

        static Rect getOpticalInsets(Drawable drawable) {
            if (Build.VERSION.SDK_INT < 29 && sReflectionSuccessful) {
                try {
                    Object objInvoke = sGetOpticalInsets.invoke(drawable, new Object[0]);
                    if (objInvoke != null) {
                        return new Rect(sLeft.getInt(objInvoke), sTop.getInt(objInvoke), sRight.getInt(objInvoke), sBottom.getInt(objInvoke));
                    }
                } catch (IllegalAccessException e) {
                } catch (InvocationTargetException e2) {
                }
            }
            return DrawableUtils.INSETS_NONE;
        }
    }

    static class Api29Impl {
        private Api29Impl() {
        }

        static Insets getOpticalInsets(Drawable drawable) {
            return drawable.getOpticalInsets();
        }
    }

    private DrawableUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean canSafelyMutateDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState instanceof DrawableContainer.DrawableContainerState) {
                Drawable[] children = ((DrawableContainer.DrawableContainerState) constantState).getChildren();
                for (Drawable drawable2 : children) {
                    if (!canSafelyMutateDrawable(drawable2)) {
                        return false;
                    }
                }
            }
        } else {
            if (drawable instanceof WrappedDrawable) {
                return canSafelyMutateDrawable(((WrappedDrawable) drawable).getWrappedDrawable());
            }
            if (drawable instanceof DrawableWrapper) {
                return canSafelyMutateDrawable(((DrawableWrapper) drawable).getWrappedDrawable());
            }
            if (drawable instanceof ScaleDrawable) {
                return canSafelyMutateDrawable(((ScaleDrawable) drawable).getDrawable());
            }
        }
        return true;
    }

    static void fixDrawable(Drawable drawable) {
        String name = drawable.getClass().getName();
        if (Build.VERSION.SDK_INT == 21 && NPStringFog.decode(new byte[]{3, 11, 86, 67, 94, 12, 6, 75, 85, 67, 80, 21, 10, 12, 81, 66, 31, 1, 16, 4, 69, 80, 83, 9, 7, 75, 100, 84, 82, 17, 13, 23, 118, 67, 80, 18, 3, 7, 94, 84}, "be211e", 15060).equals(name)) {
            forceDrawableStateChange(drawable);
        } else {
            if (Build.VERSION.SDK_INT < 29 || Build.VERSION.SDK_INT >= 31 || !NPStringFog.decode(new byte[]{0, 89, 2, 23, 9, 10, 5, 25, 1, 23, 7, 19, 9, 94, 5, 22, 72, 7, 19, 86, 17, 4, 4, 15, 4, 25, 37, 10, 10, 12, 19, 100, 18, 4, 18, 6, 45, 94, 21, 17, 34, 17, 0, 64, 7, 7, 10, 6}, "a7fefc", -26504).equals(name)) {
                return;
            }
            forceDrawableStateChange(drawable);
        }
    }

    private static void forceDrawableStateChange(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(CHECKED_STATE_SET);
        } else {
            drawable.setState(EMPTY_STATE_SET);
        }
        drawable.setState(state);
    }

    public static Rect getOpticalBounds(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 29) {
            return Build.VERSION.SDK_INT >= 18 ? Api18Impl.getOpticalInsets(DrawableCompat.unwrap(drawable)) : INSETS_NONE;
        }
        Insets opticalInsets = Api29Impl.getOpticalInsets(drawable);
        return new Rect(opticalInsets.left, opticalInsets.top, opticalInsets.right, opticalInsets.bottom);
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        switch (i) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                return mode;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
        }
    }
}
