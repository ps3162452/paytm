package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.ShapeData;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes64.dex */
public class MaskKeyframeAnimation {
    private final List<BaseKeyframeAnimation<ShapeData, Path>> maskAnimations;
    private final List<Mask> masks;
    private final List<BaseKeyframeAnimation<Integer, Integer>> opacityAnimations;

    public MaskKeyframeAnimation(List<Mask> list) {
        this.masks = list;
        this.maskAnimations = new ArrayList(list.size());
        this.opacityAnimations = new ArrayList(list.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            this.maskAnimations.add(list.get(i2).getMaskPath().createAnimation());
            this.opacityAnimations.add(list.get(i2).getOpacity().createAnimation());
            i = i2 + 1;
        }
    }

    public List<BaseKeyframeAnimation<ShapeData, Path>> getMaskAnimations() {
        return this.maskAnimations;
    }

    public List<Mask> getMasks() {
        return this.masks;
    }

    public List<BaseKeyframeAnimation<Integer, Integer>> getOpacityAnimations() {
        return this.opacityAnimations;
    }
}
