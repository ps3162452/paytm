package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.content.CircleShape;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class CircleShapeParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{10, 88}, "d56980", -2.010597038E9d), NPStringFog.decode(new byte[]{72}, "88c10d", -1.444626822E9d), NPStringFog.decode(new byte[]{70}, "5585df", -30199), NPStringFog.decode(new byte[]{11, 92}, "c87864", true, false), NPStringFog.decode(new byte[]{93}, "91ea78", -1673079334L));

    private CircleShapeParser() {
    }

    static CircleShape parse(JsonReader jsonReader, LottieComposition lottieComposition, int i) throws IOException {
        AnimatablePointValue point = null;
        boolean zNextBoolean = false;
        boolean z = i == 3;
        AnimatableValue<PointF, PointF> splitPath = null;
        String strNextString = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    strNextString = jsonReader.nextString();
                    break;
                case 1:
                    splitPath = AnimatablePathValueParser.parseSplitPath(jsonReader, lottieComposition);
                    break;
                case 2:
                    point = AnimatableValueParser.parsePoint(jsonReader, lottieComposition);
                    break;
                case 3:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case 4:
                    z = jsonReader.nextInt() == 3;
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        return new CircleShape(strNextString, splitPath, point, z, zNextBoolean);
    }
}
