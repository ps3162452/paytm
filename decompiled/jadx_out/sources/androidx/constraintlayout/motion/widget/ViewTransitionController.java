package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.SharedValues;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class ViewTransitionController {
    ArrayList<ViewTransition.Animate> animations;
    private final MotionLayout mMotionLayout;
    private HashSet<View> mRelatedViews;
    private ArrayList<ViewTransition> viewTransitions = new ArrayList<>();
    private String TAG = NPStringFog.decode(new byte[]{103, 90, 0, 17, 48, 64, 80, 93, 22, 15, 16, 91, 94, 93, 38, 9, 10, 70, 67, 92, 9, 10, 1, 64}, "13efd2", true, false);
    ArrayList<ViewTransition.Animate> removeList = new ArrayList<>();

    public ViewTransitionController(MotionLayout motionLayout) {
        this.mMotionLayout = motionLayout;
    }

    private void listenForSharedVariable(ViewTransition viewTransition, boolean z) {
        ConstraintLayout.getSharedValues().addListener(viewTransition.getSharedValueID(), new SharedValues.SharedValuesListener(this, viewTransition, viewTransition.getSharedValueID(), z, viewTransition.getSharedValue()) { // from class: androidx.constraintlayout.motion.widget.ViewTransitionController.1
            final ViewTransitionController this$0;
            final boolean val$isSet;
            final int val$listen_for_id;
            final int val$listen_for_value;
            final ViewTransition val$viewTransition;

            {
                this.this$0 = this;
                this.val$viewTransition = viewTransition;
                this.val$listen_for_id = i;
                this.val$isSet = z;
                this.val$listen_for_value = i;
            }

            @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
            public void onNewValue(int i, int i2, int i3) {
                int sharedValueCurrent = this.val$viewTransition.getSharedValueCurrent();
                this.val$viewTransition.setSharedValueCurrent(i2);
                if (this.val$listen_for_id != i || sharedValueCurrent == i2) {
                    return;
                }
                if (this.val$isSet) {
                    if (this.val$listen_for_value == i2) {
                        int childCount = this.this$0.mMotionLayout.getChildCount();
                        for (int i4 = 0; i4 < childCount; i4++) {
                            View childAt = this.this$0.mMotionLayout.getChildAt(i4);
                            if (this.val$viewTransition.matchesView(childAt)) {
                                int currentState = this.this$0.mMotionLayout.getCurrentState();
                                ConstraintSet constraintSet = this.this$0.mMotionLayout.getConstraintSet(currentState);
                                ViewTransition viewTransition2 = this.val$viewTransition;
                                ViewTransitionController viewTransitionController = this.this$0;
                                viewTransition2.applyTransition(viewTransitionController, viewTransitionController.mMotionLayout, currentState, constraintSet, childAt);
                            }
                        }
                        return;
                    }
                    return;
                }
                if (this.val$listen_for_value != i2) {
                    int childCount2 = this.this$0.mMotionLayout.getChildCount();
                    for (int i5 = 0; i5 < childCount2; i5++) {
                        View childAt2 = this.this$0.mMotionLayout.getChildAt(i5);
                        if (this.val$viewTransition.matchesView(childAt2)) {
                            int currentState2 = this.this$0.mMotionLayout.getCurrentState();
                            ConstraintSet constraintSet2 = this.this$0.mMotionLayout.getConstraintSet(currentState2);
                            ViewTransition viewTransition3 = this.val$viewTransition;
                            ViewTransitionController viewTransitionController2 = this.this$0;
                            viewTransition3.applyTransition(viewTransitionController2, viewTransitionController2.mMotionLayout, currentState2, constraintSet2, childAt2);
                        }
                    }
                }
            }
        });
    }

    private void viewTransition(ViewTransition viewTransition, View... viewArr) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (viewTransition.mViewTransitionMode == 2) {
            viewTransition.applyTransition(this, this.mMotionLayout, currentState, null, viewArr);
            return;
        }
        if (currentState == -1) {
            String str = this.TAG;
            String strValueOf = String.valueOf(this.mMotionLayout.toString());
            Log.w(str, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{119, 89, 69, 67, 68, 72, 73, 89, 23, 68, 17, 94, 86, 68, 69, 102, 88, 93, 78, 98, 23, 81, 95, 75, 80, 66, 12, 95, 95, 24, 78, 95, 17, 88, 88, 86, 25, 66, 23, 81, 95, 75, 80, 66, 12, 95, 95, 24, 64, 83, 17, 30, 17, 123, 76, 68, 23, 85, 95, 76, 85, 79, 95, 16}, "96e018", -6.77688036E8d).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{118, 91, 69, 17, 66, 17, 72, 91, 23, 22, 23, 7, 87, 70, 69, 52, 94, 4, 79, 96, 23, 3, 89, 18, 81, 64, 12, 13, 89, 65, 79, 93, 17, 10, 94, 15, 24, 64, 23, 3, 89, 18, 81, 64, 12, 13, 89, 65, 65, 81, 17, 76, 23, 34, 77, 70, 23, 7, 89, 21, 84, 77, 95, 66}, "84eb7a", 1.200328E9f)));
        } else {
            ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
            if (constraintSet != null) {
                viewTransition.applyTransition(this, this.mMotionLayout, currentState, constraintSet, viewArr);
            }
        }
    }

    public void add(ViewTransition viewTransition) {
        this.viewTransitions.add(viewTransition);
        this.mRelatedViews = null;
        if (viewTransition.getStateTransition() == 4) {
            listenForSharedVariable(viewTransition, true);
        } else if (viewTransition.getStateTransition() == 5) {
            listenForSharedVariable(viewTransition, false);
        }
    }

    void addAnimation(ViewTransition.Animate animate) {
        if (this.animations == null) {
            this.animations = new ArrayList<>();
        }
        this.animations.add(animate);
    }

    void animate() {
        ArrayList<ViewTransition.Animate> arrayList = this.animations;
        if (arrayList == null) {
            return;
        }
        Iterator<ViewTransition.Animate> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().mutate();
        }
        this.animations.removeAll(this.removeList);
        this.removeList.clear();
        if (this.animations.isEmpty()) {
            this.animations = null;
        }
    }

    boolean applyViewTransition(int i, MotionController motionController) {
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.getId() == i) {
                viewTransition.mKeyFrames.addAllFrames(motionController);
                return true;
            }
        }
        return false;
    }

    void enableViewTransition(int i, boolean z) {
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.getId() == i) {
                viewTransition.setEnabled(z);
                return;
            }
        }
    }

    void invalidate() {
        this.mMotionLayout.invalidate();
    }

    boolean isViewTransitionEnabled(int i) {
        for (ViewTransition viewTransition : this.viewTransitions) {
            if (viewTransition.getId() == i) {
                return viewTransition.isEnabled();
            }
        }
        return false;
    }

    void remove(int i) {
        ViewTransition next;
        Iterator<ViewTransition> it = this.viewTransitions.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (next.getId() == i) {
                    break;
                }
            }
        }
        if (next != null) {
            this.mRelatedViews = null;
            this.viewTransitions.remove(next);
        }
    }

    void removeAnimation(ViewTransition.Animate animate) {
        this.removeList.add(animate);
    }

    void touchEvent(MotionEvent motionEvent) {
        int currentState = this.mMotionLayout.getCurrentState();
        if (currentState == -1) {
        }
        if (this.mRelatedViews == null) {
            this.mRelatedViews = new HashSet<>();
            for (ViewTransition viewTransition : this.viewTransitions) {
                int childCount = this.mMotionLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = this.mMotionLayout.getChildAt(i);
                    if (viewTransition.matchesView(childAt)) {
                        childAt.getId();
                        this.mRelatedViews.add(childAt);
                    }
                }
            }
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        Rect rect = new Rect();
        int action = motionEvent.getAction();
        ArrayList<ViewTransition.Animate> arrayList = this.animations;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<ViewTransition.Animate> it = this.animations.iterator();
            while (it.hasNext()) {
                it.next().reactTo(action, x, y);
            }
        }
        switch (action) {
            case 0:
            case 1:
                ConstraintSet constraintSet = this.mMotionLayout.getConstraintSet(currentState);
                for (ViewTransition viewTransition2 : this.viewTransitions) {
                    if (viewTransition2.supports(action)) {
                        for (View view : this.mRelatedViews) {
                            if (viewTransition2.matchesView(view)) {
                                view.getHitRect(rect);
                                if (rect.contains((int) x, (int) y)) {
                                    viewTransition2.applyTransition(this, this.mMotionLayout, currentState, constraintSet, view);
                                }
                            }
                        }
                    }
                }
                break;
        }
    }

    void viewTransition(int i, View... viewArr) {
        ViewTransition viewTransition = null;
        ArrayList arrayList = new ArrayList();
        for (ViewTransition viewTransition2 : this.viewTransitions) {
            if (viewTransition2.getId() == i) {
                for (View view : viewArr) {
                    if (viewTransition2.checkTags(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    viewTransition(viewTransition2, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
            } else {
                viewTransition2 = viewTransition;
            }
            viewTransition = viewTransition2;
        }
        if (viewTransition == null) {
            Log.e(this.TAG, NPStringFog.decode(new byte[]{16, 117, 14, 67, 88, 84, 16, 88, 14, 66, 20, 86, 89, 88, 5, 22, 98, 89, 85, 65, 53, 68, 85, 94, 67, 95, 21, 95, 91, 94}, "06a640", false, true));
        }
    }
}
