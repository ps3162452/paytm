.class Lcom/google/firebase/database/tubesock/WebSocketReceiver;
.super Ljava/lang/Object;


# instance fields
.field private eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

.field private input:Ljava/io/DataInputStream;

.field private inputHeader:[B

.field private pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

.field private volatile stop:Z

.field private websocket:Lcom/google/firebase/database/tubesock/WebSocket;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/tubesock/WebSocket;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    return-void
.end method

.method private appendBytes(ZB[B)V
    .locals 6

    const/16 v1, 0x24

    const/4 v3, 0x1

    const/16 v0, 0x9

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0, p3}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handlePing([B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "910cf2"

    const/16 v3, 0x1192

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    if-eqz v0, :cond_3

    if-nez p2, :cond_6

    :cond_3
    if-nez v0, :cond_4

    if-eqz p2, :cond_7

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory;->builder(B)Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    :cond_5
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {v0, p3}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;->appendBytes([B)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {v0}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;->toMessage()Lcom/google/firebase/database/tubesock/WebSocketMessage;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onMessage(Lcom/google/firebase/database/tubesock/WebSocketMessage;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ff4e3d"

    const-wide v4, -0x3e56e62700000000L    # -2.10562176E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const/16 v1, 0x3a

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "261619"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "d43ad1"

    const/16 v3, 0x340b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "a1c816"

    const/16 v3, 0x178

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x69t
        0x78t
        0x7et
        0x24t
        0x46t
        0x5ft
        0x4ct
        0x42t
        0x44t
        0x43t
        0x8t
        0x5dt
        0x4dt
        0x11t
        0x56t
        0x11t
        0x7t
        0x55t
        0x54t
        0x54t
        0x5et
        0x17t
        0x46t
        0x53t
        0x5at
        0x43t
        0x5ft
        0x10t
        0x15t
        0x12t
        0x5ft
        0x43t
        0x51t
        0xet
        0x3t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x7t
        0x5dt
        0x9t
        0x56t
        0x0t
        0x46t
        0x12t
        0x5bt
        0x45t
        0x50t
        0xbt
        0x8t
        0x12t
        0x5dt
        0xbt
        0x46t
        0x1t
        0x46t
        0x9t
        0x41t
        0x11t
        0x40t
        0x10t
        0x7t
        0x8t
        0x50t
        0xct
        0x5dt
        0x3t
        0x46t
        0x0t
        0x46t
        0x4t
        0x5et
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x60t
        0x53t
        0x52t
        0x53t
        0x58t
        0x4ft
        0x57t
        0x52t
        0x11t
        0x55t
        0x5et
        0x57t
        0x46t
        0x5ft
        0x5ft
        0x43t
        0x58t
        0x57t
        0x55t
        0x16t
        0x57t
        0x44t
        0x50t
        0x54t
        0x57t
        0x1at
        0x11t
        0x54t
        0x44t
        0x4dt
        0x12t
        0x42t
        0x59t
        0x53t
        0x43t
        0x5ct
        0x15t
        0x45t
        0x11t
        0x58t
        0x5et
        0x4dt
        0x5at
        0x5ft
        0x5ft
        0x51t
        0x11t
        0x4dt
        0x5dt
        0x16t
        0x52t
        0x59t
        0x5ft
        0x4dt
        0x5bt
        0x58t
        0x44t
        0x53t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x22t
        0x55t
        0x5at
        0xdt
        0x1t
        0x55t
        0x44t
        0x40t
        0x5ct
        0x41t
        0x0t
        0x54t
        0x7t
        0x5bt
        0x57t
        0x4t
        0x44t
        0x46t
        0xct
        0x5bt
        0x5ft
        0x4t
        0x44t
        0x5ct
        0x1t
        0x47t
        0x40t
        0x0t
        0x3t
        0x54t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x27t
        0x50t
        0xat
        0x54t
        0x54t
        0x52t
        0x41t
        0x45t
        0xct
        0x18t
        0x55t
        0x53t
        0x2t
        0x5et
        0x7t
        0x5dt
        0x11t
        0x50t
        0x13t
        0x50t
        0xet
        0x5dt
    .end array-data
.end method

.method private handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stopit()V

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    return-void
.end method

.method private handlePing([B)V
    .locals 6

    array-length v0, p1

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->pong([B)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a0ce16"

    const-wide/32 v4, 0x158ea7f1

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x79t
        0x2dt
        0x22t
        0x11t
        0x50t
        0x13t
        0x51t
        0xet
        0x0t
        0x11t
        0x42t
        0xet
        0x5ft
        0x43t
        0x9t
        0x5et
        0x58t
        0x6t
    .end array-data
.end method

.method private parseLong([BI)J
    .locals 5

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return p3
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method run()V
    .locals 13

    const/16 v12, 0x7e

    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocket;->getEventHandler()Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    if-nez v0, :cond_a

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v0

    add-int/lit8 v1, v0, 0x0

    iget-object v5, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_2

    aget-byte v6, v5, v3

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_2

    move v4, v2

    :goto_1
    and-int/lit8 v0, v6, 0x70

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    if-nez v0, :cond_9

    and-int/lit8 v0, v6, 0xf

    int-to-byte v6, v0

    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v5, v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v0

    add-int v5, v1, v0

    iget-object v7, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_1 .. :try_end_1} :catch_2

    aget-byte v8, v7, v2

    const-wide/16 v0, 0x0

    if-ge v8, v12, :cond_4

    int-to-long v0, v8

    :cond_1
    :goto_3
    long-to-int v5, v0

    :try_start_2
    new-array v5, v5, [B

    const/4 v7, 0x0

    long-to-int v0, v0

    invoke-direct {p0, v5, v7, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    if-ne v6, v10, :cond_6

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocket;->onCloseOpReceived()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    if-ne v8, v12, :cond_5

    const/4 v0, 0x2

    invoke-direct {p0, v7, v5, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_2 .. :try_end_2} :catch_2

    aget-byte v1, v0, v11

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    shl-long/2addr v8, v10

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v8

    goto :goto_3

    :cond_5
    const/16 v9, 0x7f

    if-ne v8, v9, :cond_1

    const/16 v0, 0x8

    :try_start_3
    invoke-direct {p0, v7, v5, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x8

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->parseLong([BI)J

    move-result-wide v0

    goto :goto_3

    :cond_6
    const/16 v0, 0xa

    if-eq v6, v0, :cond_0

    if-eq v6, v2, :cond_7

    if-eq v6, v11, :cond_7

    const/16 v0, 0x9

    if-eq v6, v0, :cond_7

    if-nez v6, :cond_8

    :cond_7
    invoke-direct {p0, v4, v6, v5}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->appendBytes(ZB[B)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-array v4, v10, [B

    fill-array-data v4, :array_0

    const-string v5, "82e7c5"

    const/16 v6, -0x3f09

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    goto/16 :goto_0

    :cond_8
    :try_start_4
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x14

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "69275c"

    const/16 v7, 0x2880

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    goto/16 :goto_0

    :cond_9
    :try_start_5
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v4, "e57a35"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_a
    return-void

    :array_0
    .array-data 1
        0x71t
        0x7dt
        0x45t
        0x72t
        0x11t
        0x47t
        0x57t
        0x40t
    .end array-data

    :array_1
    .array-data 1
        0x63t
        0x57t
        0x41t
        0x42t
        0x45t
        0x13t
        0x59t
        0x4bt
        0x46t
        0x52t
        0x51t
        0x43t
        0x59t
        0x49t
        0x51t
        0x58t
        0x51t
        0x6t
        0xct
        0x19t
    .end array-data

    :array_2
    .array-data 1
        0x2ct
        0x5bt
        0x41t
        0x0t
        0x5ft
        0x5ct
        0x1t
        0x15t
        0x51t
        0x13t
        0x52t
        0x58t
        0x0t
        0x15t
        0x45t
        0x4t
        0x50t
        0x50t
        0xct
        0x43t
        0x52t
        0x5t
    .end array-data
.end method

.method setInput(Ljava/io/DataInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    return-void
.end method

.method stopit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    return-void
.end method
