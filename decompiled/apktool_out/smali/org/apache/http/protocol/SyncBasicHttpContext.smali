.class public Lorg/apache/http/protocol/SyncBasicHttpContext;
.super Lorg/apache/http/protocol/BasicHttpContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .locals 6

    invoke-direct {p0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1b0a03"

    const-wide v4, -0x3e3894e8ff000000L    # -7.85788418E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x62t
        0x16t
        0x45t
        0x3t
        0x11t
    .end array-data
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1f4da3"

    const-wide/32 v4, -0x33ce2c7e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :array_0
    .array-data 1
        0x62t
        0x12t
        0x41t
        0x6t
        0x40t
    .end array-data
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bcd432"

    const v3, 0x4eefbbfe    # 2.0110374E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x17t
        0x11t
        0x56t
        0x12t
    .end array-data
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b44b50"

    const/16 v3, 0x52ae

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :array_0
    .array-data 1
        0x31t
        0x40t
        0x41t
        0x0t
        0x14t
    .end array-data
.end method
