.class Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field mConstraintID:I

.field mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field mId:I

.field mMaxHeight:F

.field mMaxWidth:F

.field mMinHeight:F

.field mMinWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    const/4 v1, 0x0

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->Variant:[I

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_6

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_constraints:I

    if-ne v4, v5, :cond_1

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "dc9f8e"

    invoke-static {v5, v6, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v4, p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightLessThan:I

    if-ne v4, v5, :cond_2

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    goto :goto_1

    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightMoreThan:I

    if-ne v4, v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    goto :goto_1

    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthLessThan:I

    if-ne v4, v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    goto :goto_1

    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthMoreThan:I

    if-ne v4, v5, :cond_5

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    goto :goto_1

    :cond_5
    const/16 v4, 0x16

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "06235a"

    const/16 v6, 0x19a0

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "7b1aed"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 1
        0x8t
        0x2t
        0x40t
        0x9t
        0x4dt
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x73t
        0x59t
        0x5ct
        0x40t
        0x41t
        0x13t
        0x51t
        0x5ft
        0x5ct
        0x47t
        0x79t
        0x0t
        0x49t
        0x59t
        0x47t
        0x47t
        0x66t
        0x15t
        0x51t
        0x42t
        0x57t
        0x40t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x62t
        0xct
        0x5at
        0xft
        0xat
        0x13t
        0x59t
        0x42t
        0x45t
        0x0t
        0x2t
    .end array-data
.end method


# virtual methods
.method match(FF)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
