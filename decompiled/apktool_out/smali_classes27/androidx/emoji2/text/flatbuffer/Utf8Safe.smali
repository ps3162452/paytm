.class public final Landroidx/emoji2/text/flatbuffer/Utf8Safe;
.super Landroidx/emoji2/text/flatbuffer/Utf8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Utf8;-><init>()V

    return-void
.end method

.method private static computeEncodedLength(Ljava/lang/CharSequence;)I
    .locals 8

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v0, v4

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x80

    if-ge v1, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x800

    if-ge v3, v5, :cond_0

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_0
    invoke-static {p0, v1}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    if-lt v0, v2, :cond_2

    return v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x22

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v5, "c92dd1"

    const/4 v6, 0x1

    invoke-static {v3, v5, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    const-wide v6, 0x100000000L

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v1, v0

    move v0, v2

    goto :goto_1

    :array_0
    .array-data 1
        0x36t
        0x6dt
        0x74t
        0x49t
        0x5ct
        0x11t
        0xft
        0x5ct
        0x5ct
        0x3t
        0x10t
        0x59t
        0x43t
        0x5dt
        0x5dt
        0x1t
        0x17t
        0x11t
        0xdt
        0x56t
        0x46t
        0x44t
        0x2t
        0x58t
        0x17t
        0x19t
        0x5bt
        0xat
        0x44t
        0x58t
        0xdt
        0x4dt
        0x8t
        0x44t
    .end array-data
.end method

.method public static decodeUtf8Array([BII)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0xd

    const/4 v6, 0x0

    or-int v0, p1, p2

    array-length v1, p0

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    or-int/2addr v0, v1

    if-ltz v0, :cond_a

    add-int v7, p1, p2

    new-array v4, p2, [C

    move v5, v6

    move v1, p1

    :goto_0
    if-ge v1, v7, :cond_b

    aget-byte v0, p0, v1

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_9

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v5, 0x1

    invoke-static {v0, v4, v5}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    move v0, v2

    :goto_2
    if-ge v1, v7, :cond_0

    aget-byte v2, p0, v1

    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    :goto_3
    move v5, v0

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v4, v5}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v4, v0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isTwoBytes(B)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ge v1, v7, :cond_4

    aget-byte v2, p0, v1

    invoke-static {v0, v2, v4, v5}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v5, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v9, [B

    fill-array-data v1, :array_0

    const-string v2, "b73a88"

    const/16 v3, -0x19b6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isThreeBytes(B)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v2, v7, -0x1

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    aget-byte v3, p0, v2

    invoke-static {v0, v1, v3, v4, v5}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v5, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v9, [B

    fill-array-data v1, :array_1

    const-string v2, "f6f661"

    invoke-static {v1, v2, v10, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/lit8 v2, v7, -0x2

    if-ge v1, v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p0, v2

    aget-byte v3, p0, v8

    invoke-static/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V

    add-int/lit8 v1, v8, 0x1

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v9, [B

    fill-array-data v1, :array_2

    const-string v2, "ded377"

    const-wide/32 v4, -0x1b090fc1

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v6, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "a1c51e"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v1

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x2bt
        0x59t
        0x45t
        0x0t
        0x54t
        0x51t
        0x6t
        0x17t
        0x66t
        0x35t
        0x7et
        0x15t
        0x5at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2ft
        0x58t
        0x10t
        0x57t
        0x5at
        0x58t
        0x2t
        0x16t
        0x33t
        0x62t
        0x70t
        0x1ct
        0x5et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0xbt
        0x12t
        0x52t
        0x5bt
        0x5et
        0x0t
        0x45t
        0x31t
        0x67t
        0x71t
        0x1at
        0x5ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3t
        0x44t
        0x5t
        0x53t
        0x54t
        0x17t
        0x41t
        0x5dt
        0x6t
        0x5bt
        0x56t
        0x11t
        0x9t
        0xct
        0x46t
        0x51t
        0x1dt
        0x45t
        0x8t
        0x5ft
        0x7t
        0x50t
        0x49t
        0x58t
        0x44t
        0x55t
        0x4ft
        0x15t
        0x42t
        0xct
        0x1bt
        0x54t
        0x5et
        0x10t
        0x55t
    .end array-data
.end method

.method public static decodeUtf8Buffer(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0xd

    const/4 v6, 0x0

    or-int v0, p1, p2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    or-int/2addr v0, v1

    if-ltz v0, :cond_b

    add-int v7, p1, p2

    new-array v4, p2, [C

    move v5, v6

    move v0, p1

    :goto_0
    if-ge v0, v7, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    if-ge v0, v7, :cond_a

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v5, 0x1

    invoke-static {v0, v4, v5}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    move v0, v1

    move v1, v2

    :goto_2
    if-ge v0, v7, :cond_1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    :goto_3
    move v5, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v4, v5}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v4, v1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isTwoBytes(B)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ge v1, v7, :cond_5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v0, v2, v4, v5}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v5, 0x1

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v9, [B

    fill-array-data v1, :array_0

    const-string v2, "66b820"

    invoke-static {v1, v2, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isThreeBytes(B)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v2, v7, -0x1

    if-ge v1, v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v0, v1, v3, v4, v5}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v5, 0x1

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v9, [B

    fill-array-data v1, :array_1

    const-string v2, "739729"

    const-wide v4, -0x3e301e9572000000L    # -1.069733148E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    add-int/lit8 v2, v7, -0x2

    if-ge v1, v2, :cond_9

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V

    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v9, [B

    fill-array-data v1, :array_2

    const-string v2, "ecf904"

    const/16 v3, 0x7cda

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v6, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "731f18"

    const v3, 0x4e364908    # 7.645599E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x58t
        0x14t
        0x59t
        0x5et
        0x59t
        0x52t
        0x16t
        0x37t
        0x6ct
        0x74t
        0x1dt
        0xet
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7et
        0x5dt
        0x4ft
        0x56t
        0x5et
        0x50t
        0x53t
        0x13t
        0x6ct
        0x63t
        0x74t
        0x14t
        0xft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2ct
        0xdt
        0x10t
        0x58t
        0x5ct
        0x5dt
        0x1t
        0x43t
        0x33t
        0x6dt
        0x76t
        0x19t
        0x5dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x55t
        0x46t
        0x57t
        0x0t
        0x54t
        0x4at
        0x17t
        0x5ft
        0x58t
        0xbt
        0x58t
        0x4ct
        0xat
        0x16t
        0x55t
        0x4at
        0x11t
        0x51t
        0x59t
        0x57t
        0x54t
        0x1et
        0xct
        0x1dt
        0x53t
        0x1ft
        0x11t
        0xat
        0x58t
        0x55t
        0x5et
        0x47t
        0xct
        0x43t
        0x55t
    .end array-data
.end method

.method private static encodeUtf8Array(Ljava/lang/CharSequence;[BII)I
    .locals 10

    const v9, 0xdfff

    const v8, 0xd800

    const/16 v7, 0x80

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v0, 0x0

    add-int v3, p2, p3

    :goto_0
    if-ge v0, v2, :cond_0

    add-int v1, v0, p2

    if-ge v1, v3, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_0

    add-int v4, p2, v0

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    add-int v0, p2, v2

    :goto_1
    return v0

    :cond_1
    add-int v1, p2, v0

    :goto_2
    if-ge v0, v2, :cond_a

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v7, :cond_2

    if-ge v1, v3, :cond_2

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v5, 0x800

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v3, -0x2

    if-gt v1, v5, :cond_3

    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0x3c0

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    add-int/lit8 v1, v5, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v5

    goto :goto_3

    :cond_3
    if-lt v4, v8, :cond_4

    if-ge v9, v4, :cond_5

    :cond_4
    add-int/lit8 v5, v3, -0x3

    if-gt v1, v5, :cond_5

    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v3, -0x4

    if-gt v1, v5, :cond_7

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v5, v6, :cond_6

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    add-int/lit8 v1, v5, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v5

    goto/16 :goto_3

    :cond_6
    new-instance v1, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v0, v2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    throw v1

    :cond_7
    if-gt v8, v4, :cond_9

    if-gt v4, v9, :cond_9

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v3, v5, :cond_8

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    new-instance v1, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;

    invoke-direct {v1, v0, v2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v5, "a2a77f"

    const-wide v6, -0x3e3886916c000000L    # -7.87668264E8

    invoke-static {v3, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "3d0d9d"

    const-wide/32 v6, -0x30cf78de

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v0, v1

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x27t
        0x53t
        0x8t
        0x5bt
        0x52t
        0x2t
        0x41t
        0x45t
        0x13t
        0x5et
        0x43t
        0xft
        0xft
        0x55t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x13t
        0x5t
        0x44t
        0x44t
        0x50t
        0xat
        0x57t
        0x1t
        0x48t
        0x44t
    .end array-data
.end method

.method private static encodeUtf8Buffer(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 10

    const/16 v7, 0x80

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    move v0, v4

    :goto_0
    if-ge v0, v5, :cond_0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ge v2, v7, :cond_0

    add-int v3, v1, v0

    int-to-byte v2, v2

    invoke-virtual {p1, v3, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    add-int v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    return-void

    :cond_1
    add-int/2addr v1, v0

    :goto_2
    if-ge v0, v5, :cond_7

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v7, :cond_2

    int-to-byte v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v2, 0x800

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v3, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    :try_start_1
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v3, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p1, v2, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto :goto_3

    :catch_0
    move-exception v1

    move v1, v2

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xf

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "3261e2"

    const v8, 0x4e7973b8

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0xa

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "6b85cd"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const v2, 0xd800

    if-lt v3, v2, :cond_4

    const v2, 0xdfff

    if-ge v2, v3, :cond_5

    :cond_4
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v3, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    :try_start_2
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    :try_start_3
    invoke-virtual {p1, v2, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v3, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v0, 0x1

    if-eq v2, v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v3, v2}, Ljava/lang/Character;->toCodePoint(CC)I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v2, v6, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    :try_start_4
    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v1, v6, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    :try_start_5
    invoke-virtual {p1, v3, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_4

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v3, v6, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    :try_start_6
    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v6, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v2

    :goto_5
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_4

    :cond_6
    :try_start_7
    new-instance v2, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;

    invoke-direct {v2, v0, v5}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    throw v2

    :cond_7
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move v1, v3

    goto :goto_5

    :catch_4
    move-exception v1

    move v1, v0

    move v0, v2

    goto/16 :goto_4

    nop

    :array_0
    .array-data 1
        0x75t
        0x53t
        0x5ft
        0x5dt
        0x0t
        0x56t
        0x13t
        0x45t
        0x44t
        0x58t
        0x11t
        0x5bt
        0x5dt
        0x55t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x3t
        0x4ct
        0x15t
        0xat
        0xat
        0x52t
        0x7t
        0x40t
        0x15t
    .end array-data
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v1, 0x0

    move v0, p1

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v1, v3

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    const v4, 0xd800

    if-gt v4, v3, :cond_0

    const v4, 0xdfff

    if-gt v3, v4, :cond_0

    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;

    invoke-direct {v1, v0, v2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;-><init>(II)V

    throw v1

    :cond_3
    return v1
.end method


# virtual methods
.method public decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1, p3}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->decodeUtf8Array([BII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->decodeUtf8Buffer(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->encodeUtf8Array(Ljava/lang/CharSequence;[BII)I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->encodeUtf8Buffer(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public encodedLength(Ljava/lang/CharSequence;)I
    .locals 1

    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->computeEncodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method
