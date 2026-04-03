package com.google.android.material.transition.platform;

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
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{40, 10, 68, 2, 14, 93, 5, 68, 65, 15, 11, 80, 4, 68, 86, 10, 16, 81, 2, 16, 91, 12, 12, 14, 65}, "ad2cb4", -20426) + i);
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
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{126, 12, 16, 89, 95, 10, 83, 66, 21, 84, 90, 7, 82, 66, 2, 81, 65, 6, 84, 22, 15, 87, 93, 89, 23}, "7bf83c", true, true) + i);
        }
    }

    private static Animator createTranslationXAnimator(View view, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f2));
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter(view, f3) { // from class: com.google.android.material.transition.platform.SlideDistanceProvider.1
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
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter(view, f3) { // from class: com.google.android.material.transition.platform.SlideDistanceProvider.2
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

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    public Animator createAppear(ViewGroup viewGroup, View view) {
        return createTranslationAppearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
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
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{54, 10, 80, 80, 83, 65, 1, 15, 74, 64, 87, 15, 6, 3, 25, 89, 67, 18, 17, 70, 91, 81, 22, 17, 10, 21, 80, 64, 95, 23, 0, 72, 25, 125, 80, 65, 4, 18, 77, 81, 91, 17, 17, 15, 87, 83, 22, 21, 10, 70, 75, 81, 64, 4, 23, 21, 92, 20, 66, 9, 0, 70, 93, 93, 68, 4, 6, 18, 80, 91, 88, 65, 10, 0, 25, 64, 94, 4, 69, 21, 85, 93, 82, 4, 73, 70, 76, 71, 83, 65, 22, 3, 77, 103, 90, 8, 1, 3, 124, 80, 81, 4, 77, 15, 87, 64, 31, 65, 12, 8, 74, 64, 83, 0, 1, 72}, "ef946a", 5047));
        }
        this.slideDistance = i;
    }

    public void setSlideEdge(int i) {
        this.slideEdge = i;
    }
}
