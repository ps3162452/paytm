.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private rowCount:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getMeasuredDimension(III)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return p2

    :sswitch_0
    move p2, p0

    goto :goto_0

    :sswitch_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    sget v1, Lcom/google/android/material/R$styleable;->FlowLayout_itemSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return v0
.end method

.method protected getLineSpacing()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return v0
.end method

.method protected getRowCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return v0
.end method

.method public getRowIndex(Landroid/view/View;)I
    .locals 2

    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public isSingleLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v0, 0x1

    move v8, v0

    :goto_0
    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v4

    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v9, v2, v0

    const/4 v0, 0x0

    move v2, v0

    move v3, v4

    move v5, v1

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move v0, v1

    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v6, 0x0

    instance-of v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_7

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    :goto_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-boolean v11, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    if-nez v11, :cond_5

    add-int v11, v3, v6

    add-int/2addr v7, v11

    if-le v7, v9, :cond_5

    iget v3, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int v5, v1, v3

    iget v1, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    move v3, v4

    :cond_5
    sget v1, Lcom/google/android/material/R$id;->row_index_key:I

    iget v7, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v1, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int v1, v3, v6

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v5

    if-eqz v8, :cond_6

    sub-int v7, v9, v7

    sub-int v11, v9, v3

    sub-int/2addr v11, v6

    invoke-virtual {v10, v7, v5, v11, v1}, Landroid/view/View;->layout(IIII)V

    :goto_6
    add-int/2addr v0, v6

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v0, v6

    iget v6, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v0, v6

    add-int/2addr v3, v0

    move v0, v1

    goto :goto_4

    :cond_6
    add-int v11, v3, v6

    invoke-virtual {v10, v11, v5, v7, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_7
    move v0, v6

    move v6, v7

    goto :goto_5

    :cond_8
    move v8, v0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    const/high16 v4, -0x80000000

    if-eq v14, v4, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v14, v4, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v8

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v17

    const/4 v4, 0x0

    move v10, v8

    move v11, v9

    move v9, v8

    move v8, v7

    move v7, v4

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v4

    if-ge v7, v4, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v12, 0x8

    if-ne v4, v12, :cond_2

    :goto_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1

    :cond_1
    const v4, 0x7fffffff

    move v5, v4

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/internal/FlowLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v12, 0x0

    instance-of v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/lit8 v12, v12, 0x0

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/lit8 v4, v4, 0x0

    :goto_3
    add-int v13, v11, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    add-int v13, v13, v19

    sub-int v19, v5, v17

    move/from16 v0, v19

    if-le v13, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v11

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int/2addr v10, v9

    :cond_3
    add-int v9, v11, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v9, v13

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    if-le v9, v8, :cond_4

    move v8, v9

    :cond_4
    add-int v9, v12, v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v9, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v9, v12

    add-int/2addr v11, v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v7, v9, :cond_5

    add-int/2addr v8, v4

    move v9, v13

    goto :goto_2

    :cond_5
    move v9, v13

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v8

    invoke-static {v6, v14, v4}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v4

    add-int/2addr v5, v9

    move/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/material/internal/FlowLayout;->setMeasuredDimension(II)V

    return-void

    :cond_7
    move v4, v12

    move v12, v13

    goto :goto_3
.end method

.method protected setItemSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return-void
.end method

.method protected setLineSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return-void
.end method
