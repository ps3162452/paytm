package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.RectangleContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class RectangleShape implements ContentModel {
    private final AnimatableFloatValue cornerRadius;
    private final boolean hidden;
    private final String name;
    private final AnimatableValue<PointF, PointF> position;
    private final AnimatableValue<PointF, PointF> size;

    public RectangleShape(String str, AnimatableValue<PointF, PointF> animatableValue, AnimatableValue<PointF, PointF> animatableValue2, AnimatableFloatValue animatableFloatValue, boolean z) {
        this.name = str;
        this.position = animatableValue;
        this.size = animatableValue2;
        this.cornerRadius = animatableFloatValue;
        this.hidden = z;
    }

    public AnimatableFloatValue getCornerRadius() {
        return this.cornerRadius;
    }

    public String getName() {
        return this.name;
    }

    public AnimatableValue<PointF, PointF> getPosition() {
        return this.position;
    }

    public AnimatableValue<PointF, PointF> getSize() {
        return this.size;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new RectangleContent(lottieDrawable, baseLayer, this);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{48, 80, 5, 67, 89, 11, 5, 89, 3, 100, 80, 4, 18, 80, 29, 71, 87, 22, 11, 65, 15, 88, 86, 88}, "b5f78e", false, false) + this.position + NPStringFog.decode(new byte[]{25, 23, 64, 92, 25, 92, 8}, "5735c9", -1117231728L) + this.size + '}';
    }
}
