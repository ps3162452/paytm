.class public final Lokio/Utf8;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static size(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static size(Ljava/lang/String;II)J
    .locals 10

    const-wide/16 v8, 0x1

    const v7, 0xdfff

    const/4 v6, 0x3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "27cd20"

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "50f5fc"

    const/16 v4, 0x7b3e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

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
    if-ge p2, p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x17

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "935da4"

    const/16 v5, -0x7503

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v6, [B

    fill-array-data v3, :array_3

    const-string v4, "677961"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "aa54ce"

    const/16 v4, 0x1fff

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_5

    const-string v3, "155d37"

    const-wide/32 v4, 0x4b774d22

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-wide/16 v2, 0x0

    :goto_0
    if-ge p1, p2, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x80

    if-ge v4, v0, :cond_4

    add-long/2addr v2, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const/16 v0, 0x800

    if-ge v4, v0, :cond_5

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const v0, 0xd800

    if-lt v4, v0, :cond_6

    if-le v4, v7, :cond_7

    :cond_6
    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v0, p1, 0x1

    if-ge v0, p2, :cond_9

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    const v5, 0xdbff

    if-gt v4, v5, :cond_8

    const v4, 0xdc00

    if-lt v0, v4, :cond_8

    if-le v0, v7, :cond_a

    :cond_8
    add-long/2addr v2, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_b
    return-wide v2

    :array_0
    .array-data 1
        0x41t
        0x43t
        0x11t
        0xdt
        0x5ct
        0x57t
        0x12t
        0xat
        0x5et
        0x44t
        0x5ct
        0x45t
        0x5et
        0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x57t
        0x55t
        0x1t
        0x5ct
        0x8t
        0x2at
        0x5bt
        0x54t
        0x3t
        0x4dt
        0x46t
        0x5ft
        0x15t
        0x0t
        0x5ct
        0x15t
    .end array-data

    :array_2
    .array-data 1
        0x5ct
        0x5dt
        0x51t
        0x2dt
        0xft
        0x50t
        0x5ct
        0x4bt
        0x15t
        0x58t
        0x41t
        0x56t
        0x5ct
        0x54t
        0x5ct
        0xat
        0x28t
        0x5at
        0x5dt
        0x56t
        0x4dt
        0x5et
        0x41t
    .end array-data

    :array_3
    .array-data 1
        0x16t
        0xbt
        0x17t
    .end array-data

    :array_4
    .array-data 1
        0x4t
        0xft
        0x51t
        0x7dt
        0xdt
        0x1t
        0x4t
        0x19t
        0x15t
        0xat
        0x43t
        0x16t
        0x15t
        0x13t
        0x5ct
        0x5at
        0x4t
        0x4bt
        0xdt
        0x4t
        0x5bt
        0x53t
        0x17t
        0xdt
        0x5bt
        0x41t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x11t
        0xbt
        0x15t
    .end array-data
.end method
