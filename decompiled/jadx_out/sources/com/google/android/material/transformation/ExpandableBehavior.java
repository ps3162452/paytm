package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.expandable.ExpandableWidget;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {
    private static final int STATE_COLLAPSED = 2;
    private static final int STATE_EXPANDED = 1;
    private static final int STATE_UNINITIALIZED = 0;
    private int currentState;

    public ExpandableBehavior() {
        this.currentState = 0;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.currentState = 0;
    }

    private boolean didStateChange(boolean z) {
        if (!z) {
            return this.currentState == 1;
        }
        int i = this.currentState;
        return i == 0 || i == 2;
    }

    public static <T extends ExpandableBehavior> T from(View view, Class<T> cls) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{99, 90, 85, 67, 20, 10, 82, 69, 16, 10, 17, 67, 89, 93, 68, 67, 3, 67, 84, 90, 89, 15, 6, 67, 88, 84, 16, 32, 13, 12, 69, 86, 89, 13, 3, 23, 88, 64, 124, 2, 27, 12, 66, 70}, "720cbc", -11745));
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof ExpandableBehavior) {
            return cls.cast(behavior);
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{108, 9, 85, 16, 18, 10, 93, 22, 16, 89, 23, 67, 86, 14, 68, 16, 5, 16, 75, 14, 83, 89, 5, 23, 93, 5, 16, 71, 13, 23, 80, 65, 117, 72, 20, 2, 86, 5, 81, 82, 8, 6, 122, 4, 88, 81, 18, 10, 87, 19}, "8a00dc", false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected ExpandableWidget findExpandableWidget(CoordinatorLayout coordinatorLayout, View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i = 0; i < size; i++) {
            View view2 = dependencies.get(i);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (ExpandableWidget) view2;
            }
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        ExpandableWidget expandableWidget = (ExpandableWidget) view2;
        if (!didStateChange(expandableWidget.isExpanded())) {
            return false;
        }
        this.currentState = expandableWidget.isExpanded() ? 1 : 2;
        return onExpandedStateChange((View) expandableWidget, view, expandableWidget.isExpanded(), true);
    }

    protected abstract boolean onExpandedStateChange(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        ExpandableWidget expandableWidgetFindExpandableWidget;
        if (ViewCompat.isLaidOut(view) || (expandableWidgetFindExpandableWidget = findExpandableWidget(coordinatorLayout, view)) == null || !didStateChange(expandableWidgetFindExpandableWidget.isExpanded())) {
            return false;
        }
        this.currentState = expandableWidgetFindExpandableWidget.isExpanded() ? 1 : 2;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener(this, view, this.currentState, expandableWidgetFindExpandableWidget) { // from class: com.google.android.material.transformation.ExpandableBehavior.1
            final ExpandableBehavior this$0;
            final View val$child;
            final ExpandableWidget val$dep;
            final int val$expectedState;

            {
                this.this$0 = this;
                this.val$child = view;
                this.val$expectedState = i;
                this.val$dep = expandableWidgetFindExpandableWidget;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                this.val$child.getViewTreeObserver().removeOnPreDrawListener(this);
                if (this.this$0.currentState == this.val$expectedState) {
                    ExpandableBehavior expandableBehavior = this.this$0;
                    ExpandableWidget expandableWidget = this.val$dep;
                    expandableBehavior.onExpandedStateChange((View) expandableWidget, this.val$child, expandableWidget.isExpanded(), false);
                }
                return false;
            }
        });
        return false;
    }
}
