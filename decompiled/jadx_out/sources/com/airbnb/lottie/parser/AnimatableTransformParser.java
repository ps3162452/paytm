package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatableScaleValue;
import com.airbnb.lottie.model.animatable.AnimatableSplitDimensionPathValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.ScaleXY;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class AnimatableTransformParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{81}, "06e7f3", false), NPStringFog.decode(new byte[]{19}, "c2bc0c", true, true), NPStringFog.decode(new byte[]{70}, "5e230e", 141599636L), NPStringFog.decode(new byte[]{75, 67}, "995671", 10618), NPStringFog.decode(new byte[]{69}, "756da9", false), NPStringFog.decode(new byte[]{94}, "13c0f4", 8.08535914E8d), NPStringFog.decode(new byte[]{74, 9}, "9f9f66", false, true), NPStringFog.decode(new byte[]{93, 91}, "84a7e6", -22128), NPStringFog.decode(new byte[]{22, 91}, "e0a904", false), NPStringFog.decode(new byte[]{65, 4}, "2e901d", 1.836268647E9d));
    private static final JsonReader.Options ANIMATABLE_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{15}, "d9c45a", 14215));

    private AnimatableTransformParser() {
    }

    private static boolean isAnchorPointIdentity(AnimatablePathValue animatablePathValue) {
        return animatablePathValue == null || (animatablePathValue.isStatic() && animatablePathValue.getKeyframes().get(0).startValue.equals(0.0f, 0.0f));
    }

    private static boolean isPositionIdentity(AnimatableValue<PointF, PointF> animatableValue) {
        return animatableValue == null || (!(animatableValue instanceof AnimatableSplitDimensionPathValue) && animatableValue.isStatic() && animatableValue.getKeyframes().get(0).startValue.equals(0.0f, 0.0f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isRotationIdentity(AnimatableFloatValue animatableFloatValue) {
        return animatableFloatValue == null || (animatableFloatValue.isStatic() && ((Float) ((Keyframe) animatableFloatValue.getKeyframes().get(0)).startValue).floatValue() == 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isScaleIdentity(AnimatableScaleValue animatableScaleValue) {
        return animatableScaleValue == null || (animatableScaleValue.isStatic() && ((ScaleXY) ((Keyframe) animatableScaleValue.getKeyframes().get(0)).startValue).equals(1.0f, 1.0f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isSkewAngleIdentity(AnimatableFloatValue animatableFloatValue) {
        return animatableFloatValue == null || (animatableFloatValue.isStatic() && ((Float) ((Keyframe) animatableFloatValue.getKeyframes().get(0)).startValue).floatValue() == 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isSkewIdentity(AnimatableFloatValue animatableFloatValue) {
        return animatableFloatValue == null || (animatableFloatValue.isStatic() && ((Float) ((Keyframe) animatableFloatValue.getKeyframes().get(0)).startValue).floatValue() == 0.0f);
    }

    public static AnimatableTransform parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        AnimatableFloatValue animatableFloatValue = null;
        boolean z = jsonReader.peek() == JsonReader.Token.BEGIN_OBJECT;
        if (z) {
            jsonReader.beginObject();
        }
        AnimatableValue<PointF, PointF> splitPath = null;
        AnimatableScaleValue scale = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableFloatValue animatableFloatValue3 = null;
        AnimatableFloatValue animatableFloatValue4 = null;
        AnimatableIntegerValue integer = null;
        AnimatableFloatValue animatableFloatValue5 = null;
        AnimatablePathValue animatablePathValue = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    jsonReader.beginObject();
                    AnimatablePathValue animatablePathValue2 = animatablePathValue;
                    while (jsonReader.hasNext()) {
                        switch (jsonReader.selectName(ANIMATABLE_NAMES)) {
                            case 0:
                                animatablePathValue2 = AnimatablePathValueParser.parse(jsonReader, lottieComposition);
                                break;
                            default:
                                jsonReader.skipName();
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    animatablePathValue = animatablePathValue2;
                    continue;
                case 1:
                    splitPath = AnimatablePathValueParser.parseSplitPath(jsonReader, lottieComposition);
                    continue;
                case 2:
                    scale = AnimatableValueParser.parseScale(jsonReader, lottieComposition);
                    continue;
                case 3:
                    lottieComposition.addWarning(NPStringFog.decode(new byte[]{42, 94, 17, 16, 91, 3, 70, 85, 10, 1, 65, 8, 65, 69, 69, 23, 71, 22, 22, 94, 23, 16, 18, 85, 34, 17, 9, 5, 75, 3, 20, 66, 75}, "f1ed2f", 7779));
                    break;
                case 4:
                    break;
                case 5:
                    integer = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                    continue;
                case 6:
                    animatableFloatValue4 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    continue;
                case 7:
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    continue;
                case 8:
                    animatableFloatValue3 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    continue;
                case 9:
                    animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    continue;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    continue;
            }
            AnimatableFloatValue animatableFloatValue6 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
            if (animatableFloatValue6.getKeyframes().isEmpty()) {
                animatableFloatValue6.getKeyframes().add(new Keyframe(lottieComposition, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(lottieComposition.getEndFrame())));
                animatableFloatValue5 = animatableFloatValue6;
            } else if (((Keyframe) animatableFloatValue6.getKeyframes().get(0)).startValue == 0) {
                animatableFloatValue6.getKeyframes().set(0, new Keyframe(lottieComposition, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(lottieComposition.getEndFrame())));
                animatableFloatValue5 = animatableFloatValue6;
            } else {
                animatableFloatValue5 = animatableFloatValue6;
            }
        }
        if (z) {
            jsonReader.endObject();
        }
        return new AnimatableTransform(isAnchorPointIdentity(animatablePathValue) ? null : animatablePathValue, isPositionIdentity(splitPath) ? null : splitPath, isScaleIdentity(scale) ? null : scale, isRotationIdentity(animatableFloatValue5) ? null : animatableFloatValue5, integer, animatableFloatValue4, animatableFloatValue, isSkewIdentity(animatableFloatValue3) ? null : animatableFloatValue3, isSkewAngleIdentity(animatableFloatValue2) ? null : animatableFloatValue2);
    }
}
