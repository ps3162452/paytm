package com.airbnb.lottie.value;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import com.airbnb.lottie.utils.MiscUtils;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class LottieRelativePointValueCallback extends LottieValueCallback<PointF> {
    private final PointF point;

    public LottieRelativePointValueCallback() {
        this.point = new PointF();
    }

    public LottieRelativePointValueCallback(@NonNull PointF pointF) {
        super(pointF);
        this.point = new PointF();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PointF getOffset(LottieFrameInfo<PointF> lottieFrameInfo) {
        if (this.value == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{58, 14, 65, 18, 93, 76, 16, 21, 20, 66, 66, 86, 21, 8, 80, 87, 16, 88, 67, 18, 64, 83, 68, 80, 0, 65, 66, 83, 92, 76, 6, 65, 93, 92, 16, 77, 11, 4, 20, 81, 95, 87, 16, 21, 70, 71, 83, 77, 12, 19, 20, 30, 16, 90, 2, 13, 88, 18, 67, 92, 23, 55, 85, 94, 69, 92, 79, 65, 91, 64, 16, 86, 21, 4, 70, 64, 89, 93, 6, 65, 83, 87, 68, 111, 2, 13, 65, 87, 30}, "ca4209", -2.038623503E9d));
        }
        return (PointF) this.value;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.value.LottieValueCallback
    public final PointF getValue(LottieFrameInfo<PointF> lottieFrameInfo) {
        this.point.set(MiscUtils.lerp(lottieFrameInfo.getStartValue().x, lottieFrameInfo.getEndValue().x, lottieFrameInfo.getInterpolatedKeyframeProgress()), MiscUtils.lerp(lottieFrameInfo.getStartValue().y, lottieFrameInfo.getEndValue().y, lottieFrameInfo.getInterpolatedKeyframeProgress()));
        PointF offset = getOffset(lottieFrameInfo);
        this.point.offset(offset.x, offset.y);
        return this.point;
    }
}
