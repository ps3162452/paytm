.class final Lokio/Okio$4;
.super Lokio/AsyncTimeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Okio;->timeout(Ljava/net/Socket;)Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lokio/Okio$4;->val$socket:Ljava/net/Socket;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 6
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7b629d"

    const-wide/32 v4, 0xaa3cbe2

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0

    :array_0
    .array-data 1
        0x43t
        0xbt
        0x5bt
        0x57t
        0x56t
        0x11t
        0x43t
    .end array-data
.end method

.method protected timedOut()V
    .locals 8

    const/16 v4, 0x21

    :try_start_0
    iget-object v0, p0, Lokio/Okio$4;->val$socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lokio/Okio;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "6b5781"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokio/Okio$4;->val$socket:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lokio/Okio;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "3d66b8"

    const-wide/32 v6, 0x7f06fcea

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokio/Okio$4;->val$socket:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    throw v0

    nop

    :array_0
    .array-data 1
        0x70t
        0x3t
        0x5ct
        0x5bt
        0x5dt
        0x55t
        0x16t
        0x16t
        0x5at
        0x17t
        0x5bt
        0x5dt
        0x59t
        0x11t
        0x50t
        0x17t
        0x4ct
        0x58t
        0x5bt
        0x7t
        0x51t
        0x17t
        0x57t
        0x44t
        0x42t
        0x42t
        0x46t
        0x58t
        0x5bt
        0x5at
        0x53t
        0x16t
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x75t
        0x5t
        0x5ft
        0x5at
        0x7t
        0x5ct
        0x13t
        0x10t
        0x59t
        0x16t
        0x1t
        0x54t
        0x5ct
        0x17t
        0x53t
        0x16t
        0x16t
        0x51t
        0x5et
        0x1t
        0x52t
        0x16t
        0xdt
        0x4dt
        0x47t
        0x44t
        0x45t
        0x59t
        0x1t
        0x53t
        0x56t
        0x10t
        0x16t
    .end array-data
.end method
