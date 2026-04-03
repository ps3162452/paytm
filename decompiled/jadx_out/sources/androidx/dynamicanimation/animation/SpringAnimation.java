package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import androidx.annotation.MainThread;
import androidx.dynamicanimation.animation.DynamicAnimation;
import n.NPStringFog;

/* JADX INFO: loaded from: classes41.dex */
public final class SpringAnimation extends DynamicAnimation<SpringAnimation> {
    private static final float UNSET = Float.MAX_VALUE;
    private boolean mEndRequested;
    private float mPendingPosition;
    private SpringForce mSpring;

    public SpringAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
    }

    public SpringAnimation(FloatValueHolder floatValueHolder, float f) {
        super(floatValueHolder);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
        this.mSpring = new SpringForce(f);
    }

    public <K> SpringAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k, floatPropertyCompat);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
    }

    public <K> SpringAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat, float f) {
        super(k, floatPropertyCompat);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
        this.mSpring = new SpringForce(f);
    }

    private void sanityCheck() {
        if (this.mSpring == null) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{120, 12, 0, 86, 14, 73, 93, 7, 23, 92, 67, 106, 65, 16, 10, 87, 4, 120, 95, 11, 14, 88, 23, 80, 94, 12, 89, 25, 38, 80, 69, 10, 6, 75, 67, 95, 88, 12, 2, 85, 67, 73, 94, 17, 10, 77, 10, 86, 95, 66, 12, 75, 67, 88, 17, 17, 19, 75, 10, 87, 86, 66, 5, 86, 17, 90, 84, 66, 13, 92, 6, 93, 66, 66, 23, 86, 67, 91, 84, 66, 16, 92, 23, 23}, "1bc9c9", true, true));
        }
        double finalPosition = this.mSpring.getFinalPosition();
        if (finalPosition > this.mMaxValue) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{127, 90, 8, 4, 8, 23, 73, 92, 21, 12, 16, 94, 86, 93, 70, 10, 2, 23, 77, 91, 3, 69, 23, 71, 75, 90, 8, 2, 68, 84, 88, 93, 8, 10, 16, 23, 91, 86, 70, 2, 22, 82, 88, 71, 3, 23, 68, 67, 81, 82, 8, 69, 16, 95, 92, 19, 11, 4, 28, 23, 79, 82, 10, 16, 1, 25}, "93fed7", false));
        }
        if (finalPosition < this.mMinValue) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{36, 11, 89, 81, 91, 65, 18, 13, 68, 89, 67, 8, 13, 12, 23, 95, 81, 65, 22, 10, 82, 16, 68, 17, 16, 11, 89, 87, 23, 2, 3, 12, 89, 95, 67, 65, 0, 7, 23, 92, 82, 18, 17, 66, 67, 88, 86, 15, 66, 22, 95, 85, 23, 12, 11, 12, 23, 70, 86, 13, 23, 7, 25}, "bb707a", true, true));
        }
    }

    public void animateToFinalPosition(float f) {
        if (isRunning()) {
            this.mPendingPosition = f;
            return;
        }
        if (this.mSpring == null) {
            this.mSpring = new SpringForce(f);
        }
        this.mSpring.setFinalPosition(f);
        start();
    }

    public boolean canSkipToEnd() {
        return this.mSpring.mDampingRatio > 0.0d;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    @MainThread
    public void cancel() {
        super.cancel();
        if (this.mPendingPosition != Float.MAX_VALUE) {
            if (this.mSpring == null) {
                this.mSpring = new SpringForce(this.mPendingPosition);
            } else {
                this.mSpring.setFinalPosition(this.mPendingPosition);
            }
            this.mPendingPosition = Float.MAX_VALUE;
        }
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    float getAcceleration(float f, float f2) {
        return this.mSpring.getAcceleration(f, f2);
    }

    public SpringForce getSpring() {
        return this.mSpring;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean isAtEquilibrium(float f, float f2) {
        return this.mSpring.isAtEquilibrium(f, f2);
    }

    public SpringAnimation setSpring(SpringForce springForce) {
        this.mSpring = springForce;
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    void setValueThreshold(float f) {
    }

    public void skipToEnd() {
        if (!canSkipToEnd()) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{48, 66, 70, 88, 12, 83, 67, 83, 90, 88, 15, 85, 23, 91, 91, 95, 17, 20, 0, 83, 90, 17, 13, 90, 15, 75, 20, 82, 13, 89, 6, 18, 64, 94, 66, 85, 13, 18, 81, 95, 6, 20, 20, 90, 81, 95, 66, 64, 11, 87, 70, 84, 66, 93, 16, 18, 80, 80, 15, 68, 10, 92, 83}, "c241b4", -22745));
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException(NPStringFog.decode(new byte[]{32, 92, 8, 14, 89, 65, 8, 93, 15, 16, 24, 88, 0, 75, 65, 12, 86, 89, 24, 18, 3, 6, 24, 70, 21, 83, 19, 23, 93, 81, 65, 93, 15, 67, 76, 93, 4, 18, 12, 2, 81, 91, 65, 70, 9, 17, 93, 84, 5}, "a2ac85", 1797702676L));
        }
        if (this.mRunning) {
            this.mEndRequested = true;
        }
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    @MainThread
    public void start() {
        sanityCheck();
        this.mSpring.setValueThreshold(getValueThreshold());
        super.start();
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean updateValueAndVelocity(long j) {
        if (this.mEndRequested) {
            if (this.mPendingPosition != Float.MAX_VALUE) {
                this.mSpring.setFinalPosition(this.mPendingPosition);
                this.mPendingPosition = Float.MAX_VALUE;
            }
            this.mValue = this.mSpring.getFinalPosition();
            this.mVelocity = 0.0f;
            this.mEndRequested = false;
            return true;
        }
        if (this.mPendingPosition != Float.MAX_VALUE) {
            DynamicAnimation.MassState massStateUpdateValues = this.mSpring.updateValues(this.mValue, this.mVelocity, j / 2);
            this.mSpring.setFinalPosition(this.mPendingPosition);
            this.mPendingPosition = Float.MAX_VALUE;
            DynamicAnimation.MassState massStateUpdateValues2 = this.mSpring.updateValues(massStateUpdateValues.mValue, massStateUpdateValues.mVelocity, j / 2);
            this.mValue = massStateUpdateValues2.mValue;
            this.mVelocity = massStateUpdateValues2.mVelocity;
        } else {
            DynamicAnimation.MassState massStateUpdateValues3 = this.mSpring.updateValues(this.mValue, this.mVelocity, j);
            this.mValue = massStateUpdateValues3.mValue;
            this.mVelocity = massStateUpdateValues3.mVelocity;
        }
        this.mValue = Math.max(this.mValue, this.mMinValue);
        this.mValue = Math.min(this.mValue, this.mMaxValue);
        if (!isAtEquilibrium(this.mValue, this.mVelocity)) {
            return false;
        }
        this.mValue = this.mSpring.getFinalPosition();
        this.mVelocity = 0.0f;
        return true;
    }
}
