package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class LottieCompositionParser {
    static JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{68}, "3b08c2", false, false), NPStringFog.decode(new byte[]{88}, "043151", -23620), NPStringFog.decode(new byte[]{95, 22}, "6fce87", 1.203170795E9d), NPStringFog.decode(new byte[]{93, 73}, "297dff", -247443725L), NPStringFog.decode(new byte[]{82, 75}, "49ee62", 18966), NPStringFog.decode(new byte[]{16}, "fb0b5d", false), NPStringFog.decode(new byte[]{91, 2, 76, 87, 17, 67}, "7c52c0", 1.60015237E9d), NPStringFog.decode(new byte[]{7, 67, 71, 4, 70, 68}, "f04a27", 10841322L), NPStringFog.decode(new byte[]{95, 10, 94, 65, 23}, "9e05d5", 1009263711L), NPStringFog.decode(new byte[]{2, 81, 7, 67, 22}, "a9f1e7", 2.5914474E8f), NPStringFog.decode(new byte[]{90, 3, 66, 83, 84, 17, 68}, "7b081c", true));

    public static LottieComposition parse(JsonReader jsonReader) throws IOException {
        float fDpScale = Utils.dpScale();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArrayCompat<FontCharacter> sparseArrayCompat = new SparseArrayCompat<>();
        LottieComposition lottieComposition = new LottieComposition();
        jsonReader.beginObject();
        int iNextInt = 0;
        int iNextInt2 = 0;
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    iNextInt2 = jsonReader.nextInt();
                    continue;
                case 1:
                    iNextInt = jsonReader.nextInt();
                    continue;
                case 2:
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    continue;
                case 3:
                    fNextDouble2 = ((float) jsonReader.nextDouble()) - 0.01f;
                    continue;
                case 4:
                    fNextDouble = (float) jsonReader.nextDouble();
                    continue;
                case 5:
                    String[] strArrSplit = jsonReader.nextString().split(NPStringFog.decode(new byte[]{62, 27}, "b58deb", false));
                    if (Utils.isAtLeastVersion(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        continue;
                    } else {
                        lottieComposition.addWarning(NPStringFog.decode(new byte[]{40, 91, 21, 16, 15, 7, 68, 91, 15, 8, 31, 66, 23, 65, 17, 20, 9, 16, 16, 71, 65, 6, 9, 6, 29, 89, 14, 18, 15, 12, 68, 10, 92, 68, 82, 76, 80, 26, 81}, "d4adfb", 20379));
                    }
                    break;
                case 6:
                    parseLayers(jsonReader, lottieComposition, arrayList, longSparseArray);
                    break;
            }
            jsonReader.skipValue();
        }
        lottieComposition.init(new Rect(0, 0, (int) (iNextInt2 * fDpScale), (int) (iNextInt * fDpScale)), fNextDouble3, fNextDouble2, fNextDouble, arrayList, longSparseArray, map, map2, sparseArrayCompat, map3, arrayList2);
        return lottieComposition;
    }

    private static void parseLayers(JsonReader jsonReader, LottieComposition lottieComposition, List<Layer> list, LongSparseArray<Layer> longSparseArray) throws IOException {
        int i = 0;
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            Layer layer = LayerParser.parse(jsonReader, lottieComposition);
            if (layer.getLayerType() == Layer.LayerType.IMAGE) {
                i++;
            }
            list.add(layer);
            longSparseArray.put(layer.getId(), layer);
            if (i > 4) {
                Logger.warning(NPStringFog.decode(new byte[]{96, 14, 20, 18, 13, 81, 79, 4, 65}, "9aa2e0", -537628919L) + i + NPStringFog.decode(new byte[]{16, 95, 91, 4, 2, 7, 67, 24, 22, 41, 10, 22, 68, 95, 83, 69, 22, 10, 95, 67, 90, 1, 69, 18, 66, 95, 91, 4, 23, 11, 92, 79, 22, 7, 0, 66, 69, 69, 83, 1, 69, 21, 89, 66, 94, 69, 22, 10, 81, 70, 83, 22, 75, 66, 121, 80, 22, 28, 10, 23, 16, 87, 68, 0, 69, 23, 67, 95, 88, 2, 69, 35, 84, 89, 84, 0, 69, 43, 92, 90, 67, 22, 17, 16, 81, 66, 89, 23, 73, 66, 83, 89, 88, 19, 0, 16, 68, 22, 66, 13, 0, 66, 121, 90, 90, 16, 22, 22, 66, 87, 66, 10, 23, 66, 92, 87, 79, 0, 23, 17, 16, 66, 89, 69, 22, 10, 81, 70, 83, 69, 9, 3, 73, 83, 68, 22, 75}, "066eeb", 458523725L));
            }
        }
        jsonReader.endArray();
    }
}
