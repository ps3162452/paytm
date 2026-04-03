.class final Lokio/PeekSource;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Source;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private closed:Z

.field private expectedPos:I

.field private expectedSegment:Lokio/Segment;

.field private pos:J

.field private final upstream:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->pos:I

    :goto_0
    iput v0, p0, Lokio/PeekSource;->expectedPos:I

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "461142"

    const-wide v4, -0x3e2335e86c000000L    # -1.932025424E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lokio/PeekSource;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c1c6b3"

    const v3, 0x4e0107d4    # 5.411935E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    iget-object v1, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v1, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lokio/PeekSource;->expectedPos:I

    iget-object v1, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v1, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x37

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "cc1e5a"

    const/16 v3, 0x52d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    cmp-long v0, p2, v4

    if-nez v0, :cond_4

    :goto_0
    return-wide v4

    :cond_4
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-nez v0, :cond_6

    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->pos:I

    iput v0, p0, Lokio/PeekSource;->expectedPos:I

    :cond_6
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokio/PeekSource;->pos:J

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x56t
        0x4ft
        0x45t
        0x54t
        0x77t
        0x5dt
        0x41t
        0x58t
        0x45t
        0x11t
        0x8t
        0x12t
        0x4t
        0xct
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x5dt
        0xct
        0x45t
        0x7t
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x33t
        0x6t
        0x54t
        0xet
        0x15t
        0x12t
        0xct
        0x16t
        0x43t
        0x6t
        0x50t
        0x41t
        0xat
        0x10t
        0x11t
        0xct
        0x5bt
        0x17t
        0x2t
        0xft
        0x58t
        0x1t
        0x15t
        0x3t
        0x6t
        0x0t
        0x50t
        0x10t
        0x46t
        0x4t
        0x43t
        0x16t
        0x41t
        0x16t
        0x41t
        0x13t
        0x6t
        0x2t
        0x5ct
        0x45t
        0x46t
        0xet
        0x16t
        0x11t
        0x52t
        0x0t
        0x15t
        0x16t
        0x2t
        0x10t
        0x11t
        0x10t
        0x46t
        0x4t
        0x7t
    .end array-data
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
