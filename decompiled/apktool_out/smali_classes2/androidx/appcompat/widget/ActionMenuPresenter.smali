.class Landroidx/appcompat/widget/ActionMenuPresenter;
.super Landroidx/appcompat/view/menu/BaseMenuPresenter;

# interfaces
.implements Landroidx/core/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;,
        Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9808e2"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ActionMenuPresenter;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x78t
        0x5bt
        0x44t
        0x51t
        0xat
        0x5ct
        0x74t
        0x5dt
        0x5et
        0x4dt
        0x35t
        0x40t
        0x5ct
        0x4bt
        0x55t
        0x56t
        0x11t
        0x57t
        0x4bt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroidx/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroidx/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    return-void
.end method

.method static synthetic access$000(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    return-object v0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Landroidx/appcompat/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Landroidx/appcompat/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    if-eq v1, p1, :cond_0

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;)V

    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v2

    move-object v6, v3

    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    move-object/from16 v0, p0

    iget v11, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v12, v3

    :goto_1
    if-ge v12, v5, :cond_3

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v8, v8, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v13, :cond_1d

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    :goto_3
    add-int/lit8 v9, v12, 0x1

    move v12, v9

    move v9, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v2

    move-object v6, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v13

    if-eqz v13, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_5

    if-nez v4, :cond_4

    add-int v3, v8, v7

    if-le v3, v9, :cond_5

    :cond_4
    add-int/lit8 v9, v9, -0x1

    :cond_5
    sub-int v12, v9, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v7, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v3, v11, v4

    rem-int v7, v11, v4

    div-int/2addr v7, v3

    add-int/2addr v4, v7

    move v7, v4

    :goto_4
    const/4 v4, 0x0

    move v13, v4

    move v9, v10

    move v4, v3

    :goto_5
    if-ge v13, v5, :cond_18

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    invoke-static {v8, v7, v4, v15, v10}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v10

    sub-int/2addr v4, v10

    :goto_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v10, v11, v8

    if-nez v9, :cond_1b

    :goto_7
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    if-eqz v9, :cond_6

    const/4 v11, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_6
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move v3, v10

    move v9, v8

    move v8, v12

    :goto_8
    add-int/lit8 v10, v13, 0x1

    move v13, v10

    move v11, v3

    move v12, v8

    goto :goto_5

    :cond_7
    invoke-virtual {v8, v15, v15}, Landroid/view/View;->measure(II)V

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    if-gtz v12, :cond_9

    if-eqz v18, :cond_d

    :cond_9
    if-lez v11, :cond_d

    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_a

    if-lez v4, :cond_d

    :cond_a
    const/4 v8, 0x1

    :goto_9
    if-eqz v8, :cond_12

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    invoke-static {v14, v7, v4, v15, v10}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v19

    sub-int v10, v4, v19

    if-nez v19, :cond_1a

    const/4 v4, 0x0

    :goto_a
    move v8, v10

    :goto_b
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v11, v10

    if-nez v9, :cond_b

    move v9, v10

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v10, :cond_10

    if-ltz v11, :cond_f

    const/4 v10, 0x1

    :goto_c
    and-int/2addr v4, v10

    move v14, v4

    move v10, v11

    move v11, v9

    move v9, v8

    :goto_d
    if-eqz v14, :cond_13

    if-eqz v17, :cond_13

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v4, v12

    :goto_e
    if-eqz v14, :cond_c

    add-int/lit8 v4, v4, -0x1

    :cond_c
    invoke-virtual {v3, v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move v3, v10

    move v8, v4

    move v4, v9

    move v9, v11

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    goto :goto_9

    :cond_e
    invoke-virtual {v14, v15, v15}, Landroid/view/View;->measure(II)V

    move/from16 v20, v8

    move v8, v4

    move/from16 v4, v20

    goto :goto_b

    :cond_f
    const/4 v10, 0x0

    goto :goto_c

    :cond_10
    add-int v10, v11, v9

    if-lez v10, :cond_11

    const/4 v10, 0x1

    :goto_f
    and-int/2addr v4, v10

    move v14, v4

    move v10, v11

    move v11, v9

    move v9, v8

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    goto :goto_f

    :cond_12
    move v14, v8

    move v10, v11

    move v11, v9

    move v9, v4

    goto :goto_d

    :cond_13
    if-eqz v18, :cond_19

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v4, 0x0

    move v8, v12

    move v12, v4

    :goto_10
    if-ge v12, v13, :cond_16

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v18

    if-eqz v18, :cond_14

    add-int/lit8 v8, v8, 0x1

    :cond_14
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    :cond_15
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_10

    :cond_16
    move v4, v8

    goto :goto_e

    :cond_17
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move v3, v11

    move v8, v12

    goto/16 :goto_8

    :cond_18
    const/4 v2, 0x1

    return v2

    :cond_19
    move v4, v12

    goto :goto_e

    :cond_1a
    move v4, v8

    goto/16 :goto_a

    :cond_1b
    move v8, v9

    goto/16 :goto_7

    :cond_1c
    move v7, v4

    goto/16 :goto_4

    :cond_1d
    move v3, v9

    goto/16 :goto_3
.end method

.method public getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-object v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    :cond_0
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->dismiss()V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object v0

    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    :cond_2
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v2, :cond_4

    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean v4, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    :cond_3
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3, v2, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    :cond_4
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    :goto_0
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMinCellSize:I

    return-void

    :cond_5
    iput-object v5, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

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

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    iget v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget v1, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/SubMenuBuilder;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    iget v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/SubMenuBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->size()I

    move-result v4

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_4

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    move v0, v1

    :goto_3
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public setItemLimit(I)V
    .locals 1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    return-void
.end method

.method public setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    iput-boolean p2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    return-void
.end method

.method public shouldIncludeItem(ILandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 7

    const/4 v5, 0x1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v6, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;Z)V

    invoke-direct {v6, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v6, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/core/view/ActionProvider;->setSubUiVisibilityListener(Landroidx/core/view/ActionProvider$SubUiVisibilityListener;)V

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    if-lez v3, :cond_8

    move v0, v1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_2
.end method
