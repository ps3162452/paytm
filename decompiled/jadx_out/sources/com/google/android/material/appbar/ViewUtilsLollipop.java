package com.google.android.material.appbar;

import android.R;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.internal.ThemeEnforcement;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
class ViewUtilsLollipop {
    private static final int[] STATE_LIST_ANIM_ATTRS = {R.attr.stateListAnimator};

    ViewUtilsLollipop() {
    }

    static void setBoundsViewOutlineProvider(View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    static void setDefaultAppBarLayoutStateListAnimator(View view, float f) {
        int integer = view.getResources().getInteger(com.google.android.material.R.integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(new int[]{R.attr.state_enabled, com.google.android.material.R.attr.state_liftable, -com.google.android.material.R.attr.state_lifted}, ObjectAnimator.ofFloat(view, NPStringFog.decode(new byte[]{86, 85, 84, 66, 88, 21, 90, 86, 95}, "39149a", false, true), 0.0f).setDuration(integer));
        stateListAnimator.addState(new int[]{R.attr.state_enabled}, ObjectAnimator.ofFloat(view, NPStringFog.decode(new byte[]{84, 15, 83, 70, 4, 16, 88, 12, 88}, "1c60ed", -1.6204698E8f), f).setDuration(integer));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, NPStringFog.decode(new byte[]{7, 13, 92, 79, 2, 68, 11, 14, 87}, "ba99c0", false), 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }

    static void setStateListAnimatorFromAttrs(View view, AttributeSet attributeSet, int i, int i2) {
        Context context = view.getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, STATE_LIST_ANIM_ATTRS, i, i2, new int[0]);
        try {
            if (typedArrayObtainStyledAttributes.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, typedArrayObtainStyledAttributes.getResourceId(0, 0)));
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
