.class public Landroidx/constraintlayout/core/widgets/analyzer/Direct;
.super Ljava/lang/Object;


# static fields
.field private static final APPLY_MATCH_PARENT:Z = false

.field private static final DEBUG:Z = false

.field private static final EARLY_TERMINATION:Z = true

.field private static hcount:I

.field private static measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private static vcount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    sput v1, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    sput v1, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_1

    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v0, :cond_3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v0, :cond_3

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v0, :cond_2

    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v0, :cond_2

    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v0, :cond_8

    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasResolvedTargets(II)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    :goto_1
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_5

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_5

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_4

    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v4, :cond_4

    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_4

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_9

    iget v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v3, v2, :cond_9

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasResolvedTargets(II)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_5
    move v3, v2

    :goto_2
    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_a

    if-nez v0, :cond_6

    if-eqz v3, :cond_a

    :cond_6
    :goto_3
    return v2

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    move v3, v1

    goto :goto_2

    :cond_a
    if-eqz v0, :cond_b

    if-eqz v3, :cond_b

    move v1, v2

    :cond_b
    move v2, v1

    goto :goto_3
.end method

.method private static horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V
    .locals 10

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isHorizontalSolvingPassDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p0, 0x1

    new-instance v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sget v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v0, p1, p2, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    :cond_2
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v3

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    add-int/lit8 v6, p0, 0x1

    invoke-static {v6, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v6

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    add-int/lit8 v7, p0, 0x1

    new-instance v8, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v8}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sget v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v7, v5, p2, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    :cond_4
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v6, :cond_b

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v6, :cond_b

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, v5, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_3

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ltz v6, :cond_3

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-ltz v6, :cond_3

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_7

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    :cond_7
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v6, :cond_8

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_8

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v6, :cond_a

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_a

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p1, p2, v5, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v6, :cond_c

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v6, :cond_c

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {v5, v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, v5, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto/16 :goto_1

    :cond_c
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v6, :cond_3

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_3

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p2, v5, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto/16 :goto_1

    :cond_d
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v5

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v5, :cond_f

    add-int/lit8 v1, p0, 0x1

    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v6}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sget v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v1, v4, p2, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    :cond_f
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_10

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_10

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_13

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_13

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_11
    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_12

    if-eqz v5, :cond_14

    :cond_12
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v5, :cond_16

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v5, :cond_16

    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, v4, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_3

    :cond_13
    const/4 v1, 0x0

    goto :goto_4

    :cond_14
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_e

    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ltz v0, :cond_e

    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-ltz v0, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_15

    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v0, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v0

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_e

    :cond_15
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_e

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p1, p2, v4, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto/16 :goto_3

    :cond_16
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v5, :cond_17

    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v0, :cond_17

    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {v4, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, v4, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto/16 :goto_3

    :cond_17
    if-eqz v1, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_e

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p2, v4, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto/16 :goto_3

    :cond_18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->markHorizontalSolvingPassDone()V

    goto/16 :goto_0
.end method

.method public static ls(I)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "3ccf91"

    const-wide/32 v4, -0xc84ffa7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "b3146c"

    const/16 v4, 0x5536

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x18t
        0x4et
        0x4bt
    .end array-data

    :array_1
    .array-data 1
        0x4bt
        0x13t
    .end array-data
.end method

.method private static solveBarrier(ILandroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V
    .locals 1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p1, p2, p4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_0
.end method

.method public static solveChain(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;ZZZ)Z
    .locals 20

    if-eqz p7, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getFirst()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getLast()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/widgets/ChainHead;->getHead()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v13

    const/4 v5, 0x0

    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v3, v3, v6

    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_3

    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v6, :cond_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    if-eqz v11, :cond_7

    if-nez v12, :cond_8

    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    iget-object v6, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int v14, v4, v6

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v3

    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    sub-int v15, v3, v4

    sub-int v16, v15, v14

    if-gtz v16, :cond_9

    const/4 v3, 0x0

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    new-instance v17, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v8, v3

    move v3, v5

    move-object v5, v7

    :goto_1
    if-nez v3, :cond_13

    const/4 v9, 0x1

    invoke-static {v9, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_a
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, p2

    sget-object v18, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_b

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v18

    sget v19, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v9, v5, v0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    :cond_c
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    add-int/2addr v4, v9

    if-nez p2, :cond_10

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int/2addr v4, v9

    :goto_2
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v9, v9, v18

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    add-int/2addr v9, v4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v18, 0x8

    move/from16 v0, v18

    if-eq v4, v0, :cond_d

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    :cond_d
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v4, v4, v18

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_11

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v18, v0

    aget-object v18, v18, p3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v18, v0

    aget-object v18, v18, p3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v0, v5, :cond_f

    :cond_e
    const/4 v4, 0x0

    :cond_f
    :goto_3
    if-eqz v4, :cond_12

    :goto_4
    move-object v5, v4

    move v4, v9

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    add-int/2addr v4, v9

    goto :goto_2

    :cond_11
    const/4 v4, 0x0

    goto :goto_3

    :cond_12
    const/4 v3, 0x1

    move-object v4, v5

    goto :goto_4

    :cond_13
    if-nez v6, :cond_14

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_14
    if-eq v6, v8, :cond_15

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_15
    move/from16 v0, v16

    if-ge v0, v4, :cond_16

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_16
    sub-int v3, v16, v4

    if-eqz p5, :cond_17

    add-int/lit8 v4, v6, 0x1

    div-int/2addr v3, v4

    move v8, v3

    :goto_5
    const/4 v3, 0x1

    if-ne v6, v3, :cond_1b

    if-nez p2, :cond_19

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v3

    :goto_6
    int-to-float v4, v14

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    int-to-float v5, v8

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    if-nez p2, :cond_1a

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v11, v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    :goto_7
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v4

    invoke-static {v3, v11, v4, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_17
    if-eqz p6, :cond_27

    const/4 v4, 0x2

    if-le v6, v4, :cond_18

    div-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    move v8, v3

    goto :goto_5

    :cond_18
    move v8, v3

    goto :goto_5

    :cond_19
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v3

    goto :goto_6

    :cond_1a
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v11, v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    goto :goto_7

    :cond_1b
    if-eqz p5, :cond_23

    const/4 v3, 0x0

    add-int v4, v14, v8

    move-object v5, v7

    :goto_8
    if-nez v3, :cond_26

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1f

    if-nez p2, :cond_1e

    invoke-virtual {v5, v4, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v7

    invoke-static {v6, v5, v7, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    move v6, v4

    :goto_9
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_21

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v7, :cond_1c

    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eq v7, v5, :cond_1d

    :cond_1c
    const/4 v4, 0x0

    :cond_1d
    :goto_a
    if-eqz v4, :cond_22

    :goto_b
    move-object v5, v4

    move v4, v6

    goto :goto_8

    :cond_1e
    invoke-virtual {v5, v4, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v7

    invoke-static {v6, v5, v7}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    move v6, v4

    goto :goto_9

    :cond_1f
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v4, v6

    if-nez p2, :cond_20

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v7

    invoke-static {v6, v5, v7, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    :goto_c
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v4, v8

    move v6, v4

    goto :goto_9

    :cond_20
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v7

    invoke-static {v6, v5, v7}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_c

    :cond_21
    const/4 v4, 0x0

    goto :goto_a

    :cond_22
    const/4 v3, 0x1

    move-object v4, v5

    goto :goto_b

    :cond_23
    if-eqz p6, :cond_26

    const/4 v3, 0x2

    if-ne v6, v3, :cond_25

    if-nez p2, :cond_24

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    add-int/2addr v3, v14

    invoke-virtual {v11, v14, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    sub-int v3, v15, v3

    invoke-virtual {v12, v3, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v4

    invoke-static {v3, v11, v4, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v4

    invoke-static {v3, v12, v4, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    :goto_d
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_24
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    add-int/2addr v3, v14

    invoke-virtual {v11, v14, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    sub-int v3, v15, v3

    invoke-virtual {v12, v3, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v4

    invoke-static {v3, v11, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v4

    invoke-static {v3, v12, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_d

    :cond_25
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_26
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_27
    move v8, v3

    goto/16 :goto_5
.end method

.method private static solveHorizontalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 6

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v5

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v0

    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v3, v1, v2

    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    sub-int v1, v0, v1

    if-ne v2, v0, :cond_3

    move v1, v2

    move v2, v4

    :goto_0
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    sub-int v3, v0, v1

    sub-int/2addr v3, v5

    if-le v1, v0, :cond_0

    sub-int v3, v1, v0

    sub-int/2addr v3, v5

    :cond_0
    if-lez v3, :cond_1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    move v4, v2

    :goto_1
    add-int v2, v1, v4

    add-int v3, v2, v5

    if-le v1, v0, :cond_2

    add-int v0, v1, v4

    sub-int v1, v0, v5

    :goto_2
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    return-void

    :cond_1
    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v4, v2

    goto :goto_1

    :cond_2
    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_3
    move v0, v1

    move v2, v5

    move v1, v3

    goto :goto_0
.end method

.method private static solveHorizontalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v1

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v0

    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v0

    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int v3, v0, v3

    if-lt v3, v2, :cond_2

    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v4

    mul-float/2addr v4, v6

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    :cond_0
    :goto_1
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v4, :cond_1

    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    sub-int/2addr v3, v2

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v6

    float-to-int v1, v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p3, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p3, p2, p4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_4
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v4, :cond_0

    sub-int v0, v3, v2

    goto :goto_1
.end method

.method private static solveVerticalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 6

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v5

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v0

    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v3, v1, v2

    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    sub-int v1, v0, v1

    if-ne v2, v0, :cond_3

    move v1, v2

    move v2, v4

    :goto_0
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    sub-int v3, v0, v1

    sub-int/2addr v3, v5

    if-le v1, v0, :cond_0

    sub-int v3, v1, v0

    sub-int/2addr v3, v5

    :cond_0
    if-lez v3, :cond_1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    move v4, v2

    :goto_1
    add-int v2, v1, v4

    add-int v3, v2, v5

    if-le v1, v0, :cond_2

    sub-int v0, v1, v4

    sub-int v1, v0, v5

    :goto_2
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    return-void

    :cond_1
    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v4, v2

    goto :goto_1

    :cond_2
    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_3
    move v0, v1

    move v2, v5

    move v1, v3

    goto :goto_0
.end method

.method private static solveVerticalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v1

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v0

    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v0

    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int v3, v0, v3

    if-lt v3, v2, :cond_2

    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    :goto_0
    mul-float v4, v1, v6

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    :cond_0
    :goto_1
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v4, :cond_1

    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    sub-int/2addr v3, v2

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v6

    float-to-int v1, v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p3, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_4
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v4, :cond_0

    sub-int v0, v3, v2

    goto :goto_1
.end method

.method public static solvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 13

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, -0x1

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sput v4, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->hcount:I

    sput v4, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetFinalResolution()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v2, v4

    :goto_0
    if-ge v2, v8, :cond_0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v9

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v0, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalHorizontal(II)V

    :goto_1
    move v5, v4

    move v3, v4

    move v2, v4

    :goto_2
    if-ge v5, v8, :cond_6

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v10, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v10, :cond_5

    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v10

    if-ne v10, v1, :cond_1d

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    move-result v2

    if-eq v2, v11, :cond_3

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    :cond_1
    :goto_3
    move v0, v1

    :goto_4
    move v2, v0

    move v0, v3

    :goto_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalLeft(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    move-result v2

    if-eq v2, v11, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    move-result v10

    sub-int/2addr v2, v10

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    move-result v2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v2, v10

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_3

    :cond_5
    instance-of v10, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v10, :cond_1d

    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1c

    move v0, v1

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_8

    move v2, v4

    :goto_6
    if-ge v2, v8, :cond_8

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v5, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v5, :cond_7

    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v5

    if-ne v5, v1, :cond_7

    invoke-static {v4, v0, p1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_8
    invoke-static {v4, p0, p1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    if-eqz v3, :cond_a

    move v2, v4

    :goto_7
    if-ge v2, v8, :cond_a

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v3, :cond_9

    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v4, v0, p1, v4, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveBarrier(ILandroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_a
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v0, :cond_c

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalVertical(II)V

    :goto_8
    move v5, v4

    move v3, v4

    move v2, v4

    :goto_9
    if-ge v5, v8, :cond_11

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v6, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v6, :cond_10

    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    move-result v2

    if-eq v2, v11, :cond_d

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    :cond_b
    :goto_a
    move v0, v1

    :goto_b
    move v2, v0

    move v0, v3

    :goto_c
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v0

    goto :goto_9

    :cond_c
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalTop(I)V

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    move-result v2

    if-eq v2, v11, :cond_e

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_a

    :cond_e
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    move-result v2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_a

    :cond_f
    move v0, v2

    goto :goto_b

    :cond_10
    instance-of v6, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v6, :cond_1b

    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_1a

    move v0, v1

    goto :goto_c

    :cond_11
    if-eqz v2, :cond_13

    move v2, v4

    :goto_d
    if-ge v2, v8, :cond_13

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v5, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v5, :cond_12

    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v5

    if-nez v5, :cond_12

    invoke-static {v1, v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    :cond_12
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_13
    invoke-static {v4, p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    if-eqz v3, :cond_15

    move v2, v4

    :goto_e
    if-ge v2, v8, :cond_15

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v3, :cond_14

    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v3

    if-ne v3, v1, :cond_14

    invoke-static {v4, v0, p1, v1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveBarrier(ILandroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    :cond_14
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_15
    move v2, v4

    :goto_f
    if-ge v2, v8, :cond_19

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v4, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    sget v3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v4, v0, p1, v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v1, :cond_18

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v1

    if-nez v1, :cond_17

    invoke-static {v4, v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    :cond_16
    :goto_10
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    :cond_17
    invoke-static {v4, v0, p1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_10

    :cond_18
    invoke-static {v4, v0, p1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    invoke-static {v4, v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_10

    :cond_19
    return-void

    :cond_1a
    move v0, v3

    goto/16 :goto_c

    :cond_1b
    move v0, v2

    goto/16 :goto_b

    :cond_1c
    move v0, v3

    goto/16 :goto_5

    :cond_1d
    move v0, v2

    goto/16 :goto_4
.end method

.method private static verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 10

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isVerticalSolvingPassDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->vcount:I

    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p0, 0x1

    new-instance v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sget v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v0, p1, p2, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    :cond_2
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v3

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    add-int/lit8 v6, p0, 0x1

    invoke-static {v6, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v6

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    add-int/lit8 v7, p0, 0x1

    new-instance v8, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v8}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sget v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v7, v5, p2, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    :cond_4
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v6, :cond_b

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v6, :cond_b

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_3

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ltz v6, :cond_3

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-ltz v6, :cond_3

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_7

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    :cond_7
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v6, :cond_8

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_8

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v6, :cond_a

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_a

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p1, p2, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v6, :cond_c

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v6, :cond_c

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {v5, v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto/16 :goto_1

    :cond_c
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v6, :cond_3

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_3

    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p2, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto/16 :goto_1

    :cond_d
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v5

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v5, :cond_f

    add-int/lit8 v1, p0, 0x1

    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v6}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sget v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v1, v4, p2, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    :cond_f
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_10

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_10

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_13

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_13

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_11
    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_12

    if-eqz v5, :cond_14

    :cond_12
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v5, :cond_16

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v5, :cond_16

    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_3

    :cond_13
    const/4 v1, 0x0

    goto :goto_4

    :cond_14
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_e

    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ltz v0, :cond_e

    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-ltz v0, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_15

    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v0

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_e

    :cond_15
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    if-nez v0, :cond_e

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p1, p2, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalMatchConstraint(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto/16 :goto_3

    :cond_16
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v5, :cond_17

    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v0, :cond_17

    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {v4, v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto/16 :goto_3

    :cond_17
    if-eqz v1, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    if-nez v0, :cond_e

    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p2, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalCenterConstraints(ILandroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto/16 :goto_3

    :cond_18
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    add-int/lit8 v4, p0, 0x1

    invoke-static {v4, v3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v4

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz v4, :cond_1a

    add-int/lit8 v5, p0, 0x1

    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v6}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sget v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v5, v3, p2, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    :cond_1a
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1b

    if-eqz v4, :cond_19

    :cond_1b
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v4, :cond_19

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalBaseline(I)V

    add-int/lit8 v0, p0, 0x1

    :try_start_0
    invoke-static {v0, v3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    throw v0

    :cond_1c
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->markVerticalSolvingPassDone()V

    goto/16 :goto_0
.end method
