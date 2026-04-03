package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.keyframe.PathKeyframe;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class KeyframesParser {
    static JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{89}, "2e71b7", 1682227931L));

    private KeyframesParser() {
    }

    static <T> List<Keyframe<T>> parse(JsonReader jsonReader, LottieComposition lottieComposition, float f, ValueParser<T> valueParser, boolean z) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonReader.Token.STRING) {
            lottieComposition.addWarning(NPStringFog.decode(new byte[]{125, 91, 64, 23, 13, 4, 17, 80, 91, 6, 23, 15, 22, 64, 20, 16, 17, 17, 65, 91, 70, 23, 68, 4, 73, 68, 70, 6, 23, 18, 88, 91, 90, 16, 74}, "144cda", -194609188L));
        } else {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                switch (jsonReader.selectName(NAMES)) {
                    case 0:
                        if (jsonReader.peek() != JsonReader.Token.BEGIN_ARRAY) {
                            arrayList.add(KeyframeParser.parse(jsonReader, lottieComposition, f, valueParser, false, z));
                        } else {
                            jsonReader.beginArray();
                            if (jsonReader.peek() == JsonReader.Token.NUMBER) {
                                arrayList.add(KeyframeParser.parse(jsonReader, lottieComposition, f, valueParser, false, z));
                            } else {
                                while (jsonReader.hasNext()) {
                                    arrayList.add(KeyframeParser.parse(jsonReader, lottieComposition, f, valueParser, true, z));
                                }
                            }
                            jsonReader.endArray();
                        }
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
            setEndFrames(arrayList);
        }
        return arrayList;
    }

    public static <T> void setEndFrames(List<? extends Keyframe<T>> list) {
        int size = list.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= size - 1) {
                break;
            }
            Keyframe<T> keyframe = list.get(i2);
            Keyframe<T> keyframe2 = list.get(i2 + 1);
            keyframe.endFrame = Float.valueOf(keyframe2.startFrame);
            if (keyframe.endValue == null && keyframe2.startValue != null) {
                keyframe.endValue = keyframe2.startValue;
                if (keyframe instanceof PathKeyframe) {
                    ((PathKeyframe) keyframe).createPath();
                }
            }
            i = i2 + 1;
        }
        Keyframe<T> keyframe3 = list.get(size - 1);
        if ((keyframe3.startValue == null || keyframe3.endValue == null) && list.size() > 1) {
            list.remove(keyframe3);
        }
    }
}
