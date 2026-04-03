.class public Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Lorg/apache/http/conn/ClientConnectionManager;

    check-cast v1, Lorg/apache/http/impl/conn/AbstractPoolEntry;

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c113f2"

    const-wide v4, -0x3e267c17fe400000L    # -1.712300039E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x45t
        0x44t
        0x51t
        0x47t
    .end array-data
.end method


# virtual methods
.method protected detach()V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d355d8"

    const-wide/32 v4, 0x3b7cf598

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x37t
        0x47t
        0x40t
        0x57t
        0x45t
    .end array-data
.end method

.method protected getManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f61bb8"

    const/16 v3, 0x1cac

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x35t
        0x42t
        0x44t
        0x0t
        0x43t
    .end array-data
.end method

.method protected getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "10853c"

    const/16 v3, 0x1d23

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x62t
        0x44t
        0x4dt
        0x57t
        0x12t
    .end array-data
.end method
