.class public final Landroidx/core/view/LayoutInflaterCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0ec059"

    const v2, -0x323ec9f8    # -4.0519296E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/LayoutInflaterCompat;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7ct
        0x4t
        0x1at
        0x5ft
        0x40t
        0x4dt
        0x79t
        0xbt
        0x5t
        0x5ct
        0x54t
        0x4dt
        0x55t
        0x17t
        0x20t
        0x5ft
        0x58t
        0x49t
        0x51t
        0x11t
        0x2bt
        0x73t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 8

    const/16 v7, 0x28

    const/4 v6, 0x1

    sget-boolean v0, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/view/LayoutInflater;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6a54ab"

    const-wide v4, 0x41d5c742b1000000L    # 1.461521092E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    :cond_0
    sget-object v0, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "b79e38"

    const/16 v4, 0x6b7

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v7, [B

    fill-array-data v2, :array_2

    const-string v3, "1678b5"

    const-wide v4, -0x3e3ad98c73000000L    # -7.0968297E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/view/LayoutInflaterCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3e

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "7f09d9"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v2, v7, [B

    fill-array-data v2, :array_4

    const-string v3, "005230"

    const-wide v4, -0x3e4292fadf000000L    # -4.93684001E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/view/LayoutInflaterCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :array_0
    .array-data 1
        0x5bt
        0x27t
        0x54t
        0x57t
        0x15t
        0xdt
        0x44t
        0x18t
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x58t
        0x4bt
        0x6t
        0x56t
        0x6bt
        0x7t
        0x43t
        0x7ft
        0x4t
        0x50t
        0x4ct
        0xdt
        0x45t
        0x40t
        0x57t
        0x13t
        0x7bt
        0xdt
        0x42t
        0x55t
        0x1t
        0x13t
        0x56t
        0xdt
        0x43t
        0x19t
        0x3t
        0x5at
        0x56t
        0x6t
        0x17t
        0x5ft
        0xct
        0x56t
        0x54t
        0x6t
        0x17t
        0x1et
        0x8t
        0x75t
        0x59t
        0x1t
        0x43t
        0x56t
        0x17t
        0x4at
        0xat
        0x45t
        0x17t
        0x56t
        0xbt
        0x13t
        0x5bt
        0xet
        0x56t
        0x4at
        0x16t
        0x13t
    .end array-data

    :array_2
    .array-data 1
        0xat
        0x16t
        0x5et
        0x56t
        0x4t
        0x59t
        0x50t
        0x42t
        0x5et
        0x57t
        0xct
        0x15t
        0x5ct
        0x57t
        0x4et
        0x18t
        0xat
        0x54t
        0x47t
        0x53t
        0x17t
        0x4dt
        0xct
        0x50t
        0x49t
        0x46t
        0x52t
        0x5bt
        0x16t
        0x50t
        0x55t
        0x16t
        0x45t
        0x5dt
        0x11t
        0x40t
        0x5dt
        0x42t
        0x44t
        0x16t
    .end array-data

    :array_3
    .array-data 1
        0x51t
        0x9t
        0x42t
        0x5at
        0x1t
        0x6at
        0x52t
        0x12t
        0x76t
        0x58t
        0x7t
        0x4dt
        0x58t
        0x14t
        0x49t
        0xbt
        0x44t
        0x5at
        0x58t
        0x13t
        0x5ct
        0x5dt
        0x44t
        0x57t
        0x58t
        0x12t
        0x10t
        0x4at
        0x1t
        0x4dt
        0x17t
        0x12t
        0x58t
        0x5ct
        0x44t
        0x7ft
        0x56t
        0x5t
        0x44t
        0x56t
        0x16t
        0x40t
        0x5t
        0x46t
        0x5ft
        0x57t
        0x44t
        0x75t
        0x56t
        0x1ft
        0x5ft
        0x4ct
        0x10t
        0x70t
        0x59t
        0x0t
        0x5ct
        0x58t
        0x10t
        0x5ct
        0x45t
        0x46t
    .end array-data

    nop

    :array_4
    .array-data 1
        0xbt
        0x10t
        0x5ct
        0x5ct
        0x55t
        0x5ct
        0x51t
        0x44t
        0x5ct
        0x5dt
        0x5dt
        0x10t
        0x5dt
        0x51t
        0x4ct
        0x12t
        0x5bt
        0x51t
        0x46t
        0x55t
        0x15t
        0x47t
        0x5dt
        0x55t
        0x48t
        0x40t
        0x50t
        0x51t
        0x47t
        0x55t
        0x54t
        0x10t
        0x47t
        0x57t
        0x40t
        0x45t
        0x5ct
        0x44t
        0x46t
        0x1ct
    .end array-data
.end method

.method public static getFactory(Landroid/view/LayoutInflater;)Landroidx/core/view/LayoutInflaterFactory;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v1, v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    iget-object v0, v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroidx/core/view/LayoutInflaterFactory;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v0, p1}, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroidx/core/view/LayoutInflaterFactory;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v0, p1}, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroidx/core/view/LayoutInflaterFactory;)V

    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v2, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p0, v0}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-static {p0, v1}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v1, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p0, v0}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0
.end method
