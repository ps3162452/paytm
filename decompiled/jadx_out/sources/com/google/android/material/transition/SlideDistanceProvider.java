package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class SlideDistanceProvider implements VisibilityAnimatorProvider {
    private static final int DEFAULT_DISTANCE = -1;
    private int slideDistance = -1;
    private int slideEdge;

    @Retention(RetentionPolicy.SOURCE)
    public @interface GravityFlag {
    }

    public SlideDistanceProvider(int i) {
        this.slideEdge = i;
    }

    private static Animator createTranslationAppearAnimator(View view, View view2, int i, int i2) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        switch (i) {
            case 3:
                return createTranslationXAnimator(view2, i2 + translationX, translationX, translationX);
            case 5:
                return createTranslationXAnimator(view2, translationX - i2, translationX, translationX);
            case 48:
                return createTranslationYAnimator(view2, translationY - i2, translationY, translationY);
            case 80:
                return createTranslationYAnimator(view2, i2 + translationY, translationY, translationY);
            case GravityCompat.START /* 8388611 */:
                return createTranslationXAnimator(view2, isRtl(view) ? i2 + translationX : translationX - i2, translationX, translationX);
            case GravityCompat.END /* 8388613 */:
                return createTranslationXAnimator(view2, isRtl(view) ? translationX - i2 : i2 + translationX, translationX, translationX);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 13, 18, 5, 94, 8, 82, 67, 23, 8, 91, 5, 83, 67, 0, 13, 64, 4, 85, 23, 13, 11, 92, 91, 22}, "6cdd2a", 19648) + i);
        }
    }

    private static Animator createTranslationDisappearAnimator(View view, View view2, int i, int i2) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        switch (i) {
            case 3:
                return createTranslationXAnimator(view2, translationX, translationX - i2, translationX);
            case 5:
                return createTranslationXAnimator(view2, translationX, i2 + translationX, translationX);
            case 48:
                return createTranslationYAnimator(view2, translationY, i2 + translationY, translationY);
            case 80:
                return createTranslationYAnimator(view2, translationY, translationY - i2, translationY);
            case GravityCompat.START /* 8388611 */:
                return createTranslationXAnimator(view2, translationX, isRtl(view) ? translationX - i2 : i2 + translationX, translationX);
            case GravityCompat.END /* 8388613 */:
                return createTranslationXAnimator(view2, translationX, isRtl(view) ? i2 + translationX : translationX - i2, translationX);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{125, 13, 64, 4, 14, 10, 80, 67, 69, 9, 11, 7, 81, 67, 82, 12, 16, 6, 87, 23, 95, 10, 12, 89, 20}, "4c6ebc", 1.151900368E9d) + i);
        }
    }

    private static Animator createTranslationXAnimator(View view, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f2));
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter(view, f3) { // from class: com.google.android.material.transition.SlideDistanceProvider.1
            final float val$originalTranslation;
            final View val$view;

            {
                this.val$view = view;
                this.val$originalTranslation = f3;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                this.val$view.setTranslationX(this.val$originalTranslation);
            }
        });
        return objectAnimatorOfPropertyValuesHolder;
    }

    private static Animator createTranslationYAnimator(View view, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f2));
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter(view, f3) { // from class: com.google.android.material.transition.SlideDistanceProvider.2
            final float val$originalTranslation;
            final View val$view;

            {
                this.val$view = view;
                this.val$originalTranslation = f3;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                this.val$view.setTranslationY(this.val$originalTranslation);
            }
        });
        return objectAnimatorOfPropertyValuesHolder;
    }

    private int getSlideDistanceOrDefault(Context context) {
        int i = this.slideDistance;
        return i != -1 ? i : context.getResources().getDimensionPixelSize(R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    private static boolean isRtl(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    public Animator createAppear(ViewGroup viewGroup, View view) {
        return createTranslationAppearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    public Animator createDisappear(ViewGroup viewGroup, View view) {
        return createTranslationDisappearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    public int getSlideDistance() {
        return this.slideDistance;
    }

    public int getSlideEdge() {
        return this.slideEdge;
    }

    public void setSlideDistance(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{48, 9, 80, 0, 87, 67, 7, 12, 74, 16, 83, 13, 0, 0, 25, 9, 71, 16, 23, 69, 91, 1, 18, 19, 12, 22, 80, 16, 91, 21, 6, 75, 25, 45, 84, 67, 2, 17, 77, 1, 95, 19, 23, 12, 87, 3, 18, 23, 12, 69, 75, 1, 68, 6, 17, 22, 92, 68, 70, 11, 6, 69, 93, 13, 64, 6, 0, 17, 80, 11, 92, 67, 12, 3, 25, 16, 90, 6, 67, 22, 85, 13, 86, 6, 79, 69, 76, 23, 87, 67, 16, 0, 77, 55, 94, 10, 7, 0, 124, 0, 85, 6, 75, 12, 87, 16, 27, 67, 10, 11, 74, 16, 87, 2, 7, 75}, "ce9d2c", true));
        }
        this.slideDistance = i;
    }

    public void setSlideEdge(int i) {
        this.slideEdge = i;
    }
}
