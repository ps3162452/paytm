.class Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/BundleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BundleCompatBaseImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a02bc2"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x23t
        0x45t
        0x5ct
        0x6t
        0xft
        0x57t
        0x22t
        0x5ft
        0x5ft
        0x12t
        0x2t
        0x46t
        0x23t
        0x51t
        0x41t
        0x7t
        0x2at
        0x5ft
        0x11t
        0x5ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-boolean v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "503429"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    :cond_0
    sget-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->TAG:Ljava/lang/String;

    const/16 v3, 0x24

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "6c765b"

    const/16 v5, 0x5ccc

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    sget-object v2, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->TAG:Ljava/lang/String;

    const/16 v3, 0x2a

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "f0a7d8"

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v1, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :array_0
    .array-data 1
        0x52t
        0x55t
        0x47t
        0x7dt
        0x70t
        0x50t
        0x5bt
        0x54t
        0x56t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x2t
        0x5et
        0x5at
        0x50t
        0x6t
        0x16t
        0x17t
        0x58t
        0x16t
        0x47t
        0x7t
        0x42t
        0x11t
        0x5et
        0x53t
        0x43t
        0x7t
        0x16t
        0x4t
        0x52t
        0x42t
        0x7ct
        0x20t
        0x5ft
        0xdt
        0x53t
        0x53t
        0x47t
        0x42t
        0x5bt
        0x6t
        0x43t
        0x5et
        0x5at
        0x6t
    .end array-data

    :array_2
    .array-data 1
        0x20t
        0x51t
        0x8t
        0x5bt
        0x1t
        0x5ct
        0x46t
        0x44t
        0xet
        0x17t
        0xdt
        0x56t
        0x10t
        0x5ft
        0xat
        0x52t
        0x44t
        0x5ft
        0x3t
        0x44t
        0x28t
        0x75t
        0xdt
        0x56t
        0x2t
        0x55t
        0x13t
        0x17t
        0x12t
        0x51t
        0x7t
        0x10t
        0x13t
        0x52t
        0x2t
        0x54t
        0x3t
        0x53t
        0x15t
        0x5et
        0xbt
        0x56t
    .end array-data
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "941efc"

    const v3, -0x321c06c7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    :cond_0
    sget-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->TAG:Ljava/lang/String;

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4d2375"

    const/16 v4, -0x3ec

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    sget-object v1, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->TAG:Ljava/lang/String;

    const/16 v2, 0x2a

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "33ee0b"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x49t
        0x41t
        0x45t
        0x2ct
        0x24t
        0xat
        0x57t
        0x50t
        0x54t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x72t
        0x5t
        0x5bt
        0x5ft
        0x52t
        0x51t
        0x14t
        0x10t
        0x5dt
        0x13t
        0x45t
        0x50t
        0x40t
        0x16t
        0x5bt
        0x56t
        0x41t
        0x50t
        0x14t
        0x14t
        0x47t
        0x47t
        0x7et
        0x77t
        0x5dt
        0xat
        0x56t
        0x56t
        0x45t
        0x15t
        0x59t
        0x1t
        0x46t
        0x5bt
        0x58t
        0x51t
    .end array-data

    :array_2
    .array-data 1
        0x75t
        0x52t
        0xct
        0x9t
        0x55t
        0x6t
        0x13t
        0x47t
        0xat
        0x45t
        0x59t
        0xct
        0x45t
        0x5ct
        0xet
        0x0t
        0x10t
        0x12t
        0x46t
        0x47t
        0x2ct
        0x27t
        0x59t
        0xct
        0x57t
        0x56t
        0x17t
        0x45t
        0x46t
        0xbt
        0x52t
        0x13t
        0x17t
        0x0t
        0x56t
        0xet
        0x56t
        0x50t
        0x11t
        0xct
        0x5ft
        0xct
    .end array-data
.end method
