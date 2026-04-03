package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.content.ShapePath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class ShapePathParser {
    static JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{87, 91}, "9654b1", false, true), NPStringFog.decode(new byte[]{88, 94, 0}, "10d937", 178479643L), NPStringFog.decode(new byte[]{93, 70}, "65514c", true, true), NPStringFog.decode(new byte[]{90, 2}, "2fc4d0", -1.7320842E9f));

    private ShapePathParser() {
    }

    static ShapePath parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        AnimatableShapeValue shapeData = null;
        boolean zNextBoolean = false;
        int iNextInt = 0;
        String strNextString = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    strNextString = jsonReader.nextString();
                    break;
                case 1:
                    iNextInt = jsonReader.nextInt();
                    break;
                case 2:
                    shapeData = AnimatableValueParser.parseShapeData(jsonReader, lottieComposition);
                    break;
                case 3:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new ShapePath(strNextString, iNextInt, shapeData, zNextBoolean);
    }
}
