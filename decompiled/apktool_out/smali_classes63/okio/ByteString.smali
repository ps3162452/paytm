.class public Lokio/ByteString;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lokio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokio/ByteString;->HEX_DIGITS:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/ByteString;->data:[B

    return-void
.end method

.method static codePointIndexToCharIndex(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_4

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    :cond_1
    const v4, 0xfffd

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method public static decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v3, 0x1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b39ba2"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lokio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x0t
        0x52t
        0x4at
        0x7t
        0x57t
        0x6t
        0x42t
        0xet
        0x4t
        0x42t
        0xft
        0x47t
        0xet
        0x5ft
    .end array-data
.end method

.method public static decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d3e716"

    invoke-static {v2, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "309c30"

    const v4, -0x31c00a4c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lokio/ByteString;->decodeHexDigit(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokio/ByteString;->decodeHexDigit(C)I

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0xct
        0x56t
        0x1dt
        0x17t
        0xct
        0xbt
        0x44t
        0x5dt
        0x10t
        0x5bt
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x5et
        0x5ct
        0x1bt
        0x43t
        0x55t
        0x50t
        0x44t
        0x5ct
        0x7t
        0x13t
        0x58t
        0x56t
        0x48t
        0x19t
        0x10t
        0x47t
        0x42t
        0x5at
        0x5et
        0x5et
        0x59t
        0x13t
    .end array-data
.end method

.method private static decodeHexDigit(C)I
    .locals 5

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "1c272f"

    const v4, 0x4e4ab6ba    # 8.502432E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x64t
        0xdt
        0x57t
        0x4ft
        0x42t
        0x3t
        0x52t
        0x17t
        0x57t
        0x53t
        0x12t
        0xet
        0x54t
        0x1bt
        0x12t
        0x53t
        0x5bt
        0x1t
        0x58t
        0x17t
        0x8t
        0x17t
    .end array-data
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a47ed2"

    const/16 v3, 0x603f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "595a6a"

    const v3, 0x4d8e127d    # 2.9794704E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x12t
        0x14t
        0xat
        0x58t
        0x44t
        0x5ct
        0x14t
        0x58t
        0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x56t
        0x51t
        0x54t
        0x13t
        0x45t
        0x4t
        0x41t
        0x19t
        0x8t
        0x5ct
        0x16t
        0xft
        0x40t
        0x55t
        0x59t
    .end array-data
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 4

    const/4 v3, 0x1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f32843"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lokio/ByteString;

    sget-object v1, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-object v0

    :array_0
    .array-data 1
        0x15t
        0x13t
        0xft
        0x5t
        0x14t
        0x5dt
        0x13t
        0x5ft
        0x5et
    .end array-data
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    iget-object v1, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(Ljava/nio/ByteBuffer;)Lokio/ByteString;
    .locals 6

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "235081"

    const-wide/32 v4, 0xc9db75c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lokio/ByteString;

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    return-object v1

    nop

    :array_0
    .array-data 1
        0x56t
        0x52t
        0x41t
        0x51t
        0x18t
        0xct
        0xft
        0x13t
        0x5bt
        0x45t
        0x54t
        0x5dt
    .end array-data
.end method

.method public static varargs of([B)Lokio/ByteString;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4516fb"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lokio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    return-object v1

    :array_0
    .array-data 1
        0x50t
        0x54t
        0x45t
        0x57t
        0x46t
        0x5ft
        0x9t
        0x15t
        0x5ft
        0x43t
        0xat
        0xet
    .end array-data
.end method

.method public static of([BII)Lokio/ByteString;
    .locals 6

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "946938"

    const/16 v3, -0x7894

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    int-to-long v0, v0

    int-to-long v2, p1

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lokio/ByteString;

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    return-object v1

    :array_0
    .array-data 1
        0x5dt
        0x55t
        0x42t
        0x58t
        0x13t
        0x5t
        0x4t
        0x14t
        0x58t
        0x4ct
        0x5ft
        0x54t
    .end array-data
.end method

.method public static read(Ljava/io/InputStream;I)Lokio/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9efde1"

    const v3, 0x4d38cbec    # 1.9377325E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "3a0691"

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
    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x50t
        0xbt
        0x46t
        0x59t
        0x58t
        0x11t
        0x57t
        0x10t
        0xat
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0x18t
        0x44t
        0x53t
        0x7at
        0x5et
        0x46t
        0xft
        0x44t
        0x16t
        0x5t
        0x11t
        0x3t
        0x5bt
        0x10t
    .end array-data
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {p1, v0}, Lokio/ByteString;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object v0

    :try_start_0
    const-class v1, Lokio/ByteString;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "60f3f5"

    const/16 v4, 0x44c2

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, v0, Lokio/ByteString;->data:[B

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x52t
        0x51t
        0x12t
        0x52t
    .end array-data
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Lokio/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Lokio/Base64;->encodeUrl([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lokio/ByteString;)I
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v4

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_3

    invoke-virtual {p0, v3}, Lokio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ge v7, v8, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    if-ne v4, v5, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lt v4, v5, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public final endsWith(Lokio/ByteString;)Z
    .locals 3

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public final endsWith([B)Z
    .locals 3

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v3, v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lokio/ByteString;

    iget-object v0, p0, Lokio/ByteString;->data:[B

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v3, v3

    invoke-virtual {p1, v2, v0, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public getByte(I)B
    .locals 1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lokio/ByteString;->hashCode:I

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lokio/ByteString;->hashCode:I

    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-byte v5, v3, v1

    add-int/lit8 v6, v0, 0x1

    sget-object v7, Lokio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v2, v0

    add-int/lit8 v0, v6, 0x1

    sget-object v7, Lokio/ByteString;->HEX_DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    int-to-char v5, v5

    aput-char v5, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4ed504"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x7ct
        0x8t
        0x5t
        0x56t
        0x63t
        0x7ct
        0x75t
        0x54t
    .end array-data
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e9d60b"

    const v2, 0x4eff8593    # 2.143472E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x2dt
        0x54t
        0x5t
        0x55t
        0x63t
        0x2at
        0x24t
        0xbt
        0x51t
        0x0t
    .end array-data
.end method

.method public hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b897ab"

    const-wide v2, 0x41d608a51e800000L    # 1.478661242E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x2at
        0x55t
        0x58t
        0x54t
        0x32t
        0x2at
        0x23t
        0xdt
        0x8t
        0x5t
    .end array-data
.end method

.method public final indexOf(Lokio/ByteString;)I
    .locals 2

    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public final indexOf(Lokio/ByteString;I)I
    .locals 1

    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public final indexOf([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public indexOf([BI)I
    .locals 6

    const/4 v5, 0x0

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    array-length v2, p1

    :goto_0
    sub-int v3, v1, v2

    if-gt v0, v3, :cond_1

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v4, p1

    invoke-static {v3, v0, p1, v5, v4}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method internalArray()[B
    .locals 1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    return-object v0
.end method

.method public final lastIndexOf(Lokio/ByteString;)I
    .locals 2

    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Lokio/ByteString;I)I
    .locals 1

    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf([B)I
    .locals 1

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf([BI)I
    .locals 4

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lokio/ByteString;->data:[B

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v1, v0, p1, v2, v3}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public md5()Lokio/ByteString;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "87a8a1"

    const v2, -0x31289b7d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x75t
        0x73t
        0x54t
    .end array-data
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0, p1, p2, p3, p4}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sha1()Lokio/ByteString;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "310ce4"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x60t
        0x79t
        0x71t
        0x4et
        0x54t
    .end array-data
.end method

.method public sha256()Lokio/ByteString;
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a985ea"

    const-wide v2, -0x3e2968cc81800000L    # -1.516031482E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x32t
        0x71t
        0x79t
        0x18t
        0x57t
        0x54t
        0x57t
    .end array-data
.end method

.method public sha512()Lokio/ByteString;
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7820d9"

    const-wide/32 v2, 0x48ee2966

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x64t
        0x70t
        0x73t
        0x1dt
        0x51t
        0x8t
        0x5t
    .end array-data
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final startsWith(Lokio/ByteString;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public final startsWith([B)Z
    .locals 2

    const/4 v1, 0x0

    array-length v0, p1

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f09626"

    const/16 v3, -0x2df3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokio/ByteString;->data:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5t
        0x58t
        0x58t
        0x44t
        0x41t
        0x53t
        0x12t
        0x10t
        0x4t
        0xbt
        0x12t
        0x58t
        0x13t
        0x5ct
        0x55t
    .end array-data
.end method

.method public substring(I)Lokio/ByteString;
    .locals 1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f5d9fc"

    const-wide v4, -0x3e27b8d0bf400000L    # -1.629273347E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "f1c1fb"

    const v4, -0x32172028

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    const/16 v3, 0x4f

    aput-byte v3, v2, v5

    const-string v3, "f99c35"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sub-int v0, p2, p1

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "1a6eaa"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    if-ne p2, v1, :cond_3

    :goto_0
    return-object p0

    :cond_3
    new-array v1, v0, [B

    iget-object v2, p0, Lokio/ByteString;->data:[B

    invoke-static {v2, p1, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v1}, Lokio/ByteString;-><init>([B)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x4t
        0x50t
        0x3t
        0x50t
        0x8t
        0x2at
        0x8t
        0x51t
        0x1t
        0x41t
        0x46t
        0x5ft
        0x46t
        0x5t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3t
        0x5ft
        0x7t
        0x78t
        0x8t
        0x6t
        0x3t
        0x49t
        0x43t
        0xft
        0x46t
        0xet
        0x3t
        0x5ft
        0x4t
        0x45t
        0xet
        0x4at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x54t
        0xft
        0x52t
        0x2ct
        0xft
        0x5t
        0x54t
        0x19t
        0x16t
        0x59t
        0x41t
        0x3t
        0x54t
        0x6t
        0x5ft
        0xbt
        0x28t
        0xft
        0x55t
        0x4t
        0x4et
    .end array-data
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 5

    const/16 v4, 0x5a

    const/16 v3, 0x41

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lokio/ByteString;->data:[B

    aget-byte v2, v0, v1

    if-lt v2, v3, :cond_0

    if-le v2, v4, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-byte v2, v0, v1

    if-lt v2, v3, :cond_2

    if-le v2, v4, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    :cond_4
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    :cond_5
    return-object p0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 5

    const/16 v4, 0x7a

    const/16 v3, 0x61

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lokio/ByteString;->data:[B

    aget-byte v2, v0, v1

    if-lt v2, v3, :cond_0

    if-le v2, v4, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v2, v2, -0x20

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-byte v2, v0, v1

    if-lt v2, v3, :cond_2

    if-le v2, v4, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x20

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    :cond_4
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    :cond_5
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    const/16 v3, 0x40

    const/4 v11, 0x2

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a400a2"

    invoke-static {v0, v1, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lokio/ByteString;->codePointIndexToCharIndex(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    if-gt v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c55718"

    const/16 v3, 0x560d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v9, [B

    const/16 v2, 0x64

    aput-byte v2, v1, v8

    const-string v2, "99bb13"

    const-wide v4, -0x3e29eb6a37000000L    # -1.481791268E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v10, [B

    fill-array-data v1, :array_2

    const-string v2, "aaff8b"

    const-wide v4, -0x3e2b1b1f50800000L    # -1.40217619E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "ad5038"

    const-wide/32 v4, 0x2975d850

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v8, v3}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "da95c1"

    const/16 v3, -0x7734

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [B

    const/16 v4, 0x38

    aput-byte v4, v3, v8

    const-string v4, "d9d072"

    invoke-static {v3, v4, v9, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [B

    fill-array-data v4, :array_5

    const-string v5, "61cdcd"

    const-wide/32 v6, 0x7504392c

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    new-array v4, v11, [B

    fill-array-data v4, :array_6

    const-string v5, "8af900"

    const v6, 0x4e56a1f3    # 9.0023443E8f

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    new-array v4, v11, [B

    fill-array-data v4, :array_7

    const-string v5, "7cee56"

    const-wide/32 v6, 0x537d5fc6

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v10, [B

    fill-array-data v1, :array_8

    const-string v3, "458f29"

    invoke-static {v1, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v10, [B

    fill-array-data v1, :array_9

    const-string v3, "a8d58c"

    invoke-static {v1, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const-string v2, "bc99b5"

    const v3, -0x3208276d    # -5.1977072E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v10, [B

    fill-array-data v1, :array_b

    const-string v3, "05f6ce"

    const-wide v4, -0x3e2a8fe310c00000L    # -1.438675901E9

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v9, [B

    const/16 v2, 0x3c

    aput-byte v2, v1, v8

    const-string v2, "ae42c6"

    const-wide v4, -0x3e212e7661800000L    # -2.068194938E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x3at
        0x47t
        0x59t
        0x4at
        0x4t
        0xft
        0x51t
        0x69t
    .end array-data

    :array_1
    .array-data 1
        0x38t
        0x5dt
        0x50t
        0x4ft
        0xct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x3at
        0x12t
        0xft
        0x1ct
        0x5dt
        0x5ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x41t
        0xct
        0x50t
        0x48t
        0xet
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x7at
        -0x1ft
        -0x61t
        0x68t
    .end array-data

    :array_5
    .array-data 1
        0x6at
        0x6dt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x64t
        0xft
    .end array-data

    nop

    :array_7
    .array-data 1
        0x6bt
        0x11t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x6ft
        0x46t
        0x51t
        0x1ct
        0x57t
        0x4t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x41t
        0x4ct
        0x1t
        0x4dt
        0x4ct
        0x5et
    .end array-data

    nop

    :array_a
    .array-data 1
        -0x80t
        -0x1dt
        -0x61t
        0x64t
    .end array-data

    :array_b
    .array-data 1
        0x6bt
        0x41t
        0x3t
        0x4et
        0x17t
        0x58t
    .end array-data
.end method

.method public utf8()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokio/ByteString;->data:[B

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    goto :goto_0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b4340c"

    const/16 v3, -0x3727

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0x41t
        0x47t
        0x14t
        0xdt
        0x5et
        0x42t
        0x5at
        0x46t
        0x58t
        0x5ct
    .end array-data
.end method

.method write(Lokio/Buffer;)V
    .locals 3

    iget-object v0, p0, Lokio/ByteString;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method
