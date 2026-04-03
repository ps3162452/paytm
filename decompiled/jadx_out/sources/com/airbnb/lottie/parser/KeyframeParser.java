package com.airbnb.lottie.parser;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.lang.ref.WeakReference;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class KeyframeParser {
    private static final float MAX_CP_VALUE = 100.0f;
    private static SparseArrayCompat<WeakReference<Interpolator>> pathInterpolatorCache;
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    static JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{71}, "3fe885", true), NPStringFog.decode(new byte[]{67}, "0a7029", 11223), NPStringFog.decode(new byte[]{7}, "bae97b", 1890302428L), NPStringFog.decode(new byte[]{86}, "9119f6", 4.76084823E8d), NPStringFog.decode(new byte[]{92}, "55b35b", -1.974643E9f), NPStringFog.decode(new byte[]{10}, "b07a3c", false, false), NPStringFog.decode(new byte[]{77, 95}, "904b92", -1719442597L), NPStringFog.decode(new byte[]{66, 90}, "634b33", 654287073L));
    static JsonReader.Options INTERPOLATOR_NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{65}, "9ccb17", -1.653635756E9d), NPStringFog.decode(new byte[]{64}, "9267b3", 299));

    KeyframeParser() {
    }

    @Nullable
    private static WeakReference<Interpolator> getInterpolator(int i) {
        WeakReference<Interpolator> weakReference;
        synchronized (KeyframeParser.class) {
            try {
                weakReference = pathInterpolatorCache().get(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return weakReference;
    }

    private static Interpolator interpolatorFor(PointF pointF, PointF pointF2) {
        pointF.x = MiscUtils.clamp(pointF.x, -1.0f, 1.0f);
        pointF.y = MiscUtils.clamp(pointF.y, -100.0f, MAX_CP_VALUE);
        pointF2.x = MiscUtils.clamp(pointF2.x, -1.0f, 1.0f);
        pointF2.y = MiscUtils.clamp(pointF2.y, -100.0f, MAX_CP_VALUE);
        int iHashFor = Utils.hashFor(pointF.x, pointF.y, pointF2.x, pointF2.y);
        WeakReference<Interpolator> interpolator = getInterpolator(iHashFor);
        Interpolator interpolatorCreate = interpolator != null ? interpolator.get() : null;
        if (interpolator == null || interpolatorCreate == null) {
            try {
                interpolatorCreate = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e) {
                interpolatorCreate = NPStringFog.decode(new byte[]{53, 93, 80, 17, 97, 85, 21, 93, 21, 82, 80, 90, 15, 90, 65, 17, 93, 91, 14, 69, 21, 83, 80, 87, 10, 21, 90, 95, 17, 93, 21, 70, 80, 93, 87, 26}, "a55114", false).equals(e.getMessage()) ? PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            try {
                putInterpolator(iHashFor, new WeakReference(interpolatorCreate));
            } catch (ArrayIndexOutOfBoundsException e2) {
            }
        }
        return interpolatorCreate;
    }

    static <T> Keyframe<T> parse(JsonReader jsonReader, LottieComposition lottieComposition, float f, ValueParser<T> valueParser, boolean z, boolean z2) throws IOException {
        return (z && z2) ? parseMultiDimensionalKeyframe(lottieComposition, jsonReader, f, valueParser) : z ? parseKeyframe(lottieComposition, jsonReader, f, valueParser) : parseStaticValue(jsonReader, f, valueParser);
    }

    private static <T> Keyframe<T> parseKeyframe(LottieComposition lottieComposition, JsonReader jsonReader, float f, ValueParser<T> valueParser) throws IOException {
        Interpolator interpolatorInterpolatorFor;
        float fNextDouble = 0.0f;
        jsonReader.beginObject();
        T t = null;
        PointF pointFJsonToPoint = null;
        boolean z = false;
        T t2 = null;
        PointF pointFJsonToPoint2 = null;
        PointF pointFJsonToPoint3 = null;
        PointF pointFJsonToPoint4 = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case 1:
                    t = valueParser.parse(jsonReader, f);
                    break;
                case 2:
                    t2 = valueParser.parse(jsonReader, f);
                    break;
                case 3:
                    pointFJsonToPoint3 = JsonUtils.jsonToPoint(jsonReader, 1.0f);
                    break;
                case 4:
                    pointFJsonToPoint2 = JsonUtils.jsonToPoint(jsonReader, 1.0f);
                    break;
                case 5:
                    z = jsonReader.nextInt() == 1;
                    break;
                case 6:
                    pointFJsonToPoint = JsonUtils.jsonToPoint(jsonReader, f);
                    break;
                case 7:
                    pointFJsonToPoint4 = JsonUtils.jsonToPoint(jsonReader, f);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (z) {
            interpolatorInterpolatorFor = LINEAR_INTERPOLATOR;
            t2 = t;
        } else {
            interpolatorInterpolatorFor = (pointFJsonToPoint3 == null || pointFJsonToPoint2 == null) ? LINEAR_INTERPOLATOR : interpolatorFor(pointFJsonToPoint3, pointFJsonToPoint2);
        }
        Keyframe<T> keyframe = new Keyframe<>(lottieComposition, t, t2, interpolatorInterpolatorFor, fNextDouble, null);
        keyframe.pathCp1 = pointFJsonToPoint;
        keyframe.pathCp2 = pointFJsonToPoint4;
        return keyframe;
    }

    private static <T> Keyframe<T> parseMultiDimensionalKeyframe(LottieComposition lottieComposition, JsonReader jsonReader, float f, ValueParser<T> valueParser) throws IOException {
        Interpolator interpolatorInterpolatorFor;
        Interpolator interpolator;
        Interpolator interpolatorInterpolatorFor2;
        float fNextDouble = 0.0f;
        jsonReader.beginObject();
        T t = null;
        PointF pointFJsonToPoint = null;
        PointF pointFJsonToPoint2 = null;
        boolean z = false;
        T t2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        PointF pointF3 = null;
        PointF pointF4 = null;
        PointF pointFJsonToPoint3 = null;
        PointF pointFJsonToPoint4 = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case 1:
                    t = valueParser.parse(jsonReader, f);
                    break;
                case 2:
                    t2 = valueParser.parse(jsonReader, f);
                    break;
                case 3:
                    if (jsonReader.peek() != JsonReader.Token.BEGIN_OBJECT) {
                        pointFJsonToPoint4 = JsonUtils.jsonToPoint(jsonReader, f);
                    } else {
                        jsonReader.beginObject();
                        float f2 = 0.0f;
                        float f3 = 0.0f;
                        float f4 = 0.0f;
                        float f5 = 0.0f;
                        while (jsonReader.hasNext()) {
                            switch (jsonReader.selectName(INTERPOLATOR_NAMES)) {
                                case 0:
                                    if (jsonReader.peek() != JsonReader.Token.NUMBER) {
                                        jsonReader.beginArray();
                                        float fNextDouble2 = (float) jsonReader.nextDouble();
                                        float fNextDouble3 = jsonReader.peek() == JsonReader.Token.NUMBER ? (float) jsonReader.nextDouble() : fNextDouble2;
                                        jsonReader.endArray();
                                        f5 = fNextDouble3;
                                        f3 = fNextDouble2;
                                    } else {
                                        float fNextDouble4 = (float) jsonReader.nextDouble();
                                        f5 = fNextDouble4;
                                        f3 = fNextDouble4;
                                    }
                                    break;
                                case 1:
                                    if (jsonReader.peek() != JsonReader.Token.NUMBER) {
                                        jsonReader.beginArray();
                                        float fNextDouble5 = (float) jsonReader.nextDouble();
                                        float fNextDouble6 = jsonReader.peek() == JsonReader.Token.NUMBER ? (float) jsonReader.nextDouble() : fNextDouble5;
                                        jsonReader.endArray();
                                        f4 = fNextDouble6;
                                        f2 = fNextDouble5;
                                    } else {
                                        float fNextDouble7 = (float) jsonReader.nextDouble();
                                        f4 = fNextDouble7;
                                        f2 = fNextDouble7;
                                    }
                                    break;
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        PointF pointF5 = new PointF(f3, f2);
                        PointF pointF6 = new PointF(f5, f4);
                        jsonReader.endObject();
                        pointF4 = pointF5;
                        pointF2 = pointF6;
                    }
                    break;
                case 4:
                    if (jsonReader.peek() != JsonReader.Token.BEGIN_OBJECT) {
                        pointFJsonToPoint3 = JsonUtils.jsonToPoint(jsonReader, f);
                    } else {
                        jsonReader.beginObject();
                        float fNextDouble8 = 0.0f;
                        float f6 = 0.0f;
                        float f7 = 0.0f;
                        float f8 = 0.0f;
                        while (jsonReader.hasNext()) {
                            switch (jsonReader.selectName(INTERPOLATOR_NAMES)) {
                                case 0:
                                    if (jsonReader.peek() != JsonReader.Token.NUMBER) {
                                        jsonReader.beginArray();
                                        float fNextDouble9 = (float) jsonReader.nextDouble();
                                        float fNextDouble10 = jsonReader.peek() == JsonReader.Token.NUMBER ? (float) jsonReader.nextDouble() : fNextDouble9;
                                        jsonReader.endArray();
                                        f6 = fNextDouble10;
                                        f8 = fNextDouble9;
                                    } else {
                                        float fNextDouble11 = (float) jsonReader.nextDouble();
                                        f8 = fNextDouble11;
                                        f6 = fNextDouble11;
                                    }
                                    break;
                                case 1:
                                    if (jsonReader.peek() != JsonReader.Token.NUMBER) {
                                        jsonReader.beginArray();
                                        fNextDouble8 = (float) jsonReader.nextDouble();
                                        float fNextDouble12 = jsonReader.peek() == JsonReader.Token.NUMBER ? (float) jsonReader.nextDouble() : fNextDouble8;
                                        jsonReader.endArray();
                                        f7 = fNextDouble12;
                                    } else {
                                        fNextDouble8 = (float) jsonReader.nextDouble();
                                        f7 = fNextDouble8;
                                    }
                                    break;
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        PointF pointF7 = new PointF(f8, fNextDouble8);
                        PointF pointF8 = new PointF(f6, f7);
                        jsonReader.endObject();
                        pointF3 = pointF7;
                        pointF = pointF8;
                    }
                    break;
                case 5:
                    z = jsonReader.nextInt() == 1;
                    break;
                case 6:
                    pointFJsonToPoint2 = JsonUtils.jsonToPoint(jsonReader, f);
                    break;
                case 7:
                    pointFJsonToPoint = JsonUtils.jsonToPoint(jsonReader, f);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (z) {
            interpolatorInterpolatorFor = LINEAR_INTERPOLATOR;
            interpolator = null;
            interpolatorInterpolatorFor2 = null;
            t2 = t;
        } else if (pointFJsonToPoint4 != null && pointFJsonToPoint3 != null) {
            interpolatorInterpolatorFor = interpolatorFor(pointFJsonToPoint4, pointFJsonToPoint3);
            interpolator = null;
            interpolatorInterpolatorFor2 = null;
        } else if (pointF4 == null || pointF2 == null || pointF3 == null || pointF == null) {
            interpolatorInterpolatorFor = LINEAR_INTERPOLATOR;
            interpolator = null;
            interpolatorInterpolatorFor2 = null;
        } else {
            Interpolator interpolatorInterpolatorFor3 = interpolatorFor(pointF4, pointF3);
            interpolatorInterpolatorFor2 = interpolatorFor(pointF2, pointF);
            interpolator = interpolatorInterpolatorFor3;
            interpolatorInterpolatorFor = null;
        }
        Keyframe<T> keyframe = (interpolator == null || interpolatorInterpolatorFor2 == null) ? new Keyframe<>(lottieComposition, t, t2, interpolatorInterpolatorFor, fNextDouble, null) : new Keyframe<>(lottieComposition, t, t2, interpolator, interpolatorInterpolatorFor2, fNextDouble, null);
        keyframe.pathCp1 = pointFJsonToPoint2;
        keyframe.pathCp2 = pointFJsonToPoint;
        return keyframe;
    }

    private static <T> Keyframe<T> parseStaticValue(JsonReader jsonReader, float f, ValueParser<T> valueParser) throws IOException {
        return new Keyframe<>(valueParser.parse(jsonReader, f));
    }

    private static SparseArrayCompat<WeakReference<Interpolator>> pathInterpolatorCache() {
        if (pathInterpolatorCache == null) {
            pathInterpolatorCache = new SparseArrayCompat<>();
        }
        return pathInterpolatorCache;
    }

    private static void putInterpolator(int i, WeakReference<Interpolator> weakReference) {
        synchronized (KeyframeParser.class) {
            try {
                pathInterpolatorCache.put(i, weakReference);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
