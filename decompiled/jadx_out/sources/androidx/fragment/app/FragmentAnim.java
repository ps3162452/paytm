package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.fragment.R;
import androidx.fragment.app.FragmentTransition;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
class FragmentAnim {

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentAnim$2, reason: invalid class name */
    class AnonymousClass2 implements Animation.AnimationListener {
        final FragmentTransition.Callback val$callback;
        final ViewGroup val$container;
        final Fragment val$fragment;
        final CancellationSignal val$signal;

        AnonymousClass2(ViewGroup viewGroup, Fragment fragment, FragmentTransition.Callback callback, CancellationSignal cancellationSignal) {
            this.val$container = viewGroup;
            this.val$fragment = fragment;
            this.val$callback = callback;
            this.val$signal = cancellationSignal;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.val$container.post(new Runnable(this) { // from class: androidx.fragment.app.FragmentAnim.2.1
                final AnonymousClass2 this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (this.this$0.val$fragment.getAnimatingAway() != null) {
                        this.this$0.val$fragment.setAnimatingAway(null);
                        this.this$0.val$callback.onComplete(this.this$0.val$fragment, this.this$0.val$signal);
                    }
                }
            });
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    static class AnimationOrAnimator {
        public final Animation animation;
        public final Animator animator;

        AnimationOrAnimator(Animator animator) {
            this.animation = null;
            this.animator = animator;
            if (animator == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{112, 13, 80, 90, 84, 23, 94, 17, 25, 84, 84, 13, 95, 12, 77, 23, 87, 6, 17, 13, 76, 91, 89}, "1c975c", 1.0313187E9f));
            }
        }

        AnimationOrAnimator(Animation animation) {
            this.animation = animation;
            this.animator = null;
            if (animation == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{36, 15, 13, 12, 87, 69, 12, 14, 10, 65, 85, 80, 11, 15, 11, 21, 22, 83, 0, 65, 10, 20, 90, 93}, "eada61", false, true));
            }
        }
    }

    static class EndViewTransitionAnimation extends AnimationSet implements Runnable {
        private boolean mAnimating;
        private final View mChild;
        private boolean mEnded;
        private final ViewGroup mParent;
        private boolean mTransitionEnded;

        EndViewTransitionAnimation(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.mAnimating = true;
            this.mParent = viewGroup;
            this.mChild = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.mAnimating = true;
            if (this.mEnded) {
                return !this.mTransitionEnded;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.mEnded = true;
            OneShotPreDrawListener.add(this.mParent, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.mAnimating = true;
            if (this.mEnded) {
                return !this.mTransitionEnded;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.mEnded = true;
            OneShotPreDrawListener.add(this.mParent, this);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mEnded || !this.mAnimating) {
                this.mParent.endViewTransition(this.mChild);
                this.mTransitionEnded = true;
            } else {
                this.mAnimating = false;
                this.mParent.post(this);
            }
        }
    }

    private FragmentAnim() {
    }

    static void animateRemoveFragment(Fragment fragment, AnimationOrAnimator animationOrAnimator, FragmentTransition.Callback callback) {
        View view = fragment.mView;
        ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        CancellationSignal cancellationSignal = new CancellationSignal();
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener(fragment) { // from class: androidx.fragment.app.FragmentAnim.1
            final Fragment val$fragment;

            {
                this.val$fragment = fragment;
            }

            @Override // androidx.core.os.CancellationSignal.OnCancelListener
            public void onCancel() {
                if (this.val$fragment.getAnimatingAway() != null) {
                    View animatingAway = this.val$fragment.getAnimatingAway();
                    this.val$fragment.setAnimatingAway(null);
                    animatingAway.clearAnimation();
                }
                this.val$fragment.setAnimator(null);
            }
        });
        callback.onStart(fragment, cancellationSignal);
        if (animationOrAnimator.animation != null) {
            EndViewTransitionAnimation endViewTransitionAnimation = new EndViewTransitionAnimation(animationOrAnimator.animation, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            endViewTransitionAnimation.setAnimationListener(new AnonymousClass2(viewGroup, fragment, callback, cancellationSignal));
            fragment.mView.startAnimation(endViewTransitionAnimation);
            return;
        }
        Animator animator = animationOrAnimator.animator;
        fragment.setAnimator(animationOrAnimator.animator);
        animator.addListener(new AnimatorListenerAdapter(viewGroup, view, fragment, callback, cancellationSignal) { // from class: androidx.fragment.app.FragmentAnim.3
            final FragmentTransition.Callback val$callback;
            final ViewGroup val$container;
            final Fragment val$fragment;
            final CancellationSignal val$signal;
            final View val$viewToAnimate;

            {
                this.val$container = viewGroup;
                this.val$viewToAnimate = view;
                this.val$fragment = fragment;
                this.val$callback = callback;
                this.val$signal = cancellationSignal;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                this.val$container.endViewTransition(this.val$viewToAnimate);
                Animator animator3 = this.val$fragment.getAnimator();
                this.val$fragment.setAnimator(null);
                if (animator3 == null || this.val$container.indexOfChild(this.val$viewToAnimate) >= 0) {
                    return;
                }
                this.val$callback.onComplete(this.val$fragment, this.val$signal);
            }
        });
        animator.setTarget(fragment.mView);
        animator.start();
    }

    private static int getNextAnim(Fragment fragment, boolean z, boolean z2) {
        return z2 ? z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z ? fragment.getEnterAnim() : fragment.getExitAnim();
    }

    static AnimationOrAnimator loadAnimation(Context context, Fragment fragment, boolean z, boolean z2) {
        boolean z3;
        int nextTransition = fragment.getNextTransition();
        int nextAnim = getNextAnim(fragment, z, z2);
        fragment.setAnimations(0, 0, 0, 0);
        if (fragment.mContainer != null && fragment.mContainer.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            fragment.mContainer.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        if (fragment.mContainer != null && fragment.mContainer.getLayoutTransition() != null) {
            return null;
        }
        Animation animationOnCreateAnimation = fragment.onCreateAnimation(nextTransition, z, nextAnim);
        if (animationOnCreateAnimation != null) {
            return new AnimationOrAnimator(animationOnCreateAnimation);
        }
        Animator animatorOnCreateAnimator = fragment.onCreateAnimator(nextTransition, z, nextAnim);
        if (animatorOnCreateAnimator != null) {
            return new AnimationOrAnimator(animatorOnCreateAnimator);
        }
        int iTransitToAnimResourceId = (nextAnim != 0 || nextTransition == 0) ? nextAnim : transitToAnimResourceId(nextTransition, z);
        if (iTransitToAnimResourceId == 0) {
            return null;
        }
        boolean zEquals = NPStringFog.decode(new byte[]{4, 86, 81, 91}, "e886d5", -7.72503157E8d).equals(context.getResources().getResourceTypeName(iTransitToAnimResourceId));
        if (zEquals) {
            try {
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, iTransitToAnimResourceId);
                if (animationLoadAnimation != null) {
                    return new AnimationOrAnimator(animationLoadAnimation);
                }
                z3 = true;
            } catch (Resources.NotFoundException e) {
                throw e;
            } catch (RuntimeException e2) {
                z3 = false;
            }
        } else {
            z3 = false;
        }
        if (z3) {
            return null;
        }
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, iTransitToAnimResourceId);
            if (animatorLoadAnimator != null) {
                return new AnimationOrAnimator(animatorLoadAnimator);
            }
            return null;
        } catch (RuntimeException e3) {
            if (zEquals) {
                throw e3;
            }
            Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, iTransitToAnimResourceId);
            if (animationLoadAnimation2 != null) {
                return new AnimationOrAnimator(animationLoadAnimation2);
            }
            return null;
        }
    }

    private static int transitToAnimResourceId(int i, boolean z) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                return z ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                return z ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
            case 8194:
                return z ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
            default:
                return -1;
        }
    }
}
