.class Landroidx/core/view/WindowInsetsCompat$Impl20;
.super Landroidx/core/view/WindowInsetsCompat$Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# static fields
.field private static sAttachInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sAttachInfoField:Ljava/lang/reflect/Field;

.field private static sGetViewRootImplMethod:Ljava/lang/reflect/Method;

.field private static sVisibleInsetsField:Ljava/lang/reflect/Field;

.field private static sVisibleRectReflectionFetched:Z


# instance fields
.field private mOverriddenInsets:[Landroidx/core/graphics/Insets;

.field final mPlatformInsets:Landroid/view/WindowInsets;

.field mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

.field private mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mSystemWindowInsets:Landroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V
    .locals 2

    new-instance v0, Landroid/view/WindowInsets;

    iget-object v1, p2, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-direct {v0, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private getInsets(IZ)Landroidx/core/graphics/Insets;
    .locals 4

    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    const/4 v0, 0x1

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Landroidx/core/graphics/Insets;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private getRootStableInsets()Landroidx/core/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    goto :goto_0
.end method

.method private getVisibleInsets(Landroid/view/View;)Landroidx/core/graphics/Insets;
    .locals 7

    const/16 v6, 0x12

    const/4 v3, 0x0

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_4

    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl20;->loadReflectionField()V

    :cond_0
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v2, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "3ab261"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa7

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "523fc0"

    const v5, -0x3174517f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x32

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "54a9c8"

    const v5, -0x31c4476a

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [B

    fill-array-data v3, :array_3

    const-string v4, "b6316c"

    const/16 v5, 0x5992

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v2, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "9d11a2"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x64t
        0x8t
        0xct
        0x56t
        0x59t
        0x46t
        0x7at
        0xft
        0x11t
        0x57t
        0x42t
        0x42t
        0x70t
        0xet
        0xft
        0x42t
        0x57t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x73t
        0x53t
        0x5at
        0xat
        0x6t
        0x54t
        0x15t
        0x46t
        0x5ct
        0x46t
        0x4t
        0x55t
        0x41t
        0x12t
        0x45t
        0xft
        0x10t
        0x59t
        0x57t
        0x5et
        0x56t
        0x46t
        0xat
        0x5et
        0x46t
        0x57t
        0x47t
        0x15t
        0x4dt
        0x10t
        0x52t
        0x57t
        0x47t
        0x30t
        0xat
        0x55t
        0x42t
        0x60t
        0x5ct
        0x9t
        0x17t
        0x79t
        0x58t
        0x42t
        0x5ft
        0x4et
        0x4at
        0x10t
        0x47t
        0x57t
        0x47t
        0x13t
        0x11t
        0x5et
        0x50t
        0x56t
        0x13t
        0x8t
        0x16t
        0x5ct
        0x59t
        0x12t
        0x55t
        0x14t
        0xct
        0x5dt
        0x15t
        0x46t
        0x5bt
        0x3t
        0x43t
        0x40t
        0x47t
        0x5dt
        0x45t
        0xft
        0x7t
        0x55t
        0x51t
        0x12t
        0x45t
        0xft
        0x6t
        0x47t
        0x1bt
        0x12t
        0x67t
        0xet
        0xat
        0x43t
        0x15t
        0x5ft
        0x56t
        0x7t
        0xdt
        0x43t
        0x15t
        0x46t
        0x5bt
        0x7t
        0x17t
        0x10t
        0x41t
        0x5at
        0x56t
        0x46t
        0x15t
        0x59t
        0x50t
        0x45t
        0x13t
        0xft
        0x10t
        0x10t
        0x50t
        0x5bt
        0x47t
        0xet
        0x6t
        0x42t
        0x15t
        0x5ct
        0x5ct
        0x12t
        0x43t
        0x51t
        0x41t
        0x46t
        0x52t
        0x5t
        0xbt
        0x55t
        0x51t
        0x12t
        0x5ct
        0x14t
        0x43t
        0x44t
        0x5dt
        0x57t
        0x13t
        0xbt
        0x6t
        0x44t
        0x5dt
        0x5dt
        0x57t
        0x46t
        0xbt
        0x51t
        0x46t
        0x12t
        0x51t
        0x3t
        0x6t
        0x5et
        0x15t
        0x5dt
        0x45t
        0x3t
        0x11t
        0x42t
        0x5ct
        0x56t
        0x57t
        0x3t
        0xdt
    .end array-data

    :array_2
    .array-data 1
        0x73t
        0x55t
        0x8t
        0x55t
        0x6t
        0x5ct
        0x15t
        0x40t
        0xet
        0x19t
        0x4t
        0x5dt
        0x41t
        0x14t
        0x17t
        0x50t
        0x10t
        0x51t
        0x57t
        0x58t
        0x4t
        0x19t
        0xat
        0x56t
        0x46t
        0x51t
        0x15t
        0x4at
        0x4dt
        0x18t
        0x1dt
        0x66t
        0x4t
        0x5ft
        0xft
        0x5dt
        0x56t
        0x40t
        0x8t
        0x56t
        0xdt
        0x18t
        0x50t
        0x46t
        0x13t
        0x56t
        0x11t
        0x11t
        0x1bt
        0x14t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x35t
        0x5ft
        0x5dt
        0x55t
        0x59t
        0x14t
        0x2bt
        0x58t
        0x40t
        0x54t
        0x42t
        0x10t
        0x21t
        0x59t
        0x5et
        0x41t
        0x57t
        0x17t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5et
        0x1t
        0x45t
        0x67t
        0x8t
        0x41t
        0x50t
        0x6t
        0x5dt
        0x54t
        0x28t
        0x5ct
        0x4at
        0x1t
        0x45t
        0x42t
        0x49t
        0x1bt
        0x19t
        0x17t
        0x59t
        0x5et
        0x14t
        0x5et
        0x5dt
        0x44t
        0x5ft
        0x5et
        0x15t
        0x12t
        0x5bt
        0x1t
        0x11t
        0x52t
        0x0t
        0x5et
        0x55t
        0x1t
        0x55t
        0x11t
        0xet
        0x5ct
        0x19t
        0x25t
        0x61t
        0x78t
        0x41t
        0xct
        0x4t
        0x44t
        0x2t
        0x1t
        0x4ft
        0x12t
        0x6ct
        0x17t
        0x54t
        0x11t
        0x36t
        0x5bt
        0x57t
        0x0t
        0x5et
        0x46t
        0x28t
        0x5ct
        0x4at
        0x1t
        0x45t
        0x42t
        0x4ft
        0x5bt
        0x4at
        0x32t
        0x58t
        0x42t
        0x8t
        0x50t
        0x55t
        0x1t
        0x19t
        0x18t
        0x41t
        0x5bt
        0x57t
        0x17t
        0x45t
        0x54t
        0x0t
        0x56t
        0x17t
    .end array-data
.end method

.method private static loadReflectionField()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    :try_start_0
    const-class v0, Landroid/view/View;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "68203d"

    const-wide v4, -0x3e398421e2800000L    # -7.54433083E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "17baa3"

    const/16 v2, -0x7f4

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "0073fe"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "f5c006"

    const v2, 0x4e96cec7    # 1.2650669E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "c864fa"

    const/16 v3, 0x5f27

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x32

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "085652"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "922139"

    const/16 v4, -0x108d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x51t
        0x5dt
        0x46t
        0x66t
        0x5at
        0x1t
        0x41t
        0x6at
        0x5dt
        0x5ft
        0x47t
        0x2dt
        0x5bt
        0x48t
        0x5et
    .end array-data

    :array_1
    .array-data 1
        0x50t
        0x59t
        0x6t
        0x13t
        0xet
        0x5at
        0x55t
        0x19t
        0x14t
        0x8t
        0x4t
        0x44t
        0x1ft
        0x61t
        0xbt
        0x4t
        0x16t
        0x17t
        0x70t
        0x43t
        0x16t
        0x0t
        0x2t
        0x5bt
        0x78t
        0x59t
        0x4t
        0xet
    .end array-data

    :array_2
    .array-data 1
        0x5dt
        0x66t
        0x5et
        0x40t
        0xft
        0x7t
        0x5ct
        0x55t
        0x7et
        0x5dt
        0x15t
        0x0t
        0x44t
        0x43t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7t
        0x5bt
        0x7t
        0x42t
        0x5ft
        0x5ft
        0x2t
        0x1bt
        0x15t
        0x59t
        0x55t
        0x41t
        0x48t
        0x63t
        0xat
        0x55t
        0x47t
        0x64t
        0x9t
        0x5at
        0x17t
        0x79t
        0x5dt
        0x46t
        0xat
    .end array-data

    nop

    :array_4
    .array-data 1
        0xet
        0x79t
        0x42t
        0x40t
        0x7t
        0x2t
        0xbt
        0x71t
        0x58t
        0x52t
        0x9t
    .end array-data

    :array_5
    .array-data 1
        0x76t
        0x59t
        0x5ct
        0x5at
        0x50t
        0x56t
        0x10t
        0x4ct
        0x5at
        0x16t
        0x52t
        0x57t
        0x44t
        0x18t
        0x43t
        0x5ft
        0x46t
        0x5bt
        0x52t
        0x54t
        0x50t
        0x16t
        0x5ct
        0x5ct
        0x43t
        0x5dt
        0x41t
        0x45t
        0x1bt
        0x12t
        0x18t
        0x6at
        0x50t
        0x50t
        0x59t
        0x57t
        0x53t
        0x4ct
        0x5ct
        0x59t
        0x5bt
        0x12t
        0x55t
        0x4at
        0x47t
        0x59t
        0x47t
        0x1bt
        0x1et
        0x18t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x6et
        0x5bt
        0x5ct
        0x55t
        0x5ct
        0x4et
        0x70t
        0x5ct
        0x41t
        0x54t
        0x47t
        0x4at
        0x7at
        0x5dt
        0x5ft
        0x41t
        0x52t
        0x4dt
    .end array-data
.end method


# virtual methods
.method copyRootViewBounds(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getVisibleInsets(Landroid/view/View;)Landroidx/core/graphics/Insets;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->setRootViewData(Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method copyWindowDataInto(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootViewData(Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Landroidx/core/view/WindowInsetsCompat$Impl20;

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    iget-object v1, p1, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getInsets(I)Landroidx/core/graphics/Insets;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method protected getInsetsForType(IZ)Landroidx/core/graphics/Insets;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getTappableElementInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mOverriddenInsets:[Landroidx/core/graphics/Insets;

    if-eqz v1, :cond_3

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v0

    aget-object v0, v1, v0

    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v2, v0, Landroidx/core/graphics/Insets;->bottom:I

    iget v3, v1, Landroidx/core/graphics/Insets;->bottom:I

    if-le v2, v3, :cond_4

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v5, v5, v5, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    if-eqz v0, :cond_5

    sget-object v2, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v2}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    if-le v0, v1, :cond_5

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v5, v5, v5, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    goto :goto_0

    :sswitch_5
    if-eqz p2, :cond_6

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    iget v3, v1, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v4, v1, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v5, v3, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v2

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    :cond_7
    iget v1, v2, Landroidx/core/graphics/Insets;->bottom:I

    if-eqz v0, :cond_9

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    iget v1, v2, Landroidx/core/graphics/Insets;->left:I

    iget v2, v2, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v1, v5, v2, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_6
    if-eqz p2, :cond_8

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v5, v0, v5, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v5, v0, v5, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method final getSystemWindowInsets()Landroidx/core/graphics/Insets;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method inset(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method isRound()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method protected isTypeVisible(I)Z
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Landroidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method isVisible(I)Z
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_2

    and-int v2, p1, v1

    if-nez v2, :cond_1

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->isTypeVisible(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public setOverriddenInsets([Landroidx/core/graphics/Insets;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mOverriddenInsets:[Landroidx/core/graphics/Insets;

    return-void
.end method

.method setRootViewData(Landroidx/core/graphics/Insets;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    return-void
.end method

.method setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method
