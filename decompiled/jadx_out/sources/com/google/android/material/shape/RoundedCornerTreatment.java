package com.google.android.material.shape;

/* JADX INFO: loaded from: classes37.dex */
public class RoundedCornerTreatment extends CornerTreatment {
    float radius;

    public RoundedCornerTreatment() {
        this.radius = -1.0f;
    }

    @Deprecated
    public RoundedCornerTreatment(float f) {
        this.radius = -1.0f;
        this.radius = f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(ShapePath shapePath, float f, float f2, float f3) {
        shapePath.reset(0.0f, f3 * f2, 180.0f, 180.0f - f);
        shapePath.addArc(0.0f, 0.0f, f3 * 2.0f * f2, 2.0f * f3 * f2, 180.0f, f);
    }
}
