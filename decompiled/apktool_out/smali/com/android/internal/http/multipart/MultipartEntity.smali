.class public Lcom/android/internal/http/multipart/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;


# static fields
.field public static final MULTIPART_BOUNDARY:Ljava/lang/String;


# instance fields
.field protected parts:[Lcom/android/internal/http/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "419678"

    const-wide v2, -0x3e2441c2a5800000L    # -1.861809514E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/MultipartEntity;->MULTIPART_BOUNDARY:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5ct
        0x45t
        0x4dt
        0x46t
        0x19t
        0x55t
        0x51t
        0x45t
        0x51t
        0x59t
        0x53t
        0x16t
        0x59t
        0x44t
        0x55t
        0x42t
        0x5et
        0x48t
        0x55t
        0x43t
        0x4dt
        0x18t
        0x55t
        0x57t
        0x41t
        0x5ft
        0x5dt
        0x57t
        0x45t
        0x41t
    .end array-data
.end method

.method public constructor <init>([Lcom/android/internal/http/multipart/Part;)V
    .locals 6

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "be4794"

    const-wide v4, 0x41d90aebc1000000L    # 1.680584452E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x11t
        0x41t
        0x55t
        0x18t
    .end array-data
.end method

.method public constructor <init>([Lcom/android/internal/http/multipart/Part;Lorg/apache/http/params/HttpParams;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c5e696"

    const/16 v3, -0x4505

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x41t
        0x10t
        0x54t
        0x18t
    .end array-data
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b091ed"

    const-wide/32 v4, 0x7a09ce

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x44t
        0x4ct
        0x53t
        0x44t
    .end array-data
.end method

.method public getContentLength()J
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8b78dd"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6bt
        0x16t
        0x42t
        0x5at
        0x45t
    .end array-data
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "02feff"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x63t
        0x46t
        0x13t
        0x7t
        0x47t
    .end array-data
.end method

.method protected getMultipartBoundary()[B
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b0672a"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x31t
        0x44t
        0x43t
        0x55t
        0x13t
    .end array-data
.end method

.method public isRepeatable()Z
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cbee56"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x16t
        0x10t
        0x7t
        0x14t
    .end array-data
.end method

.method public isStreaming()Z
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5eda83"

    const-wide/32 v4, 0x6f4df01e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x11t
        0x11t
        0x3t
        0x19t
    .end array-data
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bf7223"

    const-wide v4, -0x3e34361b8e000000L    # -9.324321E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x12t
        0x42t
        0x50t
        0x13t
    .end array-data
.end method
