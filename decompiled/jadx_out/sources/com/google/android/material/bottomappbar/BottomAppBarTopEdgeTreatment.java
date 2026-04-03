package com.google.android.material.bottomappbar;

import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class BottomAppBarTopEdgeTreatment extends EdgeTreatment implements Cloneable {
    private static final int ANGLE_LEFT = 180;
    private static final int ANGLE_UP = 270;
    private static final int ARC_HALF = 180;
    private static final int ARC_QUARTER = 90;
    private static final float ROUNDED_CORNER_FAB_OFFSET = 1.75f;
    private float cradleVerticalOffset;
    private float fabCornerSize = -1.0f;
    private float fabDiameter;
    private float fabMargin;
    private float horizontalOffset;
    private float roundedCornerRadius;

    public BottomAppBarTopEdgeTreatment(float f, float f2, float f3) {
        this.fabMargin = f;
        this.roundedCornerRadius = f2;
        setCradleVerticalOffset(f3);
        this.horizontalOffset = 0.0f;
    }

    float getCradleVerticalOffset() {
        return this.cradleVerticalOffset;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, ShapePath shapePath) {
        float f4;
        float f5;
        float f6 = this.fabDiameter;
        if (f6 == 0.0f) {
            shapePath.lineTo(f, 0.0f);
            return;
        }
        float f7 = ((this.fabMargin * 2.0f) + f6) / 2.0f;
        float f8 = f3 * this.roundedCornerRadius;
        float f9 = f2 + this.horizontalOffset;
        float f10 = (this.cradleVerticalOffset * f3) + ((1.0f - f3) * f7);
        if (f10 / f7 >= 1.0f) {
            shapePath.lineTo(f, 0.0f);
            return;
        }
        float f11 = this.fabCornerSize;
        float f12 = f11 * f3;
        boolean z = f11 == -1.0f || Math.abs((f11 * 2.0f) - f6) < 0.1f;
        if (z) {
            f4 = 0.0f;
            f5 = f10;
        } else {
            f4 = ROUNDED_CORNER_FAB_OFFSET;
            f5 = 0.0f;
        }
        float f13 = f7 + f8;
        float f14 = f5 + f8;
        float fSqrt = (float) Math.sqrt((f13 * f13) - (f14 * f14));
        float f15 = f9 - fSqrt;
        float f16 = f9 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f14));
        float f17 = (90.0f - degrees) + f4;
        shapePath.lineTo(f15, 0.0f);
        shapePath.addArc(f15 - f8, 0.0f, f15 + f8, f8 * 2.0f, 270.0f, degrees);
        if (z) {
            shapePath.addArc(f9 - f7, (-f7) - f5, f9 + f7, f7 - f5, 180.0f - f17, (2.0f * f17) - 180.0f);
        } else {
            float f18 = this.fabMargin;
            shapePath.addArc(f9 - f7, -(f12 + f18), (f9 - f7) + (2.0f * f12) + f18, f18 + f12, 180.0f - f17, ((2.0f * f17) - 180.0f) / 2.0f);
            float f19 = this.fabMargin;
            shapePath.lineTo((f9 + f7) - ((f19 / 2.0f) + f12), f19 + f12);
            float f20 = this.fabMargin;
            shapePath.addArc((f9 + f7) - ((2.0f * f12) + f20), -(f12 + f20), f9 + f7, f20 + f12, 90.0f, f17 - 90.0f);
        }
        shapePath.addArc(f16 - f8, 0.0f, f16 + f8, f8 * 2.0f, 270.0f - degrees, degrees);
        shapePath.lineTo(f, 0.0f);
    }

    public float getFabCornerRadius() {
        return this.fabCornerSize;
    }

    float getFabCradleMargin() {
        return this.fabMargin;
    }

    float getFabCradleRoundedCornerRadius() {
        return this.roundedCornerRadius;
    }

    public float getFabDiameter() {
        return this.fabDiameter;
    }

    public float getHorizontalOffset() {
        return this.horizontalOffset;
    }

    void setCradleVerticalOffset(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{1, 16, 80, 5, 93, 7, 52, 7, 67, 21, 88, 1, 3, 14, 126, 7, 87, 17, 7, 22, 17, 12, 68, 17, 22, 66, 83, 4, 17, 18, 13, 17, 88, 21, 88, 20, 7, 76}, "bb1a1b", 9666));
        }
        this.cradleVerticalOffset = f;
    }

    public void setFabCornerSize(float f) {
        this.fabCornerSize = f;
    }

    void setFabCradleMargin(float f) {
        this.fabMargin = f;
    }

    void setFabCradleRoundedCornerRadius(float f) {
        this.roundedCornerRadius = f;
    }

    public void setFabDiameter(float f) {
        this.fabDiameter = f;
    }

    void setHorizontalOffset(float f) {
        this.horizontalOffset = f;
    }
}
