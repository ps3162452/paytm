package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatableSplitDimensionPathValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class AnimatablePathValueParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{14}, "e35740", -1.604013886E9d), NPStringFog.decode(new byte[]{26}, "b00b3b", false), NPStringFog.decode(new byte[]{78}, "7f546c", false, true));

    private AnimatablePathValueParser() {
    }

    public static AnimatablePathValue parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                arrayList.add(PathKeyframeParser.parse(jsonReader, lottieComposition));
            }
            jsonReader.endArray();
            KeyframesParser.setEndFrames(arrayList);
        } else {
            arrayList.add(new Keyframe(JsonUtils.jsonToPoint(jsonReader, Utils.dpScale())));
        }
        return new AnimatablePathValue(arrayList);
    }

    static AnimatableValue<PointF, PointF> parseSplitPath(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        AnimatableFloatValue animatableFloatValue = null;
        boolean z = false;
        jsonReader.beginObject();
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatablePathValue animatablePathValue = null;
        while (jsonReader.peek() != JsonReader.Token.END_OBJECT) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    animatablePathValue = parse(jsonReader, lottieComposition);
                    break;
                case 1:
                    if (jsonReader.peek() != JsonReader.Token.STRING) {
                        animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    } else {
                        jsonReader.skipValue();
                        z = true;
                    }
                    break;
                case 2:
                    if (jsonReader.peek() != JsonReader.Token.STRING) {
                        animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    } else {
                        jsonReader.skipValue();
                        z = true;
                    }
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (z) {
            lottieComposition.addWarning(NPStringFog.decode(new byte[]{122, 12, 71, 68, 8, 84, 22, 7, 92, 85, 18, 95, 17, 23, 19, 67, 20, 65, 70, 12, 65, 68, 65, 84, 78, 19, 65, 85, 18, 66, 95, 12, 93, 67, 79}, "6c30a1", -15003));
        }
        return animatablePathValue != null ? animatablePathValue : new AnimatableSplitDimensionPathValue(animatableFloatValue2, animatableFloatValue);
    }
}
