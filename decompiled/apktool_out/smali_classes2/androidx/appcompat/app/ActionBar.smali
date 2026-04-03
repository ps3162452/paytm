.class public abstract Landroidx/appcompat/app/ActionBar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBar$DisplayOptions;,
        Landroidx/appcompat/app/ActionBar$LayoutParams;,
        Landroidx/appcompat/app/ActionBar$NavigationMode;,
        Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;,
        Landroidx/appcompat/app/ActionBar$OnNavigationListener;,
        Landroidx/appcompat/app/ActionBar$Tab;,
        Landroidx/appcompat/app/ActionBar$TabListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_HOME_AS_UP:I = 0x4

.field public static final DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final DISPLAY_SHOW_HOME:I = 0x2

.field public static final DISPLAY_SHOW_TITLE:I = 0x8

.field public static final DISPLAY_USE_LOGO:I = 0x1

.field public static final NAVIGATION_MODE_LIST:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAVIGATION_MODE_STANDARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAVIGATION_MODE_TABS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract addTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addTab(Landroidx/appcompat/app/ActionBar$Tab;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public closeOptionsMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public getElevation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getHideOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getNavigationItemCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNavigationMode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSelectedNavigationIndex()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSelectedTab()Landroidx/appcompat/app/ActionBar$Tab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTabAt(I)Landroidx/appcompat/app/ActionBar$Tab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTabCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract hide()V
.end method

.method public invalidateOptionsMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isShowing()Z
.end method

.method public isTitleTruncated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract newTab()Landroidx/appcompat/app/ActionBar$Tab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method onDestroy()V
    .locals 0

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openOptionsMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract removeAllTabs()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract removeTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeTabAt(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method requestFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCustomView(I)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0

    return-void
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setDisplayOptions(II)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract setDisplayUseLogoEnabled(Z)V
.end method

.method public setElevation(F)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x4f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "257ecb"

    const-wide/32 v4, -0x21cb63b5

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x61t
        0x50t
        0x43t
        0x11t
        0xat
        0xct
        0x55t
        0x15t
        0x56t
        0x45t
        0xdt
        0xdt
        0x5ct
        0x18t
        0x4dt
        0x0t
        0x11t
        0xdt
        0x12t
        0x50t
        0x5bt
        0x0t
        0x15t
        0x3t
        0x46t
        0x5ct
        0x58t
        0xbt
        0x43t
        0xbt
        0x41t
        0x15t
        0x59t
        0xat
        0x17t
        0x42t
        0x41t
        0x40t
        0x47t
        0x15t
        0xct
        0x10t
        0x46t
        0x50t
        0x53t
        0x45t
        0xat
        0xct
        0x12t
        0x41t
        0x5ft
        0xct
        0x10t
        0x42t
        0x53t
        0x56t
        0x43t
        0xct
        0xct
        0xct
        0x12t
        0x57t
        0x56t
        0x17t
        0x43t
        0x1t
        0x5dt
        0x5bt
        0x51t
        0xct
        0x4t
        0x17t
        0x40t
        0x54t
        0x43t
        0xct
        0xct
        0xct
        0x1ct
    .end array-data
.end method

.method public setHideOffset(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x5d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fd7125"

    const/16 v3, -0x4e9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x35t
        0x1t
        0x43t
        0x45t
        0x5bt
        0x5bt
        0x1t
        0x44t
        0x56t
        0x5ft
        0x12t
        0x50t
        0x1et
        0x14t
        0x5bt
        0x58t
        0x51t
        0x5ct
        0x12t
        0x44t
        0x56t
        0x52t
        0x46t
        0x5ct
        0x9t
        0xat
        0x17t
        0x53t
        0x53t
        0x47t
        0x46t
        0xct
        0x5et
        0x55t
        0x57t
        0x15t
        0x9t
        0x2t
        0x51t
        0x42t
        0x57t
        0x41t
        0x46t
        0xdt
        0x44t
        0x11t
        0x5ct
        0x5at
        0x12t
        0x44t
        0x44t
        0x44t
        0x42t
        0x45t
        0x9t
        0x16t
        0x43t
        0x54t
        0x56t
        0x15t
        0xft
        0xat
        0x17t
        0x45t
        0x5at
        0x5ct
        0x15t
        0x44t
        0x56t
        0x52t
        0x46t
        0x5ct
        0x9t
        0xat
        0x17t
        0x53t
        0x53t
        0x47t
        0x46t
        0x7t
        0x58t
        0x5ft
        0x54t
        0x5ct
        0x1t
        0x11t
        0x45t
        0x50t
        0x46t
        0x5ct
        0x9t
        0xat
        0x19t
    .end array-data
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "390821"

    const-wide v4, -0x3e351635d6000000L    # -9.03058516E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7bt
        0x50t
        0x54t
        0x5dt
        0x12t
        0x5et
        0x5dt
        0x19t
        0x53t
        0x57t
        0x5ct
        0x45t
        0x56t
        0x57t
        0x44t
        0x18t
        0x41t
        0x52t
        0x41t
        0x56t
        0x5ct
        0x54t
        0x12t
        0x58t
        0x40t
        0x19t
        0x5et
        0x57t
        0x46t
        0x11t
        0x40t
        0x4ct
        0x40t
        0x48t
        0x5dt
        0x43t
        0x47t
        0x5ct
        0x54t
        0x18t
        0x5bt
        0x5ft
        0x13t
        0x4dt
        0x58t
        0x51t
        0x41t
        0x11t
        0x52t
        0x5at
        0x44t
        0x51t
        0x5dt
        0x5ft
        0x13t
        0x5bt
        0x51t
        0x4at
        0x12t
        0x52t
        0x5ct
        0x57t
        0x56t
        0x51t
        0x55t
        0x44t
        0x41t
        0x58t
        0x44t
        0x51t
        0x5dt
        0x5ft
        0x1dt
    .end array-data
.end method

.method public setHomeActionContentDescription(I)V
    .locals 0

    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 0

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setNavigationMode(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSelectedNavigationItem(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
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

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public abstract show()V
.end method

.method public startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
