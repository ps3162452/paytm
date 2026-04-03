.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;,
        Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;,
        Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c6bc47"

    const v2, -0x334d96ab    # -9.3538984E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ActionMenuView;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x22t
        0x55t
        0x16t
        0xat
        0x5bt
        0x59t
        0x2et
        0x53t
        0xct
        0x16t
        0x62t
        0x5et
        0x6t
        0x41t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    instance-of v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v4

    :goto_1
    if-lez p2, :cond_6

    if-eqz v5, :cond_0

    if-lt p2, v3, :cond_6

    :cond_0
    mul-int v1, p1, p2

    const/high16 v7, -0x80000000

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v1, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int v1, v7, p1

    rem-int/2addr v7, p1

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-eqz v5, :cond_2

    if-ge v1, v3, :cond_2

    move v1, v3

    :cond_2
    :goto_2
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    move v2, v4

    :cond_3
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v0, v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Landroid/view/View;->measure(II)V

    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move v5, v2

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 33

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v10

    add-int v19, v9, v10

    const/4 v9, -0x2

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v24

    add-int/2addr v7, v8

    sub-int v25, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v25, v6

    rem-int v7, v25, v6

    if-nez v9, :cond_0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    div-int/2addr v7, v9

    add-int v26, v6, v7

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v27

    const/4 v7, 0x0

    const/4 v6, 0x0

    move/from16 v18, v6

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v12, 0x8

    if-ne v6, v12, :cond_1

    move v6, v7

    move v12, v10

    move v7, v13

    move/from16 v10, v16

    move v13, v9

    move-wide v8, v14

    :goto_2
    add-int/lit8 v14, v18, 0x1

    move/from16 v18, v14

    move/from16 v16, v10

    move-wide v14, v8

    move v10, v12

    move v9, v13

    move v13, v7

    move v7, v6

    goto :goto_1

    :cond_1
    instance-of v0, v8, Landroidx/appcompat/view/menu/ActionMenuItemView;

    move/from16 v20, v0

    add-int/lit8 v12, v7, 0x1

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v7, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v6, v7, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v20, :cond_3

    move-object v7, v8

    check-cast v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v8, v0, v7, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v20

    move/from16 v0, v20

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v7, :cond_24

    add-int/lit8 v7, v10, 0x1

    :goto_5
    iget-boolean v6, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    :goto_6
    sub-int v11, v9, v20

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move/from16 v0, v16

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v8, 0x1

    move/from16 v0, v20

    if-ne v0, v8, :cond_5

    const/4 v8, 0x1

    shl-int v8, v8, v18

    int-to-long v8, v8

    or-long/2addr v8, v14

    move/from16 v32, v12

    move v12, v7

    move v7, v13

    move v13, v11

    move v11, v6

    move/from16 v6, v32

    goto/16 :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    move v7, v9

    goto :goto_4

    :cond_5
    move-wide v8, v14

    move/from16 v32, v12

    move v12, v7

    move v7, v13

    move v13, v11

    move v11, v6

    move/from16 v6, v32

    goto/16 :goto_2

    :cond_6
    if-eqz v11, :cond_7

    const/4 v6, 0x2

    if-ne v7, v6, :cond_7

    const/4 v6, 0x1

    move v8, v6

    :goto_7
    const/16 v18, 0x0

    move/from16 v19, v9

    move-wide/from16 v20, v14

    :goto_8
    if-lez v10, :cond_22

    if-lez v19, :cond_22

    const v9, 0x7fffffff

    const-wide/16 v14, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    move/from16 v22, v6

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v0, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v28, v0

    if-nez v28, :cond_8

    move v6, v9

    move v9, v12

    :goto_a
    add-int/lit8 v12, v22, 0x1

    move/from16 v22, v12

    move v12, v9

    move v9, v6

    goto :goto_9

    :cond_7
    const/4 v6, 0x0

    move v8, v6

    goto :goto_7

    :cond_8
    iget v0, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v0, v9, :cond_9

    iget v6, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const-wide/16 v14, 0x1

    shl-long v14, v14, v22

    const/4 v9, 0x1

    goto :goto_a

    :cond_9
    iget v6, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v6, v9, :cond_21

    const-wide/16 v28, 0x1

    shl-long v28, v28, v22

    or-long v14, v14, v28

    add-int/lit8 v6, v12, 0x1

    move/from16 v32, v9

    move v9, v6

    move/from16 v6, v32

    goto :goto_a

    :cond_a
    or-long v20, v20, v14

    move/from16 v0, v19

    if-le v12, v0, :cond_d

    move-wide/from16 v14, v20

    :goto_b
    if-nez v11, :cond_11

    const/4 v6, 0x1

    if-ne v7, v6, :cond_11

    const/4 v6, 0x1

    :goto_c
    if-lez v19, :cond_1f

    const-wide/16 v8, 0x0

    cmp-long v8, v14, v8

    if-eqz v8, :cond_1f

    add-int/lit8 v7, v7, -0x1

    move/from16 v0, v19

    if-lt v0, v7, :cond_b

    if-nez v6, :cond_b

    const/4 v7, 0x1

    if-le v13, v7, :cond_12

    :cond_b
    invoke-static {v14, v15}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    int-to-float v7, v7

    if-nez v6, :cond_1e

    const-wide/16 v8, 0x1

    and-long/2addr v8, v14

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v6, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v6, :cond_c

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v7, v6

    :cond_c
    const/4 v6, 0x1

    add-int/lit8 v8, v27, -0x1

    shl-int/2addr v6, v8

    int-to-long v8, v6

    and-long/2addr v8, v14

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1e

    add-int/lit8 v6, v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v6, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v6, :cond_1e

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v7, v6

    :goto_d
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_14

    mul-int v7, v19, v26

    int-to-float v7, v7

    div-float v6, v7, v6

    float-to-int v6, v6

    move v7, v6

    :goto_e
    const/4 v6, 0x0

    move v9, v6

    move/from16 v8, v18

    :goto_f
    move/from16 v0, v27

    if-ge v9, v0, :cond_13

    const/4 v6, 0x1

    shl-int/2addr v6, v9

    int-to-long v10, v6

    and-long/2addr v10, v14

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-nez v6, :cond_15

    move v6, v8

    :goto_10
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v6

    goto :goto_f

    :cond_d
    const/4 v6, 0x0

    move/from16 v12, v19

    move-wide/from16 v18, v20

    move/from16 v20, v6

    :goto_11
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/16 v22, 0x1

    shl-int v22, v22, v20

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v28, v0

    and-long v28, v28, v14

    const-wide/16 v30, 0x0

    cmp-long v22, v28, v30

    if-nez v22, :cond_e

    iget v6, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    add-int/lit8 v21, v9, 0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_20

    const/4 v6, 0x1

    shl-int v6, v6, v20

    int-to-long v0, v6

    move-wide/from16 v28, v0

    or-long v18, v18, v28

    move v6, v12

    :goto_12
    add-int/lit8 v12, v20, 0x1

    move/from16 v20, v12

    move v12, v6

    goto :goto_11

    :cond_e
    if-eqz v8, :cond_f

    iget-boolean v0, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v22, v0

    add-int v28, v22, v26

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v22

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_f
    iget v0, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    iput v0, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v6, v12, -0x1

    goto :goto_12

    :cond_10
    const/4 v6, 0x1

    move-wide/from16 v20, v18

    move/from16 v19, v12

    move/from16 v18, v6

    goto/16 :goto_8

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_12
    move/from16 v8, v18

    :cond_13
    :goto_13
    if-eqz v8, :cond_1b

    const/4 v6, 0x0

    move v7, v6

    :goto_14
    move/from16 v0, v27

    if-ge v7, v0, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v9, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v9, :cond_1a

    :goto_15
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_14

    :cond_14
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_e

    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    instance-of v10, v10, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_17

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v9, :cond_16

    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v8, :cond_16

    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_16
    const/4 v6, 0x1

    goto/16 :goto_10

    :cond_17
    iget-boolean v10, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v10, :cond_18

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    const/4 v6, 0x1

    goto/16 :goto_10

    :cond_18
    if-eqz v9, :cond_19

    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_19
    add-int/lit8 v10, v27, -0x1

    if-eq v9, v10, :cond_1d

    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move v6, v8

    goto/16 :goto_10

    :cond_1a
    iget v9, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v9, v9, v26

    iget v6, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v8, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_15

    :cond_1b
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_1c

    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_1c
    move/from16 v16, v17

    goto :goto_16

    :cond_1d
    move v6, v8

    goto/16 :goto_10

    :cond_1e
    move v6, v7

    goto/16 :goto_d

    :cond_1f
    move/from16 v8, v18

    goto/16 :goto_13

    :cond_20
    move v6, v12

    goto/16 :goto_12

    :cond_21
    move v6, v9

    move v9, v12

    goto/16 :goto_a

    :cond_22
    move-wide/from16 v14, v20

    goto/16 :goto_b

    :cond_23
    move v6, v11

    goto/16 :goto_6

    :cond_24
    move v7, v10

    goto/16 :goto_5
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    :goto_0
    iget v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0

    :cond_1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    or-int/lit8 v2, v0, 0x0

    :cond_1
    if-lez p1, :cond_2

    instance-of v0, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v0

    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v6

    sub-int v0, p5, p3

    div-int/lit8 v7, v0, 0x2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    move-result v8

    const/4 v4, 0x0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    sub-int v3, v0, v1

    const/4 v1, 0x0

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_6

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    move v0, v1

    move v2, v4

    move v1, v3

    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v2

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/2addr v1, v8

    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    add-int v0, v2, v1

    :goto_3
    div-int/lit8 v12, v11, 0x2

    sub-int v12, v7, v12

    add-int/2addr v11, v12

    invoke-virtual {v10, v2, v12, v0, v11}, Landroid/view/View;->layout(IIII)V

    sub-int v1, v3, v1

    const/4 v0, 0x1

    move v2, v4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v2, v12

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v0, v2, v0

    sub-int v2, v0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v10, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v10

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    sub-int v0, v3, v0

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    add-int/lit8 v2, v4, 0x1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    if-ne v6, v0, :cond_7

    if-nez v1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    sub-int v4, v7, v4

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_7
    xor-int/lit8 v0, v1, 0x1

    sub-int v0, v4, v0

    if-lez v0, :cond_8

    div-int v0, v3, v0

    :goto_4
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_5
    if-ge v2, v6, :cond_0

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_d

    iget-boolean v5, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_9

    move v0, v1

    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    sub-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v10, v9, v1, v8}, Landroid/view/View;->layout(IIII)V

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    sub-int v0, v1, v0

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_7
    if-ge v2, v6, :cond_0

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_c

    iget-boolean v5, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_b

    move v0, v1

    :goto_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_7

    :cond_b
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    add-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v1, v9, v10, v8}, Landroid/view/View;->layout(IIII)V

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    goto :goto_8

    :cond_c
    move v0, v1

    goto :goto_8

    :cond_d
    move v0, v1

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eq v3, v0, :cond_0

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v3, :cond_1

    iget v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v0, v4, :cond_1

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v3

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v0, :cond_3

    if-lez v3, :cond_3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasureExactFormat(II)V

    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iput v2, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v2, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_1
.end method

.method public peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
