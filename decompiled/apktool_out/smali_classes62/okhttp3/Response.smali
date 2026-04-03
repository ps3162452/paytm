.class public final Lokhttp3/Response;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field final body:Lokhttp3/ResponseBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile cacheControl:Lokhttp3/CacheControl;

.field final cacheResponse:Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final code:I

.field final handshake:Lokhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final headers:Lokhttp3/Headers;

.field final message:Ljava/lang/String;

.field final networkResponse:Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final priorResponse:Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final protocol:Lokhttp3/Protocol;

.field final receivedResponseAtMillis:J

.field final request:Lokhttp3/Request;

.field final sentRequestAtMillis:J


# direct methods
.method constructor <init>(Lokhttp3/Response$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    iput-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v0, p1, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    iget v0, p1, Lokhttp3/Response$Builder;->code:I

    iput v0, p0, Lokhttp3/Response;->code:I

    iget-object v0, p1, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iput-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    iget-object v0, p1, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    iget-object v0, p1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    iput-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    iget-object v0, p1, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    iget-object v0, p1, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    iget-object v0, p1, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    iget-wide v0, p1, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    iget-wide v0, p1, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    return-void
.end method


# virtual methods
.method public body()Lokhttp3/ResponseBody;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lokhttp3/CacheControl;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-static {v0}, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    goto :goto_0
.end method

.method public cacheResponse()Lokhttp3/Response;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b1ec02"

    const/16 v2, -0x5a29

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/internal/http/HttpHeaders;->parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "4ee0ff"

    const-wide/32 v2, 0x420e415d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :array_0
    .array-data 1
        0x35t
        0x66t
        0x32t
        0x4et
        0x71t
        0x47t
        0x16t
        0x59t
        0x0t
        0xdt
        0x44t
        0x5bt
        0x1t
        0x50t
        0x11t
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x64t
        0x17t
        0xat
        0x48t
        0x1ft
        0x4bt
        0x75t
        0x10t
        0x11t
        0x58t
        0x3t
        0x8t
        0x40t
        0xct
        0x6t
        0x51t
        0x12t
        0x3t
    .end array-data
.end method

.method public close()V
    .locals 6

    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "836d11"

    const-wide v4, -0x3e3d4f77a6800000L    # -6.27118259E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void

    :array_0
    .array-data 1
        0x4at
        0x56t
        0x45t
        0x14t
        0x5et
        0x5ft
        0x4bt
        0x56t
        0x16t
        0xdt
        0x42t
        0x11t
        0x56t
        0x5ct
        0x42t
        0x44t
        0x54t
        0x5dt
        0x51t
        0x54t
        0x5ft
        0x6t
        0x5dt
        0x54t
        0x18t
        0x55t
        0x59t
        0x16t
        0x11t
        0x50t
        0x18t
        0x51t
        0x59t
        0x0t
        0x48t
        0x11t
        0x59t
        0x5dt
        0x52t
        0x44t
        0x5ct
        0x44t
        0x4bt
        0x47t
        0x16t
        0xat
        0x5et
        0x45t
        0x18t
        0x51t
        0x53t
        0x44t
        0x52t
        0x5dt
        0x57t
        0x40t
        0x53t
        0x0t
    .end array-data
.end method

.method public code()I
    .locals 1

    iget v0, p0, Lokhttp3/Response;->code:I

    return v0
.end method

.method public handshake()Lokhttp3/Handshake;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public isRedirect()Z
    .locals 1

    iget v0, p0, Lokhttp3/Response;->code:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSuccessful()Z
    .locals 2

    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lokhttp3/Response;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public newBuilder()Lokhttp3/Response$Builder;
    .locals 1

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0, p0}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    return-object v0
.end method

.method public peekBody(J)Lokhttp3/ResponseBody;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lokio/BufferedSource;->request(J)Z

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v1, p1, p2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    :goto_0
    iget-object v1, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public priorResponse()Lokhttp3/Response;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public protocol()Lokhttp3/Protocol;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method public receivedResponseAtMillis()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public sentRequestAtMillis()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9cbf8a"

    const-wide v4, 0x41d84d8ba4c00000L    # 1.630940819E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c04202"

    const-wide v4, 0x417f5c8190000000L    # 3.2884761E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "02397c"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "986cea"

    const-wide/32 v4, -0x4642f067

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x6bt
        0x6t
        0x11t
        0x16t
        0x57t
        0xft
        0x4at
        0x6t
        0x19t
        0x16t
        0x4at
        0xet
        0x4dt
        0xct
        0x1t
        0x9t
        0x54t
        0x5ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4ft
        0x10t
        0x57t
        0x5dt
        0x54t
        0x57t
        0x5et
    .end array-data

    :array_2
    .array-data 1
        0x1ct
        0x12t
        0x5et
        0x5ct
        0x44t
        0x10t
        0x51t
        0x55t
        0x56t
        0x4t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x15t
        0x18t
        0x43t
        0x11t
        0x9t
        0x5ct
    .end array-data
.end method
