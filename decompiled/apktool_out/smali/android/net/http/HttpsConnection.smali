.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;


# instance fields
.field protected mCertificate:Landroid/net/http/SslCertificate;

.field protected mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    move-object v2, v1

    check-cast v2, Lorg/apache/http/HttpHost;

    check-cast v1, Landroid/net/http/RequestFeeder;

    invoke-direct {p0, v0, v2, v1}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5e1cb9"

    const v3, -0x312e4df3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x11t
        0x44t
        0x1t
        0x43t
    .end array-data
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6f133b"

    const v3, 0x4e460bc9    # 8.306653E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x12t
        0x44t
        0x51t
        0x12t
    .end array-data
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
