.class public final Lcom/google/zxing/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final luminances:[B

.field private final top:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 9

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    iput p1, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iput v1, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    iput v1, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    mul-int v0, p1, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    mul-int v3, v2, p1

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_1

    add-int v4, v3, v0

    aget v4, p3, v4

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v4, v4, 0xff

    if-ne v5, v6, :cond_0

    if-ne v6, v4, :cond_0

    iget-object v4, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    add-int v6, v3, v0

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    add-int v8, v3, v0

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v7, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .locals 4

    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "80cd6b"

    const v3, -0x3145b8e2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iput p3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iput p4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    iput p5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x42t
        0xct
        0x14t
        0x16t
        0x10t
        0x5dt
        0x53t
        0x17t
        0x5t
        0x58t
        0x5t
        0x54t
        0x55t
        0x43t
        0x0t
        0x59t
        0x7t
        0x4bt
        0x10t
        0xdt
        0xbt
        0x42t
        0x42t
        0x5et
        0x59t
        0x17t
        0x44t
        0x41t
        0xbt
        0x4ct
        0x58t
        0xat
        0xat
        0x16t
        0xbt
        0x55t
        0x51t
        0x4t
        0x1t
        0x16t
        0x6t
        0x59t
        0x44t
        0x2t
        0x4at
    .end array-data
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 8

    new-instance v0, Lcom/google/zxing/RGBLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iget v4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int/2addr v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/RGBLuminanceSource;-><init>([BIIIIII)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v4

    iget v0, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v3, v0, :cond_1

    iget v0, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    if-ne v4, v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    mul-int v5, v3, v4

    new-array v0, v5, [B

    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    iget v6, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int/2addr v1, v6

    iget v6, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v1, v6

    iget v6, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    invoke-static {v3, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    :goto_1
    if-ge v2, v4, :cond_0

    mul-int v6, v2, v3

    invoke-static {v5, v1, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    add-int/2addr v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getRow(I[B)[B
    .locals 6

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4488ab"

    const-wide v4, -0x3e385c87f9800000L    # -7.93178125E8

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

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_2

    array-length v1, p2

    if-ge v1, v0, :cond_3

    :cond_2
    new-array p2, v0, [B

    :cond_3
    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    iget-object v4, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    add-int/2addr v1, p1

    mul-int/2addr v1, v2

    add-int/2addr v1, v3

    const/4 v2, 0x0

    invoke-static {v4, v1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :array_0
    .array-data 1
        0x66t
        0x51t
        0x49t
        0x4dt
        0x4t
        0x11t
        0x40t
        0x51t
        0x5ct
        0x18t
        0x13t
        0xdt
        0x43t
        0x14t
        0x51t
        0x4bt
        0x41t
        0xdt
        0x41t
        0x40t
        0x4bt
        0x51t
        0x5t
        0x7t
        0x14t
        0x40t
        0x50t
        0x5dt
        0x41t
        0xbt
        0x59t
        0x55t
        0x5ft
        0x5dt
        0x5bt
        0x42t
    .end array-data
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
