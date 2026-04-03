.class public Landroidx/constraintlayout/core/widgets/Placeholder;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgetsCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAllConstraints()V

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1, p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1, p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1, p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1, p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    :cond_0
    return-void
.end method

.method public measure(IIII)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingBottom()I

    move-result v4

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x0

    add-int v0, v3, v4

    add-int/lit8 v0, v0, 0x0

    iget v3, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgetsCount:I

    if-lez v3, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getMinWidth()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getMinHeight()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v6, :cond_2

    :goto_0
    if-ne p3, v6, :cond_4

    :goto_1
    invoke-virtual {p0, p2, p4}, Landroidx/constraintlayout/core/widgets/Placeholder;->setMeasure(II)V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/Placeholder;->setWidth(I)V

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/widgets/Placeholder;->setHeight(I)V

    iget v0, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgetsCount:I

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/Placeholder;->needsCallbackFromSolver(Z)V

    return-void

    :cond_2
    if-ne p1, v5, :cond_3

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_3
    if-nez p1, :cond_7

    move p2, v1

    goto :goto_0

    :cond_4
    if-ne p3, v5, :cond_5

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_1

    :cond_5
    if-nez p3, :cond_6

    move p4, v0

    goto :goto_1

    :cond_6
    move p4, v2

    goto :goto_1

    :cond_7
    move p2, v2

    goto :goto_0
.end method
