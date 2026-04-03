.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
    }
.end annotation


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->httpStream()Lokhttp3/internal/http/HttpCodec;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v4

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->connection()Lokhttp3/Connection;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    invoke-interface {v3, v5}, Lokhttp3/internal/http/HttpCodec;->writeRequestHeaders(Lokhttp3/Request;)V

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v5}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v8

    if-eqz v8, :cond_9

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v8, "82bfee"

    const-wide v10, -0x3e3f98b8e6000000L    # -5.50407732E8

    invoke-static {v1, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x6

    new-array v8, v8, [B

    fill-array-data v8, :array_1

    const-string v9, "8aecf7"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Lokhttp3/internal/http/HttpCodec;->flushRequest()V

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Lokhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;

    invoke-virtual {v5}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    invoke-interface {v3, v5, v8, v9}, Lokhttp3/internal/http/HttpCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v2

    invoke-direct {v0, v2}, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;-><init>(Lokio/Sink;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    invoke-virtual {v5}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v8, v2}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-interface {v2}, Lokio/BufferedSink;->close()V

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v8

    iget-wide v10, v0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    invoke-virtual {v2, v8, v10, v11}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    move-object v0, v1

    :goto_1
    invoke-interface {v3}, Lokhttp3/internal/http/HttpCodec;->finishRequest()V

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lokhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, v5}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    iget-boolean v2, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x65

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    sget-object v2, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    :goto_2
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "3911fb"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    const/16 v5, 0xa

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "46f441"

    const/16 v7, 0x60cb

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "665875"

    const v5, 0x4ee81c56

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v5, "9c1127"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    :cond_2
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_6

    :cond_3
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    const-string v5, "81d7aa"

    const/16 v6, -0x4033

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x1e

    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const-string v4, "937215"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    move-object v0, v1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    invoke-interface {v3, v0}, Lokhttp3/internal/http/HttpCodec;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    return-object v0

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    move-object v1, v2

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x9t
        0x2t
        0x52t
        0x4bt
        0x6t
        0xat
        0x56t
        0x46t
        0xbt
        0x8t
        0x10t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x7dt
        0x19t
        0x15t
        0x6t
        0x5t
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x50t
        0x55t
        0x5et
        0x42t
        0x3t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x77t
        0x59t
        0x8t
        0x5at
        0x51t
        0x52t
        0x40t
        0x5ft
        0x9t
        0x5at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x55t
        0x5at
        0x5at
        0x4bt
        0x52t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x7at
        0xct
        0x5ft
        0x5ft
        0x57t
        0x54t
        0x4dt
        0xat
        0x5et
        0x5ft
    .end array-data

    nop

    :array_6
    .array-data 1
        0x70t
        0x65t
        0x30t
        0x67t
        0x41t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x19t
        0x5bt
        0x56t
        0x56t
        0x11t
        0x5bt
        0x56t
        0x5dt
        0x1at
        0x48t
        0x54t
        0x47t
        0x56t
        0x13t
        0x74t
        0x5dt
        0x5ft
        0x41t
        0x5ct
        0x5dt
        0x43t
        0x1ft
        0x7dt
        0x50t
        0x57t
        0x54t
        0x43t
        0x5at
        0xbt
        0x15t
    .end array-data
.end method
