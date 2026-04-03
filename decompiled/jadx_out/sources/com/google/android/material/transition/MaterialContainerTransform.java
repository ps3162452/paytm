package com.google.android.material.transition;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.core.util.Preconditions;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.transition.ArcMotion;
import androidx.transition.PathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.transition.TransitionUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class MaterialContainerTransform extends Transition {
    private static final ProgressThresholdsGroup DEFAULT_ENTER_THRESHOLDS;
    private static final ProgressThresholdsGroup DEFAULT_ENTER_THRESHOLDS_ARC;
    private static final ProgressThresholdsGroup DEFAULT_RETURN_THRESHOLDS;
    private static final ProgressThresholdsGroup DEFAULT_RETURN_THRESHOLDS_ARC;
    private static final float ELEVATION_NOT_SET = -1.0f;
    public static final int FADE_MODE_CROSS = 2;
    public static final int FADE_MODE_IN = 0;
    public static final int FADE_MODE_OUT = 1;
    public static final int FADE_MODE_THROUGH = 3;
    public static final int FIT_MODE_AUTO = 0;
    public static final int FIT_MODE_HEIGHT = 2;
    public static final int FIT_MODE_WIDTH = 1;
    public static final int TRANSITION_DIRECTION_AUTO = 0;
    public static final int TRANSITION_DIRECTION_ENTER = 1;
    public static final int TRANSITION_DIRECTION_RETURN = 2;
    private boolean appliedThemeValues;
    private int containerColor;
    private boolean drawDebugEnabled;
    private int drawingViewId;
    private boolean elevationShadowEnabled;
    private int endContainerColor;
    private float endElevation;
    private ShapeAppearanceModel endShapeAppearanceModel;
    private View endView;
    private int endViewId;
    private int fadeMode;
    private ProgressThresholds fadeProgressThresholds;
    private int fitMode;
    private boolean holdAtEndEnabled;
    private boolean pathMotionCustom;
    private ProgressThresholds scaleMaskProgressThresholds;
    private ProgressThresholds scaleProgressThresholds;
    private int scrimColor;
    private ProgressThresholds shapeMaskProgressThresholds;
    private int startContainerColor;
    private float startElevation;
    private ShapeAppearanceModel startShapeAppearanceModel;
    private View startView;
    private int startViewId;
    private int transitionDirection;
    private static final String PROP_BOUNDS = NPStringFog.decode(new byte[]{15, 84, 76, 86, 71, 90, 3, 89, 123, 92, 91, 71, 3, 92, 86, 86, 71, 103, 16, 84, 86, 64, 92, 71, 11, 90, 86, 9, 87, 92, 23, 91, 92, 64}, "b58353", false);
    private static final String PROP_SHAPE_APPEARANCE = NPStringFog.decode(new byte[]{94, 89, 76, 83, 74, 89, 82, 84, 123, 89, 86, 68, 82, 81, 86, 83, 74, 100, 65, 89, 86, 69, 81, 68, 90, 87, 86, 12, 75, 88, 82, 72, 93, 119, 72, 64, 86, 89, 74, 87, 86, 83, 86}, "388680", 410796723L);
    private static final String TAG = MaterialContainerTransform.class.getSimpleName();
    private static final String[] TRANSITION_PROPS = {NPStringFog.decode(new byte[]{85, 84, 65, 4, 68, 89, 89, 89, 118, 14, 88, 68, 89, 92, 91, 4, 68, 100, 74, 84, 91, 18, 95, 68, 81, 90, 91, 91, 84, 95, 77, 91, 81, 18}, "855a60", false), NPStringFog.decode(new byte[]{85, 3, 70, 1, 22, 13, 89, 14, 113, 11, 10, 16, 89, 11, 92, 1, 22, 48, 74, 3, 92, 23, 13, 16, 81, 13, 92, 94, 23, 12, 89, 18, 87, 37, 20, 20, 93, 3, 64, 5, 10, 7, 93}, "8b2ddd", 24743)};

    @Retention(RetentionPolicy.SOURCE)
    public @interface FadeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FitMode {
    }

    public static class ProgressThresholds {
        private final float end;
        private final float start;

        public ProgressThresholds(float f, float f2) {
            this.start = f;
            this.end = f2;
        }

        public float getEnd() {
            return this.end;
        }

        public float getStart() {
            return this.start;
        }
    }

    private static class ProgressThresholdsGroup {
        private final ProgressThresholds fade;
        private final ProgressThresholds scale;
        private final ProgressThresholds scaleMask;
        private final ProgressThresholds shapeMask;

        private ProgressThresholdsGroup(ProgressThresholds progressThresholds, ProgressThresholds progressThresholds2, ProgressThresholds progressThresholds3, ProgressThresholds progressThresholds4) {
            this.fade = progressThresholds;
            this.scale = progressThresholds2;
            this.scaleMask = progressThresholds3;
            this.shapeMask = progressThresholds4;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TransitionDirection {
    }

    private static final class TransitionDrawable extends Drawable {
        private static final int COMPAT_SHADOW_COLOR = -7829368;
        private static final int SHADOW_COLOR = 754974720;
        private static final float SHADOW_DX_MULTIPLIER_ADJUSTMENT = 0.3f;
        private static final float SHADOW_DY_MULTIPLIER_ADJUSTMENT = 1.5f;
        private final MaterialShapeDrawable compatShadowDrawable;
        private final Paint containerPaint;
        private float currentElevation;
        private float currentElevationDy;
        private final RectF currentEndBounds;
        private final RectF currentEndBoundsMasked;
        private RectF currentMaskBounds;
        private final RectF currentStartBounds;
        private final RectF currentStartBoundsMasked;
        private final Paint debugPaint;
        private final Path debugPath;
        private final float displayHeight;
        private final float displayWidth;
        private final boolean drawDebugEnabled;
        private final boolean elevationShadowEnabled;
        private final RectF endBounds;
        private final Paint endContainerPaint;
        private final float endElevation;
        private final ShapeAppearanceModel endShapeAppearanceModel;
        private final View endView;
        private final boolean entering;
        private final FadeModeEvaluator fadeModeEvaluator;
        private FadeModeResult fadeModeResult;
        private final FitModeEvaluator fitModeEvaluator;
        private FitModeResult fitModeResult;
        private final MaskEvaluator maskEvaluator;
        private final float motionPathLength;
        private final PathMeasure motionPathMeasure;
        private final float[] motionPathPosition;
        private float progress;
        private final ProgressThresholdsGroup progressThresholds;
        private final Paint scrimPaint;
        private final Paint shadowPaint;
        private final RectF startBounds;
        private final Paint startContainerPaint;
        private final float startElevation;
        private final ShapeAppearanceModel startShapeAppearanceModel;
        private final View startView;

        private TransitionDrawable(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, int i, int i2, int i3, int i4, boolean z, boolean z2, FadeModeEvaluator fadeModeEvaluator, FitModeEvaluator fitModeEvaluator, ProgressThresholdsGroup progressThresholdsGroup, boolean z3) {
            Paint paint = new Paint();
            this.containerPaint = paint;
            Paint paint2 = new Paint();
            this.startContainerPaint = paint2;
            Paint paint3 = new Paint();
            this.endContainerPaint = paint3;
            this.shadowPaint = new Paint();
            Paint paint4 = new Paint();
            this.scrimPaint = paint4;
            this.maskEvaluator = new MaskEvaluator();
            this.motionPathPosition = new float[]{rectF.centerX(), rectF.top};
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.compatShadowDrawable = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.debugPaint = paint5;
            this.debugPath = new Path();
            this.startView = view;
            this.startBounds = rectF;
            this.startShapeAppearanceModel = shapeAppearanceModel;
            this.startElevation = f;
            this.endView = view2;
            this.endBounds = rectF2;
            this.endShapeAppearanceModel = shapeAppearanceModel2;
            this.endElevation = f2;
            this.entering = z;
            this.elevationShadowEnabled = z2;
            this.fadeModeEvaluator = fadeModeEvaluator;
            this.fitModeEvaluator = fitModeEvaluator;
            this.progressThresholds = progressThresholdsGroup;
            this.drawDebugEnabled = z3;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService(NPStringFog.decode(new byte[]{68, 80, 10, 2, 95, 65}, "39df06", -13002));
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.displayWidth = r9.widthPixels;
            this.displayHeight = r9.heightPixels;
            paint.setColor(i);
            paint2.setColor(i2);
            paint3.setColor(i3);
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(0));
            materialShapeDrawable.setShadowCompatibilityMode(2);
            materialShapeDrawable.setShadowBitmapDrawingEnable(false);
            materialShapeDrawable.setShadowColor(COMPAT_SHADOW_COLOR);
            RectF rectF3 = new RectF(rectF);
            this.currentStartBounds = rectF3;
            this.currentStartBoundsMasked = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.currentEndBounds = rectF4;
            this.currentEndBoundsMasked = new RectF(rectF4);
            PointF motionPathPoint = getMotionPathPoint(rectF);
            PointF motionPathPoint2 = getMotionPathPoint(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(motionPathPoint.x, motionPathPoint.y, motionPathPoint2.x, motionPathPoint2.y), false);
            this.motionPathMeasure = pathMeasure;
            this.motionPathLength = pathMeasure.getLength();
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(TransitionUtils.createColorShader(i4));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            updateProgress(0.0f);
        }

        private static float calculateElevationDxMultiplier(RectF rectF, float f) {
            return ((rectF.centerX() / (f / 2.0f)) - 1.0f) * SHADOW_DX_MULTIPLIER_ADJUSTMENT;
        }

        private static float calculateElevationDyMultiplier(RectF rectF, float f) {
            return (rectF.centerY() / f) * SHADOW_DY_MULTIPLIER_ADJUSTMENT;
        }

        private void drawDebugCumulativePath(Canvas canvas, RectF rectF, Path path, int i) {
            PointF motionPathPoint = getMotionPathPoint(rectF);
            if (this.progress == 0.0f) {
                path.reset();
                path.moveTo(motionPathPoint.x, motionPathPoint.y);
            } else {
                path.lineTo(motionPathPoint.x, motionPathPoint.y);
                this.debugPaint.setColor(i);
                canvas.drawPath(path, this.debugPaint);
            }
        }

        private void drawDebugRect(Canvas canvas, RectF rectF, int i) {
            this.debugPaint.setColor(i);
            canvas.drawRect(rectF, this.debugPaint);
        }

        private void drawElevationShadow(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.maskEvaluator.getPath(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                drawElevationShadowWithPaintShadowLayer(canvas);
            } else {
                drawElevationShadowWithMaterialShapeDrawable(canvas);
            }
            canvas.restore();
        }

        private void drawElevationShadowWithMaterialShapeDrawable(Canvas canvas) {
            this.compatShadowDrawable.setBounds((int) this.currentMaskBounds.left, (int) this.currentMaskBounds.top, (int) this.currentMaskBounds.right, (int) this.currentMaskBounds.bottom);
            this.compatShadowDrawable.setElevation(this.currentElevation);
            this.compatShadowDrawable.setShadowVerticalOffset((int) this.currentElevationDy);
            this.compatShadowDrawable.setShapeAppearanceModel(this.maskEvaluator.getCurrentShapeAppearanceModel());
            this.compatShadowDrawable.draw(canvas);
        }

        private void drawElevationShadowWithPaintShadowLayer(Canvas canvas) {
            ShapeAppearanceModel currentShapeAppearanceModel = this.maskEvaluator.getCurrentShapeAppearanceModel();
            if (!currentShapeAppearanceModel.isRoundRect(this.currentMaskBounds)) {
                canvas.drawPath(this.maskEvaluator.getPath(), this.shadowPaint);
            } else {
                float cornerSize = currentShapeAppearanceModel.getTopLeftCornerSize().getCornerSize(this.currentMaskBounds);
                canvas.drawRoundRect(this.currentMaskBounds, cornerSize, cornerSize, this.shadowPaint);
            }
        }

        private void drawEndView(Canvas canvas) {
            maybeDrawContainerColor(canvas, this.endContainerPaint);
            TransitionUtils.transform(canvas, getBounds(), this.currentEndBounds.left, this.currentEndBounds.top, this.fitModeResult.endScale, this.fadeModeResult.endAlpha, new TransitionUtils.CanvasOperation(this) { // from class: com.google.android.material.transition.MaterialContainerTransform.TransitionDrawable.2
                final TransitionDrawable this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.android.material.transition.TransitionUtils.CanvasOperation
                public void run(Canvas canvas2) {
                    this.this$0.endView.draw(canvas2);
                }
            });
        }

        private void drawStartView(Canvas canvas) {
            maybeDrawContainerColor(canvas, this.startContainerPaint);
            TransitionUtils.transform(canvas, getBounds(), this.currentStartBounds.left, this.currentStartBounds.top, this.fitModeResult.startScale, this.fadeModeResult.startAlpha, new TransitionUtils.CanvasOperation(this) { // from class: com.google.android.material.transition.MaterialContainerTransform.TransitionDrawable.1
                final TransitionDrawable this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.android.material.transition.TransitionUtils.CanvasOperation
                public void run(Canvas canvas2) {
                    this.this$0.startView.draw(canvas2);
                }
            });
        }

        private static PointF getMotionPathPoint(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        private void maybeDrawContainerColor(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProgress(float f) {
            if (this.progress != f) {
                updateProgress(f);
            }
        }

        private void updateProgress(float f) {
            float f2;
            float f3;
            float f4;
            float f5;
            this.progress = f;
            this.scrimPaint.setAlpha((int) (this.entering ? TransitionUtils.lerp(0.0f, 255.0f, f) : TransitionUtils.lerp(255.0f, 0.0f, f)));
            this.motionPathMeasure.getPosTan(this.motionPathLength * f, this.motionPathPosition, null);
            float[] fArr = this.motionPathPosition;
            float f6 = fArr[0];
            float f7 = fArr[1];
            if (f > 1.0f || f < 0.0f) {
                if (f > 1.0f) {
                    f2 = (f - 1.0f) / (1.0f - 0.99f);
                    f3 = 0.99f;
                } else {
                    f2 = (f / 0.01f) * MaterialContainerTransform.ELEVATION_NOT_SET;
                    f3 = 0.01f;
                }
                this.motionPathMeasure.getPosTan(f3 * this.motionPathLength, fArr, null);
                float[] fArr2 = this.motionPathPosition;
                f4 = ((f6 - fArr2[0]) * f2) + f6;
                f5 = (f2 * (f7 - fArr2[1])) + f7;
            } else {
                f4 = f6;
                f5 = f7;
            }
            FitModeResult fitModeResultEvaluate = this.fitModeEvaluator.evaluate(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scale.start))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scale.end))).floatValue(), this.startBounds.width(), this.startBounds.height(), this.endBounds.width(), this.endBounds.height());
            this.fitModeResult = fitModeResultEvaluate;
            this.currentStartBounds.set(f4 - (fitModeResultEvaluate.currentStartWidth / 2.0f), f5, (this.fitModeResult.currentStartWidth / 2.0f) + f4, this.fitModeResult.currentStartHeight + f5);
            this.currentEndBounds.set(f4 - (this.fitModeResult.currentEndWidth / 2.0f), f5, (this.fitModeResult.currentEndWidth / 2.0f) + f4, this.fitModeResult.currentEndHeight + f5);
            this.currentStartBoundsMasked.set(this.currentStartBounds);
            this.currentEndBoundsMasked.set(this.currentEndBounds);
            float fFloatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scaleMask.start))).floatValue();
            float fFloatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scaleMask.end))).floatValue();
            boolean zShouldMaskStartBounds = this.fitModeEvaluator.shouldMaskStartBounds(this.fitModeResult);
            RectF rectF = zShouldMaskStartBounds ? this.currentStartBoundsMasked : this.currentEndBoundsMasked;
            float fLerp = TransitionUtils.lerp(0.0f, 1.0f, fFloatValue, fFloatValue2, f);
            if (!zShouldMaskStartBounds) {
                fLerp = 1.0f - fLerp;
            }
            this.fitModeEvaluator.applyMask(rectF, fLerp, this.fitModeResult);
            this.currentMaskBounds = new RectF(Math.min(this.currentStartBoundsMasked.left, this.currentEndBoundsMasked.left), Math.min(this.currentStartBoundsMasked.top, this.currentEndBoundsMasked.top), Math.max(this.currentStartBoundsMasked.right, this.currentEndBoundsMasked.right), Math.max(this.currentStartBoundsMasked.bottom, this.currentEndBoundsMasked.bottom));
            this.maskEvaluator.evaluate(f, this.startShapeAppearanceModel, this.endShapeAppearanceModel, this.currentStartBounds, this.currentStartBoundsMasked, this.currentEndBoundsMasked, this.progressThresholds.shapeMask);
            this.currentElevation = TransitionUtils.lerp(this.startElevation, this.endElevation, f);
            float fCalculateElevationDxMultiplier = calculateElevationDxMultiplier(this.currentMaskBounds, this.displayWidth);
            float fCalculateElevationDyMultiplier = calculateElevationDyMultiplier(this.currentMaskBounds, this.displayHeight);
            float f8 = this.currentElevation;
            float f9 = (int) (fCalculateElevationDyMultiplier * f8);
            this.currentElevationDy = f9;
            this.shadowPaint.setShadowLayer(f8, (int) (fCalculateElevationDxMultiplier * f8), f9, SHADOW_COLOR);
            this.fadeModeResult = this.fadeModeEvaluator.evaluate(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.fade.start))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.fade.end))).floatValue(), 0.35f);
            if (this.startContainerPaint.getColor() != 0) {
                this.startContainerPaint.setAlpha(this.fadeModeResult.startAlpha);
            }
            if (this.endContainerPaint.getColor() != 0) {
                this.endContainerPaint.setAlpha(this.fadeModeResult.endAlpha);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.scrimPaint.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.scrimPaint);
            }
            int iSave = this.drawDebugEnabled ? canvas.save() : -1;
            if (this.elevationShadowEnabled && this.currentElevation > 0.0f) {
                drawElevationShadow(canvas);
            }
            this.maskEvaluator.clip(canvas);
            maybeDrawContainerColor(canvas, this.containerPaint);
            if (this.fadeModeResult.endOnTop) {
                drawStartView(canvas);
                drawEndView(canvas);
            } else {
                drawEndView(canvas);
                drawStartView(canvas);
            }
            if (this.drawDebugEnabled) {
                canvas.restoreToCount(iSave);
                drawDebugCumulativePath(canvas, this.currentStartBounds, this.debugPath, -65281);
                drawDebugRect(canvas, this.currentStartBoundsMasked, InputDeviceCompat.SOURCE_ANY);
                drawDebugRect(canvas, this.currentStartBounds, -16711936);
                drawDebugRect(canvas, this.currentEndBoundsMasked, -16711681);
                drawDebugRect(canvas, this.currentEndBounds, -16776961);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{49, 3, 76, 67, 11, 15, 5, 70, 89, 91, 18, 9, 3, 70, 87, 89, 66, 8, 17, 70, 86, 88, 22, 65, 17, 19, 72, 71, 13, 19, 22, 3, 92}, "bf87ba", -5.669403E8f));
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{54, 3, 77, 21, 11, 91, 2, 70, 88, 65, 1, 90, 9, 9, 75, 65, 4, 92, 9, 18, 92, 19, 66, 92, 22, 70, 87, 14, 22, 21, 22, 19, 73, 17, 13, 71, 17, 3, 93}, "ef9ab5", -802833724L));
        }
    }

    static {
        DEFAULT_ENTER_THRESHOLDS = new ProgressThresholdsGroup(new ProgressThresholds(0.0f, 0.25f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.75f));
        DEFAULT_RETURN_THRESHOLDS = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.3f, 0.9f));
        DEFAULT_ENTER_THRESHOLDS_ARC = new ProgressThresholdsGroup(new ProgressThresholds(0.1f, 0.4f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 0.9f));
        DEFAULT_RETURN_THRESHOLDS_ARC = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.2f, 0.9f));
    }

    public MaterialContainerTransform() {
        this.drawDebugEnabled = false;
        this.holdAtEndEnabled = false;
        this.pathMotionCustom = false;
        this.appliedThemeValues = false;
        this.drawingViewId = R.id.content;
        this.startViewId = -1;
        this.endViewId = -1;
        this.containerColor = 0;
        this.startContainerColor = 0;
        this.endContainerColor = 0;
        this.scrimColor = 1375731712;
        this.transitionDirection = 0;
        this.fadeMode = 0;
        this.fitMode = 0;
        this.elevationShadowEnabled = Build.VERSION.SDK_INT >= 28;
        this.startElevation = ELEVATION_NOT_SET;
        this.endElevation = ELEVATION_NOT_SET;
    }

    public MaterialContainerTransform(Context context, boolean z) {
        this.drawDebugEnabled = false;
        this.holdAtEndEnabled = false;
        this.pathMotionCustom = false;
        this.appliedThemeValues = false;
        this.drawingViewId = R.id.content;
        this.startViewId = -1;
        this.endViewId = -1;
        this.containerColor = 0;
        this.startContainerColor = 0;
        this.endContainerColor = 0;
        this.scrimColor = 1375731712;
        this.transitionDirection = 0;
        this.fadeMode = 0;
        this.fitMode = 0;
        this.elevationShadowEnabled = Build.VERSION.SDK_INT >= 28;
        this.startElevation = ELEVATION_NOT_SET;
        this.endElevation = ELEVATION_NOT_SET;
        maybeApplyThemeValues(context, z);
        this.appliedThemeValues = true;
    }

    private ProgressThresholdsGroup buildThresholdsGroup(boolean z) {
        PathMotion pathMotion = getPathMotion();
        return ((pathMotion instanceof ArcMotion) || (pathMotion instanceof MaterialArcMotion)) ? getThresholdsOrDefault(z, DEFAULT_ENTER_THRESHOLDS_ARC, DEFAULT_RETURN_THRESHOLDS_ARC) : getThresholdsOrDefault(z, DEFAULT_ENTER_THRESHOLDS, DEFAULT_RETURN_THRESHOLDS);
    }

    private static RectF calculateDrawableBounds(View view, View view2, float f, float f2) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF locationOnScreen = TransitionUtils.getLocationOnScreen(view2);
        locationOnScreen.offset(f, f2);
        return locationOnScreen;
    }

    private static ShapeAppearanceModel captureShapeAppearance(View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel) {
        return TransitionUtils.convertToRelativeCornerSizes(getShapeAppearance(view, shapeAppearanceModel), rectF);
    }

    private static void captureValues(TransitionValues transitionValues, View view, int i, ShapeAppearanceModel shapeAppearanceModel) {
        if (i != -1) {
            transitionValues.view = TransitionUtils.findDescendantOrAncestorById(transitionValues.view, i);
        } else if (view != null) {
            transitionValues.view = view;
        } else if (transitionValues.view.getTag(com.google.android.material.R.id.mtrl_motion_snapshot_view) instanceof View) {
            View view2 = (View) transitionValues.view.getTag(com.google.android.material.R.id.mtrl_motion_snapshot_view);
            transitionValues.view.setTag(com.google.android.material.R.id.mtrl_motion_snapshot_view, null);
            transitionValues.view = view2;
        }
        View view3 = transitionValues.view;
        if (!ViewCompat.isLaidOut(view3) && view3.getWidth() == 0 && view3.getHeight() == 0) {
            return;
        }
        RectF relativeBounds = view3.getParent() == null ? TransitionUtils.getRelativeBounds(view3) : TransitionUtils.getLocationOnScreen(view3);
        transitionValues.values.put(PROP_BOUNDS, relativeBounds);
        transitionValues.values.put(PROP_SHAPE_APPEARANCE, captureShapeAppearance(view3, relativeBounds, shapeAppearanceModel));
    }

    private static float getElevationOrDefault(float f, View view) {
        return f != ELEVATION_NOT_SET ? f : ViewCompat.getElevation(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static ShapeAppearanceModel getShapeAppearance(View view, ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel != null) {
            return shapeAppearanceModel;
        }
        if (view.getTag(com.google.android.material.R.id.mtrl_motion_snapshot_view) instanceof ShapeAppearanceModel) {
            return (ShapeAppearanceModel) view.getTag(com.google.android.material.R.id.mtrl_motion_snapshot_view);
        }
        Context context = view.getContext();
        int transitionShapeAppearanceResId = getTransitionShapeAppearanceResId(context);
        return transitionShapeAppearanceResId != -1 ? ShapeAppearanceModel.builder(context, transitionShapeAppearanceResId, 0).build() : view instanceof Shapeable ? ((Shapeable) view).getShapeAppearanceModel() : ShapeAppearanceModel.builder().build();
    }

    private ProgressThresholdsGroup getThresholdsOrDefault(boolean z, ProgressThresholdsGroup progressThresholdsGroup, ProgressThresholdsGroup progressThresholdsGroup2) {
        if (!z) {
            progressThresholdsGroup = progressThresholdsGroup2;
        }
        return new ProgressThresholdsGroup((ProgressThresholds) TransitionUtils.defaultIfNull(this.fadeProgressThresholds, progressThresholdsGroup.fade), (ProgressThresholds) TransitionUtils.defaultIfNull(this.scaleProgressThresholds, progressThresholdsGroup.scale), (ProgressThresholds) TransitionUtils.defaultIfNull(this.scaleMaskProgressThresholds, progressThresholdsGroup.scaleMask), (ProgressThresholds) TransitionUtils.defaultIfNull(this.shapeMaskProgressThresholds, progressThresholdsGroup.shapeMask));
    }

    private static int getTransitionShapeAppearanceResId(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{com.google.android.material.R.attr.transitionShapeAppearance});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    private boolean isEntering(RectF rectF, RectF rectF2) {
        switch (this.transitionDirection) {
            case 0:
                return TransitionUtils.calculateArea(rectF2) > TransitionUtils.calculateArea(rectF);
            case 1:
                return true;
            case 2:
                return false;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 94, 18, 83, 14, 88, 82, 16, 16, 64, 3, 95, 69, 89, 16, 91, 13, 95, 22, 84, 13, 64, 7, 82, 66, 89, 11, 92, 88, 17}, "60d2b1", -1676738215L) + this.transitionDirection);
        }
    }

    private void maybeApplyThemeValues(Context context, boolean z) {
        TransitionUtils.maybeApplyThemeInterpolator(this, context, com.google.android.material.R.attr.motionEasingStandard, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        TransitionUtils.maybeApplyThemeDuration(this, context, z ? com.google.android.material.R.attr.motionDurationLong1 : com.google.android.material.R.attr.motionDurationMedium2);
        if (this.pathMotionCustom) {
            return;
        }
        TransitionUtils.maybeApplyThemePath(this, context, com.google.android.material.R.attr.motionPath);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues, this.endView, this.endViewId, this.endShapeAppearanceModel);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues, this.startView, this.startViewId, this.startShapeAppearanceModel);
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        View view;
        View viewFindAncestorById;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        RectF rectF = (RectF) transitionValues.values.get(PROP_BOUNDS);
        ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) transitionValues.values.get(PROP_SHAPE_APPEARANCE);
        if (rectF == null || shapeAppearanceModel == null) {
            Log.w(TAG, NPStringFog.decode(new byte[]{55, 13, 15, 70, 73, 15, 10, 1, 70, 82, 76, 3, 68, 18, 9, 22, 87, 19, 8, 10, 70, 69, 77, 7, 22, 18, 70, 84, 86, 19, 10, 2, 21, 24, 25, 35, 10, 21, 19, 68, 92, 70, 23, 18, 7, 68, 77, 70, 18, 15, 3, 65, 25, 15, 23, 70, 10, 87, 80, 2, 68, 9, 19, 66, 25, 7, 10, 2, 70, 91, 92, 7, 23, 19, 20, 83, 93, 72}, "dff69f", -1929368456L));
            return null;
        }
        RectF rectF2 = (RectF) transitionValues2.values.get(PROP_BOUNDS);
        ShapeAppearanceModel shapeAppearanceModel2 = (ShapeAppearanceModel) transitionValues2.values.get(PROP_SHAPE_APPEARANCE);
        if (rectF2 == null || shapeAppearanceModel2 == null) {
            Log.w(TAG, NPStringFog.decode(new byte[]{98, 94, 10, 65, 18, 90, 95, 82, 67, 85, 23, 86, 17, 65, 12, 17, 12, 70, 93, 89, 67, 84, 12, 87, 17, 87, 12, 68, 12, 87, 66, 27, 67, 116, 12, 64, 68, 71, 6, 17, 7, 93, 85, 21, 21, 88, 7, 68, 17, 92, 16, 17, 14, 82, 88, 81, 67, 94, 23, 71, 17, 84, 13, 85, 66, 94, 84, 84, 16, 68, 16, 86, 85, 27}, "15c1b3", 1.7308173E9f));
            return null;
        }
        View view2 = transitionValues.view;
        View view3 = transitionValues2.view;
        View view4 = view3.getParent() != null ? view3 : view2;
        if (this.drawingViewId == view4.getId()) {
            viewFindAncestorById = (View) view4.getParent();
            view = view4;
        } else {
            view = null;
            viewFindAncestorById = TransitionUtils.findAncestorById(view4, this.drawingViewId);
        }
        RectF locationOnScreen = TransitionUtils.getLocationOnScreen(viewFindAncestorById);
        float f = -locationOnScreen.left;
        float f2 = -locationOnScreen.top;
        RectF rectFCalculateDrawableBounds = calculateDrawableBounds(viewFindAncestorById, view, f, f2);
        rectF.offset(f, f2);
        rectF2.offset(f, f2);
        boolean zIsEntering = isEntering(rectF, rectF2);
        if (!this.appliedThemeValues) {
            maybeApplyThemeValues(view4.getContext(), zIsEntering);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(getPathMotion(), view2, rectF, shapeAppearanceModel, getElevationOrDefault(this.startElevation, view2), view3, rectF2, shapeAppearanceModel2, getElevationOrDefault(this.endElevation, view3), this.containerColor, this.startContainerColor, this.endContainerColor, this.scrimColor, zIsEntering, this.elevationShadowEnabled, FadeModeEvaluators.get(this.fadeMode, zIsEntering), FitModeEvaluators.get(this.fitMode, zIsEntering, rectF, rectF2), buildThresholdsGroup(zIsEntering), this.drawDebugEnabled);
        transitionDrawable.setBounds(Math.round(rectFCalculateDrawableBounds.left), Math.round(rectFCalculateDrawableBounds.top), Math.round(rectFCalculateDrawableBounds.right), Math.round(rectFCalculateDrawableBounds.bottom));
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this, transitionDrawable) { // from class: com.google.android.material.transition.MaterialContainerTransform.1
            final MaterialContainerTransform this$0;
            final TransitionDrawable val$transitionDrawable;

            {
                this.this$0 = this;
                this.val$transitionDrawable = transitionDrawable;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.val$transitionDrawable.setProgress(valueAnimator.getAnimatedFraction());
            }
        });
        addListener(new TransitionListenerAdapter(this, viewFindAncestorById, transitionDrawable, view2, view3) { // from class: com.google.android.material.transition.MaterialContainerTransform.2
            final MaterialContainerTransform this$0;
            final View val$drawingView;
            final View val$endView;
            final View val$startView;
            final TransitionDrawable val$transitionDrawable;

            {
                this.this$0 = this;
                this.val$drawingView = viewFindAncestorById;
                this.val$transitionDrawable = transitionDrawable;
                this.val$startView = view2;
                this.val$endView = view3;
            }

            @Override // com.google.android.material.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition) {
                this.this$0.removeListener(this);
                if (this.this$0.holdAtEndEnabled) {
                    return;
                }
                this.val$startView.setAlpha(1.0f);
                this.val$endView.setAlpha(1.0f);
                ViewUtils.getOverlay(this.val$drawingView).remove(this.val$transitionDrawable);
            }

            @Override // com.google.android.material.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition) {
                ViewUtils.getOverlay(this.val$drawingView).add(this.val$transitionDrawable);
                this.val$startView.setAlpha(0.0f);
                this.val$endView.setAlpha(0.0f);
            }
        });
        return valueAnimatorOfFloat;
    }

    public int getContainerColor() {
        return this.containerColor;
    }

    public int getDrawingViewId() {
        return this.drawingViewId;
    }

    public int getEndContainerColor() {
        return this.endContainerColor;
    }

    public float getEndElevation() {
        return this.endElevation;
    }

    public ShapeAppearanceModel getEndShapeAppearanceModel() {
        return this.endShapeAppearanceModel;
    }

    public View getEndView() {
        return this.endView;
    }

    public int getEndViewId() {
        return this.endViewId;
    }

    public int getFadeMode() {
        return this.fadeMode;
    }

    public ProgressThresholds getFadeProgressThresholds() {
        return this.fadeProgressThresholds;
    }

    public int getFitMode() {
        return this.fitMode;
    }

    public ProgressThresholds getScaleMaskProgressThresholds() {
        return this.scaleMaskProgressThresholds;
    }

    public ProgressThresholds getScaleProgressThresholds() {
        return this.scaleProgressThresholds;
    }

    public int getScrimColor() {
        return this.scrimColor;
    }

    public ProgressThresholds getShapeMaskProgressThresholds() {
        return this.shapeMaskProgressThresholds;
    }

    public int getStartContainerColor() {
        return this.startContainerColor;
    }

    public float getStartElevation() {
        return this.startElevation;
    }

    public ShapeAppearanceModel getStartShapeAppearanceModel() {
        return this.startShapeAppearanceModel;
    }

    public View getStartView() {
        return this.startView;
    }

    public int getStartViewId() {
        return this.startViewId;
    }

    public int getTransitionDirection() {
        return this.transitionDirection;
    }

    @Override // androidx.transition.Transition
    public String[] getTransitionProperties() {
        return TRANSITION_PROPS;
    }

    public boolean isDrawDebugEnabled() {
        return this.drawDebugEnabled;
    }

    public boolean isElevationShadowEnabled() {
        return this.elevationShadowEnabled;
    }

    public boolean isHoldAtEndEnabled() {
        return this.holdAtEndEnabled;
    }

    public void setAllContainerColors(int i) {
        this.containerColor = i;
        this.startContainerColor = i;
        this.endContainerColor = i;
    }

    public void setContainerColor(int i) {
        this.containerColor = i;
    }

    public void setDrawDebugEnabled(boolean z) {
        this.drawDebugEnabled = z;
    }

    public void setDrawingViewId(int i) {
        this.drawingViewId = i;
    }

    public void setElevationShadowEnabled(boolean z) {
        this.elevationShadowEnabled = z;
    }

    public void setEndContainerColor(int i) {
        this.endContainerColor = i;
    }

    public void setEndElevation(float f) {
        this.endElevation = f;
    }

    public void setEndShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.endShapeAppearanceModel = shapeAppearanceModel;
    }

    public void setEndView(View view) {
        this.endView = view;
    }

    public void setEndViewId(int i) {
        this.endViewId = i;
    }

    public void setFadeMode(int i) {
        this.fadeMode = i;
    }

    public void setFadeProgressThresholds(ProgressThresholds progressThresholds) {
        this.fadeProgressThresholds = progressThresholds;
    }

    public void setFitMode(int i) {
        this.fitMode = i;
    }

    public void setHoldAtEndEnabled(boolean z) {
        this.holdAtEndEnabled = z;
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.pathMotionCustom = true;
    }

    public void setScaleMaskProgressThresholds(ProgressThresholds progressThresholds) {
        this.scaleMaskProgressThresholds = progressThresholds;
    }

    public void setScaleProgressThresholds(ProgressThresholds progressThresholds) {
        this.scaleProgressThresholds = progressThresholds;
    }

    public void setScrimColor(int i) {
        this.scrimColor = i;
    }

    public void setShapeMaskProgressThresholds(ProgressThresholds progressThresholds) {
        this.shapeMaskProgressThresholds = progressThresholds;
    }

    public void setStartContainerColor(int i) {
        this.startContainerColor = i;
    }

    public void setStartElevation(float f) {
        this.startElevation = f;
    }

    public void setStartShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.startShapeAppearanceModel = shapeAppearanceModel;
    }

    public void setStartView(View view) {
        this.startView = view;
    }

    public void setStartViewId(int i) {
        this.startViewId = i;
    }

    public void setTransitionDirection(int i) {
        this.transitionDirection = i;
    }
}
