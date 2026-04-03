package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
public class SidePropagation extends VisibilityPropagation {
    private float mPropagationSpeed = 3.0f;
    private int mSide = 80;

    private int distance(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = 3;
        if (this.mSide == 8388611) {
            if (ViewCompat.getLayoutDirection(view) == 1) {
                i9 = 5;
            }
        } else if (this.mSide == 8388613) {
            if (!(ViewCompat.getLayoutDirection(view) == 1)) {
                i9 = 5;
            }
        } else {
            i9 = this.mSide;
        }
        switch (i9) {
            case 3:
                return (i7 - i) + Math.abs(i4 - i2);
            case 5:
                return (i - i5) + Math.abs(i4 - i2);
            case 48:
                return (i8 - i2) + Math.abs(i3 - i);
            case 80:
                return (i2 - i6) + Math.abs(i3 - i);
            default:
                return 0;
        }
    }

    private int getMaxDistance(ViewGroup viewGroup) {
        switch (this.mSide) {
            case 3:
            case 5:
            case GravityCompat.START /* 8388611 */:
            case GravityCompat.END /* 8388613 */:
                return viewGroup.getWidth();
            default:
                return viewGroup.getHeight();
        }
    }

    @Override // androidx.transition.TransitionPropagation
    public long getStartDelay(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i;
        int iCenterX;
        int iCenterY;
        if (transitionValues == null && transitionValues2 == null) {
            return 0L;
        }
        Rect epicenter = transition.getEpicenter();
        if (transitionValues2 == null || getViewVisibility(transitionValues) == 0) {
            i = -1;
            transitionValues2 = transitionValues;
        } else {
            i = 1;
        }
        int viewX = getViewX(transitionValues2);
        int viewY = getViewY(transitionValues2);
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        int iRound = iArr[0] + Math.round(viewGroup.getTranslationX());
        int iRound2 = iArr[1] + Math.round(viewGroup.getTranslationY());
        int width = iRound + viewGroup.getWidth();
        int height = iRound2 + viewGroup.getHeight();
        if (epicenter != null) {
            iCenterX = epicenter.centerX();
            iCenterY = epicenter.centerY();
        } else {
            iCenterX = (iRound + width) / 2;
            iCenterY = (iRound2 + height) / 2;
        }
        float fDistance = distance(viewGroup, viewX, viewY, iCenterX, iCenterY, iRound, iRound2, width, height) / getMaxDistance(viewGroup);
        long duration = transition.getDuration();
        if (duration < 0) {
            duration = 300;
        }
        return Math.round(((duration * ((long) i)) / this.mPropagationSpeed) * fDistance);
    }

    public void setPropagationSpeed(float f) {
        if (f == 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{66, 74, 92, 65, 0, 6, 83, 76, 90, 94, 15, 50, 66, 93, 86, 85, 65, 12, 83, 65, 19, 95, 14, 21, 18, 90, 86, 17, 81}, "2831aa", -7.90015315E8d));
        }
        this.mPropagationSpeed = f;
    }

    public void setSide(int i) {
        this.mSide = i;
    }
}
