package androidx.constraintlayout.core.motion.utils;

import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class SpringStopEngine implements StopEngine {
    private static final double UNSET = Double.MAX_VALUE;
    private float mLastTime;
    private double mLastVelocity;
    private float mMass;
    private float mPos;
    private double mStiffness;
    private float mStopThreshold;
    private double mTargetPos;
    private float mV;
    double mDamping = 0.5d;
    private boolean mInitialized = false;
    private int mBoundaryMode = 0;

    private void compute(double d) {
        double d2 = this.mStiffness;
        double d3 = this.mDamping;
        double d4 = this.mStiffness;
        double d5 = this.mMass;
        Double.isNaN(d5);
        int iSqrt = (int) ((9.0d / ((Math.sqrt(d4 / d5) * d) * 4.0d)) + 1.0d);
        double d6 = iSqrt;
        Double.isNaN(d6);
        double d7 = d / d6;
        for (int i = 0; i < iSqrt; i++) {
            float f = this.mPos;
            double d8 = f;
            double d9 = this.mTargetPos;
            Double.isNaN(d8);
            float f2 = this.mV;
            double d10 = f2;
            Double.isNaN(d10);
            float f3 = this.mMass;
            double d11 = f3;
            Double.isNaN(d11);
            double d12 = (((d8 - d9) * (-d2)) - (d10 * d3)) / d11;
            double d13 = f2;
            Double.isNaN(d13);
            double d14 = ((d12 * d7) / 2.0d) + d13;
            double d15 = f;
            Double.isNaN(d15);
            double d16 = -((d15 + ((d7 * d14) / 2.0d)) - d9);
            double d17 = f3;
            Double.isNaN(d17);
            double d18 = (((d16 * d2) - (d14 * d3)) / d17) * d7;
            double d19 = f2;
            double d20 = d18 / 2.0d;
            Double.isNaN(d19);
            double d21 = f2;
            Double.isNaN(d21);
            float f4 = (float) (d18 + d21);
            this.mV = f4;
            double d22 = f;
            Double.isNaN(d22);
            float f5 = (float) (d22 + ((d19 + d20) * d7));
            this.mPos = f5;
            int i2 = this.mBoundaryMode;
            if (i2 > 0) {
                if (f5 < 0.0f && (i2 & 1) == 1) {
                    this.mPos = -f5;
                    this.mV = -f4;
                }
                float f6 = this.mPos;
                if (f6 > 1.0f && (i2 & 2) == 2) {
                    this.mPos = 2.0f - f6;
                    this.mV = -this.mV;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f) {
        return null;
    }

    public float getAcceleration() {
        double d = this.mStiffness;
        double d2 = this.mDamping;
        double d3 = this.mPos;
        double d4 = this.mTargetPos;
        Double.isNaN(d3);
        double d5 = this.mV;
        Double.isNaN(d5);
        return ((float) (((-d) * (d3 - d4)) - (d2 * d5))) / this.mMass;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f) {
        compute(f - this.mLastTime);
        this.mLastTime = f;
        return this.mPos;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f) {
        return this.mV;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        double d = this.mPos;
        double d2 = this.mTargetPos;
        Double.isNaN(d);
        double d3 = d - d2;
        double d4 = this.mStiffness;
        double d5 = this.mV;
        double d6 = this.mMass;
        Double.isNaN(d5);
        Double.isNaN(d5);
        Double.isNaN(d6);
        return Math.sqrt(((d3 * (d4 * d3)) + ((d5 * d5) * d6)) / d4) <= ((double) this.mStopThreshold);
    }

    void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = NPStringFog.decode(new byte[]{72, 74}, "fb7829", 1.210434242E9d) + stackTraceElement.getFileName() + NPStringFog.decode(new byte[]{15}, "546e58", -1.4608483E9f) + stackTraceElement.getLineNumber() + NPStringFog.decode(new byte[]{24, 16}, "1076d3", 31666) + stackTraceElement.getMethodName() + NPStringFog.decode(new byte[]{30, 28, 18}, "652f3f", 11405);
        System.out.println(str2 + str);
    }

    public void springConfig(float f, float f2, float f3, float f4, float f5, float f6, float f7, int i) {
        this.mTargetPos = f2;
        this.mDamping = f6;
        this.mInitialized = false;
        this.mPos = f;
        this.mLastVelocity = f3;
        this.mStiffness = f5;
        this.mMass = f4;
        this.mStopThreshold = f7;
        this.mBoundaryMode = i;
        this.mLastTime = 0.0f;
    }
}
