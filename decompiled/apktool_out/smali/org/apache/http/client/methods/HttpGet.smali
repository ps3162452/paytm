.class public Lorg/apache/http/client/methods/HttpGet;
.super Lorg/apache/http/client/methods/HttpRequestBase;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "cd9982"

    const/16 v2, -0xd5d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/methods/HttpGet;->METHOD_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
        0x21t
        0x6dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3267e5"

    const-wide/32 v4, -0x3b90f120

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x60t
        0x46t
        0x43t
        0x55t
        0x44t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c3ca17"

    const/16 v3, 0x1444

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x47t
        0x16t
        0x3t
        0x10t
    .end array-data
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "021e39"

    const/16 v3, -0x4dbb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x63t
        0x46t
        0x44t
        0x7t
        0x12t
    .end array-data
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fa81ac"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x35t
        0x15t
        0x4dt
        0x53t
        0x40t
    .end array-data
.end method
