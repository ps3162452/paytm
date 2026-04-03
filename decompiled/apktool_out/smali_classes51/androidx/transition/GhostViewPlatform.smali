.class Landroidx/transition/GhostViewPlatform;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/transition/GhostView;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sAddGhostMethod:Ljava/lang/reflect/Method;

.field private static sAddGhostMethodFetched:Z

.field private static sGhostViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sGhostViewClassFetched:Z

.field private static sRemoveGhostMethod:Ljava/lang/reflect/Method;

.field private static sRemoveGhostMethodFetched:Z


# instance fields
.field private final mGhostView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "faed02"

    const/16 v2, -0x755

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/GhostViewPlatform;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x21t
        0x9t
        0xat
        0x17t
        0x44t
        0x64t
        0xft
        0x4t
        0x12t
        0x25t
        0x40t
        0x5bt
        0x54t
        0x50t
    .end array-data
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/GhostViewPlatform;->mGhostView:Landroid/view/View;

    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchAddGhostMethod()V

    sget-object v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Landroidx/transition/GhostViewPlatform;

    sget-object v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, v0}, Landroidx/transition/GhostViewPlatform;-><init>(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method private static fetchAddGhostMethod()V
    .locals 7

    const/4 v6, 0x1

    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethodFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchGhostViewClass()V

    sget-object v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "37d1c7"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/graphics/Matrix;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethod:Ljava/lang/reflect/Method;

    sget-object v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroidx/transition/GhostViewPlatform;->sAddGhostMethodFetched:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/transition/GhostViewPlatform;->TAG:Ljava/lang/String;

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "492eea"

    const-wide v4, 0x41c52a54eb000000L    # 7.10191574E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x52t
        0x53t
        0x0t
        0x76t
        0xbt
        0x58t
        0x40t
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x58t
        0x5bt
        0x9t
        0x0t
        0x5t
        0x14t
        0x4dt
        0x5dt
        0x45t
        0x17t
        0x4t
        0x40t
        0x4bt
        0x5bt
        0x0t
        0x13t
        0x4t
        0x14t
        0x58t
        0x56t
        0x1t
        0x22t
        0x9t
        0x5bt
        0x4at
        0x46t
        0x45t
        0x8t
        0x4t
        0x40t
        0x51t
        0x5dt
        0x1t
    .end array-data
.end method

.method private static fetchGhostViewClass()V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClassFetched:Z

    if-nez v0, :cond_0

    const/16 v0, 0x16

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "16911d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v4, Landroidx/transition/GhostViewPlatform;->sGhostViewClassFetched:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/transition/GhostViewPlatform;->TAG:Ljava/lang/String;

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "dfff1c"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x50t
        0x58t
        0x5dt
        0x43t
        0x5et
        0xdt
        0x55t
        0x18t
        0x4ft
        0x58t
        0x54t
        0x13t
        0x1ft
        0x71t
        0x51t
        0x5et
        0x42t
        0x10t
        0x67t
        0x5ft
        0x5ct
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x22t
        0x7t
        0xft
        0xat
        0x54t
        0x7t
        0x44t
        0x12t
        0x9t
        0x46t
        0x43t
        0x6t
        0x10t
        0x14t
        0xft
        0x3t
        0x47t
        0x6t
        0x44t
        0x21t
        0xet
        0x9t
        0x42t
        0x17t
        0x32t
        0xft
        0x3t
        0x11t
        0x11t
        0x0t
        0x8t
        0x7t
        0x15t
        0x15t
    .end array-data
.end method

.method private static fetchRemoveGhostMethod()V
    .locals 7

    const/4 v6, 0x1

    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethodFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchGhostViewClass()V

    sget-object v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2f2d9f"

    const-wide/32 v4, 0x66553de9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    sget-object v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethodFetched:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/transition/GhostViewPlatform;->TAG:Ljava/lang/String;

    const/16 v2, 0x25

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "319dd4"

    const v4, 0x4ead2da2    # 1.4527245E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x40t
        0x3t
        0x5ft
        0xbt
        0x4ft
        0x3t
        0x75t
        0xet
        0x5dt
        0x17t
        0x4dt
    .end array-data

    :array_1
    .array-data 1
        0x75t
        0x50t
        0x50t
        0x8t
        0x1t
        0x50t
        0x13t
        0x45t
        0x56t
        0x44t
        0x16t
        0x51t
        0x47t
        0x43t
        0x50t
        0x1t
        0x12t
        0x51t
        0x13t
        0x43t
        0x5ct
        0x9t
        0xbt
        0x42t
        0x56t
        0x76t
        0x51t
        0xbt
        0x17t
        0x40t
        0x13t
        0x5ct
        0x5ct
        0x10t
        0xct
        0x5bt
        0x57t
    .end array-data
.end method

.method static removeGhost(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchRemoveGhostMethod()V

    sget-object v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Landroidx/transition/GhostViewPlatform;->mGhostView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
