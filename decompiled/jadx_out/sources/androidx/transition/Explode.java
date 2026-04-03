package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
public class Explode extends Visibility {
    private int[] mTempLoc;
    private static final String PROPNAME_SCREEN_BOUNDS = NPStringFog.decode(new byte[]{82, 95, 93, 71, 95, 80, 87, 11, 92, 77, 64, 85, 92, 85, 92, 15, 67, 90, 65, 84, 92, 91, 114, 86, 70, 95, 93, 70}, "319509", 8.403632E8f);
    private static final TimeInterpolator sDecelerate = new DecelerateInterpolator();
    private static final TimeInterpolator sAccelerate = new AccelerateInterpolator();

    public Explode() {
        this.mTempLoc = new int[2];
        setPropagation(new CircularPropagation());
    }

    public Explode(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempLoc = new int[2];
        setPropagation(new CircularPropagation());
    }

    private static float calculateDistance(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    private static float calculateMaxDistance(View view, int i, int i2) {
        return calculateDistance(Math.max(i, view.getWidth() - i), Math.max(i2, view.getHeight() - i2));
    }

    private void calculateOut(View view, Rect rect, int[] iArr) {
        int iCenterX;
        int iCenterY;
        view.getLocationOnScreen(this.mTempLoc);
        int i = this.mTempLoc[0];
        int i2 = this.mTempLoc[1];
        Rect epicenter = getEpicenter();
        if (epicenter == null) {
            iCenterX = Math.round(view.getTranslationX()) + (view.getWidth() / 2) + i;
            iCenterY = (view.getHeight() / 2) + i2 + Math.round(view.getTranslationY());
        } else {
            iCenterX = epicenter.centerX();
            iCenterY = epicenter.centerY();
        }
        float fCenterX = rect.centerX() - iCenterX;
        float fCenterY = rect.centerY() - iCenterY;
        if (fCenterX == 0.0f && fCenterY == 0.0f) {
            fCenterX = ((float) (Math.random() * 2.0d)) - 1.0f;
            fCenterY = ((float) (Math.random() * 2.0d)) - 1.0f;
        }
        float fCalculateDistance = calculateDistance(fCenterX, fCenterY);
        float fCalculateMaxDistance = calculateMaxDistance(view, iCenterX - i, iCenterY - i2);
        iArr[0] = Math.round((fCenterX / fCalculateDistance) * fCalculateMaxDistance);
        iArr[1] = Math.round(fCalculateMaxDistance * (fCenterY / fCalculateDistance));
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        view.getLocationOnScreen(this.mTempLoc);
        int i = this.mTempLoc[0];
        int i2 = this.mTempLoc[1];
        transitionValues.values.put(PROPNAME_SCREEN_BOUNDS, new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues2.values.get(PROPNAME_SCREEN_BOUNDS);
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        calculateOut(viewGroup, rect, this.mTempLoc);
        return TranslationAnimationCreator.createAnimation(view, transitionValues2, rect.left, rect.top, translationX + this.mTempLoc[0], this.mTempLoc[1] + translationY, translationX, translationY, sDecelerate, this);
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f;
        float f2;
        if (transitionValues == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues.values.get(PROPNAME_SCREEN_BOUNDS);
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R.id.transition_position);
        if (iArr != null) {
            float f3 = translationX + (iArr[0] - rect.left);
            rect.offsetTo(iArr[0], iArr[1]);
            f = (iArr[1] - rect.top) + translationY;
            f2 = f3;
        } else {
            f = translationY;
            f2 = translationX;
        }
        calculateOut(viewGroup, rect, this.mTempLoc);
        return TranslationAnimationCreator.createAnimation(view, transitionValues, i, i2, translationX, translationY, f2 + this.mTempLoc[0], f + this.mTempLoc[1], sAccelerate, this);
    }
}
