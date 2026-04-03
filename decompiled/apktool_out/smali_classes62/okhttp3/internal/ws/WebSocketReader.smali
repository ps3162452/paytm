.class final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field closed:Z

.field frameBytesRead:J

.field final frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field frameLength:J

.field final isClient:Z

.field isControlFrame:Z

.field isFinalFrame:Z

.field isMasked:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field opcode:I

.field final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0291c2"

    const-wide v4, 0x41cf808063000000L    # 1.057030342E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "0d8f4a"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    return-void

    nop

    :array_0
    .array-data 1
        0x43t
        0x5dt
        0x4ct
        0x43t
        0x0t
        0x57t
        0x10t
        0xft
        0x4t
        0x11t
        0xdt
        0x47t
        0x5ct
        0x5et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x56t
        0x16t
        0x59t
        0xbt
        0x51t
        0x22t
        0x51t
        0x8t
        0x54t
        0x4t
        0x55t
        0x2t
        0x5bt
        0x44t
        0x5t
        0x5bt
        0x14t
        0xft
        0x45t
        0x8t
        0x54t
    .end array-data
.end method

.method private readControlFrame()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v6, v2, v3}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    :cond_0
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c42f09"

    invoke-static {v2, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    int-to-long v1, v7

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-virtual {v6, v0, v8, v7}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    int-to-long v2, v7

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    :cond_2
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-interface {v1, v2, v8, v0}, Lokio/BufferedSource;->read([BII)I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x3ed

    const-string v0, ""

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "17130b"

    const-wide/32 v4, -0x7eb74c21

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    invoke-virtual {v6}, Lokio/Buffer;->readShort()S

    move-result v1

    invoke-virtual {v6}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v2, v1, v0}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 1
        0x36t
        0x5at
        0x59t
        0x8t
        0x5ft
        0x4et
        0xdt
        0x14t
        0x51t
        0x9t
        0x5et
        0x4dt
        0x11t
        0x5bt
        0x5et
        0x46t
        0x5ft
        0x49t
        0x0t
        0x5bt
        0x56t
        0x3t
        0xat
        0x19t
    .end array-data

    :array_1
    .array-data 1
        0x7ct
        0x56t
        0x5dt
        0x55t
        0x5ft
        0x10t
        0x5ct
        0x52t
        0x55t
        0x13t
        0x53t
        0xet
        0x5et
        0x44t
        0x54t
        0x13t
        0x40t
        0x3t
        0x48t
        0x5bt
        0x5et
        0x52t
        0x54t
        0x42t
        0x5dt
        0x52t
        0x5ft
        0x54t
        0x44t
        0xat
        0x11t
        0x58t
        0x57t
        0x13t
        0x1t
        0x4ct
    .end array-data
.end method

.method private readHeader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9f3cf1"

    const-wide v4, -0x3e3aed1429000000L    # -7.07123118E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v4

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit16 v6, v0, 0xff

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    and-int/lit8 v0, v6, 0xf

    iput v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b4ae45"

    const v3, 0x4e35ce35    # 7.625475E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_5

    move v4, v1

    :goto_2
    and-int/lit8 v0, v6, 0x20

    if-eqz v0, :cond_6

    move v3, v1

    :goto_3
    and-int/lit8 v0, v6, 0x10

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-eqz v0, :cond_8

    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "5437e7"

    const/16 v3, -0x51f2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v4, v2

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_9

    move v2, v1

    :cond_9
    iput-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-ne v2, v3, :cond_b

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "eda601"

    const-wide/32 v2, -0x573c71f8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-instance v1, Ljava/net/ProtocolException;

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v2, "a60d17"

    invoke-static {v0, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    :cond_c
    iput-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7d

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    new-instance v0, Ljava/net/ProtocolException;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "e401e2"

    const/16 v3, -0x4365

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x7f

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_c

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "4e8a51"

    const-wide/32 v4, -0x71049e3f

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "e0e934"

    const-wide/32 v4, 0x5f9c864a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V

    :cond_f
    return-void

    nop

    :array_0
    .array-data 1
        0x5at
        0xat
        0x5ct
        0x10t
        0x3t
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x21t
        0x5bt
        0xft
        0x11t
        0x46t
        0x5at
        0xet
        0x14t
        0x7t
        0x17t
        0x55t
        0x58t
        0x7t
        0x47t
        0x41t
        0x8t
        0x41t
        0x46t
        0x16t
        0x14t
        0x3t
        0x0t
        0x14t
        0x53t
        0xbt
        0x5at
        0x0t
        0x9t
        0x1at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x67t
        0x51t
        0x40t
        0x52t
        0x17t
        0x41t
        0x50t
        0x50t
        0x13t
        0x51t
        0x9t
        0x56t
        0x52t
        0x47t
        0x13t
        0x56t
        0x17t
        0x52t
        0x15t
        0x41t
        0x5dt
        0x44t
        0x10t
        0x47t
        0x45t
        0x5bt
        0x41t
        0x43t
        0x0t
        0x53t
        0x1bt
    .end array-data

    :array_3
    .array-data 1
        0x36t
        0x1t
        0x13t
        0x40t
        0x55t
        0x43t
        0x48t
        0x17t
        0x4t
        0x58t
        0x44t
        0x11t
        0x3t
        0x16t
        0x0t
        0x5bt
        0x55t
        0x42t
        0x45t
        0x9t
        0x14t
        0x45t
        0x44t
        0x11t
        0xbt
        0xbt
        0x15t
        0x16t
        0x52t
        0x54t
        0x45t
        0x9t
        0x0t
        0x45t
        0x5bt
        0x54t
        0x1t
        0x4at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x22t
        0x5at
        0x59t
        0x1t
        0x5ft
        0x43t
        0x4ct
        0x45t
        0x55t
        0xat
        0x45t
        0x17t
        0x7t
        0x44t
        0x51t
        0x9t
        0x54t
        0x44t
        0x41t
        0x5bt
        0x45t
        0x17t
        0x45t
        0x17t
        0x3t
        0x53t
        0x10t
        0x9t
        0x50t
        0x44t
        0xat
        0x53t
        0x54t
        0x4at
    .end array-data

    nop

    :array_5
    .array-data 1
        0x26t
        0x5bt
        0x5et
        0x45t
        0x17t
        0x5dt
        0x9t
        0x14t
        0x56t
        0x43t
        0x4t
        0x5ft
        0x0t
        0x14t
        0x5dt
        0x44t
        0x16t
        0x46t
        0x45t
        0x56t
        0x55t
        0x11t
        0x9t
        0x57t
        0x16t
        0x47t
        0x10t
        0x45t
        0xdt
        0x53t
        0xbt
        0x14t
        0x1t
        0x3t
        0x50t
        0x70t
        0x4bt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x72t
        0x17t
        0x59t
        0xct
        0x50t
        0x11t
        0x58t
        0x0t
        0x56t
        0x6t
        0x41t
        0x59t
        0x14t
        0x55t
        0x40t
    .end array-data

    :array_7
    .array-data 1
        0x45t
        0xet
        0x45t
        0x9t
        0x4bt
        0x3t
        0x23t
        0x76t
        0x23t
        0x7ft
        0x75t
        0x72t
        0x23t
        0x76t
        0x23t
        0x7ft
        0x75t
        0x72t
        0x23t
        0x76t
        0x23t
    .end array-data
.end method

.method private readMessage(Lokio/Buffer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "234953"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    if-eqz v0, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x23

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c06ec8"

    const-wide v4, -0x3e22c958bec00000L    # -1.960484101E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_4
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v0, v2

    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    long-to-int v0, v0

    invoke-interface {v2, v3, v6, v0}, Lokio/BufferedSource;->read([BII)I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v1, v8

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_5
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    long-to-int v3, v1

    invoke-virtual {p1, v0, v6, v3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    :cond_6
    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    add-long v0, v4, v1

    iput-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, p1, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v1

    cmp-long v0, v1, v8

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x51t
        0x5ft
        0x5bt
        0x4at
        0x50t
        0x57t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x26t
        0x48t
        0x46t
        0x0t
        0x0t
        0x4ct
        0x6t
        0x54t
        0x16t
        0x6t
        0xct
        0x56t
        0x17t
        0x59t
        0x58t
        0x10t
        0x2t
        0x4ct
        0xat
        0x5ft
        0x58t
        0x45t
        0xct
        0x48t
        0x0t
        0x5ft
        0x52t
        0x0t
        0x4dt
        0x18t
        0x24t
        0x5ft
        0x42t
        0x5ft
        0x43t
    .end array-data
.end method

.method private readMessageFrame()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    if-eq v0, v2, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "e976ae"

    const-wide v6, 0x41df12ddc0000000L    # 2.085320448E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-direct {p0, v1}, Lokhttp3/internal/ws/WebSocketReader;->readMessage(Lokio/Buffer;)V

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x30t
        0x57t
        0x5ct
        0x58t
        0xet
        0x12t
        0xbt
        0x19t
        0x58t
        0x46t
        0x2t
        0xat
        0x1t
        0x5ct
        0xdt
        0x16t
    .end array-data
.end method


# virtual methods
.method processNextFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    goto :goto_0
.end method

.method readUntilNonControlFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method
