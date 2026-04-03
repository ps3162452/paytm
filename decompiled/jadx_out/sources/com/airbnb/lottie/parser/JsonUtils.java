package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class JsonUtils {
    private static final JsonReader.Options POINT_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{27}, "c3cc48", -152107388L), NPStringFog.decode(new byte[]{27}, "bb4f5b", 32037));

    /* JADX INFO: renamed from: com.airbnb.lottie.parser.JsonUtils$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token = new int[JsonReader.Token.values().length];

        static {
            try {
                $SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private JsonUtils() {
    }

    private static PointF jsonArrayToPoint(JsonReader jsonReader, float f) throws IOException {
        jsonReader.beginArray();
        float fNextDouble = (float) jsonReader.nextDouble();
        float fNextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.peek() != JsonReader.Token.END_ARRAY) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return new PointF(fNextDouble * f, fNextDouble2 * f);
    }

    private static PointF jsonNumbersToPoint(JsonReader jsonReader, float f) throws IOException {
        float fNextDouble = (float) jsonReader.nextDouble();
        float fNextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        return new PointF(fNextDouble * f, fNextDouble2 * f);
    }

    private static PointF jsonObjectToPoint(JsonReader jsonReader, float f) throws IOException {
        float fValueFromObject = 0.0f;
        jsonReader.beginObject();
        float fValueFromObject2 = 0.0f;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(POINT_NAMES)) {
                case 0:
                    fValueFromObject2 = valueFromObject(jsonReader);
                    break;
                case 1:
                    fValueFromObject = valueFromObject(jsonReader);
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new PointF(fValueFromObject2 * f, fValueFromObject * f);
    }

    @ColorInt
    static int jsonToColor(JsonReader jsonReader) throws IOException {
        jsonReader.beginArray();
        int iNextDouble = (int) (jsonReader.nextDouble() * 255.0d);
        int iNextDouble2 = (int) (jsonReader.nextDouble() * 255.0d);
        int iNextDouble3 = (int) (jsonReader.nextDouble() * 255.0d);
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return Color.argb(255, iNextDouble, iNextDouble2, iNextDouble3);
    }

    static PointF jsonToPoint(JsonReader jsonReader, float f) throws IOException {
        switch (AnonymousClass1.$SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token[jsonReader.peek().ordinal()]) {
            case 1:
                return jsonNumbersToPoint(jsonReader, f);
            case 2:
                return jsonArrayToPoint(jsonReader, f);
            case 3:
                return jsonObjectToPoint(jsonReader, f);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{49, 92, 91, 89, 91, 70, 10, 18, 64, 88, 93, 95, 16, 18, 67, 67, 85, 67, 16, 65, 16, 64, 93, 69, 12, 18}, "d20741", 1.3301818E9f) + jsonReader.peek());
        }
    }

    static List<PointF> jsonToPoints(JsonReader jsonReader, float f) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.beginArray();
            arrayList.add(jsonToPoint(jsonReader, f));
            jsonReader.endArray();
        }
        jsonReader.endArray();
        return arrayList;
    }

    static float valueFromObject(JsonReader jsonReader) throws IOException {
        JsonReader.Token tokenPeek = jsonReader.peek();
        switch (AnonymousClass1.$SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token[tokenPeek.ordinal()]) {
            case 1:
                return (float) jsonReader.nextDouble();
            case 2:
                jsonReader.beginArray();
                float fNextDouble = (float) jsonReader.nextDouble();
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                jsonReader.endArray();
                return fNextDouble;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{98, 8, 9, 93, 90, 78, 89, 70, 20, 82, 89, 76, 82, 70, 4, 92, 71, 25, 67, 9, 9, 86, 91, 25, 88, 0, 66, 71, 76, 73, 82, 70}, "7fb359", true, true) + tokenPeek);
        }
    }
}
