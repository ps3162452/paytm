.class public final Landroidx/core/view/WindowCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowCompat$Impl16;,
        Landroidx/core/view/WindowCompat$Impl30;
    }
.end annotation


# static fields
.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/view/WindowCompat$Impl30;->getInsetsController(Landroid/view/Window;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static requireViewById(Landroid/view/Window;I)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/Window;",
            "I)TT;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/Window;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2d44ec"

    const-wide v4, -0x3e2c3cc51cc00000L    # -1.326246797E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7bt
        0x20t
        0x14t
        0x50t
        0xat
        0x6t
        0x41t
        0x44t
        0x5at
        0x5bt
        0x11t
        0x43t
        0x40t
        0x1t
        0x52t
        0x51t
        0x17t
        0x6t
        0x5ct
        0x7t
        0x51t
        0x14t
        0x4t
        0x43t
        0x64t
        0xdt
        0x51t
        0x43t
        0x45t
        0xat
        0x5ct
        0x17t
        0x5dt
        0x50t
        0x0t
        0x43t
        0x46t
        0xct
        0x5dt
        0x47t
        0x45t
        0x34t
        0x5bt
        0xat
        0x50t
        0x5bt
        0x12t
    .end array-data
.end method

.method public static setDecorFitsSystemWindows(Landroid/view/Window;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Landroidx/core/view/WindowCompat$Impl30;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/core/view/WindowCompat$Impl16;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    goto :goto_0
.end method
