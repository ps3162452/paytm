.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a

.field private static final ROUNDED_CORNER_FAB_OFFSET:F = 1.75f


# instance fields
.field private cradleVerticalOffset:F

.field private fabCornerSize:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return-void
.end method


# virtual methods
.method getCradleVerticalOffset()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v16, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    mul-float v17, p3, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    add-float v18, p2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    mul-float v3, v3, p3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, p3

    mul-float v4, v4, v16

    add-float/2addr v3, v4

    div-float v4, v3, v16

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    mul-float v19, v4, p3

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    move v10, v2

    :goto_1
    if-nez v10, :cond_4

    const/high16 v2, 0x3fe00000    # 1.75f

    const/4 v3, 0x0

    move v9, v3

    :goto_2
    add-float v3, v16, v17

    add-float v4, v9, v17

    mul-float/2addr v3, v3

    mul-float v5, v4, v4

    sub-float/2addr v3, v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    sub-float v5, v18, v3

    add-float v20, v18, v3

    div-float/2addr v3, v4

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v8, v6

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v3, v8

    add-float v21, v3, v2

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    sub-float v3, v5, v17

    const/4 v4, 0x0

    add-float v5, v5, v17

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v17, v2

    const/high16 v7, 0x43870000    # 270.0f

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    if-eqz v10, :cond_5

    sub-float v10, v18, v16

    move/from16 v0, v16

    neg-float v2, v0

    sub-float v11, v2, v9

    add-float v12, v18, v16

    sub-float v13, v16, v9

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v14, v2, v21

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v21

    const/high16 v3, 0x43340000    # 180.0f

    sub-float v15, v2, v3

    move-object/from16 v9, p4

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    :goto_3
    sub-float v3, v20, v17

    const/4 v4, 0x0

    add-float v5, v20, v17

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v17, v2

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v8

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    move v9, v3

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    sub-float v10, v18, v16

    add-float v3, v19, v2

    neg-float v11, v3

    sub-float v3, v18, v16

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v19

    add-float/2addr v4, v2

    add-float v12, v3, v4

    add-float v13, v2, v19

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v14, v2, v21

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v21

    const/high16 v3, 0x43340000    # 180.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v2, v3

    move-object/from16 v9, p4

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v3, v18, v16

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    add-float v4, v4, v19

    sub-float/2addr v3, v4

    add-float v2, v2, v19

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v3, v18, v16

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v19

    add-float/2addr v4, v2

    sub-float v10, v3, v4

    add-float v3, v19, v2

    neg-float v11, v3

    add-float v12, v18, v16

    add-float v13, v2, v19

    const/high16 v14, 0x42b40000    # 90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v15, v21, v2

    move-object/from16 v9, p4

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    goto :goto_3
.end method

.method public getFabCornerRadius()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    return v0
.end method

.method getFabCradleMargin()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    return v0
.end method

.method getFabCradleRoundedCornerRadius()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    return v0
.end method

.method public getFabDiameter()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    return v0
.end method

.method public getHorizontalOffset()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return v0
.end method

.method setCradleVerticalOffset(F)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bb1a1b"

    const/16 v3, 0x25c2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x10t
        0x50t
        0x5t
        0x5dt
        0x7t
        0x34t
        0x7t
        0x43t
        0x15t
        0x58t
        0x1t
        0x3t
        0xet
        0x7et
        0x7t
        0x57t
        0x11t
        0x7t
        0x16t
        0x11t
        0xct
        0x44t
        0x11t
        0x16t
        0x42t
        0x53t
        0x4t
        0x11t
        0x12t
        0xdt
        0x11t
        0x58t
        0x15t
        0x58t
        0x14t
        0x7t
        0x4ct
    .end array-data
.end method

.method public setFabCornerSize(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    return-void
.end method

.method setFabCradleMargin(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    return-void
.end method

.method setFabCradleRoundedCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    return-void
.end method

.method public setFabDiameter(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    return-void
.end method

.method setHorizontalOffset(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return-void
.end method
