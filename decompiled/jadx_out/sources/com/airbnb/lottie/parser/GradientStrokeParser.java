package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.content.GradientStroke;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class GradientStrokeParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{92, 9}, "2d7b78", -678623225L), NPStringFog.decode(new byte[]{3}, "d01292", 518087689L), NPStringFog.decode(new byte[]{89}, "60aa7a", -714123677L), NPStringFog.decode(new byte[]{65}, "547c1d", -25412), NPStringFog.decode(new byte[]{16}, "c8249e", true, true), NPStringFog.decode(new byte[]{4}, "a79d7c", 1.4623878E9f), NPStringFog.decode(new byte[]{19}, "d7c9aa", true), NPStringFog.decode(new byte[]{89, 81}, "52c19a", 1.8313255E7d), NPStringFog.decode(new byte[]{85, 95}, "95f94c", 307072027L), NPStringFog.decode(new byte[]{90, 89}, "75b6ba", -1243615265L), NPStringFog.decode(new byte[]{88, 92}, "087b40", false, true), NPStringFog.decode(new byte[]{5}, "a6ec9e", -1295428877L));
    private static final JsonReader.Options GRADIENT_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{72}, "83bb7f", false, true), NPStringFog.decode(new byte[]{93}, "6c9e28", false, true));
    private static final JsonReader.Options DASH_PATTERN_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{91}, "58143e", true), NPStringFog.decode(new byte[]{65}, "73a1b9", 7071));

    private GradientStrokeParser() {
    }

    static GradientStroke parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        String strNextString = null;
        AnimatableGradientColorValue gradientColor = null;
        GradientType gradientType = null;
        AnimatablePointValue point = null;
        AnimatablePointValue point2 = null;
        AnimatableFloatValue animatableFloatValue = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        float fNextDouble = 0.0f;
        boolean zNextBoolean = false;
        ArrayList arrayList = new ArrayList();
        AnimatableIntegerValue integer = null;
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
                    point = AnimatableValueParser.parsePoint(jsonReader, lottieComposition);
                    break;
                case 5:
                    point2 = AnimatableValueParser.parsePoint(jsonReader, lottieComposition);
                    break;
                case 6:
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    break;
                case 7:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.nextInt() - 1];
                    break;
                case 8:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.nextInt() - 1];
                    break;
                case 9:
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case 10:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case 11:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        String strNextString2 = null;
                        AnimatableFloatValue animatableFloatValue3 = null;
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            switch (jsonReader.selectName(DASH_PATTERN_NAMES)) {
                                case 0:
                                    strNextString2 = jsonReader.nextString();
                                    break;
                                case 1:
                                    animatableFloatValue3 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                                    break;
                                default:
                                    jsonReader.skipName();
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                        if (strNextString2.equals(NPStringFog.decode(new byte[]{9}, "ff2437", 1.3763779E9f))) {
                            animatableFloatValue2 = animatableFloatValue3;
                        } else if (strNextString2.equals(NPStringFog.decode(new byte[]{2}, "f255ee", 1.41690745E9d)) || strNextString2.equals(NPStringFog.decode(new byte[]{1}, "ffdf15", true, true))) {
                            lottieComposition.setHasDashPattern(true);
                            arrayList.add(animatableFloatValue3);
                        }
                    }
                    jsonReader.endArray();
                    if (arrayList.size() == 1) {
                        arrayList.add(arrayList.get(0));
                    }
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        return new GradientStroke(strNextString, gradientType, gradientColor, integer == null ? new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100))) : integer, point, point2, animatableFloatValue, lineCapType, lineJoinType, fNextDouble, arrayList, animatableFloatValue2, zNextBoolean);
    }
}
