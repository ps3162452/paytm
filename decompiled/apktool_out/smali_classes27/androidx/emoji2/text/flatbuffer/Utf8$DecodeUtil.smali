.class Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DecodeUtil"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleFourBytes(BBBB[CI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_0

    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x7

    shl-int/lit8 v0, v0, 0x12

    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    invoke-static {p3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->highSurrogate(I)C

    move-result v1

    aput-char v1, p4, p5

    add-int/lit8 v1, p5, 0x1

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->lowSurrogate(I)C

    move-result v0

    aput-char v0, p4, v1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ee177d"

    const v3, 0x4e62bcf2    # 9.510084E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2ct
        0xbt
        0x47t
        0x56t
        0x5bt
        0xdt
        0x1t
        0x45t
        0x64t
        0x63t
        0x71t
        0x49t
        0x5dt
    .end array-data
.end method

.method static handleOneByte(B[CI)V
    .locals 1

    int-to-char v0, p0

    int-to-char v0, v0

    aput-char v0, p1, p2

    return-void
.end method

.method static handleThreeBytes(BBB[CI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v1, -0x60

    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x20

    if-ne p0, v0, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1

    if-ge p1, v1, :cond_2

    :cond_1
    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 v0, p0, 0xf

    shl-int/lit8 v0, v0, 0xc

    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    invoke-static {p2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    or-int/2addr v0, v1

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p3, p4

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "146df3"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x78t
        0x5at
        0x40t
        0x5t
        0xat
        0x5at
        0x55t
        0x14t
        0x63t
        0x30t
        0x20t
        0x1et
        0x9t
    .end array-data
.end method

.method static handleTwoBytes(BB[CI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_1

    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    or-int/2addr v0, v1

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p2, p3

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x33

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "590862"

    const/16 v3, 0x6b33

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x32

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "7c211a"

    const/16 v3, -0x350c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7ct
        0x57t
        0x46t
        0x59t
        0x5at
        0x5bt
        0x51t
        0x19t
        0x65t
        0x6ct
        0x70t
        0x1ft
        0xdt
        0x3t
        0x10t
        0x71t
        0x5at
        0x5et
        0x50t
        0x5et
        0x51t
        0x54t
        0x16t
        0x46t
        0x47t
        0x58t
        0x59t
        0x54t
        0x5ft
        0x5ct
        0x52t
        0x19t
        0x52t
        0x41t
        0x42t
        0x57t
        0x15t
        0x50t
        0x5et
        0x18t
        0x4t
        0x12t
        0x57t
        0x40t
        0x44t
        0x5dt
        0x45t
        0x12t
        0x40t
        0x4dt
        0x56t
    .end array-data

    :array_1
    .array-data 1
        0x7et
        0xdt
        0x44t
        0x50t
        0x5dt
        0x8t
        0x53t
        0x43t
        0x67t
        0x65t
        0x77t
        0x4ct
        0xft
        0x59t
        0x12t
        0x78t
        0x5dt
        0xdt
        0x52t
        0x4t
        0x53t
        0x5dt
        0x11t
        0xdt
        0x52t
        0x2t
        0x56t
        0x58t
        0x5ft
        0x6t
        0x17t
        0x1t
        0x4bt
        0x45t
        0x54t
        0x41t
        0x5et
        0xdt
        0x12t
        0x3t
        0x11t
        0x3t
        0x4et
        0x17t
        0x57t
        0x42t
        0x11t
        0x14t
        0x43t
        0x5t
    .end array-data
.end method

.method private static highSurrogate(I)C
    .locals 2

    ushr-int/lit8 v0, p0, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private static isNotTrailingByte(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOneByte(B)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isThreeBytes(B)Z
    .locals 1

    const/16 v0, -0x10

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTwoBytes(B)Z
    .locals 1

    const/16 v0, -0x20

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lowSurrogate(I)C
    .locals 2

    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private static trailingByteValue(B)I
    .locals 1

    and-int/lit8 v0, p0, 0x3f

    return v0
.end method
