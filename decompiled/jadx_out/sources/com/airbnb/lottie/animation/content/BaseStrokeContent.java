package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.IntegerKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public abstract class BaseStrokeContent implements BaseKeyframeAnimation.AnimationListener, KeyPathElementContent, DrawingContent {

    @Nullable
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> colorFilterAnimation;
    private final List<BaseKeyframeAnimation<?, Float>> dashPatternAnimations;

    @Nullable
    private final BaseKeyframeAnimation<?, Float> dashPatternOffsetAnimation;
    private final float[] dashPatternValues;
    protected final BaseLayer layer;
    private final LottieDrawable lottieDrawable;
    private final BaseKeyframeAnimation<?, Integer> opacityAnimation;
    private final BaseKeyframeAnimation<?, Float> widthAnimation;
    private final PathMeasure pm = new PathMeasure();
    private final Path path = new Path();
    private final Path trimPathPath = new Path();
    private final RectF rect = new RectF();
    private final List<PathGroup> pathGroups = new ArrayList();
    final Paint paint = new LPaint(1);

    private static final class PathGroup {
        private final List<PathContent> paths;

        @Nullable
        private final TrimPathContent trimPath;

        private PathGroup(@Nullable TrimPathContent trimPathContent) {
            this.paths = new ArrayList();
            this.trimPath = trimPathContent;
        }
    }

    BaseStrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Paint.Cap cap, Paint.Join join, float f, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue, List<AnimatableFloatValue> list, AnimatableFloatValue animatableFloatValue2) {
        this.lottieDrawable = lottieDrawable;
        this.layer = baseLayer;
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(cap);
        this.paint.setStrokeJoin(join);
        this.paint.setStrokeMiter(f);
        this.opacityAnimation = animatableIntegerValue.createAnimation();
        this.widthAnimation = animatableFloatValue.createAnimation();
        if (animatableFloatValue2 == null) {
            this.dashPatternOffsetAnimation = null;
        } else {
            this.dashPatternOffsetAnimation = animatableFloatValue2.createAnimation();
        }
        this.dashPatternAnimations = new ArrayList(list.size());
        this.dashPatternValues = new float[list.size()];
        for (int i = 0; i < list.size(); i++) {
            this.dashPatternAnimations.add(list.get(i).createAnimation());
        }
        baseLayer.addAnimation(this.opacityAnimation);
        baseLayer.addAnimation(this.widthAnimation);
        for (int i2 = 0; i2 < this.dashPatternAnimations.size(); i2++) {
            baseLayer.addAnimation(this.dashPatternAnimations.get(i2));
        }
        if (this.dashPatternOffsetAnimation != null) {
            baseLayer.addAnimation(this.dashPatternOffsetAnimation);
        }
        this.opacityAnimation.addUpdateListener(this);
        this.widthAnimation.addUpdateListener(this);
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.dashPatternAnimations.get(i3).addUpdateListener(this);
        }
        if (this.dashPatternOffsetAnimation != null) {
            this.dashPatternOffsetAnimation.addUpdateListener(this);
        }
    }

    private void applyDashPatternIfNeeded(Matrix matrix) {
        int i = 0;
        L.beginSection(NPStringFog.decode(new byte[]{96, 70, 19, 93, 92, 3, 112, 93, 15, 70, 82, 8, 71, 17, 0, 66, 71, 10, 74, 118, 0, 65, 95, 54, 82, 70, 21, 87, 69, 8}, "32a27f", 16755));
        if (this.dashPatternAnimations.isEmpty()) {
            L.endSection(NPStringFog.decode(new byte[]{48, 21, 20, 95, 83, 81, 32, 14, 8, 68, 93, 90, 23, 66, 7, 64, 72, 88, 26, 37, 7, 67, 80, 100, 2, 21, 18, 85, 74, 90}, "caf084", false));
            return;
        }
        float scale = Utils.getScale(matrix);
        while (true) {
            int i2 = i;
            if (i2 >= this.dashPatternAnimations.size()) {
                break;
            }
            this.dashPatternValues[i2] = this.dashPatternAnimations.get(i2).getValue().floatValue();
            if (i2 % 2 == 0) {
                if (this.dashPatternValues[i2] < 1.0f) {
                    this.dashPatternValues[i2] = 1.0f;
                }
            } else if (this.dashPatternValues[i2] < 0.1f) {
                this.dashPatternValues[i2] = 0.1f;
            }
            float[] fArr = this.dashPatternValues;
            fArr[i2] = fArr[i2] * scale;
            i = i2 + 1;
        }
        this.paint.setPathEffect(new DashPathEffect(this.dashPatternValues, this.dashPatternOffsetAnimation == null ? 0.0f : this.dashPatternOffsetAnimation.getValue().floatValue() * scale));
        L.endSection(NPStringFog.decode(new byte[]{96, 67, 70, 86, 15, 4, 112, 88, 90, 77, 1, 15, 71, 20, 85, 73, 20, 13, 74, 115, 85, 74, 12, 49, 82, 67, 64, 92, 22, 15}, "3749da", 1925344285L));
    }

    private void applyTrimPath(Canvas canvas, PathGroup pathGroup, Matrix matrix) {
        float f;
        L.beginSection(NPStringFog.decode(new byte[]{107, 64, 71, 11, 93, 1, 123, 91, 91, 16, 83, 10, 76, 23, 84, 20, 70, 8, 65, 96, 71, 13, 91, 52, 89, 64, 93}, "845d6d", -3.6567058E7d));
        if (pathGroup.trimPath == null) {
            L.endSection(NPStringFog.decode(new byte[]{55, 76, 17, 9, 8, 83, 39, 87, 13, 18, 6, 88, 16, 27, 2, 22, 19, 90, 29, 108, 17, 15, 14, 102, 5, 76, 11}, "d8cfc6", 2.030333095E9d));
            return;
        }
        this.path.reset();
        for (int size = pathGroup.paths.size() - 1; size >= 0; size--) {
            this.path.addPath(((PathContent) pathGroup.paths.get(size)).getPath(), matrix);
        }
        this.pm.setPath(this.path, false);
        float length = this.pm.getLength();
        while (true) {
            f = length;
            if (!this.pm.nextContour()) {
                break;
            } else {
                length = this.pm.getLength() + f;
            }
        }
        float fFloatValue = (pathGroup.trimPath.getOffset().getValue().floatValue() * f) / 360.0f;
        float fFloatValue2 = ((pathGroup.trimPath.getStart().getValue().floatValue() * f) / 100.0f) + fFloatValue;
        float fFloatValue3 = ((pathGroup.trimPath.getEnd().getValue().floatValue() * f) / 100.0f) + fFloatValue;
        float f2 = 0.0f;
        for (int size2 = pathGroup.paths.size() - 1; size2 >= 0; size2--) {
            this.trimPathPath.set(((PathContent) pathGroup.paths.get(size2)).getPath());
            this.trimPathPath.transform(matrix);
            this.pm.setPath(this.trimPathPath, false);
            float length2 = this.pm.getLength();
            if (fFloatValue3 > f && fFloatValue3 - f < f2 + length2 && f2 < fFloatValue3 - f) {
                Utils.applyTrimPathIfNeeded(this.trimPathPath, fFloatValue2 > f ? (fFloatValue2 - f) / length2 : 0.0f, Math.min((fFloatValue3 - f) / length2, 1.0f), 0.0f);
                canvas.drawPath(this.trimPathPath, this.paint);
            } else if (f2 + length2 >= fFloatValue2 && f2 <= fFloatValue3) {
                if (f2 + length2 > fFloatValue3 || fFloatValue2 >= f2) {
                    Utils.applyTrimPathIfNeeded(this.trimPathPath, fFloatValue2 < f2 ? 0.0f : (fFloatValue2 - f2) / length2, fFloatValue3 > f2 + length2 ? 1.0f : (fFloatValue3 - f2) / length2, 0.0f);
                    canvas.drawPath(this.trimPathPath, this.paint);
                } else {
                    canvas.drawPath(this.trimPathPath, this.paint);
                }
            }
            f2 += length2;
        }
        L.endSection(NPStringFog.decode(new byte[]{100, 17, 22, 94, 83, 93, 116, 10, 10, 69, 93, 86, 67, 70, 5, 65, 72, 84, 78, 49, 22, 88, 85, 104, 86, 17, 12}, "7ed188", true));
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    @CallSuper
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.OPACITY) {
            this.opacityAnimation.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.STROKE_WIDTH) {
            this.widthAnimation.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.COLOR_FILTER) {
            if (this.colorFilterAnimation != null) {
                this.layer.removeAnimation(this.colorFilterAnimation);
            }
            if (lottieValueCallback == null) {
                this.colorFilterAnimation = null;
                return;
            }
            this.colorFilterAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.colorFilterAnimation.addUpdateListener(this);
            this.layer.addAnimation(this.colorFilterAnimation);
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix matrix, int i) {
        L.beginSection(NPStringFog.decode(new byte[]{53, 23, 67, 10, 15, 82, 37, 12, 95, 17, 1, 89, 18, 64, 85, 23, 5, 64}, "fc1ed7", -2064575076L));
        if (Utils.hasZeroScaleAxis(matrix)) {
            L.endSection(NPStringFog.decode(new byte[]{103, 67, 69, 11, 8, 81, 119, 88, 89, 16, 6, 90, 64, 20, 83, 22, 2, 67}, "477dc4", true, false));
            return;
        }
        this.paint.setAlpha(MiscUtils.clamp((int) (((((IntegerKeyframeAnimation) this.opacityAnimation).getIntValue() * (i / 255.0f)) / 100.0f) * 255.0f), 0, 255));
        this.paint.setStrokeWidth(((FloatKeyframeAnimation) this.widthAnimation).getFloatValue() * Utils.getScale(matrix));
        if (this.paint.getStrokeWidth() <= 0.0f) {
            L.endSection(NPStringFog.decode(new byte[]{106, 69, 70, 94, 94, 1, 122, 94, 90, 69, 80, 10, 77, 18, 80, 67, 84, 19}, "91415d", false));
            return;
        }
        applyDashPatternIfNeeded(matrix);
        if (this.colorFilterAnimation != null) {
            this.paint.setColorFilter(this.colorFilterAnimation.getValue());
        }
        for (int i2 = 0; i2 < this.pathGroups.size(); i2++) {
            PathGroup pathGroup = this.pathGroups.get(i2);
            if (pathGroup.trimPath != null) {
                applyTrimPath(canvas, pathGroup, matrix);
            } else {
                L.beginSection(NPStringFog.decode(new byte[]{101, 67, 19, 94, 9, 84, 117, 88, 15, 69, 7, 95, 66, 20, 3, 68, 11, 93, 82, 103, 0, 69, 10}, "67a1b1", false, true));
                this.path.reset();
                for (int size = pathGroup.paths.size() - 1; size >= 0; size--) {
                    this.path.addPath(((PathContent) pathGroup.paths.get(size)).getPath(), matrix);
                }
                L.endSection(NPStringFog.decode(new byte[]{54, 71, 23, 10, 10, 93, 38, 92, 11, 17, 4, 86, 17, 16, 7, 16, 8, 84, 1, 99, 4, 17, 9}, "e3eea8", -1.756004516E9d));
                L.beginSection(NPStringFog.decode(new byte[]{96, 69, 75, 14, 8, 93, 112, 94, 87, 21, 6, 86, 71, 18, 93, 19, 2, 79, 99, 80, 77, 9}, "319ac8", false));
                canvas.drawPath(this.path, this.paint);
                L.endSection(NPStringFog.decode(new byte[]{55, 69, 74, 95, 95, 82, 39, 94, 86, 68, 81, 89, 16, 18, 92, 66, 85, 64, 52, 80, 76, 88}, "d18047", 2591));
            }
        }
        L.endSection(NPStringFog.decode(new byte[]{48, 17, 67, 86, 88, 4, 32, 10, 95, 77, 86, 15, 23, 70, 85, 75, 82, 22}, "ce193a", -4369));
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        L.beginSection(NPStringFog.decode(new byte[]{99, 66, 64, 89, 14, 92, 115, 89, 92, 66, 0, 87, 68, 21, 85, 83, 17, 123, 95, 67, 92, 82, 22}, "0626e9", 4.80740414E8d));
        this.path.reset();
        for (int i = 0; i < this.pathGroups.size(); i++) {
            PathGroup pathGroup = this.pathGroups.get(i);
            for (int i2 = 0; i2 < pathGroup.paths.size(); i2++) {
                this.path.addPath(((PathContent) pathGroup.paths.get(i2)).getPath(), matrix);
            }
        }
        this.path.computeBounds(this.rect, false);
        float floatValue = ((FloatKeyframeAnimation) this.widthAnimation).getFloatValue();
        this.rect.set(this.rect.left - (floatValue / 2.0f), this.rect.top - (floatValue / 2.0f), this.rect.right + (floatValue / 2.0f), (floatValue / 2.0f) + this.rect.bottom);
        rectF.set(this.rect);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        L.endSection(NPStringFog.decode(new byte[]{55, 18, 67, 91, 13, 80, 39, 9, 95, 64, 3, 91, 16, 69, 86, 81, 18, 119, 11, 19, 95, 80, 21}, "df14f5", 31224));
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        PathGroup pathGroup;
        int size = list.size() - 1;
        TrimPathContent trimPathContent = null;
        while (size >= 0) {
            Content content = list.get(size);
            size--;
            trimPathContent = ((content instanceof TrimPathContent) && ((TrimPathContent) content).getType() == ShapeTrimPath.Type.INDIVIDUALLY) ? (TrimPathContent) content : trimPathContent;
        }
        if (trimPathContent != null) {
            trimPathContent.addListener(this);
        }
        int size2 = list2.size() - 1;
        PathGroup pathGroup2 = null;
        while (size2 >= 0) {
            Content content2 = list2.get(size2);
            if ((content2 instanceof TrimPathContent) && ((TrimPathContent) content2).getType() == ShapeTrimPath.Type.INDIVIDUALLY) {
                if (pathGroup2 != null) {
                    this.pathGroups.add(pathGroup2);
                }
                PathGroup pathGroup3 = new PathGroup((TrimPathContent) content2);
                ((TrimPathContent) content2).addListener(this);
                pathGroup = pathGroup3;
            } else if (content2 instanceof PathContent) {
                PathGroup pathGroup4 = pathGroup2 == null ? new PathGroup(trimPathContent) : pathGroup2;
                pathGroup4.paths.add((PathContent) content2);
                pathGroup = pathGroup4;
            } else {
                pathGroup = pathGroup2;
            }
            size2--;
            pathGroup2 = pathGroup;
        }
        if (pathGroup2 != null) {
            this.pathGroups.add(pathGroup2);
        }
    }
}
