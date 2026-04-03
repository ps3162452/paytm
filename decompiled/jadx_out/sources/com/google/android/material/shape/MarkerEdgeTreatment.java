package com.google.android.material.shape;

/* JADX INFO: loaded from: classes37.dex */
public final class MarkerEdgeTreatment extends EdgeTreatment {
    private final float radius;

    public MarkerEdgeTreatment(float f) {
        this.radius = f - 0.001f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    boolean forceIntersection() {
        return true;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, ShapePath shapePath) {
        double d = this.radius;
        double dSqrt = Math.sqrt(2.0d);
        Double.isNaN(d);
        float f4 = (float) ((d * dSqrt) / 2.0d);
        float fSqrt = (float) Math.sqrt(Math.pow(this.radius, 2.0d) - Math.pow(f4, 2.0d));
        double d2 = this.radius;
        double dSqrt2 = Math.sqrt(2.0d);
        Double.isNaN(d2);
        double d3 = this.radius;
        Double.isNaN(d3);
        shapePath.reset(f2 - f4, ((float) (-((d2 * dSqrt2) - d3))) + fSqrt);
        double d4 = this.radius;
        double dSqrt3 = Math.sqrt(2.0d);
        Double.isNaN(d4);
        double d5 = this.radius;
        Double.isNaN(d5);
        shapePath.lineTo(f2, (float) (-((d4 * dSqrt3) - d5)));
        double d6 = this.radius;
        double dSqrt4 = Math.sqrt(2.0d);
        Double.isNaN(d6);
        double d7 = this.radius;
        Double.isNaN(d7);
        shapePath.lineTo(f4 + f2, fSqrt + ((float) (-((d6 * dSqrt4) - d7))));
    }
}
