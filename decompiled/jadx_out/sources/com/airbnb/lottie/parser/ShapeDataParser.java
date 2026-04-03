package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class ShapeDataParser implements ValueParser<ShapeData> {
    public static final ShapeDataParser INSTANCE = new ShapeDataParser();
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{1}, "bc0fb1", 1.219E9f), NPStringFog.decode(new byte[]{20}, "b79971", true), NPStringFog.decode(new byte[]{89}, "0bb3ba", 1.6697784E9f), NPStringFog.decode(new byte[]{86}, "95f3d7", -1.3184876E9f));

    private ShapeDataParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.parser.ValueParser
    public ShapeData parse(JsonReader jsonReader, float f) throws IOException {
        if (jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.beginArray();
        }
        jsonReader.beginObject();
        List<PointF> listJsonToPoints = null;
        List<PointF> listJsonToPoints2 = null;
        List<PointF> listJsonToPoints3 = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case 1:
                    listJsonToPoints3 = JsonUtils.jsonToPoints(jsonReader, f);
                    break;
                case 2:
                    listJsonToPoints2 = JsonUtils.jsonToPoints(jsonReader, f);
                    break;
                case 3:
                    listJsonToPoints = JsonUtils.jsonToPoints(jsonReader, f);
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (jsonReader.peek() == JsonReader.Token.END_ARRAY) {
            jsonReader.endArray();
        }
        if (listJsonToPoints3 == null || listJsonToPoints2 == null || listJsonToPoints == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{103, 88, 84, 72, 4, 69, 80, 81, 65, 89, 65, 18, 85, 67, 21, 85, 8, 22, 71, 89, 91, 95, 65, 12, 90, 86, 90, 74, 12, 4, 64, 89, 90, 86, 79}, "4058ae", false));
        }
        if (listJsonToPoints3.isEmpty()) {
            return new ShapeData(new PointF(), false, Collections.emptyList());
        }
        int size = listJsonToPoints3.size();
        PointF pointF = listJsonToPoints3.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i = 1; i < size; i++) {
            PointF pointF2 = listJsonToPoints3.get(i);
            arrayList.add(new CubicCurveData(MiscUtils.addPoints(listJsonToPoints3.get(i - 1), listJsonToPoints.get(i - 1)), MiscUtils.addPoints(pointF2, listJsonToPoints2.get(i)), pointF2));
        }
        if (zNextBoolean) {
            PointF pointF3 = listJsonToPoints3.get(0);
            arrayList.add(new CubicCurveData(MiscUtils.addPoints(listJsonToPoints3.get(size - 1), listJsonToPoints.get(size - 1)), MiscUtils.addPoints(pointF3, listJsonToPoints2.get(0)), pointF3));
        }
        return new ShapeData(pointF, zNextBoolean, arrayList);
    }
}
