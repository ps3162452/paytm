.class public Landroidx/appcompat/widget/ActionBarContextView;
.super Landroidx/appcompat/widget/AbsActionBarView;


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseButton:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroidx/appcompat/R$attr;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Landroidx/appcompat/R$styleable;->ActionMode:[I

    invoke-static {p1, p2, v0, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$styleable;->ActionMode_background:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget v1, Landroidx/appcompat/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    sget v1, Landroidx/appcompat/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    sget v1, Landroidx/appcompat/R$styleable;->ActionMode_height:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    sget v1, Landroidx/appcompat/R$styleable;->ActionMode_closeItemLayout:I

    sget v2, Landroidx/appcompat/R$layout;->abc_action_mode_close_item_material:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCloseItemLayout:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private initTitle()V
    .locals 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroidx/appcompat/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Landroidx/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Landroidx/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    if-eqz v4, :cond_5

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public closeMode()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    :cond_0
    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCloseItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    sget v1, Landroidx/appcompat/R$id;->action_mode_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCloseButton:Landroid/view/View;

    new-instance v1, Landroidx/appcompat/widget/ActionBarContextView$1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/widget/ActionBarContextView$1;-><init>(Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_1
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->removeAllViews()V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCloseButton:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideSubMenus()Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AbsActionBarView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/16 v7, 0x8

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_6

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_4

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    if-eqz v5, :cond_5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v0

    :goto_2
    invoke-static {v1, v2, v5}, Landroidx/appcompat/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0, v6, v5}, Landroidx/appcompat/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    :goto_3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    :cond_1
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    :goto_4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    xor-int/lit8 v5, v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_5
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v0

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v12, -0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v4, :cond_10

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    if-lez v0, :cond_6

    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v6

    add-int v8, v0, v6

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v0, v6

    sub-int v6, v1, v8

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v10, :cond_0

    invoke-virtual {p0, v10, v0, v9, v3}, Landroidx/appcompat/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v10

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v11

    sub-int v0, v10, v0

    :cond_0
    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v10}, Landroidx/appcompat/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_1

    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, v10, v0, v9, v3}, Landroidx/appcompat/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v0

    :cond_1
    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_3

    iget-object v11, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v11, :cond_3

    iget-boolean v11, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    if-eqz v11, :cond_9

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget-object v11, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10, v9}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v9, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    if-gt v9, v0, :cond_7

    :goto_1
    if-eqz v2, :cond_2

    sub-int/2addr v0, v9

    :cond_2
    iget-object v9, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_3
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v12, :cond_a

    move v2, v4

    :goto_4
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_4

    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v12, :cond_b

    :goto_5
    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v5, :cond_c

    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_6
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    if-gtz v0, :cond_e

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getChildCount()I

    move-result v2

    move v1, v3

    :goto_7
    if-ge v3, v2, :cond_d

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v8

    if-le v0, v1, :cond_11

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_7

    :cond_6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    const/16 v2, 0x8

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v10, v0, v9, v3}, Landroidx/appcompat/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v0

    goto :goto_3

    :cond_a
    move v2, v5

    goto :goto_4

    :cond_b
    move v4, v5

    goto :goto_5

    :cond_c
    move v5, v6

    goto :goto_6

    :cond_d
    invoke-virtual {p0, v7, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setMeasuredDimension(II)V

    :goto_9
    return-void

    :cond_e
    invoke-virtual {p0, v7, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v4, "44f2d6"

    invoke-static {v1, v4, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x4b

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v4, "7353ca"

    invoke-static {v1, v4, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move v0, v1

    goto :goto_8

    nop

    :array_0
    .array-data 1
        0x14t
        0x57t
        0x7t
        0x5ct
        0x44t
        0x59t
        0x5at
        0x58t
        0x1ft
        0x12t
        0x6t
        0x53t
        0x14t
        0x41t
        0x15t
        0x57t
        0x0t
        0x16t
        0x43t
        0x5dt
        0x12t
        0x5at
        0x44t
        0x57t
        0x5at
        0x50t
        0x14t
        0x5dt
        0xdt
        0x52t
        0xet
        0x58t
        0x7t
        0x4bt
        0xbt
        0x43t
        0x40t
        0x6bt
        0xet
        0x57t
        0xdt
        0x51t
        0x5ct
        0x40t
        0x5bt
        0x10t
        0x13t
        0x44t
        0x55t
        0x44t
        0x39t
        0x51t
        0xbt
        0x58t
        0x40t
        0x51t
        0x8t
        0x46t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x17t
        0x50t
        0x54t
        0x5dt
        0x43t
        0xet
        0x59t
        0x5ft
        0x4ct
        0x13t
        0x1t
        0x4t
        0x17t
        0x46t
        0x46t
        0x56t
        0x7t
        0x41t
        0x40t
        0x5at
        0x41t
        0x5bt
        0x43t
        0x0t
        0x59t
        0x57t
        0x47t
        0x5ct
        0xat
        0x5t
        0xdt
        0x5ft
        0x54t
        0x4at
        0xct
        0x14t
        0x43t
        0x6ct
        0x42t
        0x5at
        0x7t
        0x15t
        0x5ft
        0xet
        0x17t
        0x5et
        0x2t
        0x15t
        0x54t
        0x5bt
        0x6at
        0x43t
        0x2t
        0x13t
        0x52t
        0x5dt
        0x41t
        0x11t
        0x43t
        0x49t
        0x58t
        0x41t
        0x15t
        0x55t
        0xat
        0xdt
        0x5bt
        0x6ct
        0x45t
        0x52t
        0x11t
        0x4t
        0x59t
        0x47t
        0x1ct
    .end array-data
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->requestLayout()V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarContextView;->initTitle()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarContextView;->initTitle()V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
