package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.dynamicanimation.animation.DynamicAnimation;
import n.NPStringFog;

/* JADX INFO: loaded from: classes41.dex */
public final class SpringForce implements Force {
    public static final float DAMPING_RATIO_HIGH_BOUNCY = 0.2f;
    public static final float DAMPING_RATIO_LOW_BOUNCY = 0.75f;
    public static final float DAMPING_RATIO_MEDIUM_BOUNCY = 0.5f;
    public static final float DAMPING_RATIO_NO_BOUNCY = 1.0f;
    public static final float STIFFNESS_HIGH = 10000.0f;
    public static final float STIFFNESS_LOW = 200.0f;
    public static final float STIFFNESS_MEDIUM = 1500.0f;
    public static final float STIFFNESS_VERY_LOW = 50.0f;
    private static final double UNSET = Double.MAX_VALUE;
    private static final double VELOCITY_THRESHOLD_MULTIPLIER = 62.5d;
    private double mDampedFreq;
    double mDampingRatio;
    private double mFinalPosition;
    private double mGammaMinus;
    private double mGammaPlus;
    private boolean mInitialized;
    private final DynamicAnimation.MassState mMassState;
    double mNaturalFreq;
    private double mValueThreshold;
    private double mVelocityThreshold;

    public SpringForce() {
        this.mNaturalFreq = Math.sqrt(1500.0d);
        this.mDampingRatio = 0.5d;
        this.mInitialized = false;
        this.mFinalPosition = UNSET;
        this.mMassState = new DynamicAnimation.MassState();
    }

    public SpringForce(float f) {
        this.mNaturalFreq = Math.sqrt(1500.0d);
        this.mDampingRatio = 0.5d;
        this.mInitialized = false;
        this.mFinalPosition = UNSET;
        this.mMassState = new DynamicAnimation.MassState();
        this.mFinalPosition = f;
    }

    private void init() {
        if (this.mInitialized) {
            return;
        }
        if (this.mFinalPosition == UNSET) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{125, 22, 66, 12, 17, 95, 24, 34, 89, 13, 2, 9, 24, 20, 95, 16, 10, 17, 81, 11, 94, 67, 12, 3, 24, 16, 88, 6, 67, 22, 72, 22, 89, 13, 4, 69, 85, 17, 67, 23, 67, 7, 93, 68, 67, 6, 23, 69, 90, 1, 86, 12, 17, 0, 24, 16, 88, 6, 67, 4, 86, 13, 93, 2, 23, 12, 87, 10, 16, 16, 23, 4, 74, 16, 67}, "8d0cce", 1.53445603E9d));
        }
        if (this.mDampingRatio > 1.0d) {
            this.mGammaPlus = ((-this.mDampingRatio) * this.mNaturalFreq) + (this.mNaturalFreq * Math.sqrt((this.mDampingRatio * this.mDampingRatio) - 1.0d));
            this.mGammaMinus = ((-this.mDampingRatio) * this.mNaturalFreq) - (this.mNaturalFreq * Math.sqrt((this.mDampingRatio * this.mDampingRatio) - 1.0d));
        } else if (this.mDampingRatio >= 0.0d && this.mDampingRatio < 1.0d) {
            this.mDampedFreq = this.mNaturalFreq * Math.sqrt(1.0d - (this.mDampingRatio * this.mDampingRatio));
        }
        this.mInitialized = true;
    }

    @Override // androidx.dynamicanimation.animation.Force
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public float getAcceleration(float f, float f2) {
        float finalPosition = getFinalPosition();
        double d = this.mNaturalFreq;
        double d2 = this.mNaturalFreq;
        return (float) ((((double) (f - finalPosition)) * (-(d * d2))) - (((2.0d * this.mNaturalFreq) * this.mDampingRatio) * ((double) f2)));
    }

    public float getDampingRatio() {
        return (float) this.mDampingRatio;
    }

    public float getFinalPosition() {
        return (float) this.mFinalPosition;
    }

    public float getStiffness() {
        return (float) (this.mNaturalFreq * this.mNaturalFreq);
    }

    @Override // androidx.dynamicanimation.animation.Force
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean isAtEquilibrium(float f, float f2) {
        return ((double) Math.abs(f2)) < this.mVelocityThreshold && ((double) Math.abs(f - getFinalPosition())) < this.mValueThreshold;
    }

    public SpringForce setDampingRatio(@FloatRange(from = 0.0d) float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{38, 82, 95, 72, 89, 15, 5, 19, 64, 89, 68, 8, 13, 19, 95, 77, 67, 21, 66, 81, 87, 24, 94, 14, 12, 30, 92, 93, 87, 0, 22, 90, 68, 93}, "b3280a", 1668662327L));
        }
        this.mDampingRatio = f;
        this.mInitialized = false;
        return this;
    }

    public SpringForce setFinalPosition(float f) {
        this.mFinalPosition = f;
        return this;
    }

    public SpringForce setStiffness(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{53, 17, 64, 93, 15, 87, 70, 18, 70, 93, 7, 86, 8, 4, 65, 71, 65, 83, 9, 15, 65, 64, 0, 94, 18, 65, 95, 65, 18, 68, 70, 3, 87, 20, 17, 95, 21, 8, 70, 93, 23, 85, 72}, "fa24a0", -32577));
        }
        this.mNaturalFreq = Math.sqrt(f);
        this.mInitialized = false;
        return this;
    }

    void setValueThreshold(double d) {
        this.mValueThreshold = Math.abs(d);
        this.mVelocityThreshold = this.mValueThreshold * VELOCITY_THRESHOLD_MULTIPLIER;
    }

    DynamicAnimation.MassState updateValues(double d, double d2, long j) {
        double dPow;
        double dCos;
        init();
        double d3 = j / 1000.0d;
        double d4 = d - this.mFinalPosition;
        if (this.mDampingRatio > 1.0d) {
            double d5 = d4 - (((this.mGammaMinus * d4) - d2) / (this.mGammaMinus - this.mGammaPlus));
            double d6 = ((this.mGammaMinus * d4) - d2) / (this.mGammaMinus - this.mGammaPlus);
            dPow = (Math.pow(2.718281828459045d, this.mGammaMinus * d3) * d5) + (Math.pow(2.718281828459045d, this.mGammaPlus * d3) * d6);
            dCos = (Math.pow(2.718281828459045d, d3 * this.mGammaPlus) * d6 * this.mGammaPlus) + (d5 * this.mGammaMinus * Math.pow(2.718281828459045d, this.mGammaMinus * d3));
        } else if (this.mDampingRatio == 1.0d) {
            double d7 = d2 + (this.mNaturalFreq * d4);
            dPow = ((d7 * d3) + d4) * Math.pow(2.718281828459045d, (-this.mNaturalFreq) * d3);
            dCos = (Math.pow(2.718281828459045d, d3 * (-this.mNaturalFreq)) * d7) + ((d4 + (d7 * d3)) * Math.pow(2.718281828459045d, (-this.mNaturalFreq) * d3) * (-this.mNaturalFreq));
        } else {
            double d8 = ((this.mDampingRatio * this.mNaturalFreq * d4) + d2) * (1.0d / this.mDampedFreq);
            dPow = Math.pow(2.718281828459045d, (-this.mDampingRatio) * this.mNaturalFreq * d3) * ((Math.cos(this.mDampedFreq * d3) * d4) + (Math.sin(this.mDampedFreq * d3) * d8));
            dCos = (((Math.cos(d3 * this.mDampedFreq) * d8 * this.mDampedFreq) + (d4 * (-this.mDampedFreq) * Math.sin(this.mDampedFreq * d3))) * Math.pow(2.718281828459045d, (-this.mDampingRatio) * this.mNaturalFreq * d3)) + ((-this.mNaturalFreq) * dPow * this.mDampingRatio);
        }
        this.mMassState.mValue = (float) (dPow + this.mFinalPosition);
        this.mMassState.mVelocity = (float) dCos;
        return this.mMassState;
    }
}
