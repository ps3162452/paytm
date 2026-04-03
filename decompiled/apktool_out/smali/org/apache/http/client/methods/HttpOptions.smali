.class public Lorg/apache/http/client/methods/HttpOptions;
.super Lorg/apache/http/client/methods/HttpRequestBase;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "19cd7a"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/methods/HttpOptions;->METHOD_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7et
        0x69t
        0x37t
        0x2dt
        0x78t
        0x2ft
        0x62t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "babb7b"

    const v3, 0x4e2c1318    # 7.217331E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x31t
        0x15t
        0x17t
        0x0t
        0x16t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6d2310"

    const/16 v3, 0x701a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x10t
        0x47t
        0x51t
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

    const-string v2, "ff391b"

    const/16 v3, 0x13be

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x12t
        0x46t
        0x5bt
        0x10t
    .end array-data
.end method


# virtual methods
.method public getAllowedMethods(Lorg/apache/http/HttpResponse;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "67ff47"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x43t
        0x13t
        0x4t
        0x15t
    .end array-data
.end method

.method public getMethod()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c032a9"

    const v3, -0x31cd21da

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x44t
        0x46t
        0x50t
        0x40t
    .end array-data
.end method
