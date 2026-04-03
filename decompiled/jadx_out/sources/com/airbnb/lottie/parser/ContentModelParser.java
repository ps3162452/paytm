package com.airbnb.lottie.parser;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class ContentModelParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{64, 28}, "4e4d90", -25302), NPStringFog.decode(new byte[]{81}, "591d1e", true, false));

    private ContentModelParser() {
    }

    @Nullable
    static ContentModel parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        String strNextString;
        ContentModel contentModel;
        byte b = 2;
        jsonReader.beginObject();
        int iNextInt = 2;
        while (true) {
            if (jsonReader.hasNext()) {
                switch (jsonReader.selectName(NAMES)) {
                    case 0:
                        strNextString = jsonReader.nextString();
                        break;
                    case 1:
                        iNextInt = jsonReader.nextInt();
                        break;
                    default:
                        jsonReader.skipName();
                        jsonReader.skipValue();
                        break;
                }
            } else {
                strNextString = null;
            }
        }
        if (strNextString == null) {
            return null;
        }
        switch (strNextString.hashCode()) {
            case 3239:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{0, 8}, "edc999", false)) ? (byte) -1 : (byte) 7;
                break;
            case 3270:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{4, 85}, "b9ae84", 1.98009355E9d)) ? (byte) -1 : (byte) 3;
                break;
            case 3295:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{94, 2}, "9d874c", true, false)) ? (byte) -1 : (byte) 4;
                break;
            case 3307:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{85, 19}, "2adfce", -834287840L)) ? (byte) -1 : (byte) 0;
                break;
            case 3308:
                if (!strNextString.equals(NPStringFog.decode(new byte[]{6, 64}, "a3af67", -3.2540208E8f))) {
                    b = -1;
                }
                break;
            case 3488:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{9, 84}, "d9dcb6", 622627143L)) ? (byte) -1 : (byte) 11;
                break;
            case 3633:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{75, 6}, "9ebaab", -9.030475E8f)) ? (byte) -1 : (byte) 8;
                break;
            case 3646:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{17, 64}, "c0b5c1", 15681)) ? (byte) -1 : (byte) 12;
                break;
            case 3669:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{64, 91}, "3368f6", 7924726L)) ? (byte) -1 : (byte) 6;
                break;
            case 3679:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{23, 68}, "d64b6a", false, false)) ? (byte) -1 : (byte) 10;
                break;
            case 3681:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{65, 71}, "23232a", 6.5838374E8f)) ? (byte) -1 : (byte) 1;
                break;
            case 3705:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{68, 88}, "052be3", 23690)) ? (byte) -1 : (byte) 9;
                break;
            case 3710:
                b = !strNextString.equals(NPStringFog.decode(new byte[]{68, 67}, "0139c6", false, false)) ? (byte) -1 : (byte) 5;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                contentModel = ShapeGroupParser.parse(jsonReader, lottieComposition);
                break;
            case 1:
                contentModel = ShapeStrokeParser.parse(jsonReader, lottieComposition);
                break;
            case 2:
                contentModel = GradientStrokeParser.parse(jsonReader, lottieComposition);
                break;
            case 3:
                contentModel = ShapeFillParser.parse(jsonReader, lottieComposition);
                break;
            case 4:
                contentModel = GradientFillParser.parse(jsonReader, lottieComposition);
                break;
            case 5:
                contentModel = AnimatableTransformParser.parse(jsonReader, lottieComposition);
                break;
            case 6:
                contentModel = ShapePathParser.parse(jsonReader, lottieComposition);
                break;
            case 7:
                contentModel = CircleShapeParser.parse(jsonReader, lottieComposition, iNextInt);
                break;
            case 8:
                contentModel = RectangleShapeParser.parse(jsonReader, lottieComposition);
                break;
            case 9:
                contentModel = ShapeTrimPathParser.parse(jsonReader, lottieComposition);
                break;
            case 10:
                contentModel = PolystarShapeParser.parse(jsonReader, lottieComposition);
                break;
            case 11:
                contentModel = MergePathsParser.parse(jsonReader);
                lottieComposition.addWarning(NPStringFog.decode(new byte[]{113, 8, 80, 88, 84, 66, 89, 9, 87, 21, 86, 89, 94, 18, 88, 92, 91, 69, 16, 11, 92, 71, 82, 83, 16, 22, 88, 65, 93, 69, 30, 70, 116, 80, 71, 81, 85, 70, 73, 84, 65, 94, 67, 70, 88, 71, 80, 22, 95, 8, 85, 76, 21, 69, 69, 22, 73, 90, 71, 66, 85, 2, 25, 90, 91, 22, 123, 15, 77, 126, 84, 66, 27, 70, 88, 91, 81, 22, 93, 19, 74, 65, 21, 84, 85, 70, 84, 84, 91, 67, 81, 10, 85, 76, 21, 83, 94, 7, 91, 89, 80, 82, 16, 4, 64, 21, 86, 87, 92, 10, 80, 91, 82, 22, 85, 8, 88, 87, 89, 83, 125, 3, 75, 82, 80, 102, 81, 18, 81, 70, 115, 89, 66, 45, 80, 65, 126, 87, 68, 39, 87, 81, 116, 84, 95, 16, 92, 29, 28, 24}, "0f9556", 1.59653838E8d));
                break;
            case 12:
                contentModel = RepeaterParser.parse(jsonReader, lottieComposition);
                break;
            default:
                Logger.warning(NPStringFog.decode(new byte[]{97, 89, 94, 91, 11, 17, 90, 23, 70, 93, 5, 22, 81, 23, 65, 76, 20, 3, 20}, "4755df", 1.573443609E9d) + strNextString);
                contentModel = null;
                break;
        }
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endObject();
        return contentModel;
    }
}
