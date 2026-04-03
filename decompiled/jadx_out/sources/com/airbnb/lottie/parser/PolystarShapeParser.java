package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class PolystarShapeParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{95, 9}, "1d2d40", true), NPStringFog.decode(new byte[]{71, 74}, "434b59", 24304), NPStringFog.decode(new byte[]{70, 65}, "657c41", -15703), NPStringFog.decode(new byte[]{17}, "aaeed2", -2.139295483E9d), NPStringFog.decode(new byte[]{20}, "f62abe", 3928), NPStringFog.decode(new byte[]{93, 71}, "259faa", false, true), NPStringFog.decode(new byte[]{86, 23}, "9d6381", -850427924L), NPStringFog.decode(new byte[]{10, 17}, "cc9f07", -1894395126L), NPStringFog.decode(new byte[]{12, 21}, "ef1170", 1.0092816E9f), NPStringFog.decode(new byte[]{94, 86}, "626f95", false, false));

    private PolystarShapeParser() {
    }

    static PolystarShape parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        AnimatableFloatValue animatableFloatValue = null;
        boolean zNextBoolean = false;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableFloatValue animatableFloatValue3 = null;
        AnimatableFloatValue animatableFloatValue4 = null;
        AnimatableFloatValue animatableFloatValue5 = null;
        AnimatableValue<PointF, PointF> splitPath = null;
        AnimatableFloatValue animatableFloatValue6 = null;
        PolystarShape.Type typeForValue = null;
        String strNextString = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    strNextString = jsonReader.nextString();
                    break;
                case 1:
                    typeForValue = PolystarShape.Type.forValue(jsonReader.nextInt());
                    break;
                case 2:
                    animatableFloatValue6 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    break;
                case 3:
                    splitPath = AnimatablePathValueParser.parseSplitPath(jsonReader, lottieComposition);
                    break;
                case 4:
                    animatableFloatValue5 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    break;
                case 5:
                    animatableFloatValue4 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    break;
                case 6:
                    animatableFloatValue3 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    break;
                case 7:
                    animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    break;
                case 8:
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    break;
                case 9:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        return new PolystarShape(strNextString, typeForValue, animatableFloatValue6, splitPath, animatableFloatValue5, animatableFloatValue2, animatableFloatValue4, animatableFloatValue, animatableFloatValue3, zNextBoolean);
    }
}
