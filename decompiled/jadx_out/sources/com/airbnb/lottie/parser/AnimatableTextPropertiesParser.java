package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class AnimatableTextPropertiesParser {
    private static JsonReader.Options PROPERTIES_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{2}, "c7f3d8", -1.5030566E9f));
    private static JsonReader.Options ANIMATABLE_PROPERTIES_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{86, 86}, "05bab7", true, true), NPStringFog.decode(new byte[]{17, 90}, "b9939a", 1.6574461E9f), NPStringFog.decode(new byte[]{64, 22}, "3ae94c", true, false), NPStringFog.decode(new byte[]{70}, "2fa920", -673561598L));

    private AnimatableTextPropertiesParser() {
    }

    public static AnimatableTextProperties parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        jsonReader.beginObject();
        AnimatableTextProperties animatableTextProperties = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(PROPERTIES_NAMES)) {
                case 0:
                    animatableTextProperties = parseAnimatableTextProperties(jsonReader, lottieComposition);
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return animatableTextProperties == null ? new AnimatableTextProperties(null, null, null, null) : animatableTextProperties;
    }

    private static AnimatableTextProperties parseAnimatableTextProperties(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        AnimatableFloatValue animatableFloatValue = null;
        jsonReader.beginObject();
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableColorValue color = null;
        AnimatableColorValue color2 = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(ANIMATABLE_PROPERTIES_NAMES)) {
                case 0:
                    color2 = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
                    break;
                case 1:
                    color = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
                    break;
                case 2:
                    animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    break;
                case 3:
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new AnimatableTextProperties(color2, color, animatableFloatValue2, animatableFloatValue);
    }
}
