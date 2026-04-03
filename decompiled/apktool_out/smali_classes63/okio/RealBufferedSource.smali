.class final Lokio/RealBufferedSource;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/BufferedSource;


# instance fields
.field public final buffer:Lokio/Buffer;

.field closed:Z

.field public final source:Lokio/Source;


# direct methods
.method constructor <init>(Lokio/Source;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1448f5"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x5bt
        0x41t
        0x4at
        0x5t
        0x50t
        0x11t
        0x9t
        0x9t
        0x18t
        0x8t
        0x40t
        0x5dt
        0x58t
    .end array-data
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 1

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    goto :goto_0
.end method

.method public exhausted()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5268fe"

    const-wide v4, 0x41d1d1f558400000L    # 1.195890017E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x56t
        0x5et
        0x59t
        0x4bt
        0x3t
        0x1t
    .end array-data
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 1

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public indexOf(B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "58db44"

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    cmp-long v0, p4, p2

    if-gez v0, :cond_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "561f25"

    const v3, -0x31703838

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    cmp-long v0, v2, p4

    if-gez v0, :cond_5

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    move v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_3

    :goto_1
    return-wide v0

    :cond_3
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v4, v0, p4

    if-gez v4, :cond_4

    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v5, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v4, v5, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    :cond_4
    move-wide v0, v6

    goto :goto_1

    :cond_5
    move-wide v0, v6

    goto :goto_1

    :cond_6
    move-wide v2, p2

    goto :goto_0

    :array_0
    .array-data 1
        0x56t
        0x54t
        0xbt
        0x11t
        0x51t
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x53t
        0x44t
        0x5et
        0xbt
        0x7bt
        0x5bt
        0x51t
        0x53t
        0x49t
        0x5bt
        0x17t
        0x46t
        0x15t
        0x42t
        0x5et
        0x2ft
        0x5ct
        0x51t
        0x50t
        0x4et
        0xct
        0x43t
        0x41t
    .end array-data
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/RealBufferedSource;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, -0x1

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8f4d35"

    const-wide v4, -0x3e4f2c01fb000000L    # -2.82328581E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_1
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v5, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5bt
        0xat
        0x5bt
        0x17t
        0x56t
        0x51t
    .end array-data
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/RealBufferedSource;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, -0x1

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "085d57"

    const/16 v3, 0x44b6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_1
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v5, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x53t
        0x54t
        0x5at
        0x17t
        0x50t
        0x53t
    .end array-data
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lokio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource$1;-><init>(Lokio/RealBufferedSource;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 1

    new-instance v0, Lokio/PeekSource;

    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/RealBufferedSource;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ca62af"

    invoke-static {v2, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    if-ltz p4, :cond_1

    if-ltz p5, :cond_1

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v1, v0

    :goto_1
    if-ge v1, p5, :cond_3

    int-to-long v2, v1

    add-long/2addr v2, p1

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lokio/RealBufferedSource;->request(J)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :array_0
    .array-data 1
        0x0t
        0xdt
        0x59t
        0x41t
        0x4t
        0x2t
    .end array-data
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/RealBufferedSource;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    int-to-long v0, p3

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1, p1, p2, v0}, Lokio/Buffer;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bbcd96"

    const-wide v4, 0x41d307bf09400000L    # 1.277099045E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "07a445"

    const v4, -0x3173f513

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "5ee698"

    const v3, 0x4edca870    # 1.8510131E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    :goto_0
    return-wide v0

    :cond_3
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, p1, v0, v1}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v0

    goto :goto_0

    :array_0
    .array-data 1
        0x11t
        0xbt
        0xdt
        0xft
        0x19t
        0xbt
        0x5ft
        0x42t
        0xdt
        0x11t
        0x55t
        0x5at
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0x4et
        0x15t
        0x51t
        0x77t
        0x5at
        0x45t
        0x59t
        0x15t
        0x14t
        0x8t
        0x15t
        0x0t
        0xdt
        0x41t
    .end array-data

    :array_2
    .array-data 1
        0x56t
        0x9t
        0xat
        0x45t
        0x5ct
        0x5ct
    .end array-data
.end method

.method public readAll(Lokio/Sink;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "95be3c"

    const-wide v4, -0x3e4fc757a7000000L    # -2.72148569E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-wide v0, v2

    :cond_1
    :goto_0
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v5, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-object v4, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    add-long/2addr v0, v4

    iget-object v6, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-interface {p1, v6, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-object v3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_3
    return-wide v0

    nop

    :array_0
    .array-data 1
        0x4at
        0x5ct
        0xct
        0xet
        0x13t
        0x5et
        0x4t
        0x15t
        0xct
        0x10t
        0x5ft
        0xft
    .end array-data
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteString()Lokio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x1

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    if-nez v0, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v3, 0x33

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "f72a41"

    invoke-static {v3, v4, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0

    nop

    :array_0
    .array-data 1
        0x23t
        0x4ft
        0x42t
        0x4t
        0x57t
        0x45t
        0x3t
        0x53t
        0x12t
        0xdt
        0x51t
        0x50t
        0x2t
        0x5et
        0x5ct
        0x6t
        0x14t
        0x6at
        0x56t
        0x1at
        0xbt
        0x3ct
        0x14t
        0x5et
        0x14t
        0x17t
        0x15t
        0x4ct
        0x13t
        0x11t
        0x5t
        0x5ft
        0x53t
        0x13t
        0x55t
        0x52t
        0x12t
        0x52t
        0x40t
        0x41t
        0x56t
        0x44t
        0x12t
        0x17t
        0x45t
        0x0t
        0x47t
        0x11t
        0x43t
        0x14t
        0x4at
    .end array-data
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->readFully(Lokio/Buffer;J)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    throw v0
.end method

.method public readFully([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-object v3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v4, v3, Lokio/Buffer;->size:J

    long-to-int v3, v4

    invoke-virtual {v2, p1, v0, v3}, Lokio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    throw v1
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->require(J)V

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x46

    if-le v2, v3, :cond_3

    :cond_2
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v3, 0x32

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "c1c553"

    const-wide v6, -0x3e421a30e5000000L    # -5.01600027E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0

    :array_0
    .array-data 1
        0x26t
        0x49t
        0x13t
        0x50t
        0x56t
        0x47t
        0x6t
        0x55t
        0x43t
        0x59t
        0x50t
        0x52t
        0x7t
        0x58t
        0xdt
        0x52t
        0x15t
        0x68t
        0x53t
        0x1ct
        0x5at
        0x54t
        0x18t
        0x55t
        0x22t
        0x1ct
        0x25t
        0x68t
        0x15t
        0x50t
        0xbt
        0x50t
        0x11t
        0x54t
        0x56t
        0x47t
        0x6t
        0x43t
        0x43t
        0x57t
        0x40t
        0x47t
        0x43t
        0x46t
        0x2t
        0x46t
        0x15t
        0x16t
        0x40t
        0x49t
    .end array-data
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "543fe8"

    const v3, -0x326cff1d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x56t
        0x5ct
        0x52t
        0x14t
        0x16t
        0x5dt
        0x41t
        0x14t
        0xet
        0x5bt
        0x45t
        0x56t
        0x40t
        0x58t
        0x5ft
    .end array-data
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4b129e"

    const-wide v4, 0x4174b4aa50000000L    # 2.1711525E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x57t
        0xat
        0x50t
        0x40t
        0x4at
        0x0t
        0x40t
        0x42t
        0xct
        0xft
        0x19t
        0xbt
        0x41t
        0xet
        0x5dt
    .end array-data
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v0

    return v0

    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2

    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v0, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "dc5e5d"

    const/16 v4, 0x2408

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-wide/16 v0, 0x1

    add-long v4, p1, v0

    goto :goto_0

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    invoke-virtual {p0, v4, v5}, Lokio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x14

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "7fea4c"

    const v5, 0x4df77553    # 5.1895766E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "bf09ce"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x8t
        0xat
        0x58t
        0xct
        0x41t
        0x44t
        0x58t
        0x43t
        0x5t
        0x5ft
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x6bt
        0x8t
        0x45t
        0xft
        0x5bt
        0x17t
        0x17t
        0x0t
        0xat
        0x14t
        0x5at
        0x7t
        0xdt
        0x46t
        0x9t
        0x8t
        0x59t
        0xat
        0x43t
        0x5bt
    .end array-data

    :array_2
    .array-data 1
        0x42t
        0x5t
        0x5ft
        0x57t
        0x17t
        0x0t
        0xct
        0x12t
        0xdt
    .end array-data
.end method

.method public request(J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "91583f"

    invoke-static {v3, v4, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "fed1fd"

    const-wide v4, -0x3e2ae4356ec00000L    # -1.416571461E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v1, Lokio/Buffer;->size:J

    cmp-long v1, v2, p1

    if-gez v1, :cond_2

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v1, v2, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_2
    return v0

    :array_0
    .array-data 1
        0x5bt
        0x48t
        0x41t
        0x5dt
        0x70t
        0x9t
        0x4ct
        0x5ft
        0x41t
        0x18t
        0xft
        0x46t
        0x9t
        0xbt
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x5t
        0x9t
        0xbt
        0x42t
        0x3t
        0x0t
    .end array-data
.end method

.method public require(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->request(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public select(Lokio/Options;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v0, -0x1

    iget-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3df577"

    const/4 v3, 0x0

    invoke-static {v1, v2, v6, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1, p1, v6}, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v1, v2, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x50t
        0x8t
        0x9t
        0x46t
        0x52t
        0x53t
    .end array-data
.end method

.method public skip(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "11a903"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    sub-long/2addr p1, v0

    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    return-void

    :array_0
    .array-data 1
        0x52t
        0x5dt
        0xet
        0x4at
        0x55t
        0x57t
    .end array-data
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9abb40"

    const v3, 0x4e9b9a1d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x18

    aput-byte v3, v1, v2

    const-string v2, "1e1bbc"

    const/16 v3, -0x83e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x14t
        0x4t
        0x4t
        0x51t
        0x42t
        0x11t
    .end array-data
.end method
