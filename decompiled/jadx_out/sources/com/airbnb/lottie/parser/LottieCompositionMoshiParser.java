package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class LottieCompositionMoshiParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{19}, "dbe6fa", false), NPStringFog.decode(new byte[]{9}, "ae8d73", true, true), NPStringFog.decode(new byte[]{92, 67}, "53d0cf", -1833590502L), NPStringFog.decode(new byte[]{9, 21}, "feae23", 1.0605322E9f), NPStringFog.decode(new byte[]{85, 19}, "3a9d3c", false, true), NPStringFog.decode(new byte[]{66}, "401cf1", false), NPStringFog.decode(new byte[]{8, 84, 24, 3, 68, 71}, "d5af64", -1.75619692E8d), NPStringFog.decode(new byte[]{86, 64, 67, 93, 67, 65}, "730872", -476314137L), NPStringFog.decode(new byte[]{82, 91, 10, 17, 66}, "44de18", 5.0276867E8f), NPStringFog.decode(new byte[]{81, 92, 86, 70, 67}, "247402", false, true), NPStringFog.decode(new byte[]{15, 5, 66, 13, 92, 16, 17}, "bd0f9b", 1.480773516E9d));
    static JsonReader.Options ASSETS_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{15, 0}, "fd6798", 7.4450874E8f), NPStringFog.decode(new byte[]{8, 4, 65, 92, 69, 66}, "de8971", true), NPStringFog.decode(new byte[]{69}, "2279cc", true, false), NPStringFog.decode(new byte[]{11}, "c0fae6", 8.4233504E8f), NPStringFog.decode(new byte[]{22}, "f1ff57", true, true), NPStringFog.decode(new byte[]{66}, "734f89", 9.644219E8f));
    private static final JsonReader.Options FONT_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{89, 89, 17, 64}, "50b47f", 217299418L));
    private static final JsonReader.Options MARKER_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{0, 9}, "cdd59b", -1.951948331E9d), NPStringFog.decode(new byte[]{76, 91}, "86e4c6", -1.1605559E9f), NPStringFog.decode(new byte[]{1, 17}, "ec5d05", -5.051777E8f));

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
                    break;
                case 1:
                    iNextInt = jsonReader.nextInt();
                    break;
                case 2:
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    break;
                case 3:
                    fNextDouble2 = ((float) jsonReader.nextDouble()) - 0.01f;
                    break;
                case 4:
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case 5:
                    String[] strArrSplit = jsonReader.nextString().split(NPStringFog.decode(new byte[]{101, 75}, "9ef36d", true));
                    if (!Utils.isAtLeastVersion(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        lottieComposition.addWarning(NPStringFog.decode(new byte[]{47, 9, 70, 76, 90, 87, 67, 9, 92, 84, 74, 18, 16, 19, 66, 72, 92, 64, 23, 21, 18, 90, 92, 86, 26, 11, 93, 78, 90, 92, 67, 88, 15, 24, 7, 28, 87, 72, 2}, "cf2832", -2013419969L));
                    }
                    break;
                case 6:
                    parseLayers(jsonReader, lottieComposition, arrayList, longSparseArray);
                    break;
                case 7:
                    parseAssets(jsonReader, lottieComposition, map, map2);
                    break;
                case 8:
                    parseFonts(jsonReader, map3);
                    break;
                case 9:
                    parseChars(jsonReader, lottieComposition, sparseArrayCompat);
                    break;
                case 10:
                    parseMarkers(jsonReader, lottieComposition, arrayList2);
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        lottieComposition.init(new Rect(0, 0, (int) (iNextInt2 * fDpScale), (int) (iNextInt * fDpScale)), fNextDouble3, fNextDouble2, fNextDouble, arrayList, longSparseArray, map, map2, sparseArrayCompat, map3, arrayList2);
        return lottieComposition;
    }

    private static void parseAssets(JsonReader jsonReader, LottieComposition lottieComposition, Map<String, List<Layer>> map, Map<String, LottieImageAsset> map2) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.beginObject();
            String strNextString = null;
            String strNextString2 = null;
            int iNextInt = 0;
            int iNextInt2 = 0;
            String strNextString3 = null;
            while (jsonReader.hasNext()) {
                switch (jsonReader.selectName(ASSETS_NAMES)) {
                    case 0:
                        strNextString3 = jsonReader.nextString();
                        break;
                    case 1:
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            Layer layer = LayerParser.parse(jsonReader, lottieComposition);
                            longSparseArray.put(layer.getId(), layer);
                            arrayList.add(layer);
                        }
                        jsonReader.endArray();
                        break;
                    case 2:
                        iNextInt2 = jsonReader.nextInt();
                        break;
                    case 3:
                        iNextInt = jsonReader.nextInt();
                        break;
                    case 4:
                        strNextString2 = jsonReader.nextString();
                        break;
                    case 5:
                        strNextString = jsonReader.nextString();
                        break;
                    default:
                        jsonReader.skipName();
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
            if (strNextString2 != null) {
                LottieImageAsset lottieImageAsset = new LottieImageAsset(iNextInt2, iNextInt, strNextString3, strNextString2, strNextString);
                map2.put(lottieImageAsset.getId(), lottieImageAsset);
            } else {
                map.put(strNextString3, arrayList);
            }
        }
        jsonReader.endArray();
    }

    private static void parseChars(JsonReader jsonReader, LottieComposition lottieComposition, SparseArrayCompat<FontCharacter> sparseArrayCompat) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            FontCharacter fontCharacter = FontCharacterParser.parse(jsonReader, lottieComposition);
            sparseArrayCompat.put(fontCharacter.hashCode(), fontCharacter);
        }
        jsonReader.endArray();
    }

    private static void parseFonts(JsonReader jsonReader, Map<String, Font> map) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(FONT_NAMES)) {
                case 0:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        Font font = FontParser.parse(jsonReader);
                        map.put(font.getName(), font);
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
    }

    private static void parseLayers(JsonReader jsonReader, LottieComposition lottieComposition, List<Layer> list, LongSparseArray<Layer> longSparseArray) throws IOException {
        jsonReader.beginArray();
        int i = 0;
        while (jsonReader.hasNext()) {
            Layer layer = LayerParser.parse(jsonReader, lottieComposition);
            if (layer.getLayerType() == Layer.LayerType.IMAGE) {
                i++;
            }
            list.add(layer);
            longSparseArray.put(layer.getId(), layer);
            if (i > 4) {
                Logger.warning(NPStringFog.decode(new byte[]{59, 88, 16, 65, 13, 5, 20, 82, 69}, "b7eaed", false, false) + i + NPStringFog.decode(new byte[]{20, 13, 85, 83, 83, 82, 71, 74, 24, 126, 91, 67, 64, 13, 93, 18, 71, 95, 91, 17, 84, 86, 20, 71, 70, 13, 85, 83, 70, 94, 88, 29, 24, 80, 81, 23, 65, 23, 93, 86, 20, 64, 93, 16, 80, 18, 71, 95, 85, 20, 93, 65, 26, 23, 125, 2, 24, 75, 91, 66, 20, 5, 74, 87, 20, 66, 71, 13, 86, 85, 20, 118, 80, 11, 90, 87, 20, 126, 88, 8, 77, 65, 64, 69, 85, 16, 87, 64, 24, 23, 87, 11, 86, 68, 81, 69, 64, 68, 76, 90, 81, 23, 125, 8, 84, 71, 71, 67, 70, 5, 76, 93, 70, 23, 88, 5, 65, 87, 70, 68, 20, 16, 87, 18, 71, 95, 85, 20, 93, 18, 88, 86, 77, 1, 74, 65, 26}, "4d8247", true));
            }
        }
        jsonReader.endArray();
    }

    private static void parseMarkers(JsonReader jsonReader, LottieComposition lottieComposition, List<Marker> list) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            float fNextDouble = 0.0f;
            String strNextString = null;
            float fNextDouble2 = 0.0f;
            while (jsonReader.hasNext()) {
                switch (jsonReader.selectName(MARKER_NAMES)) {
                    case 0:
                        strNextString = jsonReader.nextString();
                        break;
                    case 1:
                        fNextDouble = (float) jsonReader.nextDouble();
                        break;
                    case 2:
                        fNextDouble2 = (float) jsonReader.nextDouble();
                        break;
                    default:
                        jsonReader.skipName();
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
            list.add(new Marker(strNextString, fNextDouble, fNextDouble2));
        }
        jsonReader.endArray();
    }
}
