package com.google.android.material.expandable;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class ExpandableWidgetHelper {
    private boolean expanded = false;
    private int expandedComponentIdHint = 0;
    private final View widget;

    /* JADX WARN: Multi-variable type inference failed */
    public ExpandableWidgetHelper(ExpandableWidget expandableWidget) {
        this.widget = (View) expandableWidget;
    }

    private void dispatchExpandedStateChanged() {
        ViewParent parent = this.widget.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.widget);
        }
    }

    public int getExpandedComponentIdHint() {
        return this.expandedComponentIdHint;
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    public void onRestoreInstanceState(Bundle bundle) {
        this.expanded = bundle.getBoolean(NPStringFog.decode(new byte[]{85, 72, 19, 81, 88, 6, 85, 84}, "00c06b", false), false);
        this.expandedComponentIdHint = bundle.getInt(NPStringFog.decode(new byte[]{4, 30, 18, 2, 86, 2, 4, 2, 33, 12, 85, 22, 14, 8, 7, 13, 76, 47, 5, 46, 11, 13, 76}, "afbc8f", false), 0);
        if (this.expanded) {
            dispatchExpandedStateChanged();
        }
    }

    public Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putBoolean(NPStringFog.decode(new byte[]{86, 73, 69, 3, 93, 7, 86, 85}, "315b3c", -453149515L), this.expanded);
        bundle.putInt(NPStringFog.decode(new byte[]{82, 73, 65, 89, 92, 1, 82, 85, 114, 87, 95, 21, 88, 95, 84, 86, 70, 44, 83, 121, 88, 86, 70}, "71182e", -14511), this.expandedComponentIdHint);
        return bundle;
    }

    public boolean setExpanded(boolean z) {
        if (this.expanded == z) {
            return false;
        }
        this.expanded = z;
        dispatchExpandedStateChanged();
        return true;
    }

    public void setExpandedComponentIdHint(int i) {
        this.expandedComponentIdHint = i;
    }
}
