package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
public class ChangeClipBounds extends Transition {
    private static final String PROPNAME_BOUNDS = NPStringFog.decode(new byte[]{81, 90, 6, 22, 86, 91, 84, 14, 1, 8, 80, 66, 114, 91, 23, 10, 93, 65, 10, 86, 13, 17, 87, 86, 67}, "04bd92", -1.4536041E9f);
    private static final String PROPNAME_CLIP = NPStringFog.decode(new byte[]{81, 11, 80, 74, 92, 91, 84, 95, 87, 84, 90, 66, 114, 10, 65, 86, 87, 65, 10, 6, 88, 81, 67}, "0e4832", true);
    private static final String[] sTransitionProperties = {NPStringFog.decode(new byte[]{3, 89, 5, 66, 95, 10, 6, 13, 2, 92, 89, 19, 32, 88, 20, 94, 84, 16, 88, 84, 13, 89, 64}, "b7a00c", -1.3406595E9f)};

    public ChangeClipBounds() {
    }

    public ChangeClipBounds(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.getVisibility() == 8) {
            return;
        }
        Rect clipBounds = ViewCompat.getClipBounds(view);
        transitionValues.values.put(PROPNAME_CLIP, clipBounds);
        if (clipBounds == null) {
            transitionValues.values.put(PROPNAME_BOUNDS, new Rect(0, 0, view.getWidth(), view.getHeight()));
        }
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
        if (transitionValues != null && transitionValues2 != null && transitionValues.values.containsKey(PROPNAME_CLIP)) {
            if (!transitionValues2.values.containsKey(PROPNAME_CLIP)) {
                return null;
            }
            Rect rect = (Rect) transitionValues.values.get(PROPNAME_CLIP);
            Rect rect2 = (Rect) transitionValues2.values.get(PROPNAME_CLIP);
            boolean z = rect2 == null;
            if (rect != null || rect2 != null) {
                if (rect == null) {
                    rect = (Rect) transitionValues.values.get(PROPNAME_BOUNDS);
                } else if (rect2 == null) {
                    rect2 = (Rect) transitionValues2.values.get(PROPNAME_BOUNDS);
                }
                if (!rect.equals(rect2)) {
                    ViewCompat.setClipBounds(transitionValues2.view, rect);
                    ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(transitionValues2.view, (Property<View, V>) ViewUtils.CLIP_BOUNDS, (TypeEvaluator) new RectEvaluator(new Rect()), (Object[]) new Rect[]{rect, rect2});
                    if (!z) {
                        return objectAnimatorOfObject;
                    }
                    objectAnimatorOfObject.addListener(new AnimatorListenerAdapter(this, transitionValues2.view) { // from class: androidx.transition.ChangeClipBounds.1
                        final ChangeClipBounds this$0;
                        final View val$endView;

                        {
                            this.this$0 = this;
                            this.val$endView = view;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ViewCompat.setClipBounds(this.val$endView, null);
                        }
                    });
                    return objectAnimatorOfObject;
                }
            }
        }
        return null;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }
}
