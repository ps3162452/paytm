.class public Landroidx/appcompat/widget/MenuPopupWindow;
.super Landroidx/appcompat/widget/ListPopupWindow;

# interfaces
.implements Landroidx/appcompat/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSetTouchModalMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0xf

    const/4 v5, 0x0

    const/4 v2, 0x1

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "75f721"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/MenuPopupWindow;->TAG:Ljava/lang/String;

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-class v0, Landroid/widget/PopupWindow;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "3ace3b"

    const v3, 0x4eca6dc2    # 1.6980954E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "2f2897"

    const-wide/32 v2, 0x5d86aa7e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "a0d103"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x7at
        0x50t
        0x8t
        0x42t
        0x62t
        0x5et
        0x47t
        0x40t
        0x16t
        0x60t
        0x5bt
        0x5ft
        0x53t
        0x5at
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x4t
        0x17t
        0x31t
        0x5ct
        0x17t
        0x50t
        0x9t
        0x2et
        0xat
        0x57t
        0x3t
        0x5ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7ft
        0x3t
        0x5ct
        0x4dt
        0x69t
        0x58t
        0x42t
        0x13t
        0x42t
        0x6ft
        0x50t
        0x59t
        0x56t
        0x9t
        0x45t
    .end array-data

    :array_3
    .array-data 1
        0x22t
        0x5ft
        0x11t
        0x5dt
        0x54t
        0x13t
        0xft
        0x5ft
        0x10t
        0x11t
        0x56t
        0x5at
        0xft
        0x54t
        0x44t
        0x5ct
        0x55t
        0x47t
        0x9t
        0x5ft
        0x0t
        0x11t
        0x43t
        0x56t
        0x15t
        0x64t
        0xbt
        0x44t
        0x53t
        0x5bt
        0x2ct
        0x5ft
        0x0t
        0x50t
        0x5ct
        0x1bt
        0x48t
        0x10t
        0xbt
        0x5ft
        0x10t
        0x63t
        0xet
        0x40t
        0x11t
        0x41t
        0x67t
        0x5at
        0xft
        0x54t
        0xbt
        0x46t
        0x1et
        0x13t
        0x2et
        0x58t
        0x44t
        0x46t
        0x55t
        0x5ft
        0xdt
        0x1et
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V

    return-object v0
.end method

.method public onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    sget-object v0, Landroidx/appcompat/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/appcompat/widget/MenuPopupWindow;->TAG:Ljava/lang/String;

    const/16 v1, 0x39

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "644ae0"

    const v3, -0x32341fbb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x75t
        0x5bt
        0x41t
        0xdt
        0x1t
        0x10t
        0x58t
        0x5bt
        0x40t
        0x41t
        0xct
        0x5et
        0x40t
        0x5bt
        0x5ft
        0x4t
        0x45t
        0x43t
        0x53t
        0x40t
        0x60t
        0xet
        0x10t
        0x53t
        0x5et
        0x79t
        0x5bt
        0x5t
        0x4t
        0x5ct
        0x1et
        0x1dt
        0x14t
        0xet
        0xbt
        0x10t
        0x66t
        0x5bt
        0x44t
        0x14t
        0x15t
        0x67t
        0x5ft
        0x5at
        0x50t
        0xet
        0x12t
        0x1et
        0x16t
        0x7bt
        0x5ct
        0x41t
        0x12t
        0x55t
        0x5at
        0x58t
        0x1at
    .end array-data
.end method
