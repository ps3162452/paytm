package com.airbnb.lottie.model.content;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.FillContent;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class ShapeFill implements ContentModel {

    @Nullable
    private final AnimatableColorValue color;
    private final boolean fillEnabled;
    private final Path.FillType fillType;
    private final boolean hidden;
    private final String name;

    @Nullable
    private final AnimatableIntegerValue opacity;

    public ShapeFill(String str, boolean z, Path.FillType fillType, @Nullable AnimatableColorValue animatableColorValue, @Nullable AnimatableIntegerValue animatableIntegerValue, boolean z2) {
        this.name = str;
        this.fillEnabled = z;
        this.fillType = fillType;
        this.color = animatableColorValue;
        this.opacity = animatableIntegerValue;
        this.hidden = z2;
    }

    @Nullable
    public AnimatableColorValue getColor() {
        return this.color;
    }

    public Path.FillType getFillType() {
        return this.fillType;
    }

    public String getName() {
        return this.name;
    }

    @Nullable
    public AnimatableIntegerValue getOpacity() {
        return this.opacity;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new FillContent(lottieDrawable, baseLayer, this);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{103, 91, 4, 64, 82, 119, 93, 95, 9, 75, 84, 94, 88, 92, 23, 13, 27, 17, 82, 90, 9, 92, 114, 95, 85, 81, 9, 85, 83, 12}, "43e071", true, false) + this.fillEnabled + '}';
    }
}
