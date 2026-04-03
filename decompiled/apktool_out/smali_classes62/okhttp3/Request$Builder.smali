.class public Lokhttp3/Request$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lokhttp3/RequestBody;

.field headers:Lokhttp3/Headers$Builder;

.field method:Ljava/lang/String;

.field tag:Ljava/lang/Object;

.field url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ae50c8"

    const v2, -0x32f36c6a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    return-void

    :array_0
    .array-data 1
        0x26t
        0x20t
        0x61t
    .end array-data
.end method

.method constructor <init>(Lokhttp3/Request;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    iget-object v0, p1, Lokhttp3/Request;->method:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    iput-object v0, p0, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    iget-object v0, p1, Lokhttp3/Request;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    iget-object v0, p1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1

    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public build()Lokhttp3/Request;
    .locals 4

    iget-object v0, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b4320f"

    const/16 v3, -0x4750

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lokhttp3/Request;

    invoke-direct {v0, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x17t
        0x46t
        0x5ft
        0x12t
        0xdt
        0x5bt
        0x42t
        0x5at
        0x46t
        0x5et
        0x5ct
    .end array-data
.end method

.method public cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;
    .locals 4

    const/16 v2, 0xd

    invoke-virtual {p1}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    const-string v1, "5cdadb"

    const/16 v2, -0x855

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v2, [B

    fill-array-data v1, :array_1

    const-string v2, "071bd4"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x76t
        0x2t
        0x7t
        0x9t
        0x1t
        0x4ft
        0x76t
        0xct
        0xat
        0x15t
        0x16t
        0xdt
        0x59t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x73t
        0x56t
        0x52t
        0xat
        0x1t
        0x19t
        0x73t
        0x58t
        0x5ft
        0x16t
        0x16t
        0x5bt
        0x5ct
    .end array-data
.end method

.method public delete()Lokhttp3/Request$Builder;
    .locals 1

    sget-object v0, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;

    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 4
    .param p1    # Lokhttp3/RequestBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e0ea92"

    const-wide v2, -0x3e7d8dcd48000000L    # -3.8684247E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x21t
        0x75t
        0x29t
        0x24t
        0x6dt
        0x77t
    .end array-data
.end method

.method public get()Lokhttp3/Request$Builder;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6dca9e"

    const/16 v2, 0xae8

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x71t
        0x21t
        0x37t
    .end array-data
.end method

.method public head()Lokhttp3/Request$Builder;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "453d67"

    const v2, 0x4ed5757d    # 1.7906234E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7ct
        0x70t
        0x72t
        0x20t
    .end array-data
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1

    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    .locals 1

    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 6
    .param p2    # Lokhttp3/RequestBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x7

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b3c335"

    const v3, 0x4eb58934    # 1.5228339E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "686d17"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "116b64"

    const/16 v4, -0xac

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "b8075c"

    const-wide v4, -0x3e9c6dc460000000L    # -1.0260957E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lokhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "d21f6e"

    const/16 v4, 0x5c36

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "69c3d5"

    const v4, 0x4ebb52f4

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    return-object p0

    nop

    :array_0
    .array-data 1
        0xft
        0x56t
        0x17t
        0x5bt
        0x5ct
        0x51t
        0x42t
        0xet
        0x5et
        0x13t
        0x5dt
        0x40t
        0xet
        0x5ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5bt
        0x5dt
        0x42t
        0xct
        0x5et
        0x53t
        0x18t
        0x54t
        0x53t
        0xat
        0x56t
        0x43t
        0x5et
        0x10t
        0x1ft
        0x44t
        0xct
        0xat
        0x16t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x5ct
        0x54t
        0x42t
        0xat
        0x59t
        0x50t
        0x11t
    .end array-data

    :array_3
    .array-data 1
        0x42t
        0x55t
        0x45t
        0x44t
        0x41t
        0x43t
        0xct
        0x57t
        0x44t
        0x17t
        0x5dt
        0x2t
        0x14t
        0x5dt
        0x10t
        0x56t
        0x15t
        0x11t
        0x7t
        0x49t
        0x45t
        0x52t
        0x46t
        0x17t
        0x42t
        0x5at
        0x5ft
        0x53t
        0x4ct
        0x4dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x9t
        0x57t
        0x45t
        0xet
        0x59t
        0x1t
        0x44t
    .end array-data

    :array_5
    .array-data 1
        0x16t
        0x54t
        0x16t
        0x40t
        0x10t
        0x15t
        0x5et
        0x58t
        0x15t
        0x56t
        0x44t
        0x54t
        0x16t
        0x4bt
        0x6t
        0x42t
        0x11t
        0x50t
        0x45t
        0x4dt
        0x43t
        0x51t
        0xbt
        0x51t
        0x4ft
        0x17t
    .end array-data
.end method

.method public patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4042e6"

    const/16 v2, 0x3de5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x64t
        0x71t
        0x60t
        0x71t
        0x2dt
    .end array-data
.end method

.method public post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3944c5"

    const-wide v2, -0x3e2fc7f9ec800000L    # -1.08842811E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x63t
        0x76t
        0x67t
        0x60t
    .end array-data
.end method

.method public put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "97d745"

    const/16 v2, 0x3d9c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x69t
        0x62t
        0x30t
    .end array-data
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1

    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;
    .locals 0

    iput-object p1, p0, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "676e66"

    invoke-static {v1, v3, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v5, [B

    fill-array-data v0, :array_1

    const-string v3, "46a0e1"

    const v4, 0x4e36137e    # 7.636827E8f

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "ba2f24"

    const v3, 0x4ec252f3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "63e7c7"

    const v4, -0x33c5b054    # -4.884037E7f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v3, "9bba98"

    const-wide v4, 0x41b7422b57000000L    # 3.90212439E8

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "381347"

    const-wide v4, 0x41dcc4702e000000L    # 1.930543288E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x43t
        0x45t
        0x5at
        0x45t
        0xbt
        0xbt
        0x16t
        0x59t
        0x43t
        0x9t
        0x5at
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x45t
        0x5bt
    .end array-data

    :array_2
    .array-data 1
        0xat
        0x15t
        0x46t
        0x16t
        0x8t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x43t
        0x5dt
        0x0t
        0x4ft
        0x13t
        0x52t
        0x55t
        0x47t
        0x0t
        0x53t
        0x43t
        0x42t
        0x44t
        0x5ft
        0x5ft
        0x17t
    .end array-data

    :array_4
    .array-data 1
        0x4et
        0x11t
        0x11t
        0x5bt
    .end array-data

    :array_5
    .array-data 1
        0x5bt
        0x4ct
        0x45t
        0x43t
        0x47t
        0xdt
    .end array-data
.end method

.method public url(Ljava/net/URL;)Lokhttp3/Request$Builder;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1fc14b"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lokhttp3/HttpUrl;->get(Ljava/net/URL;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ec1a2a"

    const/16 v4, -0x5dd0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x44t
        0x14t
        0xft
        0x11t
        0x9t
        0x5ft
        0x11t
        0x8t
        0x16t
        0x5dt
        0x58t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0xdt
        0x54t
        0x19t
        0x42t
        0x4t
        0x6t
        0x17t
        0x54t
        0x5t
        0x12t
        0x14t
        0x17t
        0xft
        0xbt
        0x41t
    .end array-data
.end method

.method public url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8c1639"

    const v3, 0x4d42d2c2    # 2.04287E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x4dt
        0x11t
        0x5dt
        0x16t
        0xet
        0x4t
        0x18t
        0xdt
        0x44t
        0x5at
        0x5ft
    .end array-data
.end method
