package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
public class Fade extends Visibility {
    public static final int IN = 1;
    public static final int OUT = 2;
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{32, 88, 1, 87}, "f9e21c", 19613);
    private static final String PROPNAME_TRANSITION_ALPHA = NPStringFog.decode(new byte[]{85, 90, 6, 66, 94, 93, 80, 14, 4, 81, 85, 81, 14, 64, 16, 81, 95, 71, 93, 64, 11, 95, 95, 117, 88, 68, 10, 81}, "44b014", -1916209644L);

    private static class FadeAnimatorListener extends AnimatorListenerAdapter {
        private boolean mLayerTypeChanged = false;
        private final View mView;

        FadeAnimatorListener(View view) {
            this.mView = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewUtils.setTransitionAlpha(this.mView, 1.0f);
            if (this.mLayerTypeChanged) {
                this.mView.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (ViewCompat.hasOverlappingRendering(this.mView) && this.mView.getLayerType() == 0) {
                this.mLayerTypeChanged = true;
                this.mView.setLayerType(2, null);
            }
        }
    }

    public Fade() {
    }

    public Fade(int i) {
        setMode(i);
    }

    @SuppressLint({"RestrictedApi"})
    public Fade(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.FADE);
        setMode(TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, NPStringFog.decode(new byte[]{5, 0, 84, 10, 94, 1, 46, 14, 84, 6}, "ca0c0f", true), 0, getMode()));
        typedArrayObtainStyledAttributes.recycle();
    }

    private Animator createAnimation(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        ViewUtils.setTransitionAlpha(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, ViewUtils.TRANSITION_ALPHA, f2);
        objectAnimatorOfFloat.addListener(new FadeAnimatorListener(view));
        addListener(new TransitionListenerAdapter(this, view) { // from class: androidx.transition.Fade.1
            final Fade this$0;
            final View val$view;

            {
                this.this$0 = this;
                this.val$view = view;
            }

            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void onTransitionEnd(@NonNull Transition transition) {
                ViewUtils.setTransitionAlpha(this.val$view, 1.0f);
                ViewUtils.clearNonTransitionAlpha(this.val$view);
                transition.removeListener(this);
            }
        });
        return objectAnimatorOfFloat;
    }

    private static float getStartAlpha(TransitionValues transitionValues, float f) {
        Float f2;
        return (transitionValues == null || (f2 = (Float) transitionValues.values.get(PROPNAME_TRANSITION_ALPHA)) == null) ? f : f2.floatValue();
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        transitionValues.values.put(PROPNAME_TRANSITION_ALPHA, Float.valueOf(ViewUtils.getTransitionAlpha(transitionValues.view)));
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float startAlpha = getStartAlpha(transitionValues, 0.0f);
        return createAnimation(view, startAlpha != 1.0f ? startAlpha : 0.0f, 1.0f);
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ViewUtils.saveNonTransitionAlpha(view);
        return createAnimation(view, getStartAlpha(transitionValues, 1.0f), 0.0f);
    }
}
