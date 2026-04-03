package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class MergePathsParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{89, 93}, "704dff", -13964), NPStringFog.decode(new byte[]{8, 89}, "e4fd88", 1.2828376E9f), NPStringFog.decode(new byte[]{10, 85}, "b1fe7f", -4406));

    private MergePathsParser() {
    }

    static MergePaths parse(JsonReader jsonReader) throws IOException {
        MergePaths.MergePathsMode mergePathsModeForId = null;
        boolean zNextBoolean = false;
        String strNextString = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    strNextString = jsonReader.nextString();
                    break;
                case 1:
                    mergePathsModeForId = MergePaths.MergePathsMode.forId(jsonReader.nextInt());
                    break;
                case 2:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        return new MergePaths(strNextString, mergePathsModeForId, zNextBoolean);
    }
}
