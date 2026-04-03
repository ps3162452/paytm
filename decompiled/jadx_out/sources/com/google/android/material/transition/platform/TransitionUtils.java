package com.google.android.material.transition.platform;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.transition.PathMotion;
import android.transition.PatternPathMotion;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.util.TypedValue;
import android.view.View;
import androidx.core.graphics.PathParser;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
class TransitionUtils {
    static final int NO_ATTR_RES_ID = 0;
    static final int NO_DURATION = -1;
    private static final int PATH_TYPE_ARC = 1;
    private static final int PATH_TYPE_LINEAR = 0;
    private static final RectF transformAlphaRectF = new RectF();

    interface CanvasOperation {
        void run(Canvas canvas);
    }

    interface CornerSizeBinaryOperator {
        CornerSize apply(CornerSize cornerSize, CornerSize cornerSize2);
    }

    private TransitionUtils() {
    }

    static float calculateArea(RectF rectF) {
        return rectF.width() * rectF.height();
    }

    static ShapeAppearanceModel convertToRelativeCornerSizes(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return shapeAppearanceModel.withTransformedCornerSizes(new ShapeAppearanceModel.CornerSizeUnaryOperator(rectF) { // from class: com.google.android.material.transition.platform.TransitionUtils.1
            final RectF val$bounds;

            {
                this.val$bounds = rectF;
            }

            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public CornerSize apply(CornerSize cornerSize) {
                return cornerSize instanceof RelativeCornerSize ? cornerSize : new RelativeCornerSize(cornerSize.getCornerSize(this.val$bounds) / this.val$bounds.height());
            }
        });
    }

    static Shader createColorShader(int i) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i, i, Shader.TileMode.CLAMP);
    }

    static <T> T defaultIfNull(T t, T t2) {
        return t != null ? t : t2;
    }

    static View findAncestorById(View view, int i) {
        String resourceName = view.getResources().getResourceName(i);
        while (view != null) {
            if (view.getId() != i) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + NPStringFog.decode(new byte[]{19, 95, 22, 16, 8, 93, 71, 22, 4, 16, 16, 83, 95, 95, 1, 16, 7, 92, 80, 83, 22, 68, 9, 64}, "36e0f2", -1.449178546E9d));
    }

    static View findDescendantOrAncestorById(View view, int i) {
        View viewFindViewById = view.findViewById(i);
        return viewFindViewById != null ? viewFindViewById : findAncestorById(view, i);
    }

    static RectF getLocationOnScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], r1 + view.getWidth(), r0 + view.getHeight());
    }

    static RectF getRelativeBounds(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    static Rect getRelativeBoundsRect(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    private static boolean isShapeAppearanceSignificant(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return (shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getTopRightCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getBottomRightCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getBottomLeftCornerSize().getCornerSize(rectF) == 0.0f) ? false : true;
    }

    static float lerp(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    static float lerp(float f, float f2, float f3, float f4, float f5) {
        return lerp(f, f2, f3, f4, f5, false);
    }

    static float lerp(float f, float f2, float f3, float f4, float f5, boolean z) {
        return (!z || (f5 >= 0.0f && f5 <= 1.0f)) ? f5 >= f3 ? f5 > f4 ? f2 : lerp(f, f2, (f5 - f3) / (f4 - f3)) : f : lerp(f, f2, f5);
    }

    static int lerp(int i, int i2, float f, float f2, float f3) {
        return f3 < f ? i : f3 > f2 ? i2 : (int) lerp(i, i2, (f3 - f) / (f2 - f));
    }

    static ShapeAppearanceModel lerp(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, float f, float f2, float f3) {
        return f3 < f ? shapeAppearanceModel : f3 > f2 ? shapeAppearanceModel2 : transformCornerSizes(shapeAppearanceModel, shapeAppearanceModel2, rectF, new CornerSizeBinaryOperator(rectF, rectF2, f, f2, f3) { // from class: com.google.android.material.transition.platform.TransitionUtils.2
            final RectF val$endBounds;
            final float val$endFraction;
            final float val$fraction;
            final RectF val$startBounds;
            final float val$startFraction;

            {
                this.val$startBounds = rectF;
                this.val$endBounds = rectF2;
                this.val$startFraction = f;
                this.val$endFraction = f2;
                this.val$fraction = f3;
            }

            @Override // com.google.android.material.transition.platform.TransitionUtils.CornerSizeBinaryOperator
            public CornerSize apply(CornerSize cornerSize, CornerSize cornerSize2) {
                return new AbsoluteCornerSize(TransitionUtils.lerp(cornerSize.getCornerSize(this.val$startBounds), cornerSize2.getCornerSize(this.val$endBounds), this.val$startFraction, this.val$endFraction, this.val$fraction));
            }
        });
    }

    static void maybeAddTransition(TransitionSet transitionSet, Transition transition) {
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
    }

    static boolean maybeApplyThemeDuration(Transition transition, Context context, int i) {
        int iResolveThemeDuration;
        if (i == 0 || transition.getDuration() != -1 || (iResolveThemeDuration = MotionUtils.resolveThemeDuration(context, i, -1)) == -1) {
            return false;
        }
        transition.setDuration(iResolveThemeDuration);
        return true;
    }

    static boolean maybeApplyThemeInterpolator(Transition transition, Context context, int i, TimeInterpolator timeInterpolator) {
        if (i == 0 || transition.getInterpolator() != null) {
            return false;
        }
        transition.setInterpolator(MotionUtils.resolveThemeInterpolator(context, i, timeInterpolator));
        return true;
    }

    static boolean maybeApplyThemePath(Transition transition, Context context, int i) {
        PathMotion pathMotionResolveThemePath;
        if (i == 0 || (pathMotionResolveThemePath = resolveThemePath(context, i)) == null) {
            return false;
        }
        transition.setPathMotion(pathMotionResolveThemePath);
        return true;
    }

    static void maybeRemoveTransition(TransitionSet transitionSet, Transition transition) {
        if (transition != null) {
            transitionSet.removeTransition(transition);
        }
    }

    static PathMotion resolveThemePath(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        if (typedValue.type != 16) {
            if (typedValue.type == 3) {
                return new PatternPathMotion(PathParser.createPathFromPathData(String.valueOf(typedValue.string)));
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{43, 89, 67, 15, 93, 89, 70, 70, 86, 18, 90, 23, 18, 94, 82, 11, 87, 23, 7, 66, 67, 20, 91, 85, 19, 66, 82, 70, 95, 66, 21, 66, 23, 3, 91, 67, 14, 83, 69, 70, 80, 82, 70, 87, 89, 70, 87, 89, 19, 91, 23, 16, 83, 91, 19, 83, 23, 9, 64, 23, 22, 87, 67, 14, 18, 83, 7, 66, 86, 70, 65, 67, 20, 95, 89, 1}, "f67f27", true));
        }
        int i2 = typedValue.data;
        if (i2 == 0) {
            return null;
        }
        if (i2 == 1) {
            return new MaterialArcMotion();
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{125, 15, 69, 88, 95, 92, 80, 65, 94, 86, 71, 92, 91, 15, 19, 73, 82, 65, 92, 65, 71, 64, 67, 80, 14, 65}, "4a3935", false, true) + i2);
    }

    private static int saveLayerAlphaCompat(Canvas canvas, Rect rect, int i) {
        RectF rectF = transformAlphaRectF;
        rectF.set(rect);
        return Build.VERSION.SDK_INT >= 21 ? canvas.saveLayerAlpha(rectF, i) : canvas.saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, i, 31);
    }

    static void transform(Canvas canvas, Rect rect, float f, float f2, float f3, int i, CanvasOperation canvasOperation) {
        if (i <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        if (i < 255) {
            saveLayerAlphaCompat(canvas, rect, i);
        }
        canvasOperation.run(canvas);
        canvas.restoreToCount(iSave);
    }

    static ShapeAppearanceModel transformCornerSizes(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, CornerSizeBinaryOperator cornerSizeBinaryOperator) {
        return (isShapeAppearanceSignificant(shapeAppearanceModel, rectF) ? shapeAppearanceModel : shapeAppearanceModel2).toBuilder().setTopLeftCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getTopLeftCornerSize(), shapeAppearanceModel2.getTopLeftCornerSize())).setTopRightCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getTopRightCornerSize(), shapeAppearanceModel2.getTopRightCornerSize())).setBottomLeftCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getBottomLeftCornerSize(), shapeAppearanceModel2.getBottomLeftCornerSize())).setBottomRightCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getBottomRightCornerSize(), shapeAppearanceModel2.getBottomRightCornerSize())).build();
    }
}
