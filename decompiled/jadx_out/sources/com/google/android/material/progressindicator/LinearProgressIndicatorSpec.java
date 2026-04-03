package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class LinearProgressIndicatorSpec extends BaseProgressIndicatorSpec {
    boolean drawHorizontallyInverse;
    public int indeterminateAnimationType;
    public int indicatorDirection;

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, LinearProgressIndicator.DEF_STYLE_RES);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.LinearProgressIndicator, R.attr.linearProgressIndicatorStyle, LinearProgressIndicator.DEF_STYLE_RES, new int[0]);
        this.indeterminateAnimationType = typedArrayObtainStyledAttributes.getInt(R.styleable.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.indicatorDirection = typedArrayObtainStyledAttributes.getInt(R.styleable.LinearProgressIndicator_indicatorDirectionLinear, 0);
        typedArrayObtainStyledAttributes.recycle();
        validateSpec();
        this.drawHorizontallyInverse = this.indicatorDirection == 1;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicatorSpec
    void validateSpec() {
        if (this.indeterminateAnimationType == 0) {
            if (this.trackCornerRadius > 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{107, 13, 16, 93, 81, 93, 93, 66, 6, 92, 71, 86, 92, 16, 22, 19, 84, 74, 92, 66, 11, 92, 65, 24, 74, 23, 21, 67, 90, 74, 77, 7, 1, 19, 92, 86, 25, 1, 10, 93, 65, 81, 94, 23, 10, 70, 70, 24, 80, 12, 1, 86, 65, 93, 75, 15, 12, 93, 84, 76, 92, 66, 4, 93, 92, 85, 88, 22, 12, 92, 91, 22}, "9be358", -1225019086L));
            }
            if (this.indicatorColors.length < 3) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 12, 11, 21, 91, 2, 71, 12, 16, 18, 18, 12, 92, 7, 0, 21, 87, 23, 95, 10, 11, 0, 70, 0, 18, 2, 11, 8, 95, 4, 70, 10, 10, 15, 18, 8, 71, 16, 17, 65, 80, 0, 18, 22, 22, 4, 86, 69, 69, 10, 17, 9, 18, 86, 18, 12, 23, 65, 95, 10, 64, 6, 69, 8, 92, 1, 91, 0, 4, 21, 93, 23, 18, 0, 10, 13, 93, 23, 65, 77}, "2cea2e", -1.44385861E8d));
            }
        }
    }
}
