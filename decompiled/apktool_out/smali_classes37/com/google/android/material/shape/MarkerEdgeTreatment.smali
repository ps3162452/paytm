.class public final Lcom/google/android/material/shape/MarkerEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;


# instance fields
.field private final radius:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    const v0, 0x3a83126f    # 0.001f

    sub-float v0, p1, v0

    iput v0, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    return-void
.end method


# virtual methods
.method forceIntersection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 9

    iget v0, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    iget v2, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    iget v6, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-float v8, p2, v0

    mul-double/2addr v2, v4

    sub-double/2addr v2, v6

    neg-double v2, v2

    double-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {p4, v8, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    iget v2, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    iget v6, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v4

    sub-double/2addr v2, v6

    neg-double v2, v2

    double-to-float v2, v2

    invoke-virtual {p4, p2, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    iget v2, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    iget v6, p0, Lcom/google/android/material/shape/MarkerEdgeTreatment;->radius:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-float/2addr v0, p2

    mul-double/2addr v2, v4

    sub-double/2addr v2, v6

    neg-double v2, v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p4, v0, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
