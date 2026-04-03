package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class CompositionLayer extends BaseLayer {

    @Nullable
    private Boolean hasMasks;

    @Nullable
    private Boolean hasMatte;
    private Paint layerPaint;
    private final List<BaseLayer> layers;
    private final RectF newClipRect;
    private final RectF rect;

    @Nullable
    private BaseKeyframeAnimation<Float, Float> timeRemapping;

    /* JADX INFO: renamed from: com.airbnb.lottie.model.layer.CompositionLayer$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType = new int[Layer.MatteType.values().length];

        static {
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public CompositionLayer(LottieDrawable lottieDrawable, Layer layer, List<Layer> list, LottieComposition lottieComposition) {
        BaseLayer baseLayer;
        BaseLayer baseLayer2;
        super(lottieDrawable, layer);
        this.layers = new ArrayList();
        this.rect = new RectF();
        this.newClipRect = new RectF();
        this.layerPaint = new Paint();
        AnimatableFloatValue timeRemapping = layer.getTimeRemapping();
        if (timeRemapping != null) {
            this.timeRemapping = timeRemapping.createAnimation();
            addAnimation(this.timeRemapping);
            this.timeRemapping.addUpdateListener(this);
        } else {
            this.timeRemapping = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(lottieComposition.getLayers().size());
        int size = list.size() - 1;
        BaseLayer baseLayer3 = null;
        while (size >= 0) {
            Layer layer2 = list.get(size);
            BaseLayer baseLayerForModel = BaseLayer.forModel(layer2, lottieDrawable, lottieComposition);
            if (baseLayerForModel != null) {
                longSparseArray.put(baseLayerForModel.getLayerModel().getId(), baseLayerForModel);
                if (baseLayer3 == null) {
                    this.layers.add(0, baseLayerForModel);
                    switch (AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[layer2.getMatteType().ordinal()]) {
                        case 1:
                        case 2:
                            baseLayer2 = baseLayerForModel;
                            break;
                        default:
                            baseLayer2 = baseLayer3;
                            break;
                    }
                } else {
                    baseLayer3.setMatteLayer(baseLayerForModel);
                    baseLayer2 = null;
                }
            } else {
                baseLayer2 = baseLayer3;
            }
            size--;
            baseLayer3 = baseLayer2;
        }
        for (int i = 0; i < longSparseArray.size(); i++) {
            BaseLayer baseLayer4 = (BaseLayer) longSparseArray.get(longSparseArray.keyAt(i));
            if (baseLayer4 != null && (baseLayer = (BaseLayer) longSparseArray.get(baseLayer4.getLayerModel().getParentId())) != null) {
                baseLayer4.setParentLayer(baseLayer);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.addValueCallback(t, lottieValueCallback);
        if (t == LottieProperty.TIME_REMAP) {
            if (lottieValueCallback == null) {
                if (this.timeRemapping != null) {
                    this.timeRemapping.setValueCallback(null);
                }
            } else {
                this.timeRemapping = new ValueCallbackKeyframeAnimation(lottieValueCallback);
                this.timeRemapping.addUpdateListener(this);
                addAnimation(this.timeRemapping);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    void drawLayer(Canvas canvas, Matrix matrix, int i) {
        boolean z = false;
        L.beginSection(NPStringFog.decode(new byte[]{122, 92, 92, 22, 11, 67, 80, 71, 88, 9, 10, 124, 88, 74, 84, 20, 71, 84, 75, 82, 70}, "931fd0", false));
        this.newClipRect.set(0.0f, 0.0f, this.layerModel.getPreCompWidth(), this.layerModel.getPreCompHeight());
        matrix.mapRect(this.newClipRect);
        if (this.lottieDrawable.isApplyingOpacityToLayersEnabled() && this.layers.size() > 1 && i != 255) {
            z = true;
        }
        if (z) {
            this.layerPaint.setAlpha(i);
            Utils.saveLayerCompat(canvas, this.newClipRect, this.layerPaint);
        } else {
            canvas.save();
        }
        if (z) {
            i = 255;
        }
        for (int size = this.layers.size() - 1; size >= 0; size--) {
            if (!this.newClipRect.isEmpty() ? canvas.clipRect(this.newClipRect) : true) {
                this.layers.get(size).draw(canvas, matrix, i);
            }
        }
        canvas.restore();
        L.endSection(NPStringFog.decode(new byte[]{33, 91, 84, 22, 88, 23, 11, 64, 80, 9, 89, 40, 3, 77, 92, 20, 20, 0, 16, 85, 78}, "b49f7d", true, true));
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        for (int size = this.layers.size() - 1; size >= 0; size--) {
            this.rect.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.layers.get(size).getBounds(this.rect, this.boundsMatrix, true);
            rectF.union(this.rect);
        }
    }

    public boolean hasMasks() {
        if (this.hasMasks == null) {
            for (int size = this.layers.size() - 1; size >= 0; size--) {
                BaseLayer baseLayer = this.layers.get(size);
                if (baseLayer instanceof ShapeLayer) {
                    if (baseLayer.hasMasksOnThisLayer()) {
                        this.hasMasks = true;
                        return true;
                    }
                } else if ((baseLayer instanceof CompositionLayer) && ((CompositionLayer) baseLayer).hasMasks()) {
                    this.hasMasks = true;
                    return true;
                }
            }
            this.hasMasks = false;
        }
        return this.hasMasks.booleanValue();
    }

    public boolean hasMatte() {
        if (this.hasMatte == null) {
            if (hasMatteOnThisLayer()) {
                this.hasMatte = true;
                return true;
            }
            for (int size = this.layers.size() - 1; size >= 0; size--) {
                if (this.layers.get(size).hasMatteOnThisLayer()) {
                    this.hasMatte = true;
                    return true;
                }
            }
            this.hasMatte = false;
        }
        return this.hasMatte.booleanValue();
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    protected void resolveChildKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.layers.size()) {
                return;
            }
            this.layers.get(i3).resolveKeyPath(keyPath, i, list, keyPath2);
            i2 = i3 + 1;
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public void setOutlineMasksAndMattes(boolean z) {
        super.setOutlineMasksAndMattes(z);
        Iterator<BaseLayer> it = this.layers.iterator();
        while (it.hasNext()) {
            it.next().setOutlineMasksAndMattes(z);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        super.setProgress(f);
        if (this.timeRemapping != null) {
            f = ((this.timeRemapping.getValue().floatValue() * this.layerModel.getComposition().getFrameRate()) - this.layerModel.getComposition().getStartFrame()) / (this.lottieDrawable.getComposition().getDurationFrames() + 0.01f);
        }
        if (this.timeRemapping == null) {
            f -= this.layerModel.getStartProgress();
        }
        if (this.layerModel.getTimeStretch() != 0.0f) {
            f /= this.layerModel.getTimeStretch();
        }
        for (int size = this.layers.size() - 1; size >= 0; size--) {
            this.layers.get(size).setProgress(f);
        }
    }
}
