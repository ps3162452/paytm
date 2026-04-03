package com.airbnb.lottie.animation.keyframe;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.ScaleXY;
import java.util.Collections;

/* JADX INFO: loaded from: classes64.dex */
public class TransformKeyframeAnimation {

    @NonNull
    private BaseKeyframeAnimation<PointF, PointF> anchorPoint;

    @Nullable
    private BaseKeyframeAnimation<?, Float> endOpacity;
    private final Matrix matrix = new Matrix();

    @NonNull
    private BaseKeyframeAnimation<Integer, Integer> opacity;

    @NonNull
    private BaseKeyframeAnimation<?, PointF> position;

    @NonNull
    private BaseKeyframeAnimation<Float, Float> rotation;

    @NonNull
    private BaseKeyframeAnimation<ScaleXY, ScaleXY> scale;

    @Nullable
    private FloatKeyframeAnimation skew;

    @Nullable
    private FloatKeyframeAnimation skewAngle;
    private final Matrix skewMatrix1;
    private final Matrix skewMatrix2;
    private final Matrix skewMatrix3;
    private final float[] skewValues;

    @Nullable
    private BaseKeyframeAnimation<?, Float> startOpacity;

    public TransformKeyframeAnimation(AnimatableTransform animatableTransform) {
        this.anchorPoint = animatableTransform.getAnchorPoint() == null ? null : animatableTransform.getAnchorPoint().createAnimation();
        this.position = animatableTransform.getPosition() == null ? null : animatableTransform.getPosition().createAnimation();
        this.scale = animatableTransform.getScale() == null ? null : animatableTransform.getScale().createAnimation();
        this.rotation = animatableTransform.getRotation() == null ? null : animatableTransform.getRotation().createAnimation();
        this.skew = animatableTransform.getSkew() == null ? null : (FloatKeyframeAnimation) animatableTransform.getSkew().createAnimation();
        if (this.skew != null) {
            this.skewMatrix1 = new Matrix();
            this.skewMatrix2 = new Matrix();
            this.skewMatrix3 = new Matrix();
            this.skewValues = new float[9];
        } else {
            this.skewMatrix1 = null;
            this.skewMatrix2 = null;
            this.skewMatrix3 = null;
            this.skewValues = null;
        }
        this.skewAngle = animatableTransform.getSkewAngle() == null ? null : (FloatKeyframeAnimation) animatableTransform.getSkewAngle().createAnimation();
        if (animatableTransform.getOpacity() != null) {
            this.opacity = animatableTransform.getOpacity().createAnimation();
        }
        if (animatableTransform.getStartOpacity() != null) {
            this.startOpacity = animatableTransform.getStartOpacity().createAnimation();
        } else {
            this.startOpacity = null;
        }
        if (animatableTransform.getEndOpacity() != null) {
            this.endOpacity = animatableTransform.getEndOpacity().createAnimation();
        } else {
            this.endOpacity = null;
        }
    }

    private void clearSkewValues() {
        for (int i = 0; i < 9; i++) {
            this.skewValues[i] = 0.0f;
        }
    }

    public void addAnimationsToLayer(BaseLayer baseLayer) {
        baseLayer.addAnimation(this.opacity);
        baseLayer.addAnimation(this.startOpacity);
        baseLayer.addAnimation(this.endOpacity);
        baseLayer.addAnimation(this.anchorPoint);
        baseLayer.addAnimation(this.position);
        baseLayer.addAnimation(this.scale);
        baseLayer.addAnimation(this.rotation);
        baseLayer.addAnimation(this.skew);
        baseLayer.addAnimation(this.skewAngle);
    }

    public void addListener(BaseKeyframeAnimation.AnimationListener animationListener) {
        if (this.opacity != null) {
            this.opacity.addUpdateListener(animationListener);
        }
        if (this.startOpacity != null) {
            this.startOpacity.addUpdateListener(animationListener);
        }
        if (this.endOpacity != null) {
            this.endOpacity.addUpdateListener(animationListener);
        }
        if (this.anchorPoint != null) {
            this.anchorPoint.addUpdateListener(animationListener);
        }
        if (this.position != null) {
            this.position.addUpdateListener(animationListener);
        }
        if (this.scale != null) {
            this.scale.addUpdateListener(animationListener);
        }
        if (this.rotation != null) {
            this.rotation.addUpdateListener(animationListener);
        }
        if (this.skew != null) {
            this.skew.addUpdateListener(animationListener);
        }
        if (this.skewAngle != null) {
            this.skewAngle.addUpdateListener(animationListener);
        }
    }

    public <T> boolean applyValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.TRANSFORM_ANCHOR_POINT) {
            if (this.anchorPoint == null) {
                this.anchorPoint = new ValueCallbackKeyframeAnimation(lottieValueCallback, new PointF());
            } else {
                this.anchorPoint.setValueCallback(lottieValueCallback);
            }
        } else if (t == LottieProperty.TRANSFORM_POSITION) {
            if (this.position == null) {
                this.position = new ValueCallbackKeyframeAnimation(lottieValueCallback, new PointF());
            } else {
                this.position.setValueCallback(lottieValueCallback);
            }
        } else if (t == LottieProperty.TRANSFORM_POSITION_X && (this.position instanceof SplitDimensionPathKeyframeAnimation)) {
            ((SplitDimensionPathKeyframeAnimation) this.position).setXValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.TRANSFORM_POSITION_Y && (this.position instanceof SplitDimensionPathKeyframeAnimation)) {
            ((SplitDimensionPathKeyframeAnimation) this.position).setYValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.TRANSFORM_SCALE) {
            if (this.scale == null) {
                this.scale = new ValueCallbackKeyframeAnimation(lottieValueCallback, new ScaleXY());
            } else {
                this.scale.setValueCallback(lottieValueCallback);
            }
        } else if (t == LottieProperty.TRANSFORM_ROTATION) {
            if (this.rotation == null) {
                this.rotation = new ValueCallbackKeyframeAnimation(lottieValueCallback, Float.valueOf(0.0f));
            } else {
                this.rotation.setValueCallback(lottieValueCallback);
            }
        } else if (t == LottieProperty.TRANSFORM_OPACITY) {
            if (this.opacity == null) {
                this.opacity = new ValueCallbackKeyframeAnimation(lottieValueCallback, 100);
            } else {
                this.opacity.setValueCallback(lottieValueCallback);
            }
        } else if (t != LottieProperty.TRANSFORM_START_OPACITY || this.startOpacity == null) {
            if (t != LottieProperty.TRANSFORM_END_OPACITY || this.endOpacity == null) {
                if (t == LottieProperty.TRANSFORM_SKEW && this.skew != null) {
                    if (this.skew == null) {
                        this.skew = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(Float.valueOf(0.0f))));
                    }
                    this.skew.setValueCallback(lottieValueCallback);
                } else {
                    if (t != LottieProperty.TRANSFORM_SKEW_ANGLE || this.skewAngle == null) {
                        return false;
                    }
                    if (this.skewAngle == null) {
                        this.skewAngle = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(Float.valueOf(0.0f))));
                    }
                    this.skewAngle.setValueCallback(lottieValueCallback);
                }
            } else if (this.endOpacity == null) {
                this.endOpacity = new ValueCallbackKeyframeAnimation(lottieValueCallback, 100);
            } else {
                this.endOpacity.setValueCallback(lottieValueCallback);
            }
        } else if (this.startOpacity == null) {
            this.startOpacity = new ValueCallbackKeyframeAnimation(lottieValueCallback, 100);
        } else {
            this.startOpacity.setValueCallback(lottieValueCallback);
        }
        return true;
    }

    @Nullable
    public BaseKeyframeAnimation<?, Float> getEndOpacity() {
        return this.endOpacity;
    }

    public Matrix getMatrix() {
        this.matrix.reset();
        if (this.position != null) {
            PointF value = this.position.getValue();
            if (value.x != 0.0f || value.y != 0.0f) {
                this.matrix.preTranslate(value.x, value.y);
            }
        }
        if (this.rotation != null) {
            float fFloatValue = this.rotation instanceof ValueCallbackKeyframeAnimation ? this.rotation.getValue().floatValue() : ((FloatKeyframeAnimation) this.rotation).getFloatValue();
            if (fFloatValue != 0.0f) {
                this.matrix.preRotate(fFloatValue);
            }
        }
        if (this.skew != null) {
            float fCos = this.skewAngle == null ? 0.0f : (float) Math.cos(Math.toRadians((-this.skewAngle.getFloatValue()) + 90.0f));
            float fSin = this.skewAngle == null ? 1.0f : (float) Math.sin(Math.toRadians((-this.skewAngle.getFloatValue()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(this.skew.getFloatValue()));
            clearSkewValues();
            this.skewValues[0] = fCos;
            this.skewValues[1] = fSin;
            this.skewValues[3] = -fSin;
            this.skewValues[4] = fCos;
            this.skewValues[8] = 1.0f;
            this.skewMatrix1.setValues(this.skewValues);
            clearSkewValues();
            this.skewValues[0] = 1.0f;
            this.skewValues[3] = fTan;
            this.skewValues[4] = 1.0f;
            this.skewValues[8] = 1.0f;
            this.skewMatrix2.setValues(this.skewValues);
            clearSkewValues();
            this.skewValues[0] = fCos;
            this.skewValues[1] = -fSin;
            this.skewValues[3] = fSin;
            this.skewValues[4] = fCos;
            this.skewValues[8] = 1.0f;
            this.skewMatrix3.setValues(this.skewValues);
            this.skewMatrix2.preConcat(this.skewMatrix1);
            this.skewMatrix3.preConcat(this.skewMatrix2);
            this.matrix.preConcat(this.skewMatrix3);
        }
        if (this.scale != null) {
            ScaleXY value2 = this.scale.getValue();
            if (value2.getScaleX() != 1.0f || value2.getScaleY() != 1.0f) {
                this.matrix.preScale(value2.getScaleX(), value2.getScaleY());
            }
        }
        if (this.anchorPoint != null) {
            PointF value3 = this.anchorPoint.getValue();
            if (value3.x != 0.0f || value3.y != 0.0f) {
                this.matrix.preTranslate(-value3.x, -value3.y);
            }
        }
        return this.matrix;
    }

    public Matrix getMatrixForRepeater(float f) {
        PointF value = this.position == null ? null : this.position.getValue();
        ScaleXY value2 = this.scale == null ? null : this.scale.getValue();
        this.matrix.reset();
        if (value != null) {
            this.matrix.preTranslate(value.x * f, value.y * f);
        }
        if (value2 != null) {
            this.matrix.preScale((float) Math.pow(value2.getScaleX(), f), (float) Math.pow(value2.getScaleY(), f));
        }
        if (this.rotation != null) {
            float fFloatValue = this.rotation.getValue().floatValue();
            PointF value3 = this.anchorPoint != null ? this.anchorPoint.getValue() : null;
            this.matrix.preRotate(fFloatValue * f, value3 == null ? 0.0f : value3.x, value3 == null ? 0.0f : value3.y);
        }
        return this.matrix;
    }

    @Nullable
    public BaseKeyframeAnimation<?, Integer> getOpacity() {
        return this.opacity;
    }

    @Nullable
    public BaseKeyframeAnimation<?, Float> getStartOpacity() {
        return this.startOpacity;
    }

    public void setProgress(float f) {
        if (this.opacity != null) {
            this.opacity.setProgress(f);
        }
        if (this.startOpacity != null) {
            this.startOpacity.setProgress(f);
        }
        if (this.endOpacity != null) {
            this.endOpacity.setProgress(f);
        }
        if (this.anchorPoint != null) {
            this.anchorPoint.setProgress(f);
        }
        if (this.position != null) {
            this.position.setProgress(f);
        }
        if (this.scale != null) {
            this.scale.setProgress(f);
        }
        if (this.rotation != null) {
            this.rotation.setProgress(f);
        }
        if (this.skew != null) {
            this.skew.setProgress(f);
        }
        if (this.skewAngle != null) {
            this.skewAngle.setProgress(f);
        }
    }
}
