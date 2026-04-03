package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.Arrays;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class ShapeGroup implements ContentModel {
    private final boolean hidden;
    private final List<ContentModel> items;
    private final String name;

    public ShapeGroup(String str, List<ContentModel> list, boolean z) {
        this.name = str;
        this.items = list;
        this.hidden = z;
    }

    public List<ContentModel> getItems() {
        return this.items;
    }

    public String getName() {
        return this.name;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new ContentGroup(lottieDrawable, baseLayer, this);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{55, 10, 84, 20, 6, 38, 22, 13, 64, 20, 24, 15, 5, 15, 80, 89, 68}, "db5dca", -7.11557694E8d) + this.name + NPStringFog.decode(new byte[]{65, 18, 100, 11, 4, 22, 3, 65, 13, 67}, "f27cef", false) + Arrays.toString(this.items.toArray()) + '}';
    }
}
