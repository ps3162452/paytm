package com.airbnb.lottie.value;

import com.airbnb.lottie.utils.MiscUtils;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class LottieRelativeIntegerValueCallback extends LottieValueCallback<Integer> {
    /* JADX WARN: Multi-variable type inference failed */
    public Integer getOffset(LottieFrameInfo<Integer> lottieFrameInfo) {
        if (this.value == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{96, 11, 22, 25, 15, 16, 74, 16, 67, 73, 16, 10, 79, 13, 7, 92, 66, 4, 25, 23, 23, 88, 22, 12, 90, 68, 21, 88, 14, 16, 92, 68, 10, 87, 66, 17, 81, 1, 67, 90, 13, 11, 74, 16, 17, 76, 1, 17, 86, 22, 67, 21, 66, 6, 88, 8, 15, 25, 17, 0, 77, 50, 2, 85, 23, 0, 21, 68, 12, 75, 66, 10, 79, 1, 17, 75, 11, 1, 92, 68, 4, 92, 22, 51, 88, 8, 22, 92, 76}, "9dc9be", true, true));
        }
        return (Integer) this.value;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.value.LottieValueCallback
    public Integer getValue(LottieFrameInfo<Integer> lottieFrameInfo) {
        return Integer.valueOf(MiscUtils.lerp(lottieFrameInfo.getStartValue().intValue(), lottieFrameInfo.getEndValue().intValue(), lottieFrameInfo.getInterpolatedKeyframeProgress()) + getOffset(lottieFrameInfo).intValue());
    }
}
