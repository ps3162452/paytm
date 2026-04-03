.class abstract Landroidx/appcompat/view/menu/MenuPopup;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 10

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    move v6, v0

    move v3, v0

    move v2, v0

    move-object v5, v4

    move-object v0, p1

    :goto_0
    if-ge v6, v9, :cond_2

    invoke-interface {p0, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    move v3, v1

    move-object v1, v4

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-interface {p0, v6, v1, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lt v1, p3, :cond_1

    :goto_2
    return p3

    :cond_1
    if-le v1, v2, :cond_3

    :goto_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    goto :goto_0

    :cond_2
    move p3, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    move-object v1, v5

    goto :goto_1
.end method

.method protected static shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;
    .locals 1

    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Landroidx/appcompat/view/menu/MenuAdapter;

    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public abstract addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3f0300"

    const v3, 0x4d437977    # 2.0496984E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7et
        0x3t
        0x5et
        0x46t
        0x60t
        0x5ft
        0x43t
        0x13t
        0x40t
        0x40t
        0x10t
        0x5dt
        0x52t
        0x8t
        0x51t
        0x54t
        0x55t
        0x10t
        0x47t
        0xet
        0x55t
        0x5at
        0x42t
        0x10t
        0x5ct
        0x11t
        0x5et
        0x13t
        0x46t
        0x59t
        0x56t
        0x11t
        0x43t
    .end array-data
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-static {v0}, Landroidx/appcompat/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;

    move-result-object v1

    iget-object v2, v1, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopup;->closeMenuOnSubMenuOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v0, p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    return-void

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method
