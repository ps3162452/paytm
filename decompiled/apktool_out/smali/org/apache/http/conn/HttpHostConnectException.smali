.class public Lorg/apache/http/conn/HttpHostConnectException;
.super Ljava/net/ConnectException;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V
    .locals 6

    invoke-direct {p0}, Ljava/net/ConnectException;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "74e8fa"

    const-wide/32 v4, -0x5718147b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x64t
        0x40t
        0x10t
        0x5at
        0x47t
    .end array-data
.end method


# virtual methods
.method public getHost()Lorg/apache/http/HttpHost;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b9025d"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x4dt
        0x45t
        0x50t
        0x14t
    .end array-data
.end method
