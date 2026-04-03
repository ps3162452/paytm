package com.airbnb.lottie.parser;

import android.graphics.Color;
import androidx.annotation.IntRange;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes64.dex */
public class GradientColorParser implements ValueParser<GradientColor> {
    private int colorPoints;

    public GradientColorParser(int i) {
        this.colorPoints = i;
    }

    private void addOpacityStopsToGradientIfNeeded(GradientColor gradientColor, List<Float> list) {
        int i;
        int i2 = this.colorPoints * 4;
        if (list.size() <= i2) {
            return;
        }
        int size = (list.size() - i2) / 2;
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        int i3 = 0;
        int i4 = i2;
        while (i4 < list.size()) {
            if (i4 % 2 == 0) {
                dArr[i3] = list.get(i4).floatValue();
                i = i3;
            } else {
                dArr2[i3] = list.get(i4).floatValue();
                i = i3 + 1;
            }
            i4++;
            i3 = i;
        }
        for (int i5 = 0; i5 < gradientColor.getSize(); i5++) {
            int i6 = gradientColor.getColors()[i5];
            gradientColor.getColors()[i5] = Color.argb(getOpacityAtPosition(gradientColor.getPositions()[i5], dArr, dArr2), Color.red(i6), Color.green(i6), Color.blue(i6));
        }
    }

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 255)
    private int getOpacityAtPosition(double d, double[] dArr, double[] dArr2) {
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 >= dArr.length) {
                return (int) (dArr2[dArr2.length - 1] * 255.0d);
            }
            double d2 = dArr[i2 - 1];
            double d3 = dArr[i2];
            if (dArr[i2] >= d) {
                return (int) (MiscUtils.lerp(dArr2[i2 - 1], dArr2[i2], MiscUtils.clamp((d - d2) / (d3 - d2), 0.0d, 1.0d)) * 255.0d);
            }
            i = i2 + 1;
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.parser.ValueParser
    public GradientColor parse(JsonReader jsonReader, float f) throws IOException {
        ArrayList arrayList = new ArrayList();
        boolean z = jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            jsonReader.beginArray();
        }
        while (jsonReader.hasNext()) {
            arrayList.add(Float.valueOf((float) jsonReader.nextDouble()));
        }
        if (z) {
            jsonReader.endArray();
        }
        if (this.colorPoints == -1) {
            this.colorPoints = arrayList.size() / 4;
        }
        float[] fArr = new float[this.colorPoints];
        int[] iArr = new int[this.colorPoints];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            int i5 = i;
            int i6 = i2;
            if (i4 >= this.colorPoints * 4) {
                GradientColor gradientColor = new GradientColor(fArr, iArr);
                addOpacityStopsToGradientIfNeeded(gradientColor, arrayList);
                return gradientColor;
            }
            int i7 = i4 / 4;
            double dFloatValue = arrayList.get(i4).floatValue();
            switch (i4 % 4) {
                case 0:
                    if (i7 > 0 && fArr[i7 - 1] >= ((float) dFloatValue)) {
                        fArr[i7] = ((float) dFloatValue) + 0.01f;
                    } else {
                        fArr[i7] = (float) dFloatValue;
                    }
                    break;
                case 1:
                    i5 = (int) (dFloatValue * 255.0d);
                    break;
                case 2:
                    i6 = (int) (255.0d * dFloatValue);
                    break;
                case 3:
                    iArr[i7] = Color.argb(255, i5, i6, (int) (dFloatValue * 255.0d));
                    break;
            }
            i2 = i6;
            i = i5;
            i3 = i4 + 1;
        }
    }
}
