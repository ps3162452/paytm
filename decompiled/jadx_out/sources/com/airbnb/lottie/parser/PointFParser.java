package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class PointFParser implements ValueParser<PointF> {
    public static final PointFParser INSTANCE = new PointFParser();

    private PointFParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.parser.ValueParser
    public PointF parse(JsonReader jsonReader, float f) throws IOException {
        JsonReader.Token tokenPeek = jsonReader.peek();
        if (tokenPeek != JsonReader.Token.BEGIN_ARRAY && tokenPeek != JsonReader.Token.BEGIN_OBJECT) {
            if (tokenPeek != JsonReader.Token.NUMBER) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{33, 4, 92, 11, 86, 23, 66, 6, 93, 11, 79, 6, 16, 17, 18, 15, 74, 12, 12, 69, 70, 10, 25, 19, 13, 12, 92, 17, 23, 67, 44, 0, 74, 17, 25, 23, 13, 14, 87, 11, 25, 10, 17, 69}, "be2e9c", -7.772741E8f) + tokenPeek);
            }
            PointF pointF = new PointF(((float) jsonReader.nextDouble()) * f, ((float) jsonReader.nextDouble()) * f);
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            return pointF;
        }
        return JsonUtils.jsonToPoint(jsonReader, f);
    }
}
