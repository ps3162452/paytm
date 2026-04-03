package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class TextScale extends Transition {
    private static final String PROPNAME_SCALE = NPStringFog.decode(new byte[]{88, 11, 82, 23, 11, 89, 93, 95, 66, 0, 28, 68, 74, 6, 87, 9, 1, 10, 74, 6, 87, 9, 1}, "9e6ed0", true, true);

    private void captureValues(TransitionValues transitionValues) {
        if (transitionValues.view instanceof TextView) {
            transitionValues.values.put(PROPNAME_SCALE, Float.valueOf(((TextView) transitionValues.view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null || !(transitionValues.view instanceof TextView) || !(transitionValues2.view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) transitionValues2.view;
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        float fFloatValue = map.get(PROPNAME_SCALE) != null ? ((Float) map.get(PROPNAME_SCALE)).floatValue() : 1.0f;
        float fFloatValue2 = map2.get(PROPNAME_SCALE) != null ? ((Float) map2.get(PROPNAME_SCALE)).floatValue() : 1.0f;
        if (fFloatValue == fFloatValue2) {
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, fFloatValue2);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this, textView) { // from class: com.google.android.material.internal.TextScale.1
            final TextScale this$0;
            final TextView val$view;

            {
                this.this$0 = this;
                this.val$view = textView;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue3 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                this.val$view.setScaleX(fFloatValue3);
                this.val$view.setScaleY(fFloatValue3);
            }
        });
        return valueAnimatorOfFloat;
    }
}
