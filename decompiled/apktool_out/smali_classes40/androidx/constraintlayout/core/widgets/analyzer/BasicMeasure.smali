.class public Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    return-void
.end method

.method private measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_3

    move v4, v1

    :goto_1
    if-eqz v0, :cond_4

    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    move v3, v1

    :goto_2
    if-eqz v4, :cond_5

    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    move v0, v1

    :goto_3
    if-eqz v3, :cond_0

    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v2, v3, v2

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v0, v0, v1

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    sget v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private measureChildren(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 12

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v6

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v7

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_7

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v6, :cond_2

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v1, :cond_8

    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v1, v2, :cond_8

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v1, :cond_8

    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v1, v2, :cond_8

    move v1, v2

    :goto_2
    if-nez v1, :cond_6

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v10

    if-eqz v10, :cond_6

    instance-of v10, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v10, :cond_6

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v10, :cond_3

    iget v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v10, :cond_3

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v10, :cond_3

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v10

    if-nez v10, :cond_3

    move v1, v2

    :cond_3
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_4

    iget v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v10, :cond_4

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v10, :cond_4

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v10

    if-nez v10, :cond_4

    move v1, v2

    :cond_4
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v10, :cond_5

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v8, :cond_6

    :cond_5
    iget v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    move v1, v2

    :cond_6
    if-nez v1, :cond_0

    sget v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-direct {p0, v7, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v8, v0, Landroidx/constraintlayout/core/Metrics;->measuredWidgets:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v0, Landroidx/constraintlayout/core/Metrics;->measuredWidgets:J

    goto/16 :goto_1

    :cond_7
    invoke-interface {v7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    return-void

    :cond_8
    move v1, v3

    goto :goto_2
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v1

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    invoke-virtual {p1, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setPass(I)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->layout()V

    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .locals 29

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v18

    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    const/16 v4, 0x80

    move/from16 v0, p2

    invoke-static {v0, v4}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v12

    if-nez v12, :cond_0

    const/16 v4, 0x40

    move/from16 v0, p2

    invoke-static {v0, v4}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_0
    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_34

    const/4 v4, 0x0

    move v10, v4

    :goto_1
    if-ge v10, v11, :cond_14

    move-object/from16 v0, p1

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_c

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v13, :cond_d

    const/4 v7, 0x1

    :goto_3
    if-eqz v5, :cond_e

    if-eqz v7, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_e

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-eqz v7, :cond_f

    if-eqz v5, :cond_f

    const/4 v4, 0x0

    move v5, v4

    :goto_5
    if-eqz v5, :cond_1

    sget-object v4, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v4, :cond_1

    sget-object v4, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v6, v4, Landroidx/constraintlayout/core/Metrics;->measures:J

    const-wide/16 v16, 0x1

    add-long v6, v6, v16

    iput-wide v6, v4, Landroidx/constraintlayout/core/Metrics;->measures:J

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p5

    if-ne v0, v4, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p7

    if-eq v0, v4, :cond_3

    :cond_2
    if-eqz v12, :cond_15

    :cond_3
    const/4 v4, 0x1

    :goto_6
    and-int v19, v5, v4

    const/4 v6, 0x0

    if-eqz v19, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v4

    move/from16 v0, p6

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v5

    move/from16 v0, p8

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    move/from16 v0, p5

    if-ne v0, v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    if-eq v7, v4, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :cond_4
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p7

    if-ne v0, v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :cond_5
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p5

    if-ne v0, v4, :cond_16

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p7

    if-ne v0, v4, :cond_16

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v5

    const/4 v6, 0x2

    :cond_6
    :goto_7
    const/4 v4, 0x1

    if-eqz v5, :cond_7

    const/high16 v7, 0x40000000    # 2.0f

    move/from16 v0, p5

    if-ne v0, v7, :cond_18

    move v7, v4

    :goto_8
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p7

    if-ne v0, v4, :cond_19

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    :cond_7
    move v4, v5

    move v5, v6

    :goto_a
    if-eqz v4, :cond_8

    const/4 v4, 0x2

    if-eq v5, v4, :cond_1b

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v20

    if-lez v11, :cond_9

    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    :cond_9
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v11, :cond_a

    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "d32d19"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V

    :cond_a
    if-lez v12, :cond_2f

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x1

    move v10, v4

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1d

    const/4 v4, 0x1

    move v11, v4

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v4, 0x0

    move v13, v4

    :goto_d
    if-ge v13, v12, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v0, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    move/from16 v16, v0

    if-nez v16, :cond_1e

    move v4, v7

    :goto_e
    add-int/lit8 v7, v13, 0x1

    move v13, v7

    move v7, v4

    goto :goto_d

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_f
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-eqz v7, :cond_10

    if-eqz v5, :cond_10

    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_5

    :cond_10
    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v5, :cond_11

    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_5

    :cond_13
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_1

    :cond_14
    move v5, v6

    goto/16 :goto_5

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v5

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p5

    if-ne v0, v4, :cond_17

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v4

    and-int/2addr v5, v4

    const/4 v6, 0x1

    :cond_17
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p7

    if-ne v0, v4, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v4

    and-int/2addr v5, v4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    :cond_18
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_8

    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_1a
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_1b
    const-wide/16 v4, 0x0

    :goto_f
    return-wide v4

    :cond_1c
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_b

    :cond_1d
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_c

    :cond_1e
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v16

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v17

    sget v21, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    move-result v21

    or-int v7, v7, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    :cond_1f
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v21

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_33

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v10, :cond_20

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v7

    if-le v7, v5, :cond_20

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v7

    sget-object v16, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v16

    add-int v7, v7, v16

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_20
    const/4 v7, 0x1

    move/from16 v28, v7

    move v7, v5

    move/from16 v5, v28

    :goto_10
    move/from16 v0, v22

    move/from16 v1, v17

    if-eq v0, v1, :cond_21

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v11, :cond_32

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v5

    if-le v5, v6, :cond_32

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v5

    sget-object v16, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v16

    add-int v5, v5, v16

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_11
    const/4 v6, 0x1

    move/from16 v28, v6

    move v6, v5

    move/from16 v5, v28

    :cond_21
    check-cast v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needSolverPass()Z

    move-result v4

    or-int/2addr v4, v5

    move v5, v7

    goto/16 :goto_e

    :cond_22
    const/4 v4, 0x0

    move/from16 v16, v4

    move/from16 v17, v12

    move v13, v6

    move v12, v5

    move v6, v7

    :goto_12
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ge v0, v4, :cond_2e

    const/4 v4, 0x0

    move v7, v4

    :goto_13
    move/from16 v0, v17

    if-ge v7, v0, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Helper;

    if-eqz v5, :cond_23

    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v5, :cond_24

    :cond_23
    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v5, :cond_26

    :cond_24
    move v5, v6

    :cond_25
    :goto_14
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v6, v5

    goto :goto_13

    :cond_26
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v21, 0x8

    move/from16 v0, v21

    if-eq v5, v0, :cond_24

    if-eqz v19, :cond_27

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_27

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v5, :cond_24

    :cond_27
    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v5, :cond_24

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v21

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v22

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v23

    sget v5, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    sget v5, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    move-result v5

    or-int/2addr v5, v6

    move-object/from16 v0, p1

    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v6, :cond_29

    move-object/from16 v0, p1

    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v0, v6, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v6, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    :cond_29
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v24

    move/from16 v0, v21

    if-eq v6, v0, :cond_2a

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v10, :cond_31

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v5

    if-le v5, v12, :cond_31

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v5

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_15
    const/4 v6, 0x1

    move v12, v5

    move v5, v6

    :cond_2a
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_2b

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v11, :cond_30

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v5

    if-le v5, v13, :cond_30

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v5

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_16
    const/4 v6, 0x1

    move v13, v5

    move v5, v6

    :cond_2b
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v4

    move/from16 v0, v23

    if-eq v0, v4, :cond_25

    const/4 v5, 0x1

    goto/16 :goto_14

    :cond_2c
    if-eqz v6, :cond_2d

    const/16 v4, 0x11

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "aa3039"

    const-wide v6, -0x3e2d3ea25e000000L    # -1.258649224E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v16, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V

    const/4 v6, 0x0

    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto/16 :goto_12

    :cond_2d
    move-wide v4, v14

    :goto_17
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    goto/16 :goto_f

    :cond_2e
    move-wide v4, v14

    goto :goto_17

    :cond_2f
    const-wide/16 v4, 0x0

    goto :goto_17

    :cond_30
    move v5, v13

    goto :goto_16

    :cond_31
    move v5, v12

    goto :goto_15

    :cond_32
    move v5, v6

    goto/16 :goto_11

    :cond_33
    move/from16 v28, v7

    move v7, v5

    move/from16 v5, v28

    goto/16 :goto_10

    :cond_34
    move v5, v6

    goto/16 :goto_5

    :array_0
    .array-data 1
        0x22t
        0x5at
        0x40t
        0x17t
        0x45t
        0x19t
        0x14t
        0x52t
        0x41t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x8t
        0xft
        0x47t
        0x55t
        0x41t
        0x54t
        0x4t
        0x5t
        0x5at
        0x51t
        0x47t
        0x5ct
        0x41t
        0x11t
        0x52t
        0x43t
        0x40t
    .end array-data
.end method

.method public updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    return-void
.end method
