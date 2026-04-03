package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.RectangleShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* JADX INFO: loaded from: classes64.dex */
public class RectangleContent implements BaseKeyframeAnimation.AnimationListener, KeyPathElementContent, PathContent {
    private final BaseKeyframeAnimation<?, Float> cornerRadiusAnimation;
    private final boolean hidden;
    private boolean isPathValid;
    private final LottieDrawable lottieDrawable;
    private final String name;
    private final BaseKeyframeAnimation<?, PointF> positionAnimation;
    private final BaseKeyframeAnimation<?, PointF> sizeAnimation;
    private final Path path = new Path();
    private final RectF rect = new RectF();
    private CompoundTrimPathContent trimPaths = new CompoundTrimPathContent();

    public RectangleContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, RectangleShape rectangleShape) {
        this.name = rectangleShape.getName();
        this.hidden = rectangleShape.isHidden();
        this.lottieDrawable = lottieDrawable;
        this.positionAnimation = rectangleShape.getPosition().createAnimation();
        this.sizeAnimation = rectangleShape.getSize().createAnimation();
        this.cornerRadiusAnimation = rectangleShape.getCornerRadius().createAnimation();
        baseLayer.addAnimation(this.positionAnimation);
        baseLayer.addAnimation(this.sizeAnimation);
        baseLayer.addAnimation(this.cornerRadiusAnimation);
        this.positionAnimation.addUpdateListener(this);
        this.sizeAnimation.addUpdateListener(this);
        this.cornerRadiusAnimation.addUpdateListener(this);
    }

    private void invalidate() {
        this.isPathValid = false;
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.RECTANGLE_SIZE) {
            this.sizeAnimation.setValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.POSITION) {
            this.positionAnimation.setValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.CORNER_RADIUS) {
            this.cornerRadiusAnimation.setValueCallback(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.name;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        if (this.isPathValid) {
            return this.path;
        }
        this.path.reset();
        if (this.hidden) {
            this.isPathValid = true;
            return this.path;
        }
        PointF value = this.sizeAnimation.getValue();
        float f = value.x / 2.0f;
        float f2 = value.y / 2.0f;
        float floatValue = this.cornerRadiusAnimation == null ? 0.0f : ((FloatKeyframeAnimation) this.cornerRadiusAnimation).getFloatValue();
        float fMin = Math.min(f, f2);
        if (floatValue <= fMin) {
            fMin = floatValue;
        }
        PointF value2 = this.positionAnimation.getValue();
        this.path.moveTo(value2.x + f, (value2.y - f2) + fMin);
        this.path.lineTo(value2.x + f, (value2.y + f2) - fMin);
        if (fMin > 0.0f) {
            this.rect.set((value2.x + f) - (2.0f * fMin), (value2.y + f2) - (2.0f * fMin), value2.x + f, value2.y + f2);
            this.path.arcTo(this.rect, 0.0f, 90.0f, false);
        }
        this.path.lineTo((value2.x - f) + fMin, value2.y + f2);
        if (fMin > 0.0f) {
            this.rect.set(value2.x - f, (value2.y + f2) - (2.0f * fMin), (value2.x - f) + (2.0f * fMin), value2.y + f2);
            this.path.arcTo(this.rect, 90.0f, 90.0f, false);
        }
        this.path.lineTo(value2.x - f, (value2.y - f2) + fMin);
        if (fMin > 0.0f) {
            this.rect.set(value2.x - f, value2.y - f2, (value2.x - f) + (2.0f * fMin), (value2.y - f2) + (2.0f * fMin));
            this.path.arcTo(this.rect, 180.0f, 90.0f, false);
        }
        this.path.lineTo((value2.x + f) - fMin, value2.y - f2);
        if (fMin > 0.0f) {
            this.rect.set((value2.x + f) - (2.0f * fMin), value2.y - f2, f + value2.x, (value2.y - f2) + (fMin * 2.0f));
            this.path.arcTo(this.rect, 270.0f, 90.0f, false);
        }
        this.path.close();
        this.trimPaths.apply(this.path);
        this.isPathValid = true;
        return this.path;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        invalidate();
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            Content content = list.get(i2);
            if ((content instanceof TrimPathContent) && ((TrimPathContent) content).getType() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                this.trimPaths.addTrimPath(trimPathContent);
                trimPathContent.addListener(this);
            }
            i = i2 + 1;
        }
    }
}
