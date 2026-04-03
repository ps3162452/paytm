package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.DrawingContent;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.MaskKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.KeyPathElement;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public abstract class BaseLayer implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElement {
    private static final int CLIP_SAVE_FLAG = 2;
    private static final int CLIP_TO_LAYER_SAVE_FLAG = 16;
    private static final int MATRIX_SAVE_FLAG = 1;
    private static final int SAVE_FLAGS = 19;
    private final String drawTraceName;

    @Nullable
    private FloatKeyframeAnimation inOutAnimation;
    final Layer layerModel;
    final LottieDrawable lottieDrawable;

    @Nullable
    private MaskKeyframeAnimation mask;

    @Nullable
    private BaseLayer matteLayer;
    private boolean outlineMasksAndMattes;

    @Nullable
    private Paint outlineMasksAndMattesPaint;

    @Nullable
    private BaseLayer parentLayer;
    private List<BaseLayer> parentLayers;
    final TransformKeyframeAnimation transform;
    private final Path path = new Path();
    private final Matrix matrix = new Matrix();
    private final Paint contentPaint = new LPaint(1);
    private final Paint dstInPaint = new LPaint(1, PorterDuff.Mode.DST_IN);
    private final Paint dstOutPaint = new LPaint(1, PorterDuff.Mode.DST_OUT);
    private final Paint mattePaint = new LPaint(1);
    private final Paint clearPaint = new LPaint(PorterDuff.Mode.CLEAR);
    private final RectF rect = new RectF();
    private final RectF maskBoundsRect = new RectF();
    private final RectF matteBoundsRect = new RectF();
    private final RectF tempMaskBoundsRect = new RectF();
    final Matrix boundsMatrix = new Matrix();
    private final List<BaseKeyframeAnimation<?, ?>> animations = new ArrayList();
    private boolean visible = true;

    /* JADX INFO: renamed from: com.airbnb.lottie.model.layer.BaseLayer$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final int[] $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode = new int[Mask.MaskMode.values().length];
        static final int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType;

        static {
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType = new int[Layer.LayerType.values().length];
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    BaseLayer(LottieDrawable lottieDrawable, Layer layer) {
        this.lottieDrawable = lottieDrawable;
        this.layerModel = layer;
        this.drawTraceName = layer.getName() + NPStringFog.decode(new byte[]{70, 5, 66, 85, 64}, "ea047f", 7052);
        if (layer.getMatteType() == Layer.MatteType.INVERT) {
            this.mattePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            this.mattePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        this.transform = layer.getTransform().createAnimation();
        this.transform.addListener(this);
        if (layer.getMasks() != null && !layer.getMasks().isEmpty()) {
            this.mask = new MaskKeyframeAnimation(layer.getMasks());
            Iterator<BaseKeyframeAnimation<ShapeData, Path>> it = this.mask.getMaskAnimations().iterator();
            while (it.hasNext()) {
                it.next().addUpdateListener(this);
            }
            for (BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation : this.mask.getOpacityAnimations()) {
                addAnimation(baseKeyframeAnimation);
                baseKeyframeAnimation.addUpdateListener(this);
            }
        }
        setupInOutAnimations();
    }

    private void applyAddMask(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        this.contentPaint.setAlpha((int) (baseKeyframeAnimation2.getValue().intValue() * 2.55f));
        canvas.drawPath(this.path, this.contentPaint);
    }

    private void applyIntersectMask(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.saveLayerCompat(canvas, this.rect, this.dstInPaint);
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        this.contentPaint.setAlpha((int) (baseKeyframeAnimation2.getValue().intValue() * 2.55f));
        canvas.drawPath(this.path, this.contentPaint);
        canvas.restore();
    }

    private void applyInvertedAddMask(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.saveLayerCompat(canvas, this.rect, this.contentPaint);
        canvas.drawRect(this.rect, this.contentPaint);
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        this.contentPaint.setAlpha((int) (baseKeyframeAnimation2.getValue().intValue() * 2.55f));
        canvas.drawPath(this.path, this.dstOutPaint);
        canvas.restore();
    }

    private void applyInvertedIntersectMask(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.saveLayerCompat(canvas, this.rect, this.dstInPaint);
        canvas.drawRect(this.rect, this.contentPaint);
        this.dstOutPaint.setAlpha((int) (baseKeyframeAnimation2.getValue().intValue() * 2.55f));
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        canvas.drawPath(this.path, this.dstOutPaint);
        canvas.restore();
    }

    private void applyInvertedSubtractMask(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.saveLayerCompat(canvas, this.rect, this.dstOutPaint);
        canvas.drawRect(this.rect, this.contentPaint);
        this.dstOutPaint.setAlpha((int) (baseKeyframeAnimation2.getValue().intValue() * 2.55f));
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        canvas.drawPath(this.path, this.dstOutPaint);
        canvas.restore();
    }

    private void applyMasks(Canvas canvas, Matrix matrix) {
        L.beginSection(NPStringFog.decode(new byte[]{121, 86, 29, 83, 74, 18, 70, 86, 18, 83, 116, 80, 76, 82, 22}, "57d681", true, false));
        Utils.saveLayerCompat(canvas, this.rect, this.dstInPaint, 19);
        if (Build.VERSION.SDK_INT < 28) {
            clearCanvas(canvas);
        }
        L.endSection(NPStringFog.decode(new byte[]{47, 85, 24, 0, 65, 69, 16, 85, 23, 0, 127, 7, 26, 81, 19}, "c4ae3f", false, true));
        for (int i = 0; i < this.mask.getMasks().size(); i++) {
            Mask mask = this.mask.getMasks().get(i);
            BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation = this.mask.getMaskAnimations().get(i);
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2 = this.mask.getOpacityAnimations().get(i);
            switch (AnonymousClass2.$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[mask.getMaskMode().ordinal()]) {
                case 1:
                    if (areAllMasksNone()) {
                        this.contentPaint.setAlpha(255);
                        canvas.drawRect(this.rect, this.contentPaint);
                    }
                    break;
                case 2:
                    if (i == 0) {
                        this.contentPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
                        this.contentPaint.setAlpha(255);
                        canvas.drawRect(this.rect, this.contentPaint);
                    }
                    if (mask.isInverted()) {
                        applyInvertedSubtractMask(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                    } else {
                        applySubtractMask(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                    }
                    break;
                case 3:
                    if (mask.isInverted()) {
                        applyInvertedIntersectMask(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                    } else {
                        applyIntersectMask(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                    }
                    break;
                case 4:
                    if (mask.isInverted()) {
                        applyInvertedAddMask(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                    } else {
                        applyAddMask(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                    }
                    break;
            }
        }
        L.beginSection(NPStringFog.decode(new byte[]{124, 89, 31, 6, 71, 70, 66, 93, 21, 23, 90, 23, 85, 116, 7, 26, 80, 23}, "08fc5e", false, false));
        canvas.restore();
        L.endSection(NPStringFog.decode(new byte[]{45, 89, 31, 93, 67, 70, 19, 93, 21, 76, 94, 23, 4, 116, 7, 65, 84, 23}, "a8f81e", true));
    }

    private void applySubtractMask(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        canvas.drawPath(this.path, this.dstOutPaint);
    }

    private boolean areAllMasksNone() {
        if (this.mask.getMaskAnimations().isEmpty()) {
            return false;
        }
        for (int i = 0; i < this.mask.getMasks().size(); i++) {
            if (this.mask.getMasks().get(i).getMaskMode() != Mask.MaskMode.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void buildParentLayerListIfNeeded() {
        if (this.parentLayers != null) {
            return;
        }
        if (this.parentLayer == null) {
            this.parentLayers = Collections.emptyList();
            return;
        }
        this.parentLayers = new ArrayList();
        for (BaseLayer baseLayer = this.parentLayer; baseLayer != null; baseLayer = baseLayer.parentLayer) {
            this.parentLayers.add(baseLayer);
        }
    }

    private void clearCanvas(Canvas canvas) {
        L.beginSection(NPStringFog.decode(new byte[]{47, 83, 24, 92, 69, 17, 0, 94, 4, 88, 69, 126, 2, 75, 4, 75}, "c2a972", 6.9951456E8f));
        canvas.drawRect(this.rect.left - 1.0f, this.rect.top - 1.0f, this.rect.right + 1.0f, 1.0f + this.rect.bottom, this.clearPaint);
        L.endSection(NPStringFog.decode(new byte[]{42, 82, 72, 84, 65, 18, 5, 95, 84, 80, 65, 125, 7, 74, 84, 67}, "f31131", true));
    }

    @Nullable
    static BaseLayer forModel(Layer layer, LottieDrawable lottieDrawable, LottieComposition lottieComposition) {
        switch (AnonymousClass2.$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[layer.getLayerType().ordinal()]) {
            case 1:
                return new ShapeLayer(lottieDrawable, layer);
            case 2:
                return new CompositionLayer(lottieDrawable, layer, lottieComposition.getPrecomps(layer.getRefId()), lottieComposition);
            case 3:
                return new SolidLayer(lottieDrawable, layer);
            case 4:
                return new ImageLayer(lottieDrawable, layer);
            case 5:
                return new NullLayer(lottieDrawable, layer);
            case 6:
                return new TextLayer(lottieDrawable, layer);
            default:
                Logger.warning(NPStringFog.decode(new byte[]{101, 15, 15, 87, 91, 67, 94, 65, 8, 88, 77, 81, 66, 65, 16, 64, 68, 81, 16}, "0ad944", -32510) + layer.getLayerType());
                return null;
        }
    }

    private void intersectBoundsWithMask(RectF rectF, Matrix matrix) {
        this.maskBoundsRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (hasMasksOnThisLayer()) {
            int size = this.mask.getMasks().size();
            for (int i = 0; i < size; i++) {
                Mask mask = this.mask.getMasks().get(i);
                this.path.set(this.mask.getMaskAnimations().get(i).getValue());
                this.path.transform(matrix);
                switch (AnonymousClass2.$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[mask.getMaskMode().ordinal()]) {
                    case 1:
                    case 2:
                        return;
                    case 3:
                    case 4:
                        if (mask.isInverted()) {
                            return;
                        }
                        break;
                }
                this.path.computeBounds(this.tempMaskBoundsRect, false);
                if (i == 0) {
                    this.maskBoundsRect.set(this.tempMaskBoundsRect);
                } else {
                    this.maskBoundsRect.set(Math.min(this.maskBoundsRect.left, this.tempMaskBoundsRect.left), Math.min(this.maskBoundsRect.top, this.tempMaskBoundsRect.top), Math.max(this.maskBoundsRect.right, this.tempMaskBoundsRect.right), Math.max(this.maskBoundsRect.bottom, this.tempMaskBoundsRect.bottom));
                }
            }
            if (rectF.intersect(this.maskBoundsRect)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void intersectBoundsWithMatte(RectF rectF, Matrix matrix) {
        if (hasMatteOnThisLayer() && this.layerModel.getMatteType() != Layer.MatteType.INVERT) {
            this.matteBoundsRect.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.matteLayer.getBounds(this.matteBoundsRect, matrix, true);
            if (rectF.intersect(this.matteBoundsRect)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void invalidateSelf() {
        this.lottieDrawable.invalidateSelf();
    }

    private void recordRenderTime(float f) {
        this.lottieDrawable.getComposition().getPerformanceTracker().recordRenderTime(this.layerModel.getName(), f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVisible(boolean z) {
        if (z != this.visible) {
            this.visible = z;
            invalidateSelf();
        }
    }

    private void setupInOutAnimations() {
        if (this.layerModel.getInOutKeyframes().isEmpty()) {
            setVisible(true);
            return;
        }
        this.inOutAnimation = new FloatKeyframeAnimation(this.layerModel.getInOutKeyframes());
        this.inOutAnimation.setIsDiscrete();
        this.inOutAnimation.addUpdateListener(new BaseKeyframeAnimation.AnimationListener(this) { // from class: com.airbnb.lottie.model.layer.BaseLayer.1
            final BaseLayer this$0;

            {
                this.this$0 = this;
            }

            @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
            public void onValueChanged() {
                this.this$0.setVisible(this.this$0.inOutAnimation.getFloatValue() == 1.0f);
            }
        });
        setVisible(this.inOutAnimation.getValue().floatValue() == 1.0f);
        addAnimation(this.inOutAnimation);
    }

    public void addAnimation(@Nullable BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        if (baseKeyframeAnimation == null) {
            return;
        }
        this.animations.add(baseKeyframeAnimation);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    @CallSuper
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        this.transform.applyValueCallback(t, lottieValueCallback);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix matrix, int i) {
        L.beginSection(this.drawTraceName);
        if (!this.visible || this.layerModel.isHidden()) {
            L.endSection(this.drawTraceName);
            return;
        }
        buildParentLayerListIfNeeded();
        L.beginSection(NPStringFog.decode(new byte[]{122, 83, 26, 7, 19, 19, 70, 83, 17, 7, 15, 68, 123, 83, 23, 16, 8, 72}, "62cba0", true, false));
        this.matrix.reset();
        this.matrix.set(matrix);
        for (int size = this.parentLayers.size() - 1; size >= 0; size--) {
            this.matrix.preConcat(this.parentLayers.get(size).transform.getMatrix());
        }
        L.endSection(NPStringFog.decode(new byte[]{120, 5, 27, 1, 16, 65, 68, 5, 16, 1, 12, 22, 121, 5, 22, 22, 11, 26}, "4dbdbb", -66987230L));
        int iIntValue = (int) ((((this.transform.getOpacity() == null ? 100 : this.transform.getOpacity().getValue().intValue()) * (i / 255.0f)) / 100.0f) * 255.0f);
        if (!hasMatteOnThisLayer() && !hasMasksOnThisLayer()) {
            this.matrix.preConcat(this.transform.getMatrix());
            L.beginSection(NPStringFog.decode(new byte[]{41, 5, 28, 4, 69, 22, 1, 22, 4, 22, 123, 84, 28, 1, 23}, "edea75", -21641));
            drawLayer(canvas, this.matrix, iIntValue);
            L.endSection(NPStringFog.decode(new byte[]{127, 80, 65, 92, 71, 17, 87, 67, 89, 78, 121, 83, 74, 84, 74}, "318952", true, true));
            recordRenderTime(L.endSection(this.drawTraceName));
            return;
        }
        L.beginSection(NPStringFog.decode(new byte[]{124, 5, 74, 93, 22, 64, 83, 11, 94, 72, 17, 23, 85, 38, 92, 77, 10, 7, 67}, "0d38dc", 2.004188316E9d));
        getBounds(this.rect, this.matrix, false);
        intersectBoundsWithMatte(this.rect, matrix);
        this.matrix.preConcat(this.transform.getMatrix());
        intersectBoundsWithMask(this.rect, this.matrix);
        if (!this.rect.intersect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight())) {
            this.rect.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        L.endSection(NPStringFog.decode(new byte[]{123, 87, 78, 0, 75, 20, 84, 89, 90, 21, 76, 67, 82, 116, 88, 16, 87, 83, 68}, "767e97", 241137723L));
        if (this.rect.width() >= 1.0f && this.rect.height() >= 1.0f) {
            L.beginSection(NPStringFog.decode(new byte[]{42, 89, 24, 93, 74, 69, 21, 89, 23, 93, 116, 7, 31, 93, 19}, "f8a88f", 20091));
            this.contentPaint.setAlpha(255);
            Utils.saveLayerCompat(canvas, this.rect, this.contentPaint);
            L.endSection(NPStringFog.decode(new byte[]{47, 84, 27, 7, 64, 66, 16, 84, 20, 7, 126, 0, 26, 80, 16}, "c5bb2a", false, true));
            clearCanvas(canvas);
            L.beginSection(NPStringFog.decode(new byte[]{125, 84, 77, 87, 71, 20, 85, 71, 85, 69, 121, 86, 72, 80, 70}, "154257", 2.0136326E9f));
            drawLayer(canvas, this.matrix, iIntValue);
            L.endSection(NPStringFog.decode(new byte[]{46, 87, 79, 85, 17, 16, 6, 68, 87, 71, 47, 82, 27, 83, 68}, "b660c3", true, true));
            if (hasMasksOnThisLayer()) {
                applyMasks(canvas, this.matrix);
            }
            if (hasMatteOnThisLayer()) {
                L.beginSection(NPStringFog.decode(new byte[]{117, 83, 76, 92, 66, 66, 93, 64, 84, 78, 125, 0, 77, 70, 80}, "92590a", false));
                L.beginSection(NPStringFog.decode(new byte[]{123, 88, 79, 7, 68, 22, 68, 88, 64, 7, 122, 84, 78, 92, 68}, "796b65", -12217));
                Utils.saveLayerCompat(canvas, this.rect, this.mattePaint, 19);
                L.endSection(NPStringFog.decode(new byte[]{116, 81, 28, 7, 70, 21, 75, 81, 19, 7, 120, 87, 65, 85, 23}, "80eb46", false, true));
                clearCanvas(canvas);
                this.matteLayer.draw(canvas, matrix, iIntValue);
                L.beginSection(NPStringFog.decode(new byte[]{117, 80, 29, 85, 66, 69, 75, 84, 23, 68, 95, 20, 92, 125, 5, 73, 85, 20}, "91d00f", -2695));
                canvas.restore();
                L.endSection(NPStringFog.decode(new byte[]{123, 4, 64, 87, 64, 22, 69, 0, 74, 70, 93, 71, 82, 41, 88, 75, 87, 71}, "7e9225", -4364));
                L.endSection(NPStringFog.decode(new byte[]{126, 0, 78, 84, 64, 70, 86, 19, 86, 70, 127, 4, 70, 21, 82}, "2a712e", 2.1580715E8f));
            }
            L.beginSection(NPStringFog.decode(new byte[]{45, 0, 78, 82, 64, 70, 19, 4, 68, 67, 93, 23, 4, 45, 86, 78, 87, 23}, "aa772e", -4.08642474E8d));
            canvas.restore();
            L.endSection(NPStringFog.decode(new byte[]{124, 81, 72, 0, 66, 65, 66, 85, 66, 17, 95, 16, 85, 124, 80, 28, 85, 16}, "001e0b", -21978));
        }
        if (this.outlineMasksAndMattes && this.outlineMasksAndMattesPaint != null) {
            this.outlineMasksAndMattesPaint.setStyle(Paint.Style.STROKE);
            this.outlineMasksAndMattesPaint.setColor(-251901);
            this.outlineMasksAndMattesPaint.setStrokeWidth(4.0f);
            canvas.drawRect(this.rect, this.outlineMasksAndMattesPaint);
            this.outlineMasksAndMattesPaint.setStyle(Paint.Style.FILL);
            this.outlineMasksAndMattesPaint.setColor(1357638635);
            canvas.drawRect(this.rect, this.outlineMasksAndMattesPaint);
        }
        recordRenderTime(L.endSection(this.drawTraceName));
    }

    abstract void drawLayer(Canvas canvas, Matrix matrix, int i);

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    @CallSuper
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        this.rect.set(0.0f, 0.0f, 0.0f, 0.0f);
        buildParentLayerListIfNeeded();
        this.boundsMatrix.set(matrix);
        if (z) {
            if (this.parentLayers != null) {
                for (int size = this.parentLayers.size() - 1; size >= 0; size--) {
                    this.boundsMatrix.preConcat(this.parentLayers.get(size).transform.getMatrix());
                }
            } else if (this.parentLayer != null) {
                this.boundsMatrix.preConcat(this.parentLayer.transform.getMatrix());
            }
        }
        this.boundsMatrix.preConcat(this.transform.getMatrix());
    }

    Layer getLayerModel() {
        return this.layerModel;
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.layerModel.getName();
    }

    boolean hasMasksOnThisLayer() {
        return (this.mask == null || this.mask.getMaskAnimations().isEmpty()) ? false : true;
    }

    boolean hasMatteOnThisLayer() {
        return this.matteLayer != null;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        invalidateSelf();
    }

    public void removeAnimation(BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        this.animations.remove(baseKeyframeAnimation);
    }

    void resolveChildKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        if (this.matteLayer != null) {
            KeyPath keyPathAddKey = keyPath2.addKey(this.matteLayer.getName());
            if (keyPath.fullyResolvesTo(this.matteLayer.getName(), i)) {
                list.add(keyPathAddKey.resolve(this.matteLayer));
            }
            if (keyPath.propagateToChildren(getName(), i)) {
                this.matteLayer.resolveChildKeyPath(keyPath, keyPath.incrementDepthBy(this.matteLayer.getName(), i) + i, list, keyPathAddKey);
            }
        }
        if (keyPath.matches(getName(), i)) {
            if (!NPStringFog.decode(new byte[]{61, 103, 91, 14, 89, 21, 3, 81, 86, 4, 69}, "b88a7a", -21288).equals(getName())) {
                keyPath2 = keyPath2.addKey(getName());
                if (keyPath.fullyResolvesTo(getName(), i)) {
                    list.add(keyPath2.resolve(this));
                }
            }
            if (keyPath.propagateToChildren(getName(), i)) {
                resolveChildKeyPath(keyPath, keyPath.incrementDepthBy(getName(), i) + i, list, keyPath2);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
    }

    void setMatteLayer(@Nullable BaseLayer baseLayer) {
        this.matteLayer = baseLayer;
    }

    void setOutlineMasksAndMattes(boolean z) {
        if (z && this.outlineMasksAndMattesPaint == null) {
            this.outlineMasksAndMattesPaint = new LPaint();
        }
        this.outlineMasksAndMattes = z;
    }

    void setParentLayer(@Nullable BaseLayer baseLayer) {
        this.parentLayer = baseLayer;
    }

    void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.transform.setProgress(f);
        if (this.mask != null) {
            for (int i = 0; i < this.mask.getMaskAnimations().size(); i++) {
                this.mask.getMaskAnimations().get(i).setProgress(f);
            }
        }
        if (this.layerModel.getTimeStretch() != 0.0f) {
            f /= this.layerModel.getTimeStretch();
        }
        if (this.inOutAnimation != null) {
            this.inOutAnimation.setProgress(f / this.layerModel.getTimeStretch());
        }
        if (this.matteLayer != null) {
            this.matteLayer.setProgress(this.matteLayer.layerModel.getTimeStretch() * f);
        }
        for (int i2 = 0; i2 < this.animations.size(); i2++) {
            this.animations.get(i2).setProgress(f);
        }
    }
}
