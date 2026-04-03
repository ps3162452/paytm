.class Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageMatrix"
.end annotation


# instance fields
.field m:[F

.field mBrightness:F

.field mColorMatrix:Landroid/graphics/ColorMatrix;

.field mContrast:F

.field mSaturation:F

.field mTmpColorMatrix:Landroid/graphics/ColorMatrix;

.field mWarmth:F


# direct methods
.method constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    iput v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    return-void
.end method

.method private brightness(F)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput p1, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    return-void
.end method

.method private saturation(F)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    sub-float v0, v7, p1

    const v1, 0x3e998c7e    # 0.2999f

    mul-float/2addr v1, v0

    const v2, 0x3f1645a2    # 0.587f

    mul-float/2addr v2, v0

    const v3, 0x3de978d5    # 0.114f

    mul-float/2addr v0, v3

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    const/4 v4, 0x0

    add-float v5, v1, p1

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x2

    aput v0, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    aput v6, v3, v4

    const/4 v4, 0x5

    aput v1, v3, v4

    const/4 v4, 0x6

    add-float v5, v2, p1

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v0, v3, v4

    const/16 v4, 0x8

    aput v6, v3, v4

    const/16 v4, 0x9

    aput v6, v3, v4

    const/16 v4, 0xa

    aput v1, v3, v4

    const/16 v1, 0xb

    aput v2, v3, v1

    const/16 v1, 0xc

    add-float/2addr v0, p1

    aput v0, v3, v1

    const/16 v0, 0xd

    aput v6, v3, v0

    const/16 v0, 0xe

    aput v6, v3, v0

    const/16 v0, 0xf

    aput v6, v3, v0

    const/16 v0, 0x10

    aput v6, v3, v0

    const/16 v0, 0x11

    aput v6, v3, v0

    const/16 v0, 0x12

    aput v7, v3, v0

    const/16 v0, 0x13

    aput v6, v3, v0

    return-void
.end method

.method private warmth(F)V
    .locals 12

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const p1, 0x3c23d70a    # 0.01f

    :cond_0
    const v0, 0x459c4000    # 5000.0f

    div-float/2addr v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v3, v0, v1

    const/high16 v0, 0x42840000    # 66.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x42700000    # 60.0f

    sub-float v1, v3, v0

    float-to-double v4, v1

    const-wide v6, -0x403ef32580000000L    # -0.13320475816726685

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    const v2, 0x43a4d970

    mul-float/2addr v0, v2

    float-to-double v4, v1

    const-wide v6, 0x3fb354f0e0000000L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    const v2, 0x43900fa3

    mul-float/2addr v1, v2

    move v2, v1

    move v1, v0

    :goto_0
    const/high16 v0, 0x42840000    # 66.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    const/high16 v0, 0x41980000    # 19.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x41200000    # 10.0f

    sub-float v0, v3, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v0, v4

    const v3, 0x430a848a

    mul-float/2addr v0, v3

    const v3, 0x439885bc

    sub-float/2addr v0, v3

    :goto_1
    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v0, 0x459c4000    # 5000.0f

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v6, v0, v1

    const/high16 v0, 0x42840000    # 66.0f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x42700000    # 60.0f

    sub-float v1, v6, v0

    float-to-double v8, v1

    const-wide v10, -0x403ef32580000000L    # -0.13320475816726685

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v0, v8

    const v2, 0x43a4d970

    mul-float/2addr v0, v2

    float-to-double v8, v1

    const-wide v10, 0x3fb354f0e0000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v1, v8

    const v2, 0x43900fa3

    mul-float/2addr v1, v2

    move v2, v1

    move v1, v0

    :goto_2
    const/high16 v0, 0x42840000    # 66.0f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_6

    const/high16 v0, 0x41980000    # 19.0f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_5

    const/high16 v0, 0x41200000    # 10.0f

    sub-float v0, v6, v0

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    double-to-float v0, v6

    const v6, 0x430a848a

    mul-float/2addr v0, v6

    const v6, 0x439885bc

    sub-float/2addr v0, v6

    :goto_3
    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v1, v3, v1

    div-float v2, v4, v2

    div-float v0, v5, v0

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput v4, v3, v1

    const/4 v1, 0x2

    const/4 v4, 0x0

    aput v4, v3, v1

    const/4 v1, 0x3

    const/4 v4, 0x0

    aput v4, v3, v1

    const/4 v1, 0x4

    const/4 v4, 0x0

    aput v4, v3, v1

    const/4 v1, 0x5

    const/4 v4, 0x0

    aput v4, v3, v1

    const/4 v1, 0x6

    aput v2, v3, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v3, v1

    const/16 v1, 0xc

    aput v0, v3, v1

    const/16 v0, 0xd

    const/4 v1, 0x0

    aput v1, v3, v0

    const/16 v0, 0xe

    const/4 v1, 0x0

    aput v1, v3, v0

    const/16 v0, 0xf

    const/4 v1, 0x0

    aput v1, v3, v0

    const/16 v0, 0x10

    const/4 v1, 0x0

    aput v1, v3, v0

    const/16 v0, 0x11

    const/4 v1, 0x0

    aput v1, v3, v0

    const/16 v0, 0x12

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v0

    const/16 v0, 0x13

    const/4 v1, 0x0

    aput v1, v3, v0

    return-void

    :cond_1
    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42c6f10d

    mul-float/2addr v0, v1

    const v1, 0x43211e9c

    sub-float v1, v0, v1

    const/high16 v0, 0x437f0000    # 255.0f

    move v2, v1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    const/high16 v0, 0x437f0000    # 255.0f

    goto/16 :goto_1

    :cond_4
    float-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42c6f10d

    mul-float/2addr v0, v1

    const v1, 0x43211e9c

    sub-float v1, v0, v1

    const/high16 v0, 0x437f0000    # 255.0f

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_6
    const/high16 v0, 0x437f0000    # 255.0f

    goto/16 :goto_3
.end method


# virtual methods
.method updateMatrix(Landroid/widget/ImageView;)V
    .locals 5

    const/4 v1, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    const/4 v0, 0x0

    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    cmpl-float v3, v2, v4

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->saturation(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    move v0, v1

    :cond_0
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    cmpl-float v3, v2, v4

    if-eqz v3, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v2, v2, v2, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    move v0, v1

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    cmpl-float v3, v2, v4

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->warmth(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    move v0, v1

    :cond_2
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    cmpl-float v3, v2, v4

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->brightness(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    :goto_0
    if-eqz v1, :cond_3

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method
