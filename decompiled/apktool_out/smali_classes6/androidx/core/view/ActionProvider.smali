.class public abstract Landroidx/core/view/ActionProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ActionProvider$SubUiVisibilityListener;,
        Landroidx/core/view/ActionProvider$VisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "fde6e6"

    const-wide v2, -0x3e229122d8800000L    # -1.975219358E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ActionProvider;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x7t
        0x11t
        0x5ft
        0xat
        0x58t
        0x36t
        0x16t
        0xat
        0x40t
        0xct
        0x52t
        0x3t
        0x16t
        0x4dt
        0x45t
        0x10t
        0x46t
        0x16t
        0xbt
        0x17t
        0x42t
        0x4ct
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ActionProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ActionProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/core/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0

    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshVisibility()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    invoke-virtual {p0}, Landroidx/core/view/ActionProvider;->isVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/core/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    iput-object v0, p0, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

    return-void
.end method

.method public setSubUiVisibilityListener(Landroidx/core/view/ActionProvider$SubUiVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

    return-void
.end method

.method public setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x75

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9a7e71"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "6f658b"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/core/view/ActionProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroidx/core/view/ActionProvider;->mVisibilityListener:Landroidx/core/view/ActionProvider$VisibilityListener;

    return-void

    nop

    :array_0
    .array-data 1
        0x4at
        0x4t
        0x43t
        0x33t
        0x5et
        0x42t
        0x50t
        0x3t
        0x5et
        0x9t
        0x5et
        0x45t
        0x40t
        0x2dt
        0x5et
        0x16t
        0x43t
        0x54t
        0x57t
        0x4t
        0x45t
        0x5ft
        0x17t
        0x62t
        0x5ct
        0x15t
        0x43t
        0xct
        0x59t
        0x56t
        0x19t
        0x0t
        0x17t
        0xbt
        0x52t
        0x46t
        0x19t
        0x20t
        0x54t
        0x11t
        0x5et
        0x5et
        0x57t
        0x31t
        0x45t
        0xat
        0x41t
        0x58t
        0x5dt
        0x4t
        0x45t
        0x4bt
        0x61t
        0x58t
        0x4at
        0x8t
        0x55t
        0xct
        0x5bt
        0x58t
        0x4dt
        0x18t
        0x7bt
        0xct
        0x44t
        0x45t
        0x5ct
        0xft
        0x52t
        0x17t
        0x17t
        0x46t
        0x51t
        0x4t
        0x59t
        0x45t
        0x58t
        0x5ft
        0x5ct
        0x41t
        0x5et
        0x16t
        0x17t
        0x50t
        0x55t
        0x13t
        0x52t
        0x4t
        0x53t
        0x48t
        0x19t
        0x12t
        0x52t
        0x11t
        0x19t
        0x11t
        0x78t
        0x13t
        0x52t
        0x45t
        0x4et
        0x5et
        0x4ct
        0x41t
        0x45t
        0x0t
        0x42t
        0x42t
        0x50t
        0xft
        0x50t
        0x45t
        0x43t
        0x59t
        0x50t
        0x12t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0xft
        0x58t
        0x46t
        0x4ct
        0x3t
        0x58t
        0x5t
        0x53t
        0x15t
        0x4ft
        0xat
        0x5ft
        0xat
        0x53t
        0x15t
        0x51t
        0x16t
        0x16t
        0xft
        0x45t
        0x15t
        0x4bt
        0x16t
        0x5ft
        0xat
        0x5at
        0x15t
        0x51t
        0xct
        0x16t
        0x13t
        0x45t
        0x50t
        0x18t
        0x11t
        0x59t
        0xbt
        0x53t
        0x42t
        0x50t
        0x7t
        0x44t
        0x3t
        0x16t
        0x50t
        0x54t
        0x11t
        0x53t
        0x59t
    .end array-data
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/core/view/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/core/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    :cond_0
    return-void
.end method
