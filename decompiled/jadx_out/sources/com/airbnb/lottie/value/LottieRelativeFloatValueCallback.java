package com.airbnb.lottie.value;

import androidx.annotation.NonNull;
import com.airbnb.lottie.utils.MiscUtils;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class LottieRelativeFloatValueCallback extends LottieValueCallback<Float> {
    public LottieRelativeFloatValueCallback() {
    }

    public LottieRelativeFloatValueCallback(@NonNull Float f) {
        super(f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Float getOffset(LottieFrameInfo<Float> lottieFrameInfo) {
        if (this.value == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{104, 12, 64, 24, 92, 70, 66, 23, 21, 72, 67, 92, 71, 10, 81, 93, 17, 82, 17, 16, 65, 89, 69, 90, 82, 67, 67, 89, 93, 70, 84, 67, 92, 86, 17, 71, 89, 6, 21, 91, 94, 93, 66, 23, 71, 77, 82, 71, 94, 17, 21, 20, 17, 80, 80, 15, 89, 24, 66, 86, 69, 53, 84, 84, 68, 86, 29, 67, 90, 74, 17, 92, 71, 6, 71, 74, 88, 87, 84, 67, 82, 93, 69, 101, 80, 15, 64, 93, 31}, "1c5813", true, true));
        }
        return (Float) this.value;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.value.LottieValueCallback
    public Float getValue(LottieFrameInfo<Float> lottieFrameInfo) {
        return Float.valueOf(MiscUtils.lerp(lottieFrameInfo.getStartValue().floatValue(), lottieFrameInfo.getEndValue().floatValue(), lottieFrameInfo.getInterpolatedKeyframeProgress()) + getOffset(lottieFrameInfo).floatValue());
    }
}
