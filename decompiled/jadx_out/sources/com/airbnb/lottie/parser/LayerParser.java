package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class LayerParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{90, 11}, "4f92d3", true), NPStringFog.decode(new byte[]{13, 90, 85}, "d4177d", -1870509504L), NPStringFog.decode(new byte[]{22, 92, 82, 45, 0}, "d94dd1", -1.813909366E9d), NPStringFog.decode(new byte[]{17, 75}, "e2c41a", 21380), NPStringFog.decode(new byte[]{73, 86, 70, 92, 87, 77}, "974999", -1068488658L), NPStringFog.decode(new byte[]{67, 20}, "0c1116", 2103324823L), NPStringFog.decode(new byte[]{68, 95}, "773fe0", false), NPStringFog.decode(new byte[]{65, 5}, "2f80e0", false, true), NPStringFog.decode(new byte[]{93, 65}, "62acd2", 1565581338L), NPStringFog.decode(new byte[]{66, 64}, "64413f", 1289882956L), NPStringFog.decode(new byte[]{90, 81, 22, 83, 69, 100, 69, 95, 21, 93, 68, 64, 94, 85, 22}, "70e864", false), NPStringFog.decode(new byte[]{66, 91, 80, 70, 4, 17}, "1316ab", false), NPStringFog.decode(new byte[]{64}, "402daa", -1573361822L), NPStringFog.decode(new byte[]{86, 80}, "367666", 6.37332175E8d), NPStringFog.decode(new byte[]{68, 74}, "78edc0", true, true), NPStringFog.decode(new byte[]{74, 69}, "912c7c", true, false), NPStringFog.decode(new byte[]{19}, "d8139d", 641254256L), NPStringFog.decode(new byte[]{12}, "deef5b", 1.64738394E9d), NPStringFog.decode(new byte[]{13, 68}, "d4bfb3", -1.09996109E9d), NPStringFog.decode(new byte[]{87, 66}, "82ec07", 28611), NPStringFog.decode(new byte[]{70, 8}, "2ecbc0", 18057), NPStringFog.decode(new byte[]{84, 10}, "7fd8cc", true, false), NPStringFog.decode(new byte[]{92, 80}, "44c770", -1.043932575E9d));
    private static final JsonReader.Options TEXT_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{6}, "b31651", false), NPStringFog.decode(new byte[]{0}, "a24cbe", 1.08163428E8d));
    private static final JsonReader.Options EFFECTS_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{12, 14}, "bcf4a5", false));

    /* JADX INFO: renamed from: com.airbnb.lottie.parser.LayerParser$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType = new int[Layer.MatteType.values().length];

        static {
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private LayerParser() {
    }

    public static Layer parse(LottieComposition lottieComposition) {
        Rect bounds = lottieComposition.getBounds();
        return new Layer(Collections.emptyList(), lottieComposition, NPStringFog.decode(new byte[]{58, 108, 83, 90, 10, 16, 4, 90, 94, 80, 22}, "e305dd", 499041436L), -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new AnimatableTransform(), 0, 0, 0, 0.0f, 0.0f, bounds.width(), bounds.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false);
    }

    public static Layer parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        String strDecode = NPStringFog.decode(new byte[]{101, 125, 100, 113, 50}, "0374f4", false);
        String strNextString = null;
        int iNextInt = 0;
        int iNextInt2 = 0;
        int color = 0;
        int iNextInt3 = 0;
        int iNextInt4 = 0;
        long jNextInt = -1;
        float fNextDouble = 1.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        float fNextDouble4 = 0.0f;
        boolean zNextBoolean = false;
        Layer.MatteType matteType = Layer.MatteType.NONE;
        AnimatableTransform animatableTransform = null;
        AnimatableTextFrame documentData = null;
        AnimatableTextProperties animatableTextProperties = null;
        AnimatableFloatValue animatableFloatValue = null;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.beginObject();
        String strNextString2 = null;
        long jNextInt2 = 0;
        Layer.LayerType layerType = null;
        String strNextString3 = strDecode;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    strNextString3 = jsonReader.nextString();
                    break;
                case 1:
                    jNextInt2 = jsonReader.nextInt();
                    break;
                case 2:
                    strNextString = jsonReader.nextString();
                    break;
                case 3:
                    int iNextInt5 = jsonReader.nextInt();
                    layerType = iNextInt5 >= Layer.LayerType.UNKNOWN.ordinal() ? Layer.LayerType.UNKNOWN : Layer.LayerType.values()[iNextInt5];
                    break;
                case 4:
                    jNextInt = jsonReader.nextInt();
                    break;
                case 5:
                    iNextInt = (int) (jsonReader.nextInt() * Utils.dpScale());
                    break;
                case 6:
                    iNextInt2 = (int) (jsonReader.nextInt() * Utils.dpScale());
                    break;
                case 7:
                    color = Color.parseColor(jsonReader.nextString());
                    break;
                case 8:
                    animatableTransform = AnimatableTransformParser.parse(jsonReader, lottieComposition);
                    break;
                case 9:
                    int iNextInt6 = jsonReader.nextInt();
                    if (iNextInt6 < Layer.MatteType.values().length) {
                        matteType = Layer.MatteType.values()[iNextInt6];
                        switch (AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[matteType.ordinal()]) {
                            case 1:
                                lottieComposition.addWarning(NPStringFog.decode(new byte[]{108, 94, 21, 66, 17, 65, 86, 66, 18, 82, 5, 17, 84, 81, 18, 67, 4, 17, 77, 73, 22, 82, 91, 17, 117, 69, 11, 86}, "90f7a1", true, false));
                                break;
                            case 2:
                                lottieComposition.addWarning(NPStringFog.decode(new byte[]{102, 88, 23, 66, 69, 68, 92, 68, 16, 82, 81, 20, 94, 87, 16, 67, 80, 20, 71, 79, 20, 82, 15, 20, 127, 67, 9, 86, 21, 125, 93, 64, 1, 69, 65, 81, 87}, "36d754", -119662344L));
                                break;
                        }
                        lottieComposition.incrementMatteOrMaskCount(1);
                    } else {
                        lottieComposition.addWarning(NPStringFog.decode(new byte[]{99, 86, 74, 70, 69, 67, 89, 74, 77, 86, 81, 19, 91, 89, 77, 71, 80, 19, 66, 65, 73, 86, 15, 19}, "689353", false, true) + iNextInt6);
                    }
                    break;
                case 10:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList.add(MaskParser.parse(jsonReader, lottieComposition));
                    }
                    lottieComposition.incrementMatteOrMaskCount(arrayList.size());
                    jsonReader.endArray();
                    break;
                case 11:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        ContentModel contentModel = ContentModelParser.parse(jsonReader, lottieComposition);
                        if (contentModel != null) {
                            arrayList2.add(contentModel);
                        }
                    }
                    jsonReader.endArray();
                    break;
                case 12:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        switch (jsonReader.selectName(TEXT_NAMES)) {
                            case 0:
                                documentData = AnimatableValueParser.parseDocumentData(jsonReader, lottieComposition);
                                break;
                            case 1:
                                jsonReader.beginArray();
                                if (jsonReader.hasNext()) {
                                    animatableTextProperties = AnimatableTextPropertiesParser.parse(jsonReader, lottieComposition);
                                }
                                while (jsonReader.hasNext()) {
                                    jsonReader.skipValue();
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
                case 13:
                    jsonReader.beginArray();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            switch (jsonReader.selectName(EFFECTS_NAMES)) {
                                case 0:
                                    arrayList3.add(jsonReader.nextString());
                                    break;
                                default:
                                    jsonReader.skipName();
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    lottieComposition.addWarning(NPStringFog.decode(new byte[]{42, 14, 64, 21, 93, 7, 70, 5, 91, 4, 71, 12, 65, 21, 20, 18, 65, 18, 22, 14, 70, 21, 20, 14, 7, 24, 81, 19, 20, 7, 0, 7, 81, 2, 64, 17, 72, 65, 125, 7, 20, 27, 9, 20, 20, 0, 70, 7, 70, 20, 71, 8, 90, 5, 70, 21, 92, 4, 89, 66, 0, 14, 70, 65, 20, 4, 15, 13, 88, 18, 24, 66, 21, 21, 70, 14, 95, 7, 21, 77, 20, 21, 70, 11, 11, 65, 68, 0, 64, 10, 21, 65, 81, 21, 87, 76, 70, 21, 92, 4, 90, 66, 18, 19, 77, 65, 85, 6, 2, 8, 90, 6, 20, 22, 14, 4, 89, 65, 80, 11, 20, 4, 87, 21, 88, 27, 70, 0, 71, 65, 87, 13, 8, 21, 81, 15, 64, 17, 70, 65, 93, 15, 20, 27, 9, 20, 70, 65, 71, 10, 7, 17, 81, 79, 20, 36, 9, 20, 90, 5, 14, 66}, "fa4a4b", false, true) + arrayList3);
                    break;
                case 14:
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case 15:
                    fNextDouble2 = (float) jsonReader.nextDouble();
                    break;
                case 16:
                    iNextInt3 = (int) (jsonReader.nextInt() * Utils.dpScale());
                    break;
                case 17:
                    iNextInt4 = (int) (jsonReader.nextInt() * Utils.dpScale());
                    break;
                case 18:
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    break;
                case 19:
                    fNextDouble4 = (float) jsonReader.nextDouble();
                    break;
                case 20:
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    break;
                case 21:
                    strNextString2 = jsonReader.nextString();
                    break;
                case 22:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        float f = fNextDouble3 / fNextDouble;
        float endFrame = fNextDouble4 / fNextDouble;
        ArrayList arrayList4 = new ArrayList();
        if (f > 0.0f) {
            arrayList4.add(new Keyframe(lottieComposition, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(f)));
        }
        if (endFrame <= 0.0f) {
            endFrame = lottieComposition.getEndFrame();
        }
        arrayList4.add(new Keyframe(lottieComposition, Float.valueOf(1.0f), Float.valueOf(1.0f), null, f, Float.valueOf(endFrame)));
        arrayList4.add(new Keyframe(lottieComposition, Float.valueOf(0.0f), Float.valueOf(0.0f), null, endFrame, Float.valueOf(Float.MAX_VALUE)));
        if (strNextString3.endsWith(NPStringFog.decode(new byte[]{76, 7, 89}, "bf0a03", true, true)) || NPStringFog.decode(new byte[]{2, 89}, "c0202d", -1130597205L).equals(strNextString2)) {
            lottieComposition.addWarning(NPStringFog.decode(new byte[]{123, 12, 8, 78, 87, 71, 76, 67, 31, 87, 71, 71, 24, 42, 10, 84, 71, 70, 76, 17, 7, 76, 93, 71, 24, 15, 7, 65, 87, 71, 75, 67, 18, 87, 18, 70, 80, 2, 22, 93, 18, 89, 89, 26, 3, 74, 65, 27}, "8cf825", -4.50337452E8d));
        }
        return new Layer(arrayList2, lottieComposition, strNextString3, jNextInt2, layerType, jNextInt, strNextString, arrayList, animatableTransform, iNextInt, iNextInt2, color, fNextDouble, fNextDouble2, iNextInt3, iNextInt4, documentData, animatableTextProperties, arrayList4, matteType, animatableFloatValue, zNextBoolean);
    }
}
