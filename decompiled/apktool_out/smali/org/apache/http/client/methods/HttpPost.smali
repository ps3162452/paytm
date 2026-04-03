.class public Lorg/apache/http/client/methods/HttpPost;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8f6743"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/methods/HttpPost;->METHOD_NAME:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x68t
        0x29t
        0x65t
        0x63t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cdd931"

    const-wide v4, -0x3e2ec72c8a000000L    # -1.155747288E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x10t
        0x11t
        0x5bt
        0x12t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3c19e4"

    const-wide v4, 0x41d8f0d38d000000L    # 1.673743924E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x60t
        0x17t
        0x44t
        0x5bt
        0x44t
    .end array-data
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 6

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ffe927"

    const-wide v4, 0x41c4a46eb8000000L    # 6.92641136E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x35t
        0x12t
        0x10t
        0x5bt
        0x13t
    .end array-data
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2f63bb"

    const-wide v4, 0x41cc9caaef000000L    # 9.60058846E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x12t
        0x43t
        0x51t
        0x43t
    .end array-data
.end method
