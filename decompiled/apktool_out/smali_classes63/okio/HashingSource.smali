.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lokio/Source;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    const/4 v0, 0x0

    iput-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    iget-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

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

.method public static hmacSha1(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .locals 4

    new-instance v0, Lokio/HashingSource;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6d1d51"

    const/16 v3, 0x70fe

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7et
        0x9t
        0x50t
        0x7t
        0x66t
        0x79t
        0x77t
        0x55t
    .end array-data
.end method

.method public static hmacSha256(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .locals 6

    new-instance v0, Lokio/HashingSource;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5f4e7e"

    const-wide v4, -0x3e3ce19356000000L    # -6.41522004E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0

    :array_0
    .array-data 1
        0x7dt
        0xbt
        0x55t
        0x6t
        0x64t
        0x2dt
        0x74t
        0x54t
        0x1t
        0x53t
    .end array-data
.end method

.method public static md5(Lokio/Source;)Lokio/HashingSource;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lokio/HashingSource;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "50b006"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x78t
        0x74t
        0x57t
    .end array-data
.end method

.method public static sha1(Lokio/Source;)Lokio/HashingSource;
    .locals 6

    new-instance v0, Lokio/HashingSource;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1e3aad"

    const-wide v4, 0x41d303016d000000L    # 1.275856308E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x62t
        0x2dt
        0x72t
        0x4ct
        0x50t
    .end array-data
.end method

.method public static sha256(Lokio/Source;)Lokio/HashingSource;
    .locals 4

    new-instance v0, Lokio/HashingSource;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e0d292"

    const v3, -0x31d52173

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x36t
        0x78t
        0x25t
        0x1ft
        0xbt
        0x7t
        0x53t
    .end array-data
.end method


# virtual methods
.method public final hash()Lokio/ByteString;
    .locals 1

    iget-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v6

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, v6

    iget-wide v4, p1, Lokio/Buffer;->size:J

    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    iget v3, v2, Lokio/Segment;->limit:I

    iget v8, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v8

    int-to-long v8, v3

    sub-long/2addr v4, v8

    goto :goto_0

    :cond_0
    :goto_1
    iget-wide v8, p1, Lokio/Buffer;->size:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_2

    iget v3, v2, Lokio/Segment;->pos:I

    int-to-long v8, v3

    add-long/2addr v0, v8

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iget-object v1, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    iget-object v3, v2, Lokio/Segment;->data:[B

    iget v8, v2, Lokio/Segment;->limit:I

    sub-int/2addr v8, v0

    invoke-virtual {v1, v3, v0, v8}, Ljava/security/MessageDigest;->update([BII)V

    :goto_2
    iget v0, v2, Lokio/Segment;->limit:I

    iget v1, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v4

    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v4, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    iget-object v3, v2, Lokio/Segment;->data:[B

    iget v8, v2, Lokio/Segment;->limit:I

    sub-int/2addr v8, v0

    invoke-virtual {v1, v3, v0, v8}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_2

    :cond_2
    return-wide v6
.end method
