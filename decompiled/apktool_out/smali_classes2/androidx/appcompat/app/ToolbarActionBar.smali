.class Landroidx/appcompat/app/ToolbarActionBar;
.super Landroidx/appcompat/app/ActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;,
        Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;
    }
.end annotation


# instance fields
.field final mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field final mMenuCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field mToolbarMenuPrepared:Z

.field final mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/app/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/ToolbarActionBar$1;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    new-instance v1, Landroidx/appcompat/app/ToolbarActionBar$2;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/ToolbarActionBar$2;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    iput-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuClicker:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v2, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window$Callback;

    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v2, p3}, Landroidx/appcompat/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    invoke-interface {v2, p2}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;

    return-void
.end method

.method private getMenu()Landroid/view/Menu;
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    new-instance v1, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    new-instance v2, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/DecorToolbar;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallbackSet:Z

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6adec7"

    const-wide v4, 0x4194517a98000000L    # 8.522103E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x62t
        0x0t
        0x6t
        0x16t
        0x43t
        0x56t
        0x44t
        0x4t
        0x44t
        0xbt
        0xct
        0x43t
        0x16t
        0x12t
        0x11t
        0x15t
        0x13t
        0x58t
        0x44t
        0x15t
        0x1t
        0x1t
        0x43t
        0x5et
        0x58t
        0x41t
        0x10t
        0xat
        0xct
        0x5bt
        0x54t
        0x0t
        0x16t
        0x45t
        0x2t
        0x54t
        0x42t
        0x8t
        0xbt
        0xbt
        0x43t
        0x55t
        0x57t
        0x13t
        0x17t
    .end array-data
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;I)V
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "34a02e"

    const-wide v4, 0x41b3be2614000000L    # 3.31228692E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x67t
        0x55t
        0x3t
        0x43t
        0x12t
        0x4t
        0x41t
        0x51t
        0x41t
        0x5et
        0x5dt
        0x11t
        0x13t
        0x47t
        0x14t
        0x40t
        0x42t
        0xat
        0x41t
        0x40t
        0x4t
        0x54t
        0x12t
        0xct
        0x5dt
        0x14t
        0x15t
        0x5ft
        0x5dt
        0x9t
        0x51t
        0x55t
        0x13t
        0x10t
        0x53t
        0x6t
        0x47t
        0x5dt
        0xet
        0x5et
        0x12t
        0x7t
        0x52t
        0x46t
        0x12t
    .end array-data
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bee573"

    const v3, -0x31e406b1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x36t
        0x4t
        0x7t
        0x46t
        0x17t
        0x52t
        0x10t
        0x0t
        0x45t
        0x5bt
        0x58t
        0x47t
        0x42t
        0x16t
        0x10t
        0x45t
        0x47t
        0x5ct
        0x10t
        0x11t
        0x0t
        0x51t
        0x17t
        0x5at
        0xct
        0x45t
        0x11t
        0x5at
        0x58t
        0x5ft
        0x0t
        0x4t
        0x17t
        0x15t
        0x56t
        0x50t
        0x16t
        0xct
        0xat
        0x5bt
        0x17t
        0x51t
        0x3t
        0x17t
        0x16t
    .end array-data
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "55b13d"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x61t
        0x54t
        0x0t
        0x42t
        0x13t
        0x5t
        0x47t
        0x50t
        0x42t
        0x5ft
        0x5ct
        0x10t
        0x15t
        0x46t
        0x17t
        0x41t
        0x43t
        0xbt
        0x47t
        0x41t
        0x7t
        0x55t
        0x13t
        0xdt
        0x5bt
        0x15t
        0x16t
        0x5et
        0x5ct
        0x8t
        0x57t
        0x54t
        0x10t
        0x11t
        0x52t
        0x7t
        0x41t
        0x5ct
        0xdt
        0x5ft
        0x13t
        0x6t
        0x54t
        0x47t
        0x11t
    .end array-data
.end method

.method public closeOptionsMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mLastMenuVisibility:Z

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4a08a6"

    const-wide v4, 0x41cb6d4074000000L    # 9.20289512E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x60t
        0x0t
        0x52t
        0x4bt
        0x41t
        0x57t
        0x46t
        0x4t
        0x10t
        0x56t
        0xet
        0x42t
        0x14t
        0x12t
        0x45t
        0x48t
        0x11t
        0x59t
        0x46t
        0x15t
        0x55t
        0x5ct
        0x41t
        0x5ft
        0x5at
        0x41t
        0x44t
        0x57t
        0xet
        0x5at
        0x56t
        0x0t
        0x42t
        0x18t
        0x0t
        0x55t
        0x40t
        0x8t
        0x5ft
        0x56t
        0x41t
        0x54t
        0x55t
        0x13t
        0x43t
    .end array-data
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7e82af"

    const-wide/32 v4, 0x72c36e1d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x63t
        0x4t
        0x5at
        0x41t
        0x41t
        0x7t
        0x45t
        0x0t
        0x18t
        0x5ct
        0xet
        0x12t
        0x17t
        0x16t
        0x4dt
        0x42t
        0x11t
        0x9t
        0x45t
        0x11t
        0x5dt
        0x56t
        0x41t
        0xft
        0x59t
        0x45t
        0x4ct
        0x5dt
        0xet
        0xat
        0x55t
        0x4t
        0x4at
        0x12t
        0x0t
        0x5t
        0x43t
        0xct
        0x57t
        0x5ct
        0x41t
        0x4t
        0x56t
        0x17t
        0x4bt
    .end array-data
.end method

.method public getTabCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/ActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public newTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4f0f69"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x60t
        0x7t
        0x52t
        0x15t
        0x16t
        0x58t
        0x46t
        0x3t
        0x10t
        0x8t
        0x59t
        0x4dt
        0x14t
        0x15t
        0x45t
        0x16t
        0x46t
        0x56t
        0x46t
        0x12t
        0x55t
        0x2t
        0x16t
        0x50t
        0x5at
        0x46t
        0x44t
        0x9t
        0x59t
        0x55t
        0x56t
        0x7t
        0x42t
        0x46t
        0x57t
        0x5at
        0x40t
        0xft
        0x5ft
        0x8t
        0x16t
        0x5bt
        0x55t
        0x14t
        0x43t
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onDestroy()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v2

    :cond_0
    return v2

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/ToolbarActionBar;->openOptionsMenu()Z

    :cond_0
    return v1
.end method

.method public openOptionsMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method populateOptionsMenu()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    throw v0
.end method

.method public removeAllTabs()V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d2332b"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x53t
        0x51t
        0x40t
        0x12t
        0x3t
        0x16t
        0x57t
        0x13t
        0x5dt
        0x5dt
        0x16t
        0x44t
        0x41t
        0x46t
        0x43t
        0x42t
        0xdt
        0x16t
        0x46t
        0x56t
        0x57t
        0x12t
        0xbt
        0xat
        0x12t
        0x47t
        0x5ct
        0x5dt
        0xet
        0x6t
        0x53t
        0x41t
        0x13t
        0x53t
        0x1t
        0x10t
        0x5bt
        0x5ct
        0x5dt
        0x12t
        0x0t
        0x5t
        0x40t
        0x40t
    .end array-data
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "da3c92"

    const v3, 0x4dca99aa    # 4.2488352E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x0t
        0x51t
        0x10t
        0x19t
        0x53t
        0x16t
        0x4t
        0x13t
        0xdt
        0x56t
        0x46t
        0x44t
        0x12t
        0x46t
        0x13t
        0x49t
        0x5dt
        0x16t
        0x15t
        0x56t
        0x7t
        0x19t
        0x5bt
        0xat
        0x41t
        0x47t
        0xct
        0x56t
        0x5et
        0x6t
        0x0t
        0x41t
        0x43t
        0x58t
        0x51t
        0x10t
        0x8t
        0x5ct
        0xdt
        0x19t
        0x50t
        0x5t
        0x13t
        0x40t
    .end array-data
.end method

.method public removeTabAt(I)V
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a089a0"

    const-wide/32 v4, -0x220f724c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x35t
        0x51t
        0x5at
        0x4at
        0x41t
        0x51t
        0x13t
        0x55t
        0x18t
        0x57t
        0xet
        0x44t
        0x41t
        0x43t
        0x4dt
        0x49t
        0x11t
        0x5ft
        0x13t
        0x44t
        0x5dt
        0x5dt
        0x41t
        0x59t
        0xft
        0x10t
        0x4ct
        0x56t
        0xet
        0x5ct
        0x3t
        0x51t
        0x4at
        0x19t
        0x0t
        0x53t
        0x15t
        0x59t
        0x57t
        0x57t
        0x41t
        0x52t
        0x0t
        0x42t
        0x4bt
    .end array-data
.end method

.method public requestFocus()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "080410"

    const/16 v3, -0x5ec5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x64t
        0x59t
        0x52t
        0x47t
        0x11t
        0x51t
        0x42t
        0x5dt
        0x10t
        0x5at
        0x5et
        0x44t
        0x10t
        0x4bt
        0x45t
        0x44t
        0x41t
        0x5ft
        0x42t
        0x4ct
        0x55t
        0x50t
        0x11t
        0x59t
        0x5et
        0x18t
        0x44t
        0x5bt
        0x5et
        0x5ct
        0x52t
        0x59t
        0x42t
        0x14t
        0x50t
        0x53t
        0x44t
        0x51t
        0x5ft
        0x5at
        0x11t
        0x52t
        0x51t
        0x4at
        0x43t
    .end array-data
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2

    const/16 v1, 0x10

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(I)V

    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    new-instance v1, Landroidx/appcompat/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Landroidx/appcompat/app/NavItemSelectedListener;-><init>(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationMode(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6cfef8"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x62t
        0x2t
        0x4t
        0x16t
        0x46t
        0x56t
        0x59t
        0x17t
        0x46t
        0x16t
        0x13t
        0x48t
        0x46t
        0xct
        0x14t
        0x11t
        0x3t
        0x5ct
        0x16t
        0xat
        0x8t
        0x45t
        0x12t
        0x50t
        0x5ft
        0x10t
        0x46t
        0x6t
        0x9t
        0x56t
        0x50t
        0xat
        0x1t
        0x10t
        0x14t
        0x59t
        0x42t
        0xat
        0x9t
        0xbt
    .end array-data
.end method

.method public setSelectedNavigationItem(I)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b17620"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x11t
        0x54t
        0x43t
        0x65t
        0x57t
        0x5ct
        0x7t
        0x52t
        0x43t
        0x53t
        0x56t
        0x7et
        0x3t
        0x47t
        0x5et
        0x51t
        0x53t
        0x44t
        0xbt
        0x5et
        0x59t
        0x7ft
        0x5ct
        0x54t
        0x7t
        0x49t
        0x17t
        0x58t
        0x5dt
        0x44t
        0x42t
        0x47t
        0x56t
        0x5at
        0x5bt
        0x54t
        0x42t
        0x57t
        0x58t
        0x44t
        0x12t
        0x53t
        0x17t
        0x43t
        0x45t
        0x53t
        0x5ct
        0x44t
        0x42t
        0x5ft
        0x56t
        0x40t
        0x5bt
        0x57t
        0x3t
        0x45t
        0x5et
        0x59t
        0x5ct
        0x10t
        0xft
        0x5et
        0x53t
        0x53t
    .end array-data
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setSubtitle(I)V
    .locals 2

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz p1, :cond_0

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz p1, :cond_0

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    return-void
.end method
