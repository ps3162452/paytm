package androidx.constraintlayout.core.motion.utils;

import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class StopLogicEngine implements StopEngine {
    private static final float EPSILON = 1.0E-5f;
    private boolean mBackwards = false;
    private boolean mDone = false;
    private float mLastPosition;
    private int mNumberOfStages;
    private float mStage1Duration;
    private float mStage1EndPosition;
    private float mStage1Velocity;
    private float mStage2Duration;
    private float mStage2EndPosition;
    private float mStage2Velocity;
    private float mStage3Duration;
    private float mStage3EndPosition;
    private float mStage3Velocity;
    private float mStartPosition;
    private String mType;

    private float calcY(float f) {
        this.mDone = false;
        float f2 = this.mStage1Duration;
        if (f <= f2) {
            float f3 = this.mStage1Velocity;
            return ((((this.mStage2Velocity - f3) * f) * f) / (f2 * 2.0f)) + (f3 * f);
        }
        int i = this.mNumberOfStages;
        if (i == 1) {
            return this.mStage1EndPosition;
        }
        float f4 = f - f2;
        float f5 = this.mStage2Duration;
        if (f4 < f5) {
            float f6 = this.mStage1EndPosition;
            float f7 = this.mStage2Velocity;
            return ((f4 * ((this.mStage3Velocity - f7) * f4)) / (f5 * 2.0f)) + f6 + (f7 * f4);
        }
        if (i == 2) {
            return this.mStage2EndPosition;
        }
        float f8 = f4 - f5;
        float f9 = this.mStage3Duration;
        if (f8 > f9) {
            this.mDone = true;
            return this.mStage3EndPosition;
        }
        float f10 = this.mStage2EndPosition;
        float f11 = this.mStage3Velocity;
        return (f10 + (f11 * f8)) - ((f8 * (f11 * f8)) / (f9 * 2.0f));
    }

    private void setup(float f, float f2, float f3, float f4, float f5) {
        this.mDone = false;
        if (f == 0.0f) {
            f = 1.0E-4f;
        }
        this.mStage1Velocity = f;
        float f6 = f / f3;
        float f7 = (f6 * f) / 2.0f;
        if (f < 0.0f) {
            float fSqrt = (float) Math.sqrt((f2 - ((((-f) / f3) * f) / 2.0f)) * f3);
            if (fSqrt < f4) {
                this.mType = NPStringFog.decode(new byte[]{6, 82, 86, 91, 70, 88, 22, 87, 21, 81, 82, 90, 1, 95, 80, 66, 80, 77, 1, 31, 21, 84, 84, 90, 1, 95, 80, 66, 80, 77, 1}, "d35019", -1.116644046E9d);
                this.mNumberOfStages = 2;
                this.mStage1Velocity = f;
                this.mStage2Velocity = fSqrt;
                this.mStage3Velocity = 0.0f;
                float f8 = (fSqrt - f) / f3;
                this.mStage1Duration = f8;
                this.mStage2Duration = fSqrt / f3;
                this.mStage1EndPosition = ((fSqrt + f) * f8) / 2.0f;
                this.mStage2EndPosition = f2;
                this.mStage3EndPosition = f2;
                return;
            }
            this.mType = NPStringFog.decode(new byte[]{0, 3, 86, 94, 17, 89, 16, 6, 21, 84, 5, 91, 7, 14, 80, 71, 7, 76, 7, 66, 86, 71, 19, 75, 7, 66, 81, 80, 5, 93, 14, 7, 71, 84, 18, 93}, "bb55f8", false, true);
            this.mNumberOfStages = 3;
            this.mStage1Velocity = f;
            this.mStage2Velocity = f4;
            this.mStage3Velocity = f4;
            float f9 = (f4 - f) / f3;
            this.mStage1Duration = f9;
            float f10 = f4 / f3;
            this.mStage3Duration = f10;
            float f11 = (f9 * (f + f4)) / 2.0f;
            float f12 = (f10 * f4) / 2.0f;
            this.mStage2Duration = ((f2 - f11) - f12) / f4;
            this.mStage1EndPosition = f11;
            this.mStage2EndPosition = f2 - f12;
            this.mStage3EndPosition = f2;
            return;
        }
        if (f7 >= f2) {
            this.mType = NPStringFog.decode(new byte[]{14, 82, 16, 82, 66, 70, 18, 92, 18}, "f3b6b5", -7654);
            this.mNumberOfStages = 1;
            this.mStage1Velocity = f;
            this.mStage2Velocity = 0.0f;
            this.mStage1EndPosition = f2;
            this.mStage1Duration = (2.0f * f2) / f;
            return;
        }
        float f13 = f2 - f7;
        float f14 = f13 / f;
        if (f6 + f14 < f5) {
            this.mType = NPStringFog.decode(new byte[]{5, 68, 19, 64, 87, 16, 2, 83, 5, 86, 94, 85, 20, 87, 18, 86}, "f6f320", false, false);
            this.mNumberOfStages = 2;
            this.mStage1Velocity = f;
            this.mStage2Velocity = f;
            this.mStage3Velocity = 0.0f;
            this.mStage1EndPosition = f13;
            this.mStage2EndPosition = f2;
            this.mStage1Duration = f14;
            this.mStage2Duration = f / f3;
            return;
        }
        float fSqrt2 = (float) Math.sqrt((f3 * f2) + ((f * f) / 2.0f));
        this.mStage1Duration = (fSqrt2 - f) / f3;
        this.mStage2Duration = fSqrt2 / f3;
        if (fSqrt2 < f4) {
            this.mType = NPStringFog.decode(new byte[]{3, 81, 81, 80, 88, 7, 16, 83, 70, 80, 20, 6, 7, 81, 87, 89, 81, 16, 3, 70, 87}, "b2254b", 1.171560615E9d);
            this.mNumberOfStages = 2;
            this.mStage1Velocity = f;
            this.mStage2Velocity = fSqrt2;
            this.mStage3Velocity = 0.0f;
            float f15 = (fSqrt2 - f) / f3;
            this.mStage1Duration = f15;
            this.mStage2Duration = fSqrt2 / f3;
            this.mStage1EndPosition = ((fSqrt2 + f) * f15) / 2.0f;
            this.mStage2EndPosition = f2;
            return;
        }
        this.mType = NPStringFog.decode(new byte[]{0, 84, 81, 1, 91, 87, 19, 86, 70, 1, 23, 81, 19, 66, 65, 1, 23, 86, 4, 84, 87, 8, 82, 64, 0, 67, 87}, "a72d72", false);
        this.mNumberOfStages = 3;
        this.mStage1Velocity = f;
        this.mStage2Velocity = f4;
        this.mStage3Velocity = f4;
        float f16 = (f4 - f) / f3;
        this.mStage1Duration = f16;
        float f17 = f4 / f3;
        this.mStage3Duration = f17;
        float f18 = (f16 * (f + f4)) / 2.0f;
        float f19 = (f17 * f4) / 2.0f;
        this.mStage2Duration = ((f2 - f18) - f19) / f4;
        this.mStage1EndPosition = f18;
        this.mStage2EndPosition = f2 - f19;
        this.mStage3EndPosition = f2;
    }

    public void config(float f, float f2, float f3, float f4, float f5, float f6) {
        this.mDone = false;
        this.mStartPosition = f;
        boolean z = f > f2;
        this.mBackwards = z;
        if (z) {
            setup(-f3, f - f2, f5, f6, f4);
        } else {
            setup(f3, f2 - f, f5, f6, f4);
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f) {
        String str2 = str + NPStringFog.decode(new byte[]{17, 5, 15, 89, 94, 9, 17}, "182dc4", -1735413407L) + this.mType + "\n";
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(str);
        sb.append(this.mBackwards ? NPStringFog.decode(new byte[]{91, 2, 1, 10, 66, 86, 75, 7, 17}, "9cba57", -6.68817441E8d) : NPStringFog.decode(new byte[]{4, 11, 69, 65, 0, 67, 6, 68}, "bd76a1", true, true));
        sb.append(NPStringFog.decode(new byte[]{22, 68, 95, 11, 4, 18, 11, 16}, "606fa2", true));
        sb.append(f);
        sb.append(NPStringFog.decode(new byte[]{18, 21, 68, 66, 0, 82, 87, 70, 23}, "2576a5", 1.9785779E9f));
        sb.append(this.mNumberOfStages);
        sb.append("\n");
        String str3 = sb.toString() + str + NPStringFog.decode(new byte[]{67, 5, 20, 23, 18}, "caae22", -1644217739L) + this.mStage1Duration + NPStringFog.decode(new byte[]{17, 79, 87, 90, 19}, "192632", 2.8312816E8f) + this.mStage1Velocity + NPStringFog.decode(new byte[]{21, 64, 92, 75, 70}, "5038f3", -6.3444666E8f) + this.mStage1EndPosition + "\n";
        if (this.mNumberOfStages > 1) {
            str3 = str3 + str + NPStringFog.decode(new byte[]{22, 0, 23, 16, 22}, "6dbb6f", 28005) + this.mStage2Duration + NPStringFog.decode(new byte[]{18, 69, 6, 15, 67}, "23ccc7", 19619) + this.mStage2Velocity + NPStringFog.decode(new byte[]{66, 66, 88, 75, 65}, "b278a8", true, false) + this.mStage2EndPosition + "\n";
        }
        if (this.mNumberOfStages > 2) {
            str3 = str3 + str + NPStringFog.decode(new byte[]{21, 86, 17, 22, 24}, "52dd82", 12995) + this.mStage3Duration + NPStringFog.decode(new byte[]{24, 19, 84, 85, 19}, "8e1939", false, false) + this.mStage3Velocity + NPStringFog.decode(new byte[]{67, 72, 14, 16, 22}, "c8ac6c", true, false) + this.mStage3EndPosition + "\n";
        }
        float f2 = this.mStage1Duration;
        if (f <= f2) {
            return str3 + str + NPStringFog.decode(new byte[]{71, 67, 81, 86, 4, 20, 4, 61}, "4701a4", false, false);
        }
        int i = this.mNumberOfStages;
        if (i == 1) {
            return str3 + str + NPStringFog.decode(new byte[]{7, 91, 80, 25, 74, 66, 3, 82, 81, 25, 9, 60}, "b54996", false);
        }
        float f3 = f - f2;
        float f4 = this.mStage2Duration;
        if (f3 < f4) {
            return str3 + str + NPStringFog.decode(new byte[]{16, 70, 22, 83, 94, 0, 16, 4, 104}, "05b29e", 1.544298147E9d);
        }
        if (i == 2) {
            return str3 + str + NPStringFog.decode(new byte[]{81, 93, 2, 68, 21, 17, 85, 84, 3, 68, 87, 111}, "43fdfe", -1.6302922E8f);
        }
        if (f3 - f4 < this.mStage3Duration) {
            return str3 + str + NPStringFog.decode(new byte[]{21, 70, 17, 4, 84, 93, 21, 7, 111}, "55ee38", false);
        }
        return str3 + str + NPStringFog.decode(new byte[]{23, 92, 88, 5, 68, 18, 67, 88, 81, 4, 68, 83, 61}, "796ada", -1372943730L);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f) {
        float fCalcY = calcY(f);
        this.mLastPosition = f;
        return this.mBackwards ? this.mStartPosition - fCalcY : fCalcY + this.mStartPosition;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return this.mBackwards ? -getVelocity(this.mLastPosition) : getVelocity(this.mLastPosition);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f) {
        float f2 = this.mStage1Duration;
        if (f <= f2) {
            float f3 = this.mStage1Velocity;
            return (((this.mStage2Velocity - f3) * f) / f2) + f3;
        }
        int i = this.mNumberOfStages;
        if (i == 1) {
            return 0.0f;
        }
        float f4 = f - f2;
        float f5 = this.mStage2Duration;
        if (f4 < f5) {
            float f6 = this.mStage2Velocity;
            return ((f4 * (this.mStage3Velocity - f6)) / f5) + f6;
        }
        if (i == 2) {
            return this.mStage2EndPosition;
        }
        float f7 = f4 - f5;
        float f8 = this.mStage3Duration;
        if (f7 >= f8) {
            return this.mStage3EndPosition;
        }
        float f9 = this.mStage3Velocity;
        return f9 - ((f7 * f9) / f8);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        return getVelocity() < EPSILON && Math.abs(this.mStage3EndPosition - this.mLastPosition) < EPSILON;
    }
}
