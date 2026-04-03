.class public Landroidx/constraintlayout/core/widgets/Guideline;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F

.field private resolved:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mMinimumPosition:I

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 10

    const/16 v9, 0x8

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v3

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v6, :cond_3

    move v1, v2

    :goto_1
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v6, :cond_9

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v2

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_4

    :goto_2
    iget-boolean v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    iget v5, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    if-eq v5, v8, :cond_5

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v3, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_2
    :goto_3
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-eq v5, v8, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v4, v1, v3, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    invoke-virtual {p1, v0, v4, v3, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_3

    :cond_6
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    if-eq v4, v8, :cond_7

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    iget v5, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {p1, v4, v1, v5, v9}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v3, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_0

    :cond_7
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-eq v4, v8, :cond_8

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v5, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    neg-int v5, v5

    invoke-virtual {p1, v4, v0, v5, v9}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v4, v1, v3, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    invoke-virtual {p1, v0, v4, v3, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    invoke-static {p1, v1, v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createRowDimensionPercent(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    goto/16 :goto_0

    :cond_9
    move v2, v1

    move-object v0, v4

    move-object v1, v5

    goto/16 :goto_2
.end method

.method public allowedInBarrier()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    check-cast p1, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    iget v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    iget v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    iget v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    return-void
.end method

.method public cyclePosition()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativePercentPosition()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativeEndPosition()V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativeBeginPosition()V

    goto :goto_0
.end method

.method public getAnchor()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/core/widgets/Guideline$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    goto :goto_0

    :pswitch_2
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    return v0
.end method

.method public getRelativeBegin()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    return v0
.end method

.method public getRelativeBehaviour()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getRelativeEnd()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    return v0
.end method

.method public getRelativePercent()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "367696"

    const-wide v2, -0x3e20b6a89cc00000L    # -2.099600781E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x74t
        0x43t
        0x5et
        0x52t
        0x5ct
        0x5at
        0x5at
        0x58t
        0x52t
    .end array-data
.end method

.method inferRelativeBeginPosition()V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getX()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getY()I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideBegin(I)V

    return-void
.end method

.method inferRelativeEndPosition()V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideEnd(I)V

    return-void
.end method

.method inferRelativePercentPosition()V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    return-void
.end method

.method public isPercent()Z
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResolvedHorizontally()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    return v0
.end method

.method public isResolvedVertically()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    return v0
.end method

.method public setFinalValue(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    return-void
.end method

.method public setGuideBegin(I)V
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    :cond_0
    return-void
.end method

.method public setGuideEnd(I)V
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    :cond_0
    return-void
.end method

.method public setGuidePercent(F)V
    .locals 2

    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    :cond_0
    return-void
.end method

.method public setGuidePercent(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    return-void
.end method

.method public setMinimumPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mMinimumPosition:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-ne v0, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    goto :goto_0
.end method

.method public updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setX(I)V

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/Guideline;->setY(I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setHeight(I)V

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/Guideline;->setWidth(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/Guideline;->setX(I)V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setY(I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setWidth(I)V

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/Guideline;->setHeight(I)V

    goto :goto_0
.end method
