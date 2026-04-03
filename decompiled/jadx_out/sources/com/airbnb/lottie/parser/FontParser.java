package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class FontParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{94, 35, 80, 11, 88, 90, 65}, "8e1f16", false), NPStringFog.decode(new byte[]{0, 121, 5, 93, 92}, "f7d097", -1163802280L), NPStringFog.decode(new byte[]{85, 102, 69, 74, 91, 83}, "351376", false), NPStringFog.decode(new byte[]{0, 64, 0, 80, 93, 66}, "a3c536", 463737174L));

    private FontParser() {
    }

    static Font parse(JsonReader jsonReader) throws IOException {
        String strNextString = null;
        float fNextDouble = 0.0f;
        jsonReader.beginObject();
        String strNextString2 = null;
        String strNextString3 = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    strNextString3 = jsonReader.nextString();
                    break;
                case 1:
                    strNextString2 = jsonReader.nextString();
                    break;
                case 2:
                    strNextString = jsonReader.nextString();
                    break;
                case 3:
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new Font(strNextString3, strNextString2, strNextString, fNextDouble);
    }
}
