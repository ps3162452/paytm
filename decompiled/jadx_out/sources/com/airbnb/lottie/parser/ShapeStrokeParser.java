package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class ShapeStrokeParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{90, 94}, "43206c", false, false), NPStringFog.decode(new byte[]{84}, "701909", true, true), NPStringFog.decode(new byte[]{21}, "b5516d", 1783620795L), NPStringFog.decode(new byte[]{12}, "c7652b", 4.1848918E8f), NPStringFog.decode(new byte[]{10, 87}, "f49acf", 833860911L), NPStringFog.decode(new byte[]{8, 95}, "d5ba68", true), NPStringFog.decode(new byte[]{95, 85}, "29e9d8", 2.1198056E9f), NPStringFog.decode(new byte[]{13, 93}, "e9f9e2", 1488183551L), NPStringFog.decode(new byte[]{6}, "b14541", -8354));
    private static final JsonReader.Options DASH_PATTERN_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{93}, "37fcfb", true, true), NPStringFog.decode(new byte[]{70}, "009f35", -9.61221335E8d));

    private ShapeStrokeParser() {
    }

    static ShapeStroke parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        byte b;
        String strNextString = null;
        AnimatableColorValue color = null;
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
                    color = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
                    break;
                case 2:
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    break;
                case 3:
                    integer = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                    break;
                case 4:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.nextInt() - 1];
                    break;
                case 5:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.nextInt() - 1];
                    break;
                case 6:
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case 7:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case 8:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        AnimatableFloatValue animatableFloatValue3 = null;
                        String strNextString2 = null;
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
                        switch (strNextString2.hashCode()) {
                            case 100:
                                b = !strNextString2.equals(NPStringFog.decode(new byte[]{87}, "303169", -4681)) ? (byte) -1 : (byte) 1;
                                break;
                            case 103:
                                b = !strNextString2.equals(NPStringFog.decode(new byte[]{4}, "cb8c38", -1396194626L)) ? (byte) -1 : (byte) 2;
                                break;
                            case 111:
                                b = !strNextString2.equals(NPStringFog.decode(new byte[]{90}, "5d591f", 1.151811937E9d)) ? (byte) -1 : (byte) 0;
                                break;
                            default:
                                b = -1;
                                break;
                        }
                        switch (b) {
                            case 0:
                                animatableFloatValue2 = animatableFloatValue3;
                                break;
                            case 1:
                            case 2:
                                lottieComposition.setHasDashPattern(true);
                                arrayList.add(animatableFloatValue3);
                                break;
                        }
                    }
                    jsonReader.endArray();
                    if (arrayList.size() == 1) {
                        arrayList.add(arrayList.get(0));
                    }
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new ShapeStroke(strNextString, animatableFloatValue2, arrayList, color, integer == null ? new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100))) : integer, animatableFloatValue, lineCapType, lineJoinType, fNextDouble, zNextBoolean);
    }
}
