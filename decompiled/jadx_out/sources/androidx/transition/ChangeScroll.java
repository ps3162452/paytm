package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
public class ChangeScroll extends Transition {
    private static final String PROPNAME_SCROLL_X = NPStringFog.decode(new byte[]{2, 90, 0, 74, 86, 91, 7, 14, 7, 80, 88, 92, 4, 81, 55, 91, 75, 93, 15, 88, 94, 64}, "c4d892", -6478);
    private static final String PROPNAME_SCROLL_Y = NPStringFog.decode(new byte[]{81, 86, 84, 22, 87, 12, 84, 2, 83, 12, 89, 11, 87, 93, 99, 7, 74, 10, 92, 84, 10, 29}, "080d8e", true);
    private static final String[] PROPERTIES = {NPStringFog.decode(new byte[]{87, 93, 81, 75, 92, 81, 82, 9, 86, 81, 82, 86, 81, 86, 102, 90, 65, 87, 90, 95, 15, 65}, "635938", true), NPStringFog.decode(new byte[]{5, 94, 80, 65, 11, 12, 0, 10, 87, 91, 5, 11, 3, 85, 103, 80, 22, 10, 8, 92, 14, 74}, "d043de", -1428346625L)};

    public ChangeScroll() {
    }

    public ChangeScroll(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void captureValues(TransitionValues transitionValues) {
        transitionValues.values.put(PROPNAME_SCROLL_X, Integer.valueOf(transitionValues.view.getScrollX()));
        transitionValues.values.put(PROPNAME_SCROLL_Y, Integer.valueOf(transitionValues.view.getScrollY()));
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        View view = transitionValues2.view;
        int iIntValue = ((Integer) transitionValues.values.get(PROPNAME_SCROLL_X)).intValue();
        int iIntValue2 = ((Integer) transitionValues2.values.get(PROPNAME_SCROLL_X)).intValue();
        int iIntValue3 = ((Integer) transitionValues.values.get(PROPNAME_SCROLL_Y)).intValue();
        int iIntValue4 = ((Integer) transitionValues2.values.get(PROPNAME_SCROLL_Y)).intValue();
        ObjectAnimator objectAnimatorOfInt = null;
        ObjectAnimator objectAnimatorOfInt2 = null;
        if (iIntValue != iIntValue2) {
            view.setScrollX(iIntValue);
            objectAnimatorOfInt = ObjectAnimator.ofInt(view, NPStringFog.decode(new byte[]{67, 90, 68, 9, 8, 92, 104}, "096fd0", -24061), iIntValue, iIntValue2);
        }
        if (iIntValue3 != iIntValue4) {
            view.setScrollY(iIntValue3);
            objectAnimatorOfInt2 = ObjectAnimator.ofInt(view, NPStringFog.decode(new byte[]{69, 7, 66, 13, 89, 84, 111}, "6d0b58", 359896481L), iIntValue3, iIntValue4);
        }
        return TransitionUtils.mergeAnimators(objectAnimatorOfInt, objectAnimatorOfInt2);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return PROPERTIES;
    }
}
