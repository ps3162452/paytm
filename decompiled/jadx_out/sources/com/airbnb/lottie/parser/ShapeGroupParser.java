package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class ShapeGroupParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{90, 15}, "4b2894", true), NPStringFog.decode(new byte[]{90, 6}, "2b79eb", false), NPStringFog.decode(new byte[]{89, 18}, "0fdbe6", 243102763L));

    private ShapeGroupParser() {
    }

    static ShapeGroup parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        String strNextString = null;
        boolean zNextBoolean = false;
        ArrayList arrayList = new ArrayList();
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    strNextString = jsonReader.nextString();
                    break;
                case 1:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case 2:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        ContentModel contentModel = ContentModelParser.parse(jsonReader, lottieComposition);
                        if (contentModel != null) {
                            arrayList.add(contentModel);
                        }
                    }
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new ShapeGroup(strNextString, arrayList, zNextBoolean);
    }
}
