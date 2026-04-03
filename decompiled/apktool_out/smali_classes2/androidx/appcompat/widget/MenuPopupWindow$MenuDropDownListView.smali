.class public Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroidx/appcompat/widget/DropDownListView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    const/16 v4, 0x16

    const/16 v3, 0x15

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v1, v0, :cond_0

    iput v3, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    iput v4, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    iput v3, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    return-void
.end method

.method public bridge synthetic hasFocus()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->isFocused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lookForSelectablePosition(IZ)I
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic measureHeightOfChildrenCompat(IIIII)I
    .locals 1

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    sub-int v0, v3, v0

    if-ltz v0, :cond_3

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    if-eq v2, v0, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-interface {v3, v1, v2}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    iput-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-interface {v2, v1, v0}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v1, 0x0

    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    if-eqz v0, :cond_1

    iget v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v4

    invoke-virtual {p0, v0, v2, v4, v5}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
