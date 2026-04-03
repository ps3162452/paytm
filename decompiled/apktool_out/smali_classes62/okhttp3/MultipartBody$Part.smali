.class public final Lokhttp3/MultipartBody$Part;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field final body:Lokhttp3/RequestBody;

.field final headers:Lokhttp3/Headers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lokhttp3/Headers;Lokhttp3/RequestBody;)V
    .locals 0
    .param p1    # Lokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    iput-object p2, p0, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    return-void
.end method

.method public static create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .locals 6
    .param p0    # Lokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/16 v1, 0xc

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a4e6c5"

    const-wide/32 v4, 0x431286ff

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p0, :cond_1

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    const-string v1, "1f35fb"

    const-wide/32 v2, 0x59441f0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "ee9394"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p0, :cond_2

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "d055dc"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "bd9219"

    const-wide v4, 0x41cde24e33000000L    # 1.002740838E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lokhttp3/MultipartBody$Part;

    invoke-direct {v0, p0, p1}, Lokhttp3/MultipartBody$Part;-><init>(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x3t
        0x5bt
        0x1t
        0x4ft
        0x43t
        0x8t
        0x5ct
        0x14t
        0xbt
        0x43t
        0xft
        0x59t
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x9t
        0x5dt
        0x41t
        0x3t
        0xct
        0x45t
        0x4bt
        0x67t
        0x4ct
        0x16t
        0x7t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0xbt
        0x5ct
        0x4bt
        0x49t
        0x51t
        0x6t
        0x11t
        0x5ct
        0x57t
        0x19t
        0x5ct
        0x0t
        0x4t
        0x5dt
        0x56t
        0x4bt
        0xet
        0x45t
        0x26t
        0x56t
        0x5dt
        0x4dt
        0x51t
        0xbt
        0x11t
        0x14t
        0x67t
        0x40t
        0x44t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x27t
        0x5ft
        0x5bt
        0x41t
        0x1t
        0xdt
        0x10t
        0x1dt
        0x79t
        0x50t
        0xat
        0x4t
        0x10t
        0x58t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x37t
        0xat
        0x5ct
        0x4at
        0x41t
        0x5ct
        0x1t
        0x10t
        0x5ct
        0x56t
        0x11t
        0x51t
        0x7t
        0x5t
        0x5dt
        0x57t
        0x43t
        0x3t
        0x42t
        0x27t
        0x56t
        0x5ct
        0x45t
        0x5ct
        0xct
        0x10t
        0x14t
        0x7et
        0x54t
        0x57t
        0x5t
        0x10t
        0x51t
    .end array-data
.end method

.method public static create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9384de"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a97bcc"

    const-wide v4, 0x41dd333b6c400000L    # 1.959587249E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lokhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "13b1e1"

    const-wide/32 v4, -0x2f7e6aae

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lokhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "9605ff"

    const/16 v4, 0x4943

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0, p2}, Lokhttp3/MultipartBody$Part;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x57t
        0x52t
        0x55t
        0x51t
        0x44t
        0x58t
        0x4t
        0x13t
        0x56t
        0x41t
        0x8t
        0x9t
    .end array-data

    :array_1
    .array-data 1
        0x7t
        0x56t
        0x45t
        0xft
        0x4et
        0x7t
        0x0t
        0x4dt
        0x56t
        0x59t
        0x43t
        0xdt
        0x0t
        0x54t
        0x52t
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        0xat
        0x13t
        0x4t
        0x58t
        0x9t
        0x54t
        0x5ft
        0x52t
        0xft
        0x54t
        0x58t
    .end array-data

    :array_3
    .array-data 1
        0x7at
        0x59t
        0x5et
        0x41t
        0x3t
        0x8t
        0x4dt
        0x1bt
        0x74t
        0x5ct
        0x15t
        0x16t
        0x56t
        0x45t
        0x59t
        0x41t
        0xft
        0x9t
        0x57t
    .end array-data
.end method


# virtual methods
.method public body()Lokhttp3/RequestBody;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    return-object v0
.end method
