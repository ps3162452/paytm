package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class FontCharacterParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{6, 81}, "e9e5eb", 4.516572E8f), NPStringFog.decode(new byte[]{69, 13, 66, 83}, "6d8690", false), NPStringFog.decode(new byte[]{66}, "5efcef", -29303), NPStringFog.decode(new byte[]{23, 18, 65, 89, 85}, "df850a", false, true), NPStringFog.decode(new byte[]{0, 113, 86, 11, 10, 91, 31}, "f77fc7", -1.6617882E9f), NPStringFog.decode(new byte[]{87, 89, 76, 81}, "38807b", 1440281687L));
    private static final JsonReader.Options DATA_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{23, 9, 86, 65, 3, 23}, "da71fd", 1.609494325E9d));

    private FontCharacterParser() {
    }

    static FontCharacter parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        String strNextString = null;
        double dNextDouble = 0.0d;
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        char cCharAt = 0;
        String strNextString2 = null;
        double dNextDouble2 = 0.0d;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    cCharAt = jsonReader.nextString().charAt(0);
                    break;
                case 1:
                    dNextDouble2 = jsonReader.nextDouble();
                    break;
                case 2:
                    dNextDouble = jsonReader.nextDouble();
                    break;
                case 3:
                    strNextString2 = jsonReader.nextString();
                    break;
                case 4:
                    strNextString = jsonReader.nextString();
                    break;
                case 5:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        switch (jsonReader.selectName(DATA_NAMES)) {
                            case 0:
                                jsonReader.beginArray();
                                while (jsonReader.hasNext()) {
                                    arrayList.add((ShapeGroup) ContentModelParser.parse(jsonReader, lottieComposition));
                                }
                                jsonReader.endArray();
                                break;
                            default:
                                jsonReader.skipName();
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new FontCharacter(arrayList, cCharAt, dNextDouble2, dNextDouble, strNextString2, strNextString);
    }
}
