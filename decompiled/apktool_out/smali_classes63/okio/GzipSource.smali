.class public final Lokio/GzipSource;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lokio/InflaterSource;

.field private section:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lokio/GzipSource;->section:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c1c118"

    const-wide v4, -0x3e222b5bff800000L    # -2.001899522E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    new-instance v0, Lokio/InflaterSource;

    iget-object v1, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    iget-object v2, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x5et
        0x16t
        0x43t
        0x52t
        0x5dt
        0x43t
        0xct
        0x5et
        0x11t
        0x5ft
        0x4dt
        0xft
        0x5dt
    .end array-data
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eq p3, p2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bc8a5e"

    const-wide v4, 0x41c990be48800000L    # 8.57832593E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x47t
        0x10t
        0x2t
        0x41t
        0x54t
        0x6t
        0x16t
        0x16t
        0x59t
        0xdt
        0x15t
        0x55t
        0x1at
        0x46t
        0x8t
        0x59t
        0x4dt
        0x45t
        0x43t
        0x5et
        0x18t
        0x4t
        0x4dt
        0x15t
        0x7t
        0x0t
        0x4ct
        0x4t
        0x51t
        0x45t
        0x52t
        0x1bt
        0x1dt
        0x51t
        0xdt
        0x1dt
    .end array-data
.end method

.method private consumeHeader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0xa

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    if-eqz v6, :cond_0

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c3bda9"

    const-wide v2, 0x41ce37fd3f800000L    # 1.013971583E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f8b

    iget-object v2, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readShort()S

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    if-eqz v6, :cond_1

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_1
    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->readShortLe()S

    move-result v8

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    if-eqz v6, :cond_2

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_2
    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    :cond_3
    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOf(B)J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_0

    :cond_5
    if-eqz v6, :cond_6

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_6
    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    :cond_7
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOf(B)J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_8
    if-eqz v6, :cond_9

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_9
    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    :cond_a
    if-eqz v6, :cond_b

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "07fe18"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readShortLe()S

    move-result v1

    iget-object v2, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-direct {p0, v0, v1, v2}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    iget-object v0, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_b
    return-void

    nop

    :array_0
    .array-data 1
        0x2at
        0x77t
        0x53t
        0x2dt
        0x25t
        0xbt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x76t
        0x7ft
        0x25t
        0x37t
        0x72t
    .end array-data
.end method

.method private consumeTrailer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "df88eb"

    const v2, -0x31d0fa7b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "2f086a"

    const-wide/32 v2, -0x1cda1fce

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x34t
        0x7bt
    .end array-data

    :array_1
    .array-data 1
        0x7bt
        0x35t
        0x79t
        0x62t
        0x73t
    .end array-data
.end method

.method private updateCrc(Lokio/Buffer;JJ)V
    .locals 8

    const-wide/16 v2, 0x0

    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    cmp-long v1, p2, v4

    if-ltz v1, :cond_0

    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr p2, v4

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_0
    :goto_1
    cmp-long v1, p4, v2

    if-lez v1, :cond_1

    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v4, v1

    add-long/2addr v4, p2

    long-to-int v1, v4

    iget v4, v0, Lokio/Segment;->limit:I

    sub-int/2addr v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v6, v0, Lokio/Segment;->data:[B

    invoke-virtual {v5, v6, v1, v4}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v4, v4

    sub-long/2addr p4, v4

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v2

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v0}, Lokio/InflaterSource;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v8, 0x2

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    cmp-long v2, p2, v4

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "305d51"

    const v4, 0x4df79805    # 5.192419E8f

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

    :cond_0
    cmp-long v2, p2, v4

    if-nez v2, :cond_1

    :goto_0
    return-wide v4

    :cond_1
    iget v2, p0, Lokio/GzipSource;->section:I

    if-nez v2, :cond_2

    invoke-direct {p0}, Lokio/GzipSource;->consumeHeader()V

    iput v7, p0, Lokio/GzipSource;->section:I

    :cond_2
    iget v2, p0, Lokio/GzipSource;->section:I

    if-ne v2, v7, :cond_4

    iget-wide v2, p1, Lokio/Buffer;->size:J

    iget-object v4, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v4, p1, p2, p3}, Lokio/InflaterSource;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    goto :goto_0

    :cond_3
    iput v8, p0, Lokio/GzipSource;->section:I

    :cond_4
    iget v2, p0, Lokio/GzipSource;->section:I

    if-ne v2, v8, :cond_5

    invoke-direct {p0}, Lokio/GzipSource;->consumeTrailer()V

    const/4 v2, 0x3

    iput v2, p0, Lokio/GzipSource;->section:I

    iget-object v2, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e532cc"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-wide v4, v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x1t
        0x76t
        0x5et
        0x46t
        0x5et
        0x41t
        0x44t
        0x9t
        0x11t
        0x3t
        0xat
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x2t
        0x4ft
        0x5at
        0x42t
        0x43t
        0x5t
        0xct
        0x5bt
        0x5at
        0x41t
        0xbt
        0x6t
        0x1t
        0x15t
        0x44t
        0x5bt
        0x17t
        0xbt
        0xat
        0x40t
        0x47t
        0x12t
        0x6t
        0x1bt
        0xdt
        0x54t
        0x46t
        0x41t
        0x17t
        0xat
        0xbt
        0x52t
        0x13t
        0x41t
        0xct
        0x16t
        0x17t
        0x56t
        0x56t
    .end array-data
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokio/GzipSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
