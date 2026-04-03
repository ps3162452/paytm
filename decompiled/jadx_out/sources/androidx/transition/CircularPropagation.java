package androidx.transition;

import android.graphics.Rect;
import android.view.ViewGroup;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
public class CircularPropagation extends VisibilityPropagation {
    private float mPropagationSpeed = 3.0f;

    private static float distance(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    @Override // androidx.transition.TransitionPropagation
    public long getStartDelay(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i;
        int iRound;
        int iRound2;
        if (transitionValues == null && transitionValues2 == null) {
            return 0L;
        }
        if (transitionValues2 == null || getViewVisibility(transitionValues) == 0) {
            i = -1;
            transitionValues2 = transitionValues;
        } else {
            i = 1;
        }
        int viewX = getViewX(transitionValues2);
        int viewY = getViewY(transitionValues2);
        Rect epicenter = transition.getEpicenter();
        if (epicenter != null) {
            iRound = epicenter.centerX();
            iRound2 = epicenter.centerY();
        } else {
            viewGroup.getLocationOnScreen(new int[2]);
            iRound = Math.round(r7[0] + (viewGroup.getWidth() / 2) + viewGroup.getTranslationX());
            iRound2 = Math.round(r7[1] + (viewGroup.getHeight() / 2) + viewGroup.getTranslationY());
        }
        float fDistance = distance(viewX, viewY, iRound, iRound2) / distance(0.0f, 0.0f, viewGroup.getWidth(), viewGroup.getHeight());
        return Math.round((((transition.getDuration() < 0 ? 300L : r4) * ((long) i)) / this.mPropagationSpeed) * fDistance);
    }

    public void setPropagationSpeed(float f) {
        if (f == 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{69, 20, 95, 21, 87, 84, 84, 18, 89, 10, 88, 96, 69, 3, 85, 1, 22, 94, 84, 31, 16, 11, 89, 71, 21, 4, 85, 69, 6}, "5f0e63", 2.096888705E9d));
        }
        this.mPropagationSpeed = f;
    }
}
