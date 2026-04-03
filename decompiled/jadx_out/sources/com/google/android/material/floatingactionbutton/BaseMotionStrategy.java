package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import androidx.core.util.Preconditions;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.MotionSpec;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
abstract class BaseMotionStrategy implements MotionStrategy {
    private final Context context;
    private MotionSpec defaultMotionSpec;
    private final ExtendedFloatingActionButton fab;
    private final ArrayList<Animator.AnimatorListener> listeners = new ArrayList<>();
    private MotionSpec motionSpec;
    private final AnimatorTracker tracker;

    BaseMotionStrategy(ExtendedFloatingActionButton extendedFloatingActionButton, AnimatorTracker animatorTracker) {
        this.fab = extendedFloatingActionButton;
        this.context = extendedFloatingActionButton.getContext();
        this.tracker = animatorTracker;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final void addAnimationListener(Animator.AnimatorListener animatorListener) {
        this.listeners.add(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public AnimatorSet createAnimator() {
        return createAnimator(getCurrentMotionSpec());
    }

    AnimatorSet createAnimator(MotionSpec motionSpec) {
        ArrayList arrayList = new ArrayList();
        if (motionSpec.hasPropertyValues(NPStringFog.decode(new byte[]{94, 22, 82, 85, 12, 21, 72}, "1f36ea", -5.515689E8f))) {
            arrayList.add(motionSpec.getAnimator(NPStringFog.decode(new byte[]{86, 21, 85, 6, 10, 68, 64}, "9e4ec0", true), this.fab, View.ALPHA));
        }
        if (motionSpec.hasPropertyValues(NPStringFog.decode(new byte[]{66, 6, 87, 15, 86}, "1e6c3e", false, true))) {
            arrayList.add(motionSpec.getAnimator(NPStringFog.decode(new byte[]{65, 81, 85, 95, 81}, "22434b", -23216), this.fab, View.SCALE_Y));
            arrayList.add(motionSpec.getAnimator(NPStringFog.decode(new byte[]{18, 5, 89, 9, 81}, "af8e41", -1413778662L), this.fab, View.SCALE_X));
        }
        if (motionSpec.hasPropertyValues(NPStringFog.decode(new byte[]{22, 92, 86, 76, 94}, "a5286a", false))) {
            arrayList.add(motionSpec.getAnimator(NPStringFog.decode(new byte[]{66, 94, 81, 18, 9}, "575fa0", 19773), this.fab, ExtendedFloatingActionButton.WIDTH));
        }
        if (motionSpec.hasPropertyValues(NPStringFog.decode(new byte[]{93, 7, 81, 84, 93, 69}, "5b8351", 1686943708L))) {
            arrayList.add(motionSpec.getAnimator(NPStringFog.decode(new byte[]{13, 6, 11, 94, 88, 69}, "ecb901", true, true), this.fab, ExtendedFloatingActionButton.HEIGHT));
        }
        if (motionSpec.hasPropertyValues(NPStringFog.decode(new byte[]{71, 5, 0, 83, 93, 94, 80, 55, 16, 86, 70, 68}, "7dd740", -7.639473E8f))) {
            arrayList.add(motionSpec.getAnimator(NPStringFog.decode(new byte[]{22, 85, 93, 7, 93, 15, 1, 103, 77, 2, 70, 21}, "f49c4a", 1.6025258E8f), this.fab, ExtendedFloatingActionButton.PADDING_START));
        }
        if (motionSpec.hasPropertyValues(NPStringFog.decode(new byte[]{20, 4, 2, 82, 12, 10, 3, 32, 8, 82}, "def6ed", -799726074L))) {
            arrayList.add(motionSpec.getAnimator(NPStringFog.decode(new byte[]{22, 87, 1, 81, 95, 88, 1, 115, 11, 81}, "f6e566", 2.056357406E9d), this.fab, ExtendedFloatingActionButton.PADDING_END));
        }
        if (motionSpec.hasPropertyValues(NPStringFog.decode(new byte[]{91, 82, 85, 83, 13, 121, 71, 82, 84, 95, 21, 79}, "7376a6", -1.918061827E9d))) {
            arrayList.add(motionSpec.getAnimator(NPStringFog.decode(new byte[]{84, 5, 85, 81, 84, 43, 72, 5, 84, 93, 76, 29}, "8d748d", 27611), this.fab, new Property<ExtendedFloatingActionButton, Float>(this, Float.class, NPStringFog.decode(new byte[]{42, 37, 38, 33, 124, 107, 41, 52, 37, 39, 121, 96, 63, 59, 52, 54, 127, 100, 35, 54, 48, 61}, "fddd04", 5399)) { // from class: com.google.android.material.floatingactionbutton.BaseMotionStrategy.1
                final BaseMotionStrategy this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.util.Property
                public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
                    return Float.valueOf(AnimationUtils.lerp(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.originalTextCsl.getColorForState(extendedFloatingActionButton.getDrawableState(), this.this$0.fab.originalTextCsl.getDefaultColor()))));
                }

                @Override // android.util.Property
                public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
                    int colorForState = extendedFloatingActionButton.originalTextCsl.getColorForState(extendedFloatingActionButton.getDrawableState(), this.this$0.fab.originalTextCsl.getDefaultColor());
                    ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (AnimationUtils.lerp(0.0f, Color.alpha(colorForState) / 255.0f, f.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
                    if (f.floatValue() == 1.0f) {
                        extendedFloatingActionButton.silentlyUpdateTextColor(extendedFloatingActionButton.originalTextCsl);
                    } else {
                        extendedFloatingActionButton.silentlyUpdateTextColor(colorStateListValueOf);
                    }
                }
            }));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final MotionSpec getCurrentMotionSpec() {
        MotionSpec motionSpec = this.motionSpec;
        if (motionSpec != null) {
            return motionSpec;
        }
        if (this.defaultMotionSpec == null) {
            this.defaultMotionSpec = MotionSpec.createFromResource(this.context, getDefaultMotionSpecResource());
        }
        return (MotionSpec) Preconditions.checkNotNull(this.defaultMotionSpec);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final List<Animator.AnimatorListener> getListeners() {
        return this.listeners;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public MotionSpec getMotionSpec() {
        return this.motionSpec;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public void onAnimationCancel() {
        this.tracker.clear();
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public void onAnimationEnd() {
        this.tracker.clear();
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public void onAnimationStart(Animator animator) {
        this.tracker.onNextAnimationStart(animator);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final void removeAnimationListener(Animator.AnimatorListener animatorListener) {
        this.listeners.remove(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final void setMotionSpec(MotionSpec motionSpec) {
        this.motionSpec = motionSpec;
    }
}
