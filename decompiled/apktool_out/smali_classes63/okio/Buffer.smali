.class public final Lokio/Buffer;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_0

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_0

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Mac;->update([BII)V

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    .locals 6

    iget v2, p1, Lokio/Segment;->limit:I

    iget-object v3, p1, Lokio/Segment;->data:[B

    move v0, p2

    move-object v1, p1

    :goto_0
    if-ge p4, p5, :cond_2

    if-ne v0, v2, :cond_0

    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v0, v1, Lokio/Segment;->pos:I

    iget v2, v1, Lokio/Segment;->limit:I

    :cond_0
    aget-byte v4, v3, v0

    invoke-virtual {p3, p4}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6008d4"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v1

    sub-long/2addr p2, v0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    invoke-virtual {p0, v6}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz p4, :cond_4

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5ft
        0x5et
        0x10t
        0x5t
        0x59t
        0x14t
        0x58t
        0x45t
        0x5ct
        0x54t
    .end array-data
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 0

    return-object p0
.end method

.method public final clear()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 6

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v0

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v1, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v0, Lokio/Segment;->next:Lokio/Segment;

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_1

    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lokio/Buffer;->size:J

    iput-wide v2, v1, Lokio/Buffer;->size:J

    goto :goto_0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 5

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v1, v4, :cond_1

    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lokio/Segment;->limit:I

    iget v0, v0, Lokio/Segment;->pos:I

    sub-int v0, v1, v0

    int-to-long v0, v0

    sub-long v0, v2, v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lokio/Buffer;->size:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d66dee"

    const v3, -0x3163934a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    cmp-long v0, p4, v6

    if-nez v0, :cond_2

    :cond_1
    return-object p0

    :cond_2
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_3
    :goto_1
    cmp-long v1, p4, v6

    if-lez v1, :cond_1

    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v2, v1

    add-long/2addr v2, p2

    long-to-int v1, v2

    iget v2, v0, Lokio/Segment;->limit:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, v0, Lokio/Segment;->data:[B

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    sub-long/2addr p4, v2

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v6

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0xbt
        0x43t
        0x42t
        0x44t
        0x58t
        0x58t
        0x44t
        0x58t
        0x43t
        0x8t
        0x9t
    .end array-data
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 8

    const-wide/16 v6, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e073cd"

    const v3, 0x4ec2375c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    cmp-long v0, p4, v6

    if-nez v0, :cond_2

    :cond_1
    return-object p0

    :cond_2
    iget-wide v0, p1, Lokio/Buffer;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_3
    :goto_1
    cmp-long v1, p4, v6

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v1

    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->pos:I

    iget v2, v1, Lokio/Segment;->pos:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lokio/Segment;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lokio/Segment;->limit:I

    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_4

    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_2
    iget v2, v1, Lokio/Segment;->limit:I

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v6

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v2, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    goto :goto_2

    :array_0
    .array-data 1
        0xat
        0x45t
        0x43t
        0x13t
        0x5et
        0x59t
        0x45t
        0x5et
        0x42t
        0x5ft
        0xft
    .end array-data
.end method

.method public emit()Lokio/BufferedSink;
    .locals 0

    return-object p0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v4, p1, Lokio/Buffer;

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lokio/Buffer;

    iget-wide v4, p0, Lokio/Buffer;->size:J

    iget-wide v6, p1, Lokio/Buffer;->size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lokio/Buffer;->size:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v7, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v5, v6, Lokio/Segment;->pos:I

    iget v4, v7, Lokio/Segment;->pos:I

    :goto_1
    iget-wide v8, p0, Lokio/Buffer;->size:J

    cmp-long v8, v2, v8

    if-gez v8, :cond_0

    iget v8, v6, Lokio/Segment;->limit:I

    sub-int/2addr v8, v5

    iget v9, v7, Lokio/Segment;->limit:I

    sub-int/2addr v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v1

    :goto_2
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_5

    iget-object v9, v6, Lokio/Segment;->data:[B

    aget-byte v9, v9, v5

    iget-object v12, v7, Lokio/Segment;->data:[B

    aget-byte v12, v12, v4

    if-eq v9, v12, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iget v8, v6, Lokio/Segment;->limit:I

    if-ne v5, v8, :cond_6

    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    iget v5, v6, Lokio/Segment;->pos:I

    :cond_6
    iget v8, v7, Lokio/Segment;->limit:I

    if-ne v4, v8, :cond_7

    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    iget v4, v7, Lokio/Segment;->pos:I

    :cond_7
    add-long/2addr v2, v10

    goto :goto_1
.end method

.method public exhausted()Z
    .locals 4

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 0

    return-object p0
.end method

.method public final getByte(J)B
    .locals 7

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    :goto_1
    return v0

    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v2, p1, v0

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    :goto_2
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    long-to-int v2, v2

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_2
.end method

.method public hashCode()I
    .locals 5

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget v2, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    :goto_1
    if-ge v2, v4, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lokio/Segment;->data:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7db1f5"

    const-wide v2, -0x3e8789ed80000000L    # -2.5649448E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x9t
        0x3t
        0x52t
        0x35t
        0x7dt
        0x76t
        0x55t
    .end array-data
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "bd685d"

    const-wide/32 v2, -0x7c9018c6

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x2at
        0x9t
        0x57t
        0x5bt
        0x66t
        0x2ct
        0x23t
        0x56t
        0x3t
        0xet
    .end array-data
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1d4b80"

    const v2, -0x31545fe4

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x79t
        0x9t
        0x55t
        0x1t
        0x6bt
        0x78t
        0x70t
        0x51t
        0x5t
        0x50t
    .end array-data
.end method

.method public indexOf(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b34072"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lokio/Buffer;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, p4, v0

    if-lez v0, :cond_2

    iget-wide p4, p0, Lokio/Buffer;->size:J

    :cond_2
    cmp-long v0, p2, p4

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_3
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_4

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p2

    cmp-long v1, v2, p2

    if-gez v1, :cond_5

    iget-wide v2, p0, Lokio/Buffer;->size:J

    :goto_1
    cmp-long v1, v2, p2

    if-lez v1, :cond_7

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x0

    :goto_2
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v4, v2

    cmp-long v1, v4, p2

    if-gez v1, :cond_7

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, v4

    goto :goto_2

    :cond_6
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long p2, v2, v4

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, p2

    :cond_7
    cmp-long v1, v2, p4

    if-gez v1, :cond_9

    iget-object v4, v0, Lokio/Segment;->data:[B

    iget v1, v0, Lokio/Segment;->limit:I

    int-to-long v6, v1

    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v8, v1

    add-long/2addr v8, p4

    sub-long/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v6, v1

    add-long/2addr v6, p2

    sub-long/2addr v6, v2

    long-to-int v1, v6

    :goto_3
    if-ge v1, v5, :cond_6

    aget-byte v6, v4, v1

    if-ne v6, p1, :cond_8

    iget v0, v0, Lokio/Segment;->pos:I

    sub-int v0, v1, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const-wide/16 v0, -0x1

    goto :goto_0

    :array_0
    .array-data 1
        0x11t
        0x5at
        0x4et
        0x55t
        0xat
        0x17t
        0x11t
        0x13t
        0x52t
        0x42t
        0x58t
        0x5ft
        0x2bt
        0x5dt
        0x50t
        0x55t
        0x4ft
        0xft
        0x47t
        0x40t
        0x14t
        0x44t
        0x58t
        0x7bt
        0xct
        0x57t
        0x51t
        0x48t
        0xat
        0x17t
        0x11t
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

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "b65652"

    const-wide v6, 0x41c76cec27800000L    # 7.86028623E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0xd

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "193c68"

    const-wide/32 v6, -0x4698fc5d

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_2

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    sub-long v2, v2, p2

    cmp-long v2, v2, p2

    if-gez v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    move-object v6, v4

    :goto_1
    cmp-long v4, v2, p2

    if-lez v4, :cond_4

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    iget v4, v6, Lokio/Segment;->limit:I

    iget v5, v6, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    move-object v6, v4

    :goto_2
    iget v4, v6, Lokio/Segment;->limit:I

    iget v5, v6, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v7, v4, p2

    if-gez v7, :cond_4

    iget-object v2, v6, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v2

    move-wide v2, v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lokio/Buffer;->size:J

    int-to-long v8, v7

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x1

    add-long v12, v4, v8

    move-wide v8, v2

    move-object v3, v6

    :goto_3
    cmp-long v2, v8, v12

    if-gez v2, :cond_7

    iget-object v14, v3, Lokio/Segment;->data:[B

    iget v2, v3, Lokio/Segment;->limit:I

    int-to-long v4, v2

    iget v2, v3, Lokio/Segment;->pos:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v15, v4

    iget v2, v3, Lokio/Segment;->pos:I

    int-to-long v4, v2

    add-long v4, v4, p2

    sub-long/2addr v4, v8

    long-to-int v2, v4

    move v10, v2

    :goto_4
    if-ge v10, v15, :cond_6

    aget-byte v2, v14, v10

    if-ne v2, v11, :cond_5

    add-int/lit8 v4, v10, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v3, Lokio/Segment;->pos:I

    sub-int v2, v10, v2

    int-to-long v2, v2

    add-long/2addr v2, v8

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_4

    :cond_6
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    add-long/2addr v4, v8

    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    move-wide v8, v4

    move-wide/from16 p2, v4

    goto :goto_3

    :cond_7
    const-wide/16 v2, -0x1

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x4ft
        0x41t
        0x53t
        0x46t
        0x12t
        0xbt
        0x45t
        0x15t
        0x53t
        0x58t
        0x42t
        0x16t
        0x4ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x57t
        0x4bt
        0x5ct
        0xet
        0x7ft
        0x56t
        0x55t
        0x5ct
        0x4bt
        0x43t
        0xat
        0x18t
        0x1t
    .end array-data
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b9c7a9"

    const-wide/32 v4, 0x7632e489

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    cmp-long v0, v0, p2

    if-gez v0, :cond_2

    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-object v4, v2

    :goto_1
    cmp-long v2, v0, p2

    if-lez v2, :cond_3

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    move-object v4, v2

    :goto_2
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gez v5, :cond_3

    iget-object v0, v4, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v0

    move-wide v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v3

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v5

    :goto_3
    iget-wide v6, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, v6

    if-gez v2, :cond_b

    iget-object v6, v4, Lokio/Segment;->data:[B

    iget v2, v4, Lokio/Segment;->pos:I

    int-to-long v8, v2

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int v2, v8

    iget v7, v4, Lokio/Segment;->limit:I

    :goto_4
    if-ge v2, v7, :cond_6

    aget-byte v8, v6, v2

    if-eq v8, v3, :cond_4

    if-ne v8, v5, :cond_5

    :cond_4
    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget v2, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v6

    int-to-long v6, v2

    add-long/2addr v0, v6

    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v5

    :goto_5
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    iget-object v6, v4, Lokio/Segment;->data:[B

    iget v2, v4, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iget v7, v4, Lokio/Segment;->limit:I

    move v3, v2

    :goto_6
    if-ge v3, v7, :cond_a

    aget-byte v8, v6, v3

    array-length v9, v5

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v9, :cond_9

    aget-byte v10, v5, v2

    if-ne v8, v10, :cond_8

    iget v2, v4, Lokio/Segment;->pos:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_a
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    goto :goto_5

    :cond_b
    const-wide/16 v0, -0x1

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x4t
        0x4bt
        0xct
        0x5at
        0x28t
        0x57t
        0x6t
        0x5ct
        0x1bt
        0x17t
        0x5dt
        0x19t
        0x52t
    .end array-data
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lokio/Buffer$2;

    invoke-direct {v0, p0}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "83b4b8"

    const/16 v2, 0x2851

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x77t
        0x57t
    .end array-data
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lokio/Buffer$1;

    invoke-direct {v0, p0}, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V

    return-object v0
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

    const/4 v5, 0x0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p5, :cond_2

    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lokio/Segment;->pos:I

    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    iget v2, v1, Lokio/Segment;->pos:I

    iget v3, v1, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, v1, Lokio/Segment;->limit:I

    iget v2, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lokio/Segment;->pos:I

    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    iget v2, v1, Lokio/Segment;->pos:I

    iget v3, v1, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "928c26"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "38e0c0"

    const-wide v4, -0x3e3d81db45000000L    # -6.20513654E8

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

    :cond_1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_2
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide v0, p0, Lokio/Buffer;->size:J

    :goto_1
    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_0

    :cond_3
    move-wide v0, p2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x4at
        0x5bt
        0x56t
        0x8t
        0x12t
        0xbt
        0x4t
        0x12t
        0x56t
        0x16t
        0x5et
        0x5at
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0x41t
        0x11t
        0x55t
        0x20t
        0x5ft
        0x46t
        0x56t
        0x11t
        0x10t
        0x5ft
        0x10t
        0x3t
        0x2t
        0x45t
    .end array-data
.end method

.method public readAll(Lokio/Sink;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_0
    return-wide v0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 1

    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 4

    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "24f72d"

    const v3, 0x4e647439    # 9.582055E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    return-object p1

    :array_0
    .array-data 1
        0x53t
        0x58t
        0x14t
        0x52t
        0x53t
        0x0t
        0x4bt
        0x14t
        0x7t
        0x43t
        0x46t
        0x5t
        0x51t
        0x5ct
        0x3t
        0x53t
        0x12t
        0x10t
        0x5dt
        0x14t
        0x7t
        0x17t
        0x50t
        0x11t
        0x54t
        0x52t
        0x3t
        0x45t
    .end array-data
.end method

.method public readByte()B
    .locals 10

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "695645"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->pos:I

    iget v2, v0, Lokio/Segment;->limit:I

    iget-object v3, v0, Lokio/Segment;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v6, p0, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    if-ne v4, v2, :cond_1

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :goto_0
    return v1

    :cond_1
    iput v4, v0, Lokio/Segment;->pos:I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x45t
        0x50t
        0x4ft
        0x53t
        0x14t
        0x8t
        0xbt
        0x19t
        0x5t
    .end array-data
.end method

.method public readByteArray()[B
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d05667"

    const-wide/32 v4, -0x7ae34e15

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

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
    long-to-int v0, p1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lokio/Buffer;->readFully([B)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x6t
        0x49t
        0x41t
        0x53t
        0x75t
        0x58t
        0x11t
        0x5et
        0x41t
        0x16t
        0x8t
        0x17t
        0x2dt
        0x5et
        0x41t
        0x53t
        0x51t
        0x52t
        0x16t
        0x1et
        0x78t
        0x77t
        0x6et
        0x68t
        0x32t
        0x71t
        0x79t
        0x63t
        0x73t
        0xdt
        0x44t
    .end array-data
.end method

.method public readByteString()Lokio/ByteString;
    .locals 2

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "ce956a"

    const-wide v6, 0x41884a9ca0000000L    # 5.0942868E7

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, -0x7

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v11, v10, Lokio/Segment;->data:[B

    iget v7, v10, Lokio/Segment;->pos:I

    iget v12, v10, Lokio/Segment;->limit:I

    :goto_0
    if-ge v7, v12, :cond_8

    aget-byte v13, v11, v7

    const/16 v14, 0x30

    if-lt v13, v14, :cond_5

    const/16 v14, 0x39

    if-gt v13, v14, :cond_5

    rsub-int/lit8 v14, v13, 0x30

    const-wide v16, -0xcccccccccccccccL

    cmp-long v15, v8, v16

    if-ltz v15, :cond_2

    const-wide v16, -0xcccccccccccccccL

    cmp-long v15, v8, v16

    if-nez v15, :cond_4

    int-to-long v0, v14

    move-wide/from16 v16, v0

    cmp-long v15, v16, v2

    if-gez v15, :cond_4

    :cond_2
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, v8, v9}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    :cond_3
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x12

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "469a87"

    const-wide v8, -0x3e2e6e76d2800000L    # -1.179002038E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-wide/16 v16, 0xa

    mul-long v8, v8, v16

    int-to-long v14, v14

    add-long/2addr v8, v14

    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    const/16 v14, 0x2d

    if-ne v13, v14, :cond_6

    if-nez v6, :cond_6

    const/4 v5, 0x1

    const-wide/16 v14, 0x1

    sub-long/2addr v2, v14

    goto :goto_1

    :cond_6
    if-nez v6, :cond_7

    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x32

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "f6f975"

    const v6, 0x4ebaec62    # 1.5680269E9f

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v4, 0x1

    :cond_8
    if-ne v7, v12, :cond_a

    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :goto_2
    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v7, :cond_1

    :cond_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    int-to-long v6, v6

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lokio/Buffer;->size:J

    if-eqz v5, :cond_b

    :goto_3
    return-wide v8

    :cond_a
    iput v7, v10, Lokio/Segment;->pos:I

    goto :goto_2

    :cond_b
    neg-long v8, v8

    goto :goto_3

    :array_0
    .array-data 1
        0x10t
        0xct
        0x43t
        0x50t
        0x16t
        0x5ct
        0x5et
        0x45t
        0x9t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7at
        0x43t
        0x54t
        0x3t
        0x5dt
        0x45t
        0x14t
        0x42t
        0x56t
        0xet
        0x18t
        0x5bt
        0x55t
        0x44t
        0x5et
        0x4t
        0x2t
        0x17t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x23t
        0x4et
        0x16t
        0x5ct
        0x54t
        0x41t
        0x3t
        0x52t
        0x46t
        0x55t
        0x52t
        0x54t
        0x2t
        0x5ft
        0x8t
        0x5et
        0x17t
        0x6et
        0x56t
        0x1bt
        0x5ft
        0x64t
        0x17t
        0x5at
        0x14t
        0x16t
        0x41t
        0x14t
        0x10t
        0x15t
        0x5t
        0x5et
        0x7t
        0x4bt
        0x56t
        0x56t
        0x12t
        0x53t
        0x14t
        0x19t
        0x55t
        0x40t
        0x12t
        0x16t
        0x11t
        0x58t
        0x44t
        0x15t
        0x56t
        0x4et
    .end array-data
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "afa9e1"

    const-wide v4, 0x41cc46a7f6800000L    # 9.48785133E8

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
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0

    :array_0
    .array-data 1
        0x3t
        0x1ft
        0x15t
        0x5ct
        0x26t
        0x5et
        0x14t
        0x8t
        0x15t
        0x19t
        0x59t
        0x11t
        0x51t
        0x5ct
        0x41t
    .end array-data
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-void
.end method

.method public readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 14

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ede59e"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_1
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v7, v6, Lokio/Segment;->data:[B

    iget v4, v6, Lokio/Segment;->pos:I

    iget v8, v6, Lokio/Segment;->limit:I

    move v5, v4

    :goto_0
    if-ge v5, v8, :cond_6

    aget-byte v9, v7, v5

    const/16 v4, 0x30

    if-lt v9, v4, :cond_2

    const/16 v4, 0x39

    if-gt v9, v4, :cond_2

    add-int/lit8 v4, v9, -0x30

    :goto_1
    const-wide/high16 v10, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v10, v2

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "af7766"

    const/16 v5, -0x412a

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v4, 0x61

    if-lt v9, v4, :cond_3

    const/16 v4, 0x66

    if-gt v9, v4, :cond_3

    add-int/lit8 v4, v9, -0x61

    add-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_3
    const/16 v4, 0x41

    if-lt v9, v4, :cond_4

    const/16 v4, 0x46

    if-gt v9, v4, :cond_4

    add-int/lit8 v4, v9, -0x41

    add-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "222cd0"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-ne v5, v8, :cond_9

    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :goto_2
    if-nez v0, :cond_7

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_1

    :cond_7
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v0, v1

    sub-long v0, v4, v0

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v2

    :cond_8
    const/4 v9, 0x4

    shl-long/2addr v2, v9

    int-to-long v10, v4

    or-long/2addr v2, v10

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    goto/16 :goto_0

    :cond_9
    iput v5, v6, Lokio/Segment;->pos:I

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x16t
        0xdt
        0x1ft
        0x50t
        0x19t
        0x58t
        0x58t
        0x44t
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2ft
        0x13t
        0x5at
        0x55t
        0x53t
        0x44t
        0x41t
        0x12t
        0x58t
        0x58t
        0x16t
        0x5at
        0x0t
        0x14t
        0x50t
        0x52t
        0xct
        0x16t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x77t
        0x4at
        0x42t
        0x6t
        0x7t
        0x44t
        0x57t
        0x56t
        0x12t
        0xft
        0x1t
        0x51t
        0x56t
        0x5bt
        0x5ct
        0x4t
        0x44t
        0x6bt
        0x2t
        0x1ft
        0xbt
        0x2t
        0x49t
        0x56t
        0x73t
        0x1ft
        0x74t
        0x3et
        0x44t
        0x53t
        0x5at
        0x53t
        0x40t
        0x2t
        0x7t
        0x44t
        0x57t
        0x40t
        0x12t
        0x1t
        0x11t
        0x44t
        0x12t
        0x45t
        0x53t
        0x10t
        0x44t
        0x0t
        0x4at
    .end array-data
.end method

.method public readInt()I
    .locals 10

    const-wide/16 v8, 0x4

    const/4 v4, 0x1

    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "e52e2b"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v1, Lokio/Segment;->pos:I

    iget v2, v1, Lokio/Segment;->limit:I

    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v3, v1, Lokio/Segment;->data:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v3, v5

    add-int/lit8 v7, v6, 0x1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    and-int/lit16 v4, v5, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iget-wide v4, p0, Lokio/Buffer;->size:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lokio/Buffer;->size:J

    if-ne v7, v2, :cond_2

    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    :cond_2
    iput v7, v1, Lokio/Segment;->pos:I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x16t
        0x5ct
        0x48t
        0x0t
        0x12t
        0x5et
        0x45t
        0x1t
        0x8t
        0x45t
    .end array-data
.end method

.method public readIntLe()I
    .locals 1

    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 24

    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "a386d3"

    const-wide v6, 0x41d52c96a1400000L    # 1.420974725E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lokio/Buffer;->size:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v4, Lokio/Segment;->pos:I

    iget v5, v4, Lokio/Segment;->limit:I

    sub-int v3, v5, v2

    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readInt()I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_1
    iget-object v3, v4, Lokio/Segment;->data:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v3, v2

    int-to-long v8, v2

    add-int/lit8 v2, v6, 0x1

    aget-byte v6, v3, v6

    int-to-long v6, v6

    add-int/lit8 v10, v2, 0x1

    aget-byte v2, v3, v2

    int-to-long v12, v2

    add-int/lit8 v2, v10, 0x1

    aget-byte v10, v3, v10

    int-to-long v10, v10

    add-int/lit8 v14, v2, 0x1

    aget-byte v2, v3, v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-int/lit8 v2, v14, 0x1

    aget-byte v14, v3, v14

    int-to-long v14, v14

    add-int/lit8 v18, v2, 0x1

    aget-byte v2, v3, v2

    int-to-long v0, v2

    move-wide/from16 v20, v0

    add-int/lit8 v19, v18, 0x1

    const-wide/16 v22, 0xff

    and-long v8, v8, v22

    const/16 v2, 0x38

    shl-long/2addr v8, v2

    const-wide/16 v22, 0xff

    and-long v6, v6, v22

    const/16 v2, 0x30

    shl-long/2addr v6, v2

    or-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v8, v12

    const/16 v2, 0x28

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v8, v10

    const/16 v2, 0x20

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long v8, v8, v16

    const/16 v2, 0x18

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v8, v14

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long v8, v8, v20

    const/16 v2, 0x8

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    aget-byte v2, v3, v18

    int-to-long v2, v2

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    or-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lokio/Buffer;->size:J

    move/from16 v0, v19

    if-ne v0, v5, :cond_2

    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto/16 :goto_0

    :cond_2
    move/from16 v0, v19

    iput v0, v4, Lokio/Segment;->pos:I

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x12t
        0x5at
        0x42t
        0x53t
        0x44t
        0xft
        0x41t
        0xbt
        0x2t
        0x16t
    .end array-data
.end method

.method public readLongLe()J
    .locals 2

    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 10

    const-wide/16 v8, 0x2

    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "21d1ec"

    const/16 v4, -0xc1b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->pos:I

    iget v2, v0, Lokio/Segment;->limit:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v3, v0, Lokio/Segment;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    iget-wide v6, p0, Lokio/Buffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    if-ne v5, v2, :cond_2

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :goto_1
    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v3, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0

    :cond_2
    iput v5, v0, Lokio/Segment;->pos:I

    goto :goto_1

    :array_0
    .array-data 1
        0x41t
        0x58t
        0x1et
        0x54t
        0x45t
        0x5ft
        0x12t
        0x3t
        0x5et
        0x11t
    .end array-data
.end method

.method public readShortLe()S
    .locals 1

    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5d6f40"

    const-wide/32 v4, -0x54f18415

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "044bf1"

    const/4 v4, 0x0

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

    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v1, Lokio/Segment;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lokio/Segment;->limit:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->pos:I

    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->size:J

    iget v2, v1, Lokio/Segment;->pos:I

    iget v3, v1, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x56t
        0xct
        0x57t
        0x14t
        0x47t
        0x55t
        0x41t
        0x44t
        0xbt
        0x5bt
        0x14t
        0x5et
        0x40t
        0x8t
        0x5at
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0x4dt
        0x40t
        0x7t
        0x25t
        0x5et
        0x45t
        0x5at
        0x40t
        0x42t
        0x58t
        0x11t
        0x79t
        0x5at
        0x40t
        0x7t
        0x1t
        0x54t
        0x42t
        0x1at
        0x79t
        0x23t
        0x3et
        0x6et
        0x66t
        0x75t
        0x78t
        0x37t
        0x23t
        0xbt
        0x10t
    .end array-data
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 1

    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 4

    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "111e46"

    const/16 v3, 0xfc5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    return-object p1

    nop

    :array_0
    .array-data 1
        0x50t
        0x5dt
        0x43t
        0x0t
        0x55t
        0x52t
        0x48t
        0x11t
        0x50t
        0x11t
        0x40t
        0x57t
        0x52t
        0x59t
        0x54t
        0x1t
        0x14t
        0x42t
        0x5et
        0x11t
        0x50t
        0x45t
        0x56t
        0x43t
        0x57t
        0x57t
        0x54t
        0x17t
    .end array-data
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v2, 0x80

    const/4 v5, 0x2

    const/4 v1, 0x0

    const v7, 0xfffd

    const/4 v4, 0x1

    iget-wide v8, p0, Lokio/Buffer;->size:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v8

    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_1

    and-int/lit8 v0, v8, 0x7f

    move v3, v4

    move v6, v0

    move v0, v1

    :goto_0
    iget-wide v10, p0, Lokio/Buffer;->size:J

    int-to-long v12, v3

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x7

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "fd8016"

    invoke-static {v6, v7, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    const-string v5, "7ab896"

    invoke-static {v3, v5, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lokio/Buffer;->size:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v5, "02ebc7"

    invoke-static {v3, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v4, [B

    const/16 v5, 0x10

    aput-byte v5, v3, v1

    const-string v1, "9df6bf"

    invoke-static {v3, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit16 v0, v8, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_2

    and-int/lit8 v0, v8, 0x1f

    move v3, v5

    move v6, v0

    move v0, v2

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v8, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_3

    and-int/lit8 v6, v8, 0xf

    const/4 v3, 0x3

    const/16 v0, 0x800

    goto :goto_0

    :cond_3
    and-int/lit16 v0, v8, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_4

    and-int/lit8 v6, v8, 0x7

    const/4 v3, 0x4

    const/high16 v0, 0x10000

    goto/16 :goto_0

    :cond_4
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    move v0, v7

    :goto_1
    return v0

    :cond_5
    move v1, v6

    :goto_2
    if-ge v4, v3, :cond_7

    int-to-long v8, v4

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v5

    and-int/lit16 v6, v5, 0xc0

    if-ne v6, v2, :cond_6

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    int-to-long v0, v4

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    move v0, v7

    goto :goto_1

    :cond_7
    int-to-long v2, v3

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    const v2, 0x10ffff

    if-le v1, v2, :cond_8

    move v0, v7

    goto :goto_1

    :cond_8
    const v2, 0xd800

    if-lt v1, v2, :cond_9

    const v2, 0xdfff

    if-gt v1, v2, :cond_9

    move v0, v7

    goto :goto_1

    :cond_9
    if-ge v1, v0, :cond_a

    move v0, v7

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_1

    :array_0
    .array-data 1
        0x15t
        0xdt
        0x42t
        0x55t
        0x11t
        0xat
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x10t
        0x1at
        0x11t
        0xdt
        0x43t
        0x45t
        0x55t
        0x53t
        0x1t
        0x42t
        0x0t
        0x58t
        0x54t
        0x57t
        0x45t
        0x12t
        0xct
        0x5et
        0x5et
        0x46t
        0x45t
        0x12t
        0x11t
        0x52t
        0x56t
        0x5bt
        0x1dt
        0x7t
        0x7t
        0x17t
        0x0t
        0x4at
    .end array-data
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    goto :goto_0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v10, 0x1

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c84893"

    const-wide v4, -0x3e9c1105c0000000L    # -1.0450898E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

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
    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    :goto_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-long v4, p1, v10

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    sub-long v6, v4, v10

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v6, 0xd

    if-ne v0, v6, :cond_3

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const-wide/16 v4, 0x20

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x14

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "953687"

    const v5, -0x31a4852a    # -9.205651E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "4de46e"

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

    :array_0
    .array-data 1
        0xft
        0x51t
        0x59t
        0x51t
        0x4dt
        0x13t
        0x5ft
        0x18t
        0x4t
        0x2t
        0x19t
    .end array-data

    :array_1
    .array-data 1
        0x65t
        0x5bt
        0x13t
        0x58t
        0x57t
        0x43t
        0x19t
        0x53t
        0x5ct
        0x43t
        0x56t
        0x53t
        0x3t
        0x15t
        0x5ft
        0x5ft
        0x55t
        0x5et
        0x4dt
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x14t
        0x7t
        0xat
        0x5at
        0x42t
        0x0t
        0x5at
        0x10t
        0x58t
    .end array-data
.end method

.method public request(J)Z
    .locals 3

    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public require(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public select(Lokio/Options;)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v2, v0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method selectPrefix(Lokio/Options;Z)I
    .locals 14

    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, -0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {p1, v0}, Lokio/Options;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, v6, Lokio/Segment;->data:[B

    iget v4, v6, Lokio/Segment;->pos:I

    iget v2, v6, Lokio/Segment;->limit:I

    iget-object v10, p1, Lokio/Options;->trie:[I

    const/4 v1, 0x0

    const/4 v0, -0x1

    move-object v5, v6

    :goto_1
    add-int/lit8 v8, v1, 0x1

    aget v11, v10, v1

    add-int/lit8 v7, v8, 0x1

    aget v1, v10, v8

    const/4 v8, -0x1

    if-eq v1, v8, :cond_3

    move v0, v1

    :cond_3
    if-nez v5, :cond_5

    :cond_4
    if-eqz p2, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_5
    if-gez v11, :cond_a

    move v1, v7

    move v13, v2

    move v2, v4

    move-object v4, v3

    move v3, v13

    :goto_2
    add-int/lit8 v8, v2, 0x1

    aget-byte v9, v4, v2

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v9, v9, 0xff

    aget v1, v10, v1

    if-ne v9, v1, :cond_0

    mul-int/lit8 v1, v11, -0x1

    add-int/2addr v1, v7

    if-ne v2, v1, :cond_8

    const/4 v1, 0x1

    move v9, v1

    :goto_3
    if-ne v8, v3, :cond_e

    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    iget v4, v5, Lokio/Segment;->pos:I

    iget-object v3, v5, Lokio/Segment;->data:[B

    iget v1, v5, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_6

    if-eqz v9, :cond_4

    const/4 v5, 0x0

    :cond_6
    :goto_4
    if-eqz v9, :cond_9

    aget v2, v10, v2

    move v13, v2

    move v2, v1

    move v1, v13

    :cond_7
    :goto_5
    if-ltz v1, :cond_c

    move v0, v1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    move v9, v1

    goto :goto_3

    :cond_9
    move v13, v2

    move v2, v4

    move-object v4, v3

    move v3, v1

    move v1, v13

    goto :goto_2

    :cond_a
    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v3, v4

    move v1, v7

    :goto_6
    add-int v9, v7, v11

    if-eq v1, v9, :cond_0

    and-int/lit16 v9, v4, 0xff

    aget v12, v10, v1

    if-ne v9, v12, :cond_b

    add-int/2addr v1, v11

    aget v1, v10, v1

    if-ne v8, v2, :cond_d

    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    iget v4, v5, Lokio/Segment;->pos:I

    iget-object v3, v5, Lokio/Segment;->data:[B

    iget v2, v5, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    neg-int v1, v1

    goto :goto_1

    :cond_d
    move v4, v8

    goto :goto_5

    :cond_e
    move v1, v3

    move-object v3, v4

    move v4, v8

    goto :goto_4
.end method

.method public final sha1()Lokio/ByteString;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3d3c26"

    const-wide v2, 0x41ba725f72000000L    # 4.43703154E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x60t
        0x2ct
        0x72t
        0x4et
        0x3t
    .end array-data
.end method

.method public final sha256()Lokio/ByteString;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3ee89d"

    const v2, 0x4e01f984    # 5.451533E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x60t
        0x2dt
        0x24t
        0x15t
        0xbt
        0x51t
        0x5t
    .end array-data
.end method

.method public final sha512()Lokio/ByteString;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0633d0"

    const/16 v2, 0x7a2d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x63t
        0x7et
        0x72t
        0x1et
        0x51t
        0x1t
        0x2t
    .end array-data
.end method

.method public final size()J
    .locals 2

    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v2, v0

    sub-long/2addr p1, v2

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v0, v2

    iput v0, v1, Lokio/Segment;->pos:I

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->pos:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 6

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0b528e"

    const-wide/32 v4, -0x73507024

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x43t
        0xbt
        0x4ft
        0x57t
        0x18t
        0x5bt
        0x10t
        0x2bt
        0x5bt
        0x46t
        0x5dt
        0x2t
        0x55t
        0x10t
        0x1bt
        0x7ft
        0x79t
        0x3dt
        0x6ft
        0x34t
        0x74t
        0x7et
        0x6dt
        0x20t
        0xat
        0x42t
    .end array-data
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    goto :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lokio/Segment;
    .locals 3

    const/16 v2, 0x2000

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_3

    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v0, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v1, Lokio/Segment;->next:Lokio/Segment;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->limit:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_4

    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-nez v1, :cond_2

    :cond_4
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1f9826"

    const-wide/32 v4, -0x736b5477

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v3

    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v3, v4

    iput v3, v2, Lokio/Segment;->limit:I

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    return v1

    nop

    :array_0
    .array-data 1
        0x42t
        0x9t
        0x4ct
        0x4at
        0x51t
        0x53t
        0x11t
        0x5bt
        0x4t
        0x18t
        0x5ct
        0x43t
        0x5dt
        0xat
    .end array-data
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d67bf3"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p0}, Lokio/ByteString;->write(Lokio/Buffer;)V

    return-object p0

    :array_0
    .array-data 1
        0x6t
        0x4ft
        0x43t
        0x7t
        0x35t
        0x47t
        0x16t
        0x5ft
        0x59t
        0x5t
        0x46t
        0xet
        0x59t
        0x16t
        0x59t
        0x17t
        0xat
        0x5ft
    .end array-data
.end method

.method public write([B)Lokio/Buffer;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "18e825"

    const-wide/32 v4, 0x6e693a11

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x42t
        0x57t
        0x10t
        0x4at
        0x51t
        0x50t
        0x11t
        0x5t
        0x58t
        0x18t
        0x5ct
        0x40t
        0x5dt
        0x54t
    .end array-data
.end method

.method public write([BII)Lokio/Buffer;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "20f55b"

    const/16 v3, 0x1b72

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    sub-int v2, v0, p2

    iget v3, v1, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iget v3, v1, Lokio/Segment;->limit:I

    add-int/2addr v2, v3

    iput v2, v1, Lokio/Segment;->limit:I

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0

    :array_0
    .array-data 1
        0x41t
        0x5ft
        0x13t
        0x47t
        0x56t
        0x7t
        0x12t
        0xdt
        0x5bt
        0x15t
        0x5bt
        0x17t
        0x5et
        0x5ct
    .end array-data
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    sub-long/2addr p2, v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 8

    const-wide/16 v2, 0x0

    const/16 v1, 0xe

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "26fa45"

    const-wide/32 v4, 0x4f6f82bb

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c1a5cc"

    const v3, 0x4ead0aeb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p1, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_6

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, v1, Lokio/Segment;->owner:Z

    if-eqz v0, :cond_5

    iget v0, v1, Lokio/Segment;->limit:I

    int-to-long v4, v0

    iget-boolean v0, v1, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    add-long/2addr v4, p2

    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget v0, v1, Lokio/Segment;->pos:I

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    :cond_6
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_7

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v6, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v6, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_3
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v4

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Segment;->compact()V

    goto :goto_3

    :array_0
    .array-data 1
        0x41t
        0x59t
        0x13t
        0x13t
        0x57t
        0x50t
        0x12t
        0xbt
        0x5bt
        0x41t
        0x5at
        0x40t
        0x5et
        0x5at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x10t
        0x5et
        0x14t
        0x47t
        0x0t
        0x6t
        0x43t
        0xct
        0x5ct
        0x15t
        0x17t
        0xbt
        0xat
        0x42t
    .end array-data
.end method

.method public writeAll(Lokio/Source;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c996a2"

    const v3, -0x31d14f1e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0

    nop

    :array_0
    .array-data 1
        0x10t
        0x56t
        0x4ct
        0x44t
        0x2t
        0x57t
        0x43t
        0x4t
        0x4t
        0x16t
        0xft
        0x47t
        0xft
        0x55t
    .end array-data
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte v0, p1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_17

    neg-long v2, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a919ef"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move v4, v0

    :goto_1
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_a

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v5

    iget-object v6, v5, Lokio/Segment;->data:[B

    iget v1, v5, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_15

    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lokio/Buffer;->DIGITS:[B

    aget-byte v7, v8, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_3

    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7

    const/4 v0, 0x5

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    goto :goto_2

    :cond_8
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_9

    const/4 v0, 0x7

    goto :goto_2

    :cond_9
    const/16 v0, 0x8

    goto :goto_2

    :cond_a
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_b

    const/16 v0, 0x9

    goto :goto_2

    :cond_b
    const/16 v0, 0xa

    goto :goto_2

    :cond_c
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d

    const/16 v0, 0xb

    goto :goto_2

    :cond_d
    const/16 v0, 0xc

    goto :goto_2

    :cond_e
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_11

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_2

    :cond_f
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    const/16 v0, 0xe

    goto/16 :goto_2

    :cond_10
    const/16 v0, 0xf

    goto/16 :goto_2

    :cond_11
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_13

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_12

    const/16 v0, 0x10

    goto/16 :goto_2

    :cond_12
    const/16 v0, 0x11

    goto/16 :goto_2

    :cond_13
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_14

    const/16 v0, 0x12

    goto/16 :goto_2

    :cond_14
    const/16 v0, 0x13

    goto/16 :goto_2

    :cond_15
    if-eqz v4, :cond_16

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    :cond_16
    iget v1, v5, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, v5, Lokio/Segment;->limit:I

    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    goto/16 :goto_0

    :cond_17
    move-wide v2, p1

    move v4, v0

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x4ct
        0x0t
        0x3t
        0xbt
        0x56t
        0x55t
        0x56t
        0xbt
        0x1t
        0xat
        0x53t
        0x5et
        0x54t
        0xdt
        0x6t
        0xet
        0x50t
        0x5et
        0x51t
        0x1t
    .end array-data
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    iget-object v3, v2, Lokio/Segment;->data:[B

    iget v0, v2, Lokio/Segment;->limit:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lokio/Segment;->limit:I

    :goto_1
    if-lt v0, v4, :cond_1

    sget-object v5, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget v0, v2, Lokio/Segment;->limit:I

    add-int/2addr v0, v1

    iput v0, v2, Lokio/Segment;->limit:I

    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    goto :goto_0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lokio/Segment;->limit:I

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 1

    invoke-static {p1}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 9

    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    invoke-virtual {p0, v8}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    and-long v4, p1, v6

    long-to-int v2, v4

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lokio/Segment;->limit:I

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 3

    invoke-static {p1, p2}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lokio/Segment;->limit:I

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 1

    int-to-short v0, p1

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e5c7b5"

    const-wide/32 v4, 0x409c8a1e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "51138c"

    const v4, -0x317f1e09

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ge p3, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "0b6afd"

    const/16 v4, 0x4c87

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_3

    const-string v3, "32e887"

    const/4 v4, 0x1

    invoke-static {v2, v3, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "b26f2c"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_5

    const-string v3, "eecdc8"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "077cf8"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_5
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v0, v5, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x16t
        0x41t
        0x11t
        0x5et
        0xct
        0x52t
        0x45t
        0x8t
        0x5et
        0x17t
        0xct
        0x40t
        0x9t
        0x59t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x57t
        0x54t
        0x56t
        0x5at
        0x56t
        0x2at
        0x5bt
        0x55t
        0x54t
        0x4bt
        0x18t
        0x5ft
        0x15t
        0x1t
        0xbt
        0x13t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0xct
        0x52t
        0x28t
        0x8t
        0x0t
        0x55t
        0x1at
        0x16t
        0x5dt
        0x46t
        0x6t
        0x55t
        0x5t
        0x5ft
        0xft
        0x2ft
        0xat
        0x54t
        0x7t
        0x4et
        0x5bt
        0x46t
    .end array-data

    :array_3
    .array-data 1
        0x13t
        0xet
        0x45t
    .end array-data

    :array_4
    .array-data 1
        0x7t
        0x5ct
        0x52t
        0x2ft
        0x5ct
        0x7t
        0x7t
        0x4at
        0x16t
        0x58t
        0x12t
        0x10t
        0x16t
        0x40t
        0x5ft
        0x8t
        0x55t
        0x4dt
        0xet
        0x57t
        0x58t
        0x1t
        0x46t
        0xbt
        0x58t
        0x12t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x45t
        0x5bt
        0x43t
    .end array-data

    :array_6
    .array-data 1
        0x53t
        0x5ft
        0x56t
        0x11t
        0x15t
        0x5dt
        0x44t
        0x17t
        0xat
        0x5et
        0x46t
        0x56t
        0x45t
        0x5bt
        0x5bt
    .end array-data
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d1eefd"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    :cond_1
    :goto_0
    cmp-long v1, p2, v2

    if-lez v1, :cond_2

    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, v0, Lokio/Segment;->data:[B

    iget v5, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v4, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v4, v0, Lokio/Segment;->pos:I

    add-int/2addr v4, v1

    iput v4, v0, Lokio/Segment;->pos:I

    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr p2, v4

    iget v1, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object p0

    nop

    :array_0
    .array-data 1
        0xbt
        0x44t
        0x11t
        0x45t
        0x5bt
        0x59t
        0x44t
        0x5ft
        0x10t
        0x9t
        0xat
    .end array-data
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 11

    const v10, 0xdfff

    const/16 v9, 0x80

    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d4f8b4"

    const-wide v4, -0x3e2a0c4f93c00000L    # -1.473167793E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c8f791"

    const-wide/32 v4, -0x7d8e8e94

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ge p3, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x17

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "733392"

    invoke-static {v3, v4, v1, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [B

    fill-array-data v2, :array_3

    const-string v3, "fff05b"

    const-wide v4, -0x3e32bb5aae800000L    # -9.82076067E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "221aaf"

    const v4, -0x3131a662

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [B

    fill-array-data v2, :array_5

    const-string v3, "8b61ba"

    const/16 v4, 0x403b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    if-ge p2, p3, :cond_d

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v2, v9, :cond_6

    invoke-virtual {p0, v8}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v0, v3, Lokio/Segment;->limit:I

    sub-int v5, v0, p2

    rsub-int v0, v5, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v0, v5, p2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    add-int/lit8 v0, p2, 0x1

    :goto_1
    if-ge v0, v6, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v9, :cond_5

    :cond_4
    add-int v2, v0, v5

    iget v4, v3, Lokio/Segment;->limit:I

    sub-int/2addr v2, v4

    iget v4, v3, Lokio/Segment;->limit:I

    add-int/2addr v4, v2

    iput v4, v3, Lokio/Segment;->limit:I

    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    :goto_2
    move p2, v0

    goto :goto_0

    :cond_5
    add-int v7, v5, v0

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/16 v0, 0x800

    if-ge v2, v0, :cond_7

    shr-int/lit8 v0, v2, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v0, v2, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 v0, p2, 0x1

    goto :goto_2

    :cond_7
    const v0, 0xd800

    if-lt v2, v0, :cond_8

    if-le v2, v10, :cond_9

    :cond_8
    shr-int/lit8 v0, v2, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v0, v2, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 v0, p2, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_b

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    const v3, 0xdbff

    if-gt v2, v3, :cond_a

    const v3, 0xdc00

    if-lt v0, v3, :cond_a

    if-le v0, v10, :cond_c

    :cond_a
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_3

    :cond_c
    const/high16 v3, 0x10000

    const v4, -0xd801

    and-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0xa

    const v4, -0xdc01

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    add-int/2addr v0, v3

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 v0, p2, 0x2

    goto/16 :goto_2

    :cond_d
    return-object p0

    :array_0
    .array-data 1
        0x17t
        0x40t
        0x14t
        0x51t
        0xct
        0x53t
        0x44t
        0x9t
        0x5bt
        0x18t
        0xct
        0x41t
        0x8t
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x5dt
        0x1t
        0x5et
        0x57t
        0x78t
        0xdt
        0x5ct
        0x3t
        0x4ft
        0x19t
        0xdt
        0x43t
        0x8t
        0x5ct
        0x17t
    .end array-data

    :array_2
    .array-data 1
        0x52t
        0x5dt
        0x57t
        0x7at
        0x57t
        0x56t
        0x52t
        0x4bt
        0x13t
        0xft
        0x19t
        0x50t
        0x52t
        0x54t
        0x5at
        0x5dt
        0x70t
        0x5ct
        0x53t
        0x56t
        0x4bt
        0x9t
        0x19t
    .end array-data

    :array_3
    .array-data 1
        0x46t
        0x5at
        0x46t
    .end array-data

    :array_4
    .array-data 1
        0x57t
        0x5ct
        0x55t
        0x28t
        0xft
        0x2t
        0x57t
        0x4at
        0x11t
        0x5ft
        0x41t
        0x15t
        0x46t
        0x40t
        0x58t
        0xft
        0x6t
        0x48t
        0x5et
        0x57t
        0x5ft
        0x6t
        0x15t
        0xet
        0x8t
        0x12t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x18t
        0x5ct
        0x16t
    .end array-data
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    :goto_0
    return-object p0

    :cond_0
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_3

    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    :cond_2
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "dec664"

    const v4, 0x4e410a86    # 8.096731E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x31t
        0xbt
        0x6t
        0x4et
        0x46t
        0x51t
        0x7t
        0x11t
        0x6t
        0x52t
        0x16t
        0x57t
        0xbt
        0x1t
        0x6t
        0x16t
        0x46t
        0x5bt
        0xdt
        0xbt
        0x17t
        0xct
        0x16t
    .end array-data
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method
