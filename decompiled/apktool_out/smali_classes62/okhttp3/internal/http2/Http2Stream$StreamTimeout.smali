.class Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
.super Lokio/AsyncTimeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamTimeout"
.end annotation


# instance fields
.field final this$0:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 4

    new-instance v0, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fd71c5"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0

    :array_0
    .array-data 1
        0x12t
        0xdt
        0x5at
        0x54t
        0xct
        0x40t
        0x12t
    .end array-data
.end method

.method protected timedOut()V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method
