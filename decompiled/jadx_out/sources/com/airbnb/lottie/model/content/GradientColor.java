package com.airbnb.lottie.model.content;

import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class GradientColor {
    private final int[] colors;
    private final float[] positions;

    public GradientColor(float[] fArr, int[] iArr) {
        this.positions = fArr;
        this.colors = iArr;
    }

    public int[] getColors() {
        return this.colors;
    }

    public float[] getPositions() {
        return this.positions;
    }

    public int getSize() {
        return this.colors.length;
    }

    public void lerp(GradientColor gradientColor, GradientColor gradientColor2, float f) {
        if (gradientColor.colors.length != gradientColor2.colors.length) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{33, 87, 93, 90, 94, 66, 66, 95, 93, 64, 84, 68, 18, 89, 95, 85, 69, 83, 66, 84, 86, 64, 70, 83, 7, 88, 19, 83, 67, 87, 6, 95, 86, 90, 69, 69, 76, 22, 127, 81, 95, 81, 22, 94, 64, 20, 71, 87, 16, 79, 19, 28}, "b63416", true) + gradientColor.colors.length + NPStringFog.decode(new byte[]{16, 70, 17, 25}, "00b948", false) + gradientColor2.colors.length + NPStringFog.decode(new byte[]{75}, "b45360", false));
        }
        for (int i = 0; i < gradientColor.colors.length; i++) {
            this.positions[i] = MiscUtils.lerp(gradientColor.positions[i], gradientColor2.positions[i], f);
            this.colors[i] = GammaEvaluator.evaluate(f, gradientColor.colors[i], gradientColor2.colors[i]);
        }
    }
}
