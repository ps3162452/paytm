package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.dynamicanimation.animation.DynamicAnimation;
import n.NPStringFog;

/* JADX INFO: loaded from: classes41.dex */
public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {
    private final DragForce mFlingForce;

    static final class DragForce implements Force {
        private static final float DEFAULT_FRICTION = -4.2f;
        private static final float VELOCITY_THRESHOLD_MULTIPLIER = 62.5f;
        private float mFriction = DEFAULT_FRICTION;
        private final DynamicAnimation.MassState mMassState = new DynamicAnimation.MassState();
        private float mVelocityThreshold;

        DragForce() {
        }

        @Override // androidx.dynamicanimation.animation.Force
        public float getAcceleration(float f, float f2) {
            return this.mFriction * f2;
        }

        float getFrictionScalar() {
            return this.mFriction / DEFAULT_FRICTION;
        }

        @Override // androidx.dynamicanimation.animation.Force
        public boolean isAtEquilibrium(float f, float f2) {
            return Math.abs(f2) < this.mVelocityThreshold;
        }

        void setFrictionScalar(float f) {
            this.mFriction = DEFAULT_FRICTION * f;
        }

        void setValueThreshold(float f) {
            this.mVelocityThreshold = VELOCITY_THRESHOLD_MULTIPLIER * f;
        }

        DynamicAnimation.MassState updateValueAndVelocity(float f, float f2, long j) {
            this.mMassState.mVelocity = (float) (((double) f2) * Math.exp((j / 1000.0f) * this.mFriction));
            this.mMassState.mValue = (float) (((double) (f - (f2 / this.mFriction))) + (((double) (f2 / this.mFriction)) * Math.exp((this.mFriction * j) / 1000.0f)));
            if (isAtEquilibrium(this.mMassState.mValue, this.mMassState.mVelocity)) {
                this.mMassState.mVelocity = 0.0f;
            }
            return this.mMassState;
        }
    }

    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        this.mFlingForce = new DragForce();
        this.mFlingForce.setValueThreshold(getValueThreshold());
    }

    public <K> FlingAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k, floatPropertyCompat);
        this.mFlingForce = new DragForce();
        this.mFlingForce.setValueThreshold(getValueThreshold());
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    float getAcceleration(float f, float f2) {
        return this.mFlingForce.getAcceleration(f, f2);
    }

    public float getFriction() {
        return this.mFlingForce.getFrictionScalar();
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean isAtEquilibrium(float f, float f2) {
        return f >= this.mMaxValue || f <= this.mMinValue || this.mFlingForce.isAtEquilibrium(f, f2);
    }

    public FlingAnimation setFriction(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{119, 69, 95, 82, 16, 11, 94, 89, 22, 92, 17, 17, 69, 23, 84, 84, 68, 18, 94, 68, 95, 69, 13, 20, 84}, "1761db", true));
        }
        this.mFlingForce.setFrictionScalar(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMaxValue(float f) {
        super.setMaxValue(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMinValue(float f) {
        super.setMinValue(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setStartVelocity(float f) {
        super.setStartVelocity(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    void setValueThreshold(float f) {
        this.mFlingForce.setValueThreshold(f);
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean updateValueAndVelocity(long j) {
        DynamicAnimation.MassState massStateUpdateValueAndVelocity = this.mFlingForce.updateValueAndVelocity(this.mValue, this.mVelocity, j);
        this.mValue = massStateUpdateValueAndVelocity.mValue;
        this.mVelocity = massStateUpdateValueAndVelocity.mVelocity;
        if (this.mValue < this.mMinValue) {
            this.mValue = this.mMinValue;
            return true;
        }
        if (this.mValue <= this.mMaxValue) {
            return isAtEquilibrium(this.mValue, this.mVelocity);
        }
        this.mValue = this.mMaxValue;
        return true;
    }
}
