.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/ConstraintHelper;


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final END:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final START:I = 0x5

.field public static final TOP:I = 0x2


# instance fields
.field private mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method private updateType(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_3

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne v0, v4, :cond_2

    iput v2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    :cond_0
    :goto_0
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/constraintlayout/core/widgets/Barrier;

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/Barrier;->setBarrierType(I)V

    :cond_1
    return-void

    :cond_2
    if-ne v0, v5, :cond_0

    iput v3, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne v0, v4, :cond_4

    iput v3, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_0

    iput v2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne v0, v4, :cond_6

    iput v2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    :cond_6
    if-ne v0, v5, :cond_0

    iput v3, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0
.end method


# virtual methods
.method public allowsGoneWidget()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getAllowsGoneWidget()Z

    move-result v0

    return v0
.end method

.method public getAllowsGoneWidget()Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getAllowsGoneWidget()Z

    move-result v0

    return v0
.end method

.method public getMargin()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getMargin()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    new-instance v0, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Barrier;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Barrier;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/widgets/Barrier;->setAllowsGoneWidget(Z)V

    goto :goto_1

    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierMargin:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iget-object v5, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Helper;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Barrier;->validateParams()V

    return-void
.end method

.method public loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            "Landroidx/constraintlayout/core/widgets/HelperWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintHelper;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    instance-of v0, p2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v1

    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-direct {p0, v0, v2, v1}, Landroidx/constraintlayout/widget/Barrier;->updateType(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Barrier;->setAllowsGoneWidget(Z)V

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    :cond_0
    return-void
.end method

.method public resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    invoke-direct {p0, p1, v0, p2}, Landroidx/constraintlayout/widget/Barrier;->updateType(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Barrier;->setAllowsGoneWidget(Z)V

    return-void
.end method

.method public setDpMargin(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Barrier;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    return-void
.end method

.method public setMargin(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    return-void
.end method
