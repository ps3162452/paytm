package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {
    public static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_LinearProgressIndicator;
    public static final int INDETERMINATE_ANIMATION_TYPE_CONTIGUOUS = 0;
    public static final int INDETERMINATE_ANIMATION_TYPE_DISJOINT = 1;
    public static final int INDICATOR_DIRECTION_END_TO_START = 3;
    public static final int INDICATOR_DIRECTION_LEFT_TO_RIGHT = 0;
    public static final int INDICATOR_DIRECTION_RIGHT_TO_LEFT = 1;
    public static final int INDICATOR_DIRECTION_START_TO_END = 2;

    @Retention(RetentionPolicy.SOURCE)
    public @interface IndeterminateAnimationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IndicatorDirection {
    }

    public LinearProgressIndicator(Context context) {
        this(context, null);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, DEF_STYLE_RES);
        initializeDrawables();
    }

    private void initializeDrawables() {
        setIndeterminateDrawable(IndeterminateDrawable.createLinearDrawable(getContext(), (LinearProgressIndicatorSpec) this.spec));
        setProgressDrawable(DeterminateDrawable.createLinearDrawable(getContext(), (LinearProgressIndicatorSpec) this.spec));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public LinearProgressIndicatorSpec createSpec(Context context, AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    public int getIndeterminateAnimationType() {
        return ((LinearProgressIndicatorSpec) this.spec).indeterminateAnimationType;
    }

    public int getIndicatorDirection() {
        return ((LinearProgressIndicatorSpec) this.spec).indicatorDirection;
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        ((LinearProgressIndicatorSpec) this.spec).drawHorizontallyInverse = (((LinearProgressIndicatorSpec) this.spec).indicatorDirection == 1 || (ViewCompat.getLayoutDirection(this) == 1 && ((LinearProgressIndicatorSpec) this.spec).indicatorDirection == 2)) ? true : ViewCompat.getLayoutDirection(this) == 0 && ((LinearProgressIndicatorSpec) this.spec).indicatorDirection == 3;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingLeft = i - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i2 - (getPaddingTop() + getPaddingBottom());
        IndeterminateDrawable indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
        DeterminateDrawable progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    public void setIndeterminateAnimationType(int i) {
        if (((LinearProgressIndicatorSpec) this.spec).indeterminateAnimationType == i) {
            return;
        }
        if (visibleToUser() && isIndeterminate()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{34, 82, 8, 91, 9, 65, 65, 80, 14, 84, 8, 82, 4, 19, 15, 91, 2, 80, 21, 86, 20, 88, 15, 91, 0, 71, 3, 21, 7, 91, 8, 94, 7, 65, 15, 90, 15, 19, 18, 76, 22, 80, 65, 68, 14, 92, 10, 80, 65, 71, 14, 80, 70, 69, 19, 92, 1, 71, 3, 70, 18, 19, 15, 91, 2, 92, 2, 82, 18, 90, 20, 21, 8, 64, 70, 70, 14, 90, 22, 19, 15, 91, 70, 92, 15, 87, 3, 65, 3, 71, 12, 90, 8, 84, 18, 80, 65, 94, 9, 81, 3, 27}, "a3f5f5", 1.5504887E9f));
        }
        ((LinearProgressIndicatorSpec) this.spec).indeterminateAnimationType = i;
        ((LinearProgressIndicatorSpec) this.spec).validateSpec();
        if (i == 0) {
            getIndeterminateDrawable().setAnimatorDelegate(new LinearIndeterminateContiguousAnimatorDelegate((LinearProgressIndicatorSpec) this.spec));
        } else {
            getIndeterminateDrawable().setAnimatorDelegate(new LinearIndeterminateDisjointAnimatorDelegate(getContext(), (LinearProgressIndicatorSpec) this.spec));
        }
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.spec).validateSpec();
    }

    public void setIndicatorDirection(int i) {
        ((LinearProgressIndicatorSpec) this.spec).indicatorDirection = i;
        ((LinearProgressIndicatorSpec) this.spec).drawHorizontallyInverse = (i == 1 || (ViewCompat.getLayoutDirection(this) == 1 && ((LinearProgressIndicatorSpec) this.spec).indicatorDirection == 2)) ? true : ViewCompat.getLayoutDirection(this) == 0 && i == 3;
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setProgressCompat(int i, boolean z) {
        if (this.spec != 0 && ((LinearProgressIndicatorSpec) this.spec).indeterminateAnimationType == 0 && isIndeterminate()) {
            return;
        }
        super.setProgressCompat(i, z);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        ((LinearProgressIndicatorSpec) this.spec).validateSpec();
        invalidate();
    }
}
