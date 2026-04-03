.class Landroidx/core/os/ProcessCompat$Api16Impl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ProcessCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# static fields
.field private static sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

.field private static sResolved:Z

.field private static final sResolvedLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolvedLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isApplicationUid(I)Z
    .locals 8

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolvedLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-boolean v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolved:Z

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "e1631a"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "664997"

    const-wide/32 v6, -0x11f8f4f8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    nop

    :array_0
    .array-data 1
        0x4t
        0x5ft
        0x52t
        0x41t
        0x5et
        0x8t
        0x1t
        0x1ft
        0x59t
        0x40t
        0x1ft
        0x34t
        0x16t
        0x54t
        0x44t
        0x7at
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5ft
        0x45t
        0x75t
        0x49t
        0x49t
    .end array-data
.end method
