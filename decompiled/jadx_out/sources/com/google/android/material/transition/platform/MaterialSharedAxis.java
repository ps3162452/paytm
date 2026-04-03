package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class MaterialSharedAxis extends MaterialVisibility<VisibilityAnimatorProvider> {
    private static final int DEFAULT_THEMED_DURATION_ATTR = R.attr.motionDurationLong1;
    private static final int DEFAULT_THEMED_EASING_ATTR = R.attr.motionEasingStandard;
    public static final int X = 0;
    public static final int Y = 1;
    public static final int Z = 2;
    private final int axis;
    private final boolean forward;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Axis {
    }

    public MaterialSharedAxis(int i, boolean z) {
        super(createPrimaryAnimatorProvider(i, z), createSecondaryAnimatorProvider());
        this.axis = i;
        this.forward = z;
    }

    private static VisibilityAnimatorProvider createPrimaryAnimatorProvider(int i, boolean z) {
        switch (i) {
            case 0:
                return new SlideDistanceProvider(z ? GravityCompat.END : GravityCompat.START);
            case 1:
                return new SlideDistanceProvider(z ? 80 : 48);
            case 2:
                return new ScaleProvider(z);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{47, 94, 78, 89, 84, 11, 2, 16, 89, 64, 81, 17, 92, 16}, "f0888b", -686903897L) + i);
        }
    }

    private static VisibilityAnimatorProvider createSecondaryAnimatorProvider() {
        return new FadeThroughProvider();
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    public /* bridge */ /* synthetic */ void addAdditionalAnimatorProvider(VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.addAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    public /* bridge */ /* synthetic */ void clearAdditionalAnimatorProvider() {
        super.clearAdditionalAnimatorProvider();
    }

    public int getAxis() {
        return this.axis;
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    int getDurationThemeAttrResId(boolean z) {
        return DEFAULT_THEMED_DURATION_ATTR;
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    int getEasingThemeAttrResId(boolean z) {
        return DEFAULT_THEMED_EASING_ATTR;
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getPrimaryAnimatorProvider() {
        return super.getPrimaryAnimatorProvider();
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return super.getSecondaryAnimatorProvider();
    }

    public boolean isForward() {
        return this.forward;
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    public /* bridge */ /* synthetic */ boolean removeAdditionalAnimatorProvider(VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.removeAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.MaterialVisibility
    public /* bridge */ /* synthetic */ void setSecondaryAnimatorProvider(VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.setSecondaryAnimatorProvider(visibilityAnimatorProvider);
    }
}
