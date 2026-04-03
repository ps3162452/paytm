package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class ShapeTrimPathParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{65}, "25b9ae", 1.6419982E9f), NPStringFog.decode(new byte[]{82}, "76eaef", true), NPStringFog.decode(new byte[]{13}, "b60e97", 32646), NPStringFog.decode(new byte[]{95, 89}, "145bbe", -23221), NPStringFog.decode(new byte[]{14}, "ca3eaa", -1.172446767E9d), NPStringFog.decode(new byte[]{10, 85}, "b154fe", -1718299992L));

    private ShapeTrimPathParser() {
    }

    static ShapeTrimPath parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        AnimatableFloatValue animatableFloatValue = null;
        boolean zNextBoolean = false;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableFloatValue animatableFloatValue3 = null;
        ShapeTrimPath.Type typeForId = null;
        String strNextString = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    animatableFloatValue3 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    break;
                case 1:
                    animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    break;
                case 2:
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    break;
                case 3:
                    strNextString = jsonReader.nextString();
                    break;
                case 4:
                    typeForId = ShapeTrimPath.Type.forId(jsonReader.nextInt());
                    break;
                case 5:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new ShapeTrimPath(strNextString, typeForId, animatableFloatValue3, animatableFloatValue2, animatableFloatValue, zNextBoolean);
    }
}
