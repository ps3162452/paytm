package com.airbnb.lottie.utils;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public abstract class BaseLottieAnimator extends ValueAnimator {
    private final Set<ValueAnimator.AnimatorUpdateListener> updateListeners = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorListener> listeners = new CopyOnWriteArraySet();

    @Override // android.animation.Animator
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.listeners.add(animatorListener);
    }

    @Override // android.animation.ValueAnimator
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.updateListeners.add(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getStartDelay() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{124, 93, 68, 16, 95, 82, 113, 92, 89, 9, 87, 67, 95, 64, 16, 0, 89, 82, 67, 18, 94, 11, 66, 23, 67, 71, 64, 20, 89, 69, 68, 18, 87, 1, 66, 100, 68, 83, 66, 16, 114, 82, 92, 83, 73, 74}, "020d67", -1363236264L));
    }

    void notifyCancel() {
        Iterator<Animator.AnimatorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationCancel(this);
        }
    }

    void notifyEnd(boolean z) {
        for (Animator.AnimatorListener animatorListener : this.listeners) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    void notifyRepeat() {
        Iterator<Animator.AnimatorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationRepeat(this);
        }
    }

    void notifyStart(boolean z) {
        for (Animator.AnimatorListener animatorListener : this.listeners) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, z);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    void notifyUpdate() {
        Iterator<ValueAnimator.AnimatorUpdateListener> it = this.updateListeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationUpdate(this);
        }
    }

    @Override // android.animation.Animator
    public void removeAllListeners() {
        this.listeners.clear();
    }

    @Override // android.animation.ValueAnimator
    public void removeAllUpdateListeners() {
        this.updateListeners.clear();
    }

    @Override // android.animation.Animator
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.listeners.remove(animatorListener);
    }

    @Override // android.animation.ValueAnimator
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.updateListeners.remove(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{120, 92, 18, 65, 13, 0, 117, 93, 15, 88, 5, 17, 91, 65, 70, 81, 11, 0, 71, 19, 8, 90, 16, 69, 71, 70, 22, 69, 11, 23, 64, 19, 21, 80, 16, 33, 65, 65, 7, 65, 13, 10, 90, 29}, "43f5de", 1.001509168E9d));
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{47, 92, 77, 70, 81, 3, 34, 93, 80, 95, 89, 18, 12, 65, 25, 86, 87, 3, 16, 19, 87, 93, 76, 70, 16, 70, 73, 66, 87, 20, 23, 19, 74, 87, 76, 47, 13, 71, 92, 64, 72, 9, 15, 82, 77, 93, 74, 72}, "c3928f", true));
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setStartDelay(long j) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{125, 12, 67, 65, 15, 0, 112, 13, 94, 88, 7, 17, 94, 17, 23, 81, 9, 0, 66, 67, 89, 90, 18, 69, 66, 22, 71, 69, 9, 23, 69, 67, 68, 80, 18, 54, 69, 2, 69, 65, 34, 0, 93, 2, 78, 27}, "1c75fe", false, false));
    }
}
