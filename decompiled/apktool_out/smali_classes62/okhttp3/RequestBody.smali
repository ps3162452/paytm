.class public abstract Lokhttp3/RequestBody;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;
    .locals 4
    .param p0    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8c238d"

    const/16 v3, 0x5a66

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lokhttp3/RequestBody$3;

    invoke-direct {v0, p0, p1}, Lokhttp3/RequestBody$3;-><init>(Lokhttp3/MediaType;Ljava/io/File;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0xct
        0x5ct
        0x47t
        0x5dt
        0xat
        0x4ct
        0x43t
        0xft
        0xet
        0x18t
        0xat
        0x4dt
        0xft
        0x5et
    .end array-data
.end method

.method public static create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 6
    .param p0    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5a06e1"

    const-wide/32 v4, -0x1266e7b5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0xet
        0x41t
        0x53t
        0x5et
        0x4t
        0x43t
        0x46t
        0x4t
        0x44t
        0xbt
        0x10t
        0x45t
        0x53t
        0x4ct
        0x8t
    .end array-data
.end method

.method public static create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;
    .locals 1
    .param p0    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lokhttp3/RequestBody$1;

    invoke-direct {v0, p0, p1}, Lokhttp3/RequestBody$1;-><init>(Lokhttp3/MediaType;Lokio/ByteString;)V

    return-object v0
.end method

.method public static create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;
    .locals 2
    .param p0    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;
    .locals 6
    .param p0    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "97abc7"

    const/16 v3, -0x4e80

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    new-instance v0, Lokhttp3/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lokhttp3/RequestBody$2;-><init>(Lokhttp3/MediaType;I[BI)V

    return-object v0

    :array_0
    .array-data 1
        0x5at
        0x58t
        0xft
        0x16t
        0x6t
        0x59t
        0x4dt
        0x17t
        0x5ct
        0x5ft
        0x43t
        0x59t
        0x4ct
        0x5bt
        0xdt
    .end array-data
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Lokio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
