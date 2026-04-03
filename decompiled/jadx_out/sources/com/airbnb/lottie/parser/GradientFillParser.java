package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.content.GradientFill;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.Collections;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class GradientFillParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{91, 14}, "5c6ddc", false, true), NPStringFog.decode(new byte[]{86}, "19db0b", false), NPStringFog.decode(new byte[]{91}, "48a4f5", false), NPStringFog.decode(new byte[]{68}, "0e429f", -1870213117L), NPStringFog.decode(new byte[]{23}, "d08095", 27024), NPStringFog.decode(new byte[]{3}, "faa46e", true, true), NPStringFog.decode(new byte[]{22}, "d88b16", 486271175L), NPStringFog.decode(new byte[]{9, 2}, "aff39e", 13694));
    private static final JsonReader.Options GRADIENT_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{21}, "e7dbd6", 1031528548L), NPStringFog.decode(new byte[]{92}, "7ab64b", false, false));

    private GradientFillParser() {
    }

    static GradientFill parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        Path.FillType fillType = Path.FillType.WINDING;
        boolean zNextBoolean = false;
        AnimatablePointValue point = null;
        AnimatablePointValue point2 = null;
        GradientType gradientType = null;
        AnimatableIntegerValue integer = null;
        AnimatableGradientColorValue gradientColor = null;
        String strNextString = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    strNextString = jsonReader.nextString();
                    break;
                case 1:
                    int iNextInt = -1;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        switch (jsonReader.selectName(GRADIENT_NAMES)) {
                            case 0:
                                iNextInt = jsonReader.nextInt();
                                break;
                            case 1:
                                gradientColor = AnimatableValueParser.parseGradientColor(jsonReader, lottieComposition, iNextInt);
                                break;
                            default:
                                jsonReader.skipName();
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    break;
                case 2:
                    integer = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                    break;
                case 3:
                    gradientType = jsonReader.nextInt() != 1 ? GradientType.RADIAL : GradientType.LINEAR;
                    break;
                case 4:
                    point2 = AnimatableValueParser.parsePoint(jsonReader, lottieComposition);
                    break;
                case 5:
                    point = AnimatableValueParser.parsePoint(jsonReader, lottieComposition);
                    break;
                case 6:
                    fillType = jsonReader.nextInt() != 1 ? Path.FillType.EVEN_ODD : Path.FillType.WINDING;
                    break;
                case 7:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        return new GradientFill(strNextString, gradientType, fillType, gradientColor, integer == null ? new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100))) : integer, point2, point, null, null, zNextBoolean);
    }
}
