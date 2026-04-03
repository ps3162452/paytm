.class final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Reader$ContinuationSource;,
        Lokhttp3/internal/http2/Http2Reader$Handler;
    }
.end annotation


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private final continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field final hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z

    new-instance v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    new-instance v0, Lokhttp3/internal/http2/Hpack$Reader;

    const/16 v1, 0x1000

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    return-void
.end method

.method static lengthWithoutPadding(IBS)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-le p2, p0, :cond_1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ad7938"

    const-wide v2, -0x3e2162cc91c00000L    # -2.054475193E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0

    :array_0
    .array-data 1
        0x31t
        0x36t
        0x78t
        0x6dt
        0x7ct
        0x7bt
        0x2et
        0x28t
        0x68t
        0x7ct
        0x61t
        0x6at
        0x2et
        0x36t
        0x17t
        0x49t
        0x52t
        0x5ct
        0x5t
        0xdt
        0x59t
        0x5et
        0x13t
        0x1dt
        0x12t
        0x44t
        0x9t
        0x19t
        0x41t
        0x5dt
        0xct
        0x5t
        0x5et
        0x57t
        0x5at
        0x56t
        0x6t
        0x44t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x15t
        0xct
        0x17t
        0x1ct
        0x40t
    .end array-data
.end method

.method private readData(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const/16 v2, 0x27

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "bf1d31"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_2

    :goto_1
    if-eqz v1, :cond_3

    const/16 v1, 0x3e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "2969e1"

    const v3, -0x312dcf22

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_4

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_4
    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v1

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v2, p4, v3, v1}, Lokhttp3/internal/http2/Http2Reader$Handler;->data(ZILokio/BufferedSource;I)V

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    return-void

    nop

    :array_0
    .array-data 1
        0x32t
        0x34t
        0x7et
        0x30t
        0x7ct
        0x72t
        0x2dt
        0x2at
        0x6et
        0x21t
        0x61t
        0x63t
        0x2dt
        0x34t
        0xbt
        0x44t
        0x67t
        0x68t
        0x32t
        0x23t
        0x6et
        0x20t
        0x72t
        0x65t
        0x23t
        0x46t
        0x42t
        0x10t
        0x41t
        0x54t
        0x3t
        0xbt
        0x78t
        0x0t
        0x13t
        0xct
        0x5ft
        0x46t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x62t
        0x6bt
        0x79t
        0x6dt
        0x2at
        0x72t
        0x7dt
        0x75t
        0x69t
        0x7ct
        0x37t
        0x63t
        0x7dt
        0x6bt
        0xct
        0x19t
        0x23t
        0x7dt
        0x73t
        0x7et
        0x69t
        0x7at
        0x2at
        0x7ct
        0x62t
        0x6bt
        0x73t
        0x6at
        0x36t
        0x74t
        0x76t
        0x19t
        0x41t
        0x50t
        0x11t
        0x59t
        0x5dt
        0x4ct
        0x42t
        0x19t
        0x36t
        0x74t
        0x66t
        0x6dt
        0x7ft
        0x77t
        0x22t
        0x62t
        0x6dt
        0x7at
        0x79t
        0x74t
        0x35t
        0x63t
        0x77t
        0x6at
        0x65t
        0x66t
        0x21t
        0x70t
        0x66t
        0x78t
    .end array-data
.end method

.method private readGoAway(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "009ef2"

    const/16 v2, 0x68cb

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    if-eqz p4, :cond_1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "f4e4bb"

    const-wide v2, -0x3e2e46ccf9000000L    # -1.18939958E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    add-int/lit8 v2, p2, -0x8

    invoke-static {v0}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "1aec0d"

    const/16 v3, -0x3071

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez v2, :cond_3

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    :cond_3
    invoke-interface {p1, v1, v3, v0}, Lokhttp3/internal/http2/Http2Reader$Handler;->goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V

    return-void

    :array_0
    .array-data 1
        0x64t
        0x69t
        0x69t
        0x20t
        0x39t
        0x75t
        0x7ft
        0x71t
        0x6et
        0x24t
        0x3ft
        0x12t
        0x5ct
        0x55t
        0x57t
        0x2t
        0x12t
        0x5at
        0x10t
        0xct
        0x19t
        0x5dt
        0x5ct
        0x12t
        0x15t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x32t
        0x6dt
        0x35t
        0x71t
        0x3dt
        0x25t
        0x29t
        0x75t
        0x32t
        0x75t
        0x3bt
        0x42t
        0x15t
        0x40t
        0x17t
        0x51t
        0x3t
        0xft
        0x2ft
        0x50t
        0x45t
        0x15t
        0x5ft
        0x42t
        0x56t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x65t
        0x38t
        0x35t
        0x26t
        0x6ft
        0x23t
        0x7et
        0x20t
        0x32t
        0x22t
        0x69t
        0x44t
        0x44t
        0xft
        0x0t
        0x1bt
        0x40t
        0x1t
        0x52t
        0x15t
        0x0t
        0x7t
        0x10t
        0x1t
        0x43t
        0x13t
        0xat
        0x11t
        0x10t
        0x7t
        0x5et
        0x5t
        0x0t
        0x59t
        0x10t
        0x41t
        0x55t
    .end array-data
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p1, v1, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    int-to-short v1, p2

    iput-short v1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    int-to-byte v1, p3

    iput-byte v1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p4, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Hpack$Reader;->readHeaders()V

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3649b7"

    invoke-static {v1, v2, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_2
    const/4 v2, -0x1

    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v3

    invoke-direct {p0, v3, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v1, p4, v2, v0}, Lokhttp3/internal/http2/Http2Reader$Handler;->headers(ZIILjava/util/List;)V

    return-void

    :cond_3
    move v1, v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x63t
        0x64t
        0x7bt
        0x6dt
        0x2dt
        0x74t
        0x7ct
        0x7at
        0x6bt
        0x7ct
        0x30t
        0x65t
        0x7ct
        0x64t
        0xet
        0x19t
        0x36t
        0x6et
        0x63t
        0x73t
        0x6bt
        0x71t
        0x27t
        0x76t
        0x77t
        0x73t
        0x66t
        0x6at
        0x42t
        0x44t
        0x47t
        0x44t
        0x51t
        0x58t
        0xft
        0x7et
        0x57t
        0x16t
        0x9t
        0x4t
        0x42t
        0x7t
    .end array-data
.end method

.method static readMedium(Lokio/BufferedSource;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private readPing(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "6512b5"

    const-wide v4, -0x3e2e0e2a35800000L    # -1.204246314E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    if-eqz p4, :cond_1

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "bd492c"

    const-wide v4, 0x41d1b87ac3800000L    # 1.189210894E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-interface {p1, v0, v2, v3}, Lokhttp3/internal/http2/Http2Reader$Handler;->ping(ZII)V

    return-void

    nop

    :array_0
    .array-data 1
        0x62t
        0x6ct
        0x61t
        0x77t
        0x3dt
        0x65t
        0x7ft
        0x7bt
        0x76t
        0x12t
        0xet
        0x50t
        0x58t
        0x52t
        0x45t
        0x5at
        0x42t
        0x14t
        0xbt
        0x15t
        0x9t
        0x8t
        0x42t
        0x10t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x36t
        0x3dt
        0x64t
        0x7ct
        0x6dt
        0x33t
        0x2bt
        0x2at
        0x73t
        0x19t
        0x41t
        0x17t
        0x10t
        0x1t
        0x55t
        0x54t
        0x7bt
        0x7t
        0x42t
        0x45t
        0x9t
        0x19t
        0x2t
    .end array-data
.end method

.method private readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, p2, v1, v2, v0}, Lokhttp3/internal/http2/Http2Reader$Handler;->priority(IIIZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3441e6"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    if-nez p4, :cond_1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "2a561e"

    const-wide v2, 0x41d78a59f7000000L    # 1.579771868E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V

    return-void

    :array_0
    .array-data 1
        0x67t
        0x6dt
        0x64t
        0x74t
        0x3at
        0x66t
        0x61t
        0x7dt
        0x7bt
        0x63t
        0x2ct
        0x62t
        0x6at
        0x14t
        0x58t
        0x54t
        0xbt
        0x51t
        0x47t
        0x5ct
        0xet
        0x11t
        0x40t
        0x52t
        0x13t
        0x15t
        0x9t
        0x11t
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x66t
        0x38t
        0x65t
        0x73t
        0x6et
        0x35t
        0x60t
        0x28t
        0x7at
        0x64t
        0x78t
        0x31t
        0x6bt
        0x41t
        0x46t
        0x42t
        0x43t
        0x0t
        0x53t
        0xct
        0x7ct
        0x52t
        0x11t
        0x58t
        0xft
        0x41t
        0x5t
    .end array-data
.end method

.method private readPushPromise(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f313f6"

    const-wide v4, 0x41cdb42db3800000L    # 9.96694887E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, -0x4

    invoke-static {v2, p3, v0}, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result v2

    invoke-direct {p0, v2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p4, v1, v0}, Lokhttp3/internal/http2/Http2Reader$Handler;->pushPromise(IILjava/util/List;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x36t
        0x61t
        0x7et
        0x67t
        0x29t
        0x75t
        0x29t
        0x7ft
        0x6et
        0x76t
        0x34t
        0x64t
        0x29t
        0x61t
        0xbt
        0x13t
        0x32t
        0x6ft
        0x36t
        0x76t
        0x6et
        0x63t
        0x33t
        0x65t
        0x2et
        0x6ct
        0x61t
        0x61t
        0x29t
        0x7bt
        0x2ft
        0x60t
        0x74t
        0x13t
        0x15t
        0x42t
        0x14t
        0x56t
        0x50t
        0x5et
        0x2ft
        0x52t
        0x46t
        0xet
        0xct
        0x13t
        0x56t
    .end array-data
.end method

.method private readRstStream(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6e50f7"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    if-nez p4, :cond_1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "f01cf4"

    const-wide v2, 0x41c9c8416b800000L    # 8.65108695E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    invoke-static {v0}, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_2

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "f5b69e"

    const/16 v3, -0x2f90

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-interface {p1, p4, v1}, Lokhttp3/internal/http2/Http2Reader$Handler;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    return-void

    :array_0
    .array-data 1
        0x62t
        0x3ct
        0x65t
        0x75t
        0x39t
        0x65t
        0x65t
        0x31t
        0x6at
        0x63t
        0x32t
        0x65t
        0x73t
        0x24t
        0x78t
        0x10t
        0xat
        0x52t
        0x58t
        0x2t
        0x41t
        0x58t
        0x5ct
        0x17t
        0x13t
        0x1t
        0x15t
        0x11t
        0x5bt
        0x17t
        0x2t
    .end array-data

    :array_1
    .array-data 1
        0x32t
        0x69t
        0x61t
        0x26t
        0x39t
        0x66t
        0x35t
        0x64t
        0x6et
        0x30t
        0x32t
        0x66t
        0x23t
        0x71t
        0x7ct
        0x43t
        0x15t
        0x40t
        0x14t
        0x55t
        0x50t
        0xet
        0x2ft
        0x50t
        0x46t
        0xdt
        0xct
        0x43t
        0x56t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x32t
        0x6ct
        0x32t
        0x73t
        0x66t
        0x37t
        0x35t
        0x61t
        0x3dt
        0x65t
        0x6dt
        0x37t
        0x23t
        0x74t
        0x2ft
        0x16t
        0x4ct
        0xbt
        0x3t
        0x4dt
        0x12t
        0x53t
        0x5at
        0x11t
        0x3t
        0x51t
        0x42t
        0x53t
        0x4bt
        0x17t
        0x9t
        0x47t
        0x42t
        0x55t
        0x56t
        0x1t
        0x3t
        0xft
        0x42t
        0x13t
        0x5dt
    .end array-data
.end method

.method private readSettings(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c2974a"

    invoke-static {v0, v1, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "05aedd"

    const/16 v3, 0x579b

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-interface {p1}, Lokhttp3/internal/http2/Http2Reader$Handler;->ackSettings()V

    :goto_0
    return-void

    :cond_2
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_3

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "ad0d13"

    invoke-static {v0, v1, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    new-instance v3, Lokhttp3/internal/http2/Settings;

    invoke-direct {v3}, Lokhttp3/internal/http2/Settings;-><init>()V

    move v1, v2

    :goto_1
    if-ge v1, p2, :cond_6

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    move-result v0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_2
    :pswitch_0
    invoke-virtual {v3, v0, v4}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_1

    :pswitch_1
    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_4

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "1722f2"

    invoke-static {v0, v1, v8, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x7

    if-gez v4, :cond_4

    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "006484"

    const-wide/32 v4, 0x67149904

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_4
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_5

    const v5, 0xffffff

    if-le v4, v5, :cond_4

    :cond_5
    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "28c81f"

    const-wide/32 v6, -0x37e043ed

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-interface {p1, v2, v3}, Lokhttp3/internal/http2/Http2Reader$Handler;->settings(ZLokhttp3/internal/http2/Settings;)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x37t
        0x6bt
        0x69t
        0x72t
        0x6bt
        0x32t
        0x26t
        0x66t
        0x6dt
        0x7et
        0x7at
        0x26t
        0x30t
        0x12t
        0x4at
        0x43t
        0x46t
        0x4t
        0x2t
        0x5ft
        0x70t
        0x53t
        0x14t
        0x40t
        0x5et
        0x12t
        0x9t
    .end array-data

    :array_1
    .array-data 1
        0x76t
        0x67t
        0x20t
        0x28t
        0x21t
        0x3bt
        0x63t
        0x7ct
        0x3bt
        0x20t
        0x3bt
        0x21t
        0x62t
        0x67t
        0x2et
        0x37t
        0x44t
        0x5t
        0x53t
        0x5et
        0x41t
        0x3t
        0x16t
        0x5t
        0x5dt
        0x50t
        0x41t
        0x16t
        0xct
        0xbt
        0x45t
        0x59t
        0x5t
        0x45t
        0x6t
        0x1t
        0x10t
        0x50t
        0xct
        0x15t
        0x10t
        0x1dt
        0x11t
    .end array-data

    :array_2
    .array-data 1
        0x35t
        0x3dt
        0x60t
        0x21t
        0x6et
        0x60t
        0x24t
        0x30t
        0x64t
        0x2dt
        0x7ft
        0x74t
        0x32t
        0x44t
        0x5ct
        0x1t
        0x5ft
        0x54t
        0x15t
        0xct
        0x10t
        0x41t
        0x14t
        0x13t
        0x57t
        0x44t
        0x11t
        0x59t
        0x11t
        0x3t
        0x5bt
        0x44t
        0x15t
        0x17t
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :array_3
    .array-data 1
        0x61t
        0x65t
        0x7dt
        0x66t
        0x29t
        0x71t
        0x7et
        0x7bt
        0x6dt
        0x77t
        0x34t
        0x60t
        0x7et
        0x65t
        0x12t
        0x61t
        0x23t
        0x66t
        0x65t
        0x7et
        0x7ct
        0x75t
        0x35t
        0x6dt
        0x74t
        0x79t
        0x73t
        0x70t
        0x2at
        0x77t
        0x6et
        0x67t
        0x67t
        0x61t
        0x2et
        0x12t
        0x10t
        0xat
        0x12t
        0x2t
        0x46t
        0x5dt
        0x43t
        0x17t
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x60t
        0x62t
        0x79t
        0x60t
        0x77t
        0x77t
        0x7ft
        0x7ct
        0x69t
        0x71t
        0x6at
        0x66t
        0x7ft
        0x62t
        0x16t
        0x67t
        0x7dt
        0x60t
        0x64t
        0x79t
        0x78t
        0x73t
        0x6bt
        0x6bt
        0x79t
        0x7et
        0x7ft
        0x60t
        0x71t
        0x75t
        0x7ct
        0x6ft
        0x61t
        0x7dt
        0x76t
        0x70t
        0x7ft
        0x67t
        0x69t
        0x67t
        0x71t
        0x6et
        0x75t
        0x10t
        0x8t
        0x14t
        0xat
        0x6at
        0x3t
        0x1t
        0x16t
        0x19t
        0x18t
        0x5t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x62t
        0x6at
        0x2ct
        0x6ct
        0x7et
        0x25t
        0x7dt
        0x74t
        0x3ct
        0x7dt
        0x63t
        0x34t
        0x7dt
        0x6at
        0x43t
        0x6bt
        0x74t
        0x32t
        0x66t
        0x71t
        0x2dt
        0x7ft
        0x62t
        0x39t
        0x7ft
        0x79t
        0x3bt
        0x67t
        0x77t
        0x34t
        0x73t
        0x75t
        0x26t
        0x67t
        0x62t
        0x2ft
        0x68t
        0x7dt
        0x59t
        0x18t
        0x14t
        0x15t
    .end array-data
.end method

.method private readWindowUpdate(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "fce034"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "348606"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-interface {p1, p4, v0, v1}, Lokhttp3/internal/http2/Http2Reader$Handler;->windowUpdate(IJ)V

    return-void

    :array_0
    .array-data 1
        0x32t
        0x3at
        0x35t
        0x75t
        0x6ct
        0x63t
        0x2ft
        0x2dt
        0x21t
        0x7ft
        0x64t
        0x6bt
        0x33t
        0x33t
        0x21t
        0x71t
        0x67t
        0x71t
        0x46t
        0xft
        0x0t
        0x5et
        0x54t
        0x40t
        0xet
        0x43t
        0x44t
        0xdt
        0x7t
        0xet
        0x46t
        0x46t
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x44t
        0x5dt
        0x56t
        0x52t
        0x5ft
        0x41t
        0x60t
        0x5dt
        0x42t
        0x53t
        0x79t
        0x58t
        0x50t
        0x46t
        0x5dt
        0x5bt
        0x55t
        0x58t
        0x47t
        0x14t
        0x4ft
        0x57t
        0x43t
        0x16t
        0x3t
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    return-void
.end method

.method public nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    const-wide/16 v4, 0x9

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-static {v2}, Lokhttp3/internal/http2/Http2Reader;->readMedium(Lokio/BufferedSource;)I

    move-result v2

    if-ltz v2, :cond_0

    const/16 v3, 0x4000

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v3, 0x14

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "c0c647"

    const-wide/32 v6, 0x38512ed1

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-eqz p1, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v4, "a3b862"

    const-wide v6, 0x41de98469c400000L    # 2.053184113E9

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    sget-object v5, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    invoke-static {v0, v4, v2, v3, v1}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    packed-switch v3, :pswitch_data_0

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readData(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readHeaders(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readRstStream(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readSettings(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readPushPromise(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readPing(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readGoAway(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/Http2Reader;->readWindowUpdate(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x25t
        0x62t
        0x22t
        0x7bt
        0x71t
        0x68t
        0x30t
        0x79t
        0x39t
        0x73t
        0x6bt
        0x72t
        0x31t
        0x62t
        0x2ct
        0x64t
        0xet
        0x17t
        0x46t
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x24t
        0x4bt
        0x12t
        0x5dt
        0x55t
        0x46t
        0x4t
        0x57t
        0x42t
        0x59t
        0x16t
        0x61t
        0x24t
        0x67t
        0x36t
        0x71t
        0x78t
        0x75t
        0x32t
        0x13t
        0x4t
        0x4at
        0x57t
        0x5ft
        0x4t
        0x13t
        0x0t
        0x4dt
        0x42t
        0x12t
        0x16t
        0x52t
        0x11t
        0x18t
        0x13t
        0x41t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v7, p1}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "110211"

    const-wide v2, 0x41d93338d3400000L    # 1.691149133E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    sget-object v1, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "d7ce91"

    const-wide/32 v4, 0x5244ea4f

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "3c9931"

    const-wide v4, 0x41b12fb052000000L    # 2.88338002E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0x54t
        0x41t
        0x47t
        0x58t
        0x43t
        0x54t
        0x55t
        0x10t
        0x61t
        0x74t
        0x65t
        0x65t
        0x78t
        0x7et
        0x75t
        0x62t
        0x11t
        0x41t
        0x43t
        0x55t
        0x54t
        0x50t
        0x52t
        0x54t
        0x11t
        0x5et
        0x5dt
        0x45t
        0x11t
        0x43t
        0x54t
        0x53t
        0x57t
        0x58t
        0x47t
        0x54t
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x58t
        0xbt
        0x43t
        0x26t
        0x76t
        0x7ft
        0x2at
        0x72t
        0x20t
        0x31t
        0x70t
        0x7et
        0x2at
        0x17t
        0x46t
        0x16t
    .end array-data

    :array_2
    .array-data 1
        0x76t
        0x1bt
        0x49t
        0x5ct
        0x50t
        0x45t
        0x56t
        0x7t
        0x19t
        0x58t
        0x13t
        0x52t
        0x5ct
        0xdt
        0x57t
        0x5ct
        0x50t
        0x45t
        0x5at
        0xct
        0x57t
        0x19t
        0x5bt
        0x54t
        0x52t
        0x7t
        0x5ct
        0x4bt
        0x13t
        0x53t
        0x46t
        0x17t
        0x19t
        0x4et
        0x52t
        0x42t
        0x13t
        0x46t
        0x4at
    .end array-data
.end method
