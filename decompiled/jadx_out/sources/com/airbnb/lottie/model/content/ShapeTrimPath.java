package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.TrimPathContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class ShapeTrimPath implements ContentModel {
    private final AnimatableFloatValue end;
    private final boolean hidden;
    private final String name;
    private final AnimatableFloatValue offset;
    private final AnimatableFloatValue start;
    private final Type type;

    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int i) {
            switch (i) {
                case 1:
                    return SIMULTANEOUSLY;
                case 2:
                    return INDIVIDUALLY;
                default:
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{98, 10, 89, 94, 12, 70, 89, 68, 70, 66, 10, 92, 23, 20, 83, 68, 11, 17, 67, 29, 66, 85, 67}, "7d20c1", true) + i);
            }
        }
    }

    public ShapeTrimPath(String str, Type type, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, boolean z) {
        this.name = str;
        this.type = type;
        this.start = animatableFloatValue;
        this.end = animatableFloatValue2;
        this.offset = animatableFloatValue3;
        this.hidden = z;
    }

    public AnimatableFloatValue getEnd() {
        return this.end;
    }

    public String getName() {
        return this.name;
    }

    public AnimatableFloatValue getOffset() {
        return this.offset;
    }

    public AnimatableFloatValue getStart() {
        return this.start;
    }

    public Type getType() {
        return this.type;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new TrimPathContent(baseLayer, this);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{96, 17, 89, 92, 65, 101, 85, 23, 88, 11, 65, 78, 71, 23, 81, 67, 21, 15, 20}, "4c01a5", 1.877183E9f) + this.start + NPStringFog.decode(new byte[]{30, 66, 80, 95, 85, 91, 18}, "2b511a", true, false) + this.end + NPStringFog.decode(new byte[]{27, 17, 9, 5, 94, 67, 82, 69, 92, 67}, "71fc80", 863) + this.offset + NPStringFog.decode(new byte[]{75}, "635b8b", -5077);
    }
}
