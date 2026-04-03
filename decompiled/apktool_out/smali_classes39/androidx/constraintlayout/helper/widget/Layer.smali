.class public Landroidx/constraintlayout/helper/widget/Layer;
.super Landroidx/constraintlayout/widget/ConstraintHelper;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z

.field protected mComputedCenterX:F

.field protected mComputedCenterY:F

.field protected mComputedMaxX:F

.field protected mComputedMaxY:F

.field protected mComputedMinX:F

.field protected mComputedMinY:F

.field mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGroupRotateAngle:F

.field mNeedBounds:Z

.field private mRotationCenterX:F

.field private mRotationCenterY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mShiftX:F

.field private mShiftY:F

.field mViews:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1c3169"

    const v2, -0x3136d50b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/helper/widget/Layer;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x7dt
        0x2t
        0x4at
        0x54t
        0x44t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    return-void
.end method

.method private reCacheViews()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    if-eqz v0, :cond_2

    array-length v0, v0

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-eq v0, v1, :cond_3

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mIds:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private transform()V
    .locals 13

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->reCacheViews()V

    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->calcCenters()V

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v1, v0

    iget v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    neg-float v5, v4

    const/4 v0, 0x0

    :goto_1
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v7, v7

    iget v9, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    sub-float/2addr v7, v9

    int-to-float v8, v8

    iget v9, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    sub-float/2addr v8, v9

    iget v9, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    iget v10, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    mul-float v11, v3, v1

    mul-float/2addr v11, v7

    mul-float v12, v5, v2

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    sub-float/2addr v11, v7

    add-float/2addr v9, v11

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    mul-float v9, v3, v2

    mul-float/2addr v7, v9

    mul-float v9, v4, v1

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    sub-float/2addr v7, v8

    add-float/2addr v7, v10

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    iget v7, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    iget v7, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    iget v7, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_3

    iget v7, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method protected calcCenters()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/helper/widget/Layer;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v5

    aget-object v1, v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    aget-object v1, v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    aget-object v1, v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    aget-object v1, v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_1
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-ge v0, v6, :cond_5

    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    goto :goto_0

    :cond_5
    int-to-float v0, v2

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    int-to-float v0, v1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    int-to-float v0, v4

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    int-to-float v0, v3

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int v0, v4, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int v0, v3, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    goto :goto_2

    :cond_7
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    goto/16 :goto_0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mUseViewMeasure:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    if-ne v3, v4, :cond_1

    iput-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    if-ne v3, v4, :cond_0

    iput-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    const/16 v6, 0x15

    const/4 v1, 0x0

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    move-result v3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getElevation()F

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mIds:[I

    aget v4, v4, v2

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    if-eqz v5, :cond_2

    cmpl-float v5, v0, v1

    if-lez v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    add-float/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setElevation(F)V

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures()V

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures()V

    return-void
.end method

.method public updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 5

    const/4 v1, 0x0

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->reCacheViews()V

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->calcCenters()V

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    float-to-int v3, v3

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/helper/widget/Layer;->layout(IIII)V

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    return-void
.end method

.method public updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    goto :goto_0
.end method
