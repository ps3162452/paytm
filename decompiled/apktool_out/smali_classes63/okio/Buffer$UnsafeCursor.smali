.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ec11f6"

    const/16 v3, 0x5f9e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    iput v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void

    :array_0
    .array-data 1
        0xbt
        0xct
        0x45t
        0x11t
        0x7t
        0x42t
        0x11t
        0x2t
        0x52t
        0x59t
        0x3t
        0x52t
        0x45t
        0x17t
        0x5et
        0x11t
        0x7t
        0x16t
        0x7t
        0x16t
        0x57t
        0x57t
        0x3t
        0x44t
    .end array-data
.end method

.method public final expandBuffer(I)J
    .locals 8

    const/16 v5, 0x2000

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c6b6c7"

    const-wide v4, 0x41c419918c800000L    # 6.74439961E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-le p1, v5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "cff63c"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "37b370"

    const/16 v3, -0x5207

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x34

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "535950"

    const/16 v3, 0x566

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v2, p1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    iput v5, v2, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    int-to-long v6, v3

    add-long/2addr v6, v0

    iput-wide v6, v4, Lokio/Buffer;->size:J

    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v0, v2, Lokio/Segment;->data:[B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    rsub-int v0, v3, 0x2000

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v5, p0, Lokio/Buffer$UnsafeCursor;->end:I

    int-to-long v0, v3

    return-wide v0

    :array_0
    .array-data 1
        0xet
        0x5ft
        0xct
        0x74t
        0x1at
        0x43t
        0x6t
        0x75t
        0xdt
        0x43t
        0xdt
        0x43t
        0x43t
        0xat
        0x5ft
        0x16t
        0x53t
        0xdt
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0xet
        0xft
        0x8t
        0x74t
        0x4at
        0x17t
        0x6t
        0x25t
        0x9t
        0x43t
        0x5dt
        0x17t
        0x43t
        0x58t
        0x46t
        0x65t
        0x56t
        0x4t
        0xet
        0x3t
        0x8t
        0x42t
        0x1dt
        0x30t
        0x2at
        0x3ct
        0x23t
        0xct
        0x13t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5dt
        0x58t
        0x16t
        0x13t
        0x56t
        0x44t
        0x47t
        0x56t
        0x1t
        0x5bt
        0x52t
        0x54t
        0x13t
        0x43t
        0xdt
        0x13t
        0x56t
        0x10t
        0x51t
        0x42t
        0x4t
        0x55t
        0x52t
        0x42t
    .end array-data

    :array_3
    .array-data 1
        0x50t
        0x4bt
        0x45t
        0x58t
        0x5bt
        0x54t
        0x77t
        0x46t
        0x53t
        0x5ft
        0x50t
        0x42t
        0x1dt
        0x1at
        0x15t
        0x56t
        0x5bt
        0x5ct
        0x4ct
        0x13t
        0x45t
        0x5ct
        0x47t
        0x5dt
        0x5ct
        0x47t
        0x41t
        0x5ct
        0x51t
        0x10t
        0x53t
        0x5ct
        0x47t
        0x19t
        0x47t
        0x55t
        0x54t
        0x57t
        0x1at
        0x4et
        0x47t
        0x59t
        0x41t
        0x56t
        0x15t
        0x5bt
        0x40t
        0x56t
        0x53t
        0x56t
        0x47t
        0x4at
    .end array-data
.end method

.method public final next()I
    .locals 4

    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    goto :goto_0
.end method

.method public final resizeBuffer(J)J
    .locals 11

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c1e06c"

    const-wide/32 v4, 0x394ae578

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x34

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "8f2884"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v4, v0, Lokio/Buffer;->size:J

    cmp-long v0, p1, v4

    if-gtz v0, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "22e367"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sub-long v0, v4, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    iget v3, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    cmp-long v6, v6, v0

    if-gtz v6, :cond_3

    iget-object v6, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    int-to-long v2, v3

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_3
    iget v3, v2, Lokio/Segment;->limit:I

    int-to-long v6, v3

    sub-long v0, v6, v0

    long-to-int v0, v0

    iput v0, v2, Lokio/Segment;->limit:I

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, 0x0

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    :cond_5
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-wide p1, v0, Lokio/Buffer;->size:J

    return-wide v4

    :cond_6
    cmp-long v0, p1, v4

    if-lez v0, :cond_5

    const/4 v0, 0x1

    sub-long v2, p1, v4

    :cond_7
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_5

    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    iget v6, v1, Lokio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    int-to-long v6, v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    iget v7, v1, Lokio/Segment;->limit:I

    add-int/2addr v7, v6

    iput v7, v1, Lokio/Segment;->limit:I

    int-to-long v8, v6

    sub-long/2addr v2, v8

    if-eqz v0, :cond_7

    iput-object v1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide v4, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v0, v1, Lokio/Segment;->data:[B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    iget v0, v1, Lokio/Segment;->limit:I

    sub-int/2addr v0, v6

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget v0, v1, Lokio/Segment;->limit:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    const/4 v0, 0x0

    goto :goto_1

    :array_0
    .array-data 1
        0xdt
        0x5et
        0x11t
        0x10t
        0x57t
        0x17t
        0x17t
        0x50t
        0x6t
        0x58t
        0x53t
        0x7t
        0x43t
        0x45t
        0xat
        0x10t
        0x57t
        0x43t
        0x1t
        0x44t
        0x3t
        0x56t
        0x53t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x3t
        0x41t
        0x51t
        0x42t
        0x51t
        0x7at
        0x13t
        0x54t
        0x5et
        0x5dt
        0x46t
        0x10t
        0x4ft
        0x12t
        0x57t
        0x56t
        0x58t
        0x41t
        0x46t
        0x42t
        0x5dt
        0x4at
        0x59t
        0x51t
        0x12t
        0x46t
        0x5dt
        0x5ct
        0x14t
        0x5et
        0x9t
        0x40t
        0x18t
        0x4at
        0x51t
        0x59t
        0x2t
        0x1dt
        0x4ft
        0x4at
        0x5dt
        0x4ct
        0x3t
        0x12t
        0x5at
        0x4dt
        0x52t
        0x5et
        0x3t
        0x40t
        0x4bt
    .end array-data

    :array_2
    .array-data 1
        0x5ct
        0x57t
        0x12t
        0x60t
        0x5ft
        0x4dt
        0x57t
        0x12t
        0x59t
        0x13t
        0x6t
        0xdt
        0x12t
    .end array-data
.end method

.method public final seek(J)I
    .locals 11

    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v0, -0x1

    cmp-long v1, p1, v8

    if-ltz v1, :cond_0

    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v1, Lokio/Buffer;->size:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "62907c"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v4, v3, Lokio/Buffer;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v1, p1, v8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v1, Lokio/Buffer;->size:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    :cond_2
    iput-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iput-object v4, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    :goto_0
    return v0

    :cond_3
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v6, v2, Lokio/Buffer;->size:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    if-eqz v4, :cond_9

    iget-wide v4, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v8, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget-object v9, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iget v9, v9, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v4, v8

    cmp-long v8, v4, p1

    if-lez v8, :cond_4

    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    :goto_1
    sub-long v6, v4, p1

    sub-long v8, p1, v0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    :goto_2
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    add-long/2addr v4, v0

    cmp-long v3, p1, v4

    if-ltz v3, :cond_6

    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    add-long/2addr v0, v4

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v0, v4

    move-wide v4, v6

    goto :goto_1

    :cond_5
    move-wide v0, v4

    move-object v2, v3

    :goto_3
    cmp-long v3, v0, p1

    if-lez v3, :cond_6

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    sub-long/2addr v0, v4

    goto :goto_3

    :cond_6
    iget-boolean v3, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v3, :cond_8

    iget-boolean v3, v2, Lokio/Segment;->shared:Z

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v3

    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v4, v2, :cond_7

    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-object v3, v4, Lokio/Buffer;->head:Lokio/Segment;

    :cond_7
    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v2

    iget-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    :cond_8
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v3, v2, Lokio/Segment;->data:[B

    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    iget v3, v2, Lokio/Segment;->pos:I

    sub-long v0, p1, v0

    long-to-int v0, v0

    add-int/2addr v0, v3

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget v0, v2, Lokio/Segment;->limit:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v0, v1

    goto/16 :goto_0

    :cond_9
    move-wide v4, v6

    goto :goto_1

    :array_0
    .array-data 1
        0x59t
        0x54t
        0x5ft
        0x43t
        0x52t
        0x17t
        0xbt
        0x17t
        0x4at
        0x10t
        0x9t
        0x43t
        0x45t
        0x5bt
        0x43t
        0x55t
        0xat
        0x46t
        0x45t
    .end array-data
.end method
