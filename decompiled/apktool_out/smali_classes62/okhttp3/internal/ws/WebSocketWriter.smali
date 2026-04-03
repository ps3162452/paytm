.class final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field activeWriter:Z

.field final buffer:Lokio/Buffer;

.field final frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lokio/BufferedSink;

.field writerClosed:Z


# direct methods
.method constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lokhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6bf543"

    invoke-static {v1, v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "2fd1d0"

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-eqz p1, :cond_2

    const/16 v0, 0x2000

    new-array v1, v0, [B

    :cond_2
    iput-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x45t
        0xbt
        0x8t
        0x5et
        0x14t
        0xet
        0xbt
        0x42t
        0x8t
        0x40t
        0x58t
        0x5ft
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x7t
        0xat
        0x55t
        0xbt
        0x5dt
        0x12t
        0x5bt
        0x59t
        0x11t
        0xat
        0x45t
        0x5et
        0xat
    .end array-data
.end method

.method private writeControlFrame(ILokio/ByteString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "80a2d0"

    const v3, -0x3178fec9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x7d

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "75f6df"

    const-wide/32 v4, 0x24e99771

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    or-int/lit16 v2, p1, 0x80

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    or-int/lit16 v0, v0, 0x80

    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    int-to-long v1, v1

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void

    :cond_2
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x5ct
        0xet
        0x41t
        0x1t
        0x54t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x67t
        0x54t
        0x1ft
        0x5at
        0xbt
        0x7t
        0x53t
        0x15t
        0x15t
        0x5ft
        0x1et
        0x3t
        0x17t
        0x58t
        0x13t
        0x45t
        0x10t
        0x46t
        0x55t
        0x50t
        0x46t
        0x5at
        0x1t
        0x15t
        0x44t
        0x15t
        0x12t
        0x5et
        0x5t
        0x8t
        0x17t
        0x5at
        0x14t
        0x16t
        0x1t
        0x17t
        0x42t
        0x54t
        0xat
        0x16t
        0x10t
        0x9t
        0x17t
        0x4t
        0x54t
        0x3t
    .end array-data
.end method


# virtual methods
.method newMessageSink(IJ)Lokio/Sink;
    .locals 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x37

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "586c17"

    const-wide v4, 0x41dc82bc07000000L    # 1.913319452E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-wide p2, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-boolean v1, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x74t
        0x56t
        0x59t
        0x17t
        0x59t
        0x52t
        0x47t
        0x18t
        0x5bt
        0x6t
        0x42t
        0x44t
        0x54t
        0x5ft
        0x53t
        0x43t
        0x46t
        0x45t
        0x5ct
        0x4ct
        0x53t
        0x11t
        0x11t
        0x5et
        0x46t
        0x18t
        0x57t
        0x0t
        0x45t
        0x5et
        0x43t
        0x5dt
        0x18t
        0x43t
        0x75t
        0x5et
        0x51t
        0x18t
        0x4ft
        0xct
        0x44t
        0x17t
        0x56t
        0x59t
        0x5at
        0xft
        0x11t
        0x54t
        0x59t
        0x57t
        0x45t
        0x6t
        0x19t
        0x1et
        0xat
    .end array-data
.end method

.method writeClose(ILokio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    :cond_1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    :cond_2
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    :cond_3
    const/16 v1, 0x8

    :try_start_0
    invoke-direct {p0, v1, v0}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw v0
.end method

.method writeMessageFrame(IJZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a82cfa"

    const v3, -0x311d9cd1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p4, :cond_2

    move v0, p1

    :goto_0
    if-eqz p5, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x80

    :goto_1
    const-wide/16 v2, 0x7d

    cmp-long v1, p2, v2

    if-gtz v1, :cond_3

    long-to-int v1, p2

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    :goto_2
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    const-wide/16 v4, 0x0

    :goto_3
    cmp-long v0, v4, p2

    if-gez v0, :cond_7

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-virtual {v1, v2, v6, v0}, Lokio/Buffer;->read([BII)I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    const-wide/32 v2, 0xffff

    cmp-long v1, p2, v2

    if-gtz v1, :cond_4

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    or-int/lit8 v0, v0, 0x7e

    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    or-int/lit8 v0, v0, 0x7f

    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2, p3}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    int-to-long v1, v7

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {v0, v1, v6, v7}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    int-to-long v0, v7

    add-long/2addr v4, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-interface {v0, v1, p2, p3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    :cond_7
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    return-void

    :cond_8
    move v0, v6

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x2t
        0x54t
        0x5dt
        0x10t
        0x3t
        0x5t
    .end array-data
.end method

.method writePing(Lokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    return-void
.end method

.method writePong(Lokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    return-void
.end method
