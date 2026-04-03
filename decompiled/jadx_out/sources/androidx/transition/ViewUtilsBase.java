package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
class ViewUtilsBase {
    private static final String TAG = NPStringFog.decode(new byte[]{100, 92, 85, 65, 48, 65, 91, 89, 67, 116, 4, 70, 87}, "2506e5", -14452);
    private static final int VISIBILITY_MASK = 12;
    private static boolean sSetFrameFetched;
    private static Method sSetFrameMethod;
    private static Field sViewFlagsField;
    private static boolean sViewFlagsFieldFetched;
    private float[] mMatrixValues;

    ViewUtilsBase() {
    }

    @SuppressLint({"PrivateApi", "SoonBlockedPrivateApi"})
    private void fetchSetFrame() {
        if (sSetFrameFetched) {
            return;
        }
        try {
            sSetFrameMethod = View.class.getDeclaredMethod(NPStringFog.decode(new byte[]{67, 84, 67, 114, 23, 82, 93, 84}, "0174e3", true, false), Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
            sSetFrameMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, NPStringFog.decode(new byte[]{114, 82, 90, 92, 82, 0, 20, 71, 92, 16, 69, 1, 64, 65, 90, 85, 65, 1, 20, 64, 86, 68, 113, 22, 85, 94, 86, 16, 90, 1, 64, 91, 92, 84}, "43307d", -21692), e);
        }
        sSetFrameFetched = true;
    }

    public void clearNonTransitionAlpha(@NonNull View view) {
        if (view.getVisibility() == 0) {
            view.setTag(R.id.save_non_transition_alpha, null);
        }
    }

    public float getTransitionAlpha(@NonNull View view) {
        Float f = (Float) view.getTag(R.id.save_non_transition_alpha);
        return f != null ? view.getAlpha() / f.floatValue() : view.getAlpha();
    }

    public void saveNonTransitionAlpha(@NonNull View view) {
        if (view.getTag(R.id.save_non_transition_alpha) == null) {
            view.setTag(R.id.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    public void setAnimationMatrix(@NonNull View view, @Nullable Matrix matrix) {
        if (matrix == null || matrix.isIdentity()) {
            view.setPivotX(view.getWidth() / 2);
            view.setPivotY(view.getHeight() / 2);
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            view.setRotation(0.0f);
            return;
        }
        float[] fArr = this.mMatrixValues;
        if (fArr == null) {
            fArr = new float[9];
            this.mMatrixValues = fArr;
        }
        matrix.getValues(fArr);
        float f = fArr[3];
        float fSqrt = (fArr[0] < 0.0f ? -1 : 1) * ((float) Math.sqrt(1.0f - (f * f)));
        float degrees = (float) Math.toDegrees(Math.atan2(f, fSqrt));
        float f2 = fArr[0] / fSqrt;
        float f3 = fArr[4] / fSqrt;
        float f4 = fArr[2];
        float f5 = fArr[5];
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setTranslationX(f4);
        view.setTranslationY(f5);
        view.setRotation(degrees);
        view.setScaleX(f2);
        view.setScaleY(f3);
    }

    public void setLeftTopRightBottom(@NonNull View view, int i, int i2, int i3, int i4) {
        fetchSetFrame();
        if (sSetFrameMethod != null) {
            try {
                sSetFrameMethod.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    public void setTransitionAlpha(@NonNull View view, float f) {
        Float f2 = (Float) view.getTag(R.id.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    public void setTransitionVisibility(@NonNull View view, int i) {
        if (!sViewFlagsFieldFetched) {
            try {
                sViewFlagsField = View.class.getDeclaredField(NPStringFog.decode(new byte[]{15, 102, 81, 81, 18, 127, 14, 81, 95, 71}, "b084e9", 7548));
                sViewFlagsField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i(TAG, NPStringFog.decode(new byte[]{82, 84, 70, 84, 9, 101, 93, 84, 69, 113, 13, 82, 83, 66, 116, 94, 4, 95, 80, 11, 18}, "4127a3", -12088));
            }
            sViewFlagsFieldFetched = true;
        }
        if (sViewFlagsField != null) {
            try {
                sViewFlagsField.setInt(view, (sViewFlagsField.getInt(view) & (-13)) | i);
            } catch (IllegalAccessException e2) {
            }
        }
    }

    public void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            transformMatrixToGlobal((View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        matrix.preConcat(matrix2);
    }

    public void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            transformMatrixToLocal((View) parent, matrix);
            matrix.postTranslate(r0.getScrollX(), r0.getScrollY());
        }
        matrix.postTranslate(-view.getLeft(), -view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        Matrix matrix3 = new Matrix();
        if (matrix2.invert(matrix3)) {
            matrix.postConcat(matrix3);
        }
    }
}
