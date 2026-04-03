.class public final Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;


# instance fields
.field private final image:Ljava/awt/image/BufferedImage;

.field private final left:I

.field private rgbData:[I

.field private final top:I


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;IIII)V
    .locals 4

    invoke-direct {p0, p4, p5}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    add-int v2, p2, p4

    if-gt v2, v0, :cond_0

    add-int v0, p3, p5

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a279e2"

    const v3, -0x31ee923b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    iput p2, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->left:I

    iput p3, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->top:I

    return-void

    :array_0
    .array-data 1
        0x22t
        0x40t
        0x58t
        0x49t
        0x45t
        0x40t
        0x4t
        0x51t
        0x43t
        0x58t
        0xbt
        0x55t
        0xdt
        0x57t
        0x17t
        0x5dt
        0xat
        0x57t
        0x12t
        0x12t
        0x59t
        0x56t
        0x11t
        0x12t
        0x7t
        0x5bt
        0x43t
        0x19t
        0x12t
        0x5bt
        0x15t
        0x5at
        0x5et
        0x57t
        0x45t
        0x5bt
        0xct
        0x53t
        0x50t
        0x5ct
        0x45t
        0x56t
        0x0t
        0x46t
        0x56t
        0x17t
    .end array-data
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 6

    new-instance v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 12

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getHeight()I

    move-result v4

    mul-int v0, v3, v4

    new-array v8, v0, [B

    new-array v5, v0, [I

    iget-object v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    iget v1, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->left:I

    iget v2, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->top:I

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move v1, v6

    :goto_0
    if-ge v1, v4, :cond_1

    mul-int v2, v1, v3

    move v0, v6

    :goto_1
    if-ge v0, v3, :cond_0

    add-int v7, v2, v0

    aget v7, v5, v7

    add-int v9, v2, v0

    shr-int/lit8 v10, v7, 0x10

    and-int/lit16 v10, v10, 0xff

    mul-int/lit16 v10, v10, 0x132

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    mul-int/lit16 v11, v11, 0x259

    add-int/2addr v10, v11

    and-int/lit16 v7, v7, 0xff

    mul-int/lit8 v7, v7, 0x75

    add-int/2addr v7, v10

    shr-int/lit8 v7, v7, 0xa

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v8, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method public getRow(I[B)[B
    .locals 8

    const/4 v6, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9deb02"

    const/16 v4, 0x68bf

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
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getWidth()I

    move-result v3

    if-eqz p2, :cond_2

    array-length v0, p2

    if-ge v0, v3, :cond_3

    :cond_2
    new-array p2, v3, [B

    :cond_3
    iget-object v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->rgbData:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->rgbData:[I

    array-length v0, v0

    if-ge v0, v3, :cond_5

    :cond_4
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->rgbData:[I

    :cond_5
    iget-object v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    iget v1, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->left:I

    iget v2, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->top:I

    add-int/2addr v2, p1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->rgbData:[I

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    :goto_0
    if-ge v6, v3, :cond_6

    iget-object v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->rgbData:[I

    aget v0, v0, v6

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x132

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x259

    add-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x75

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return-object p2

    nop

    :array_0
    .array-data 1
        0x6bt
        0x1t
        0x14t
        0x17t
        0x55t
        0x41t
        0x4dt
        0x1t
        0x1t
        0x42t
        0x42t
        0x5dt
        0x4et
        0x44t
        0xct
        0x11t
        0x10t
        0x5dt
        0x4ct
        0x10t
        0x16t
        0xbt
        0x54t
        0x57t
        0x19t
        0x10t
        0xdt
        0x7t
        0x10t
        0x5bt
        0x54t
        0x5t
        0x2t
        0x7t
        0xat
        0x12t
    .end array-data
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->isRotateSupported()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x14

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "e69d7b"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    new-instance v17, Ljava/awt/image/AffineTransformOp;

    new-instance v3, Ljava/awt/geom/AffineTransform;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v0, v16

    int-to-double v14, v0

    invoke-direct/range {v3 .. v15}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/awt/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    new-instance v3, Ljava/awt/image/BufferedImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v4

    move/from16 v0, v16

    invoke-direct {v3, v2, v0, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getWidth()I

    move-result v7

    new-instance v2, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->top:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->left:I

    add-int/2addr v5, v7

    sub-int v5, v16, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getHeight()I

    move-result v6

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    return-object v2

    nop

    :array_0
    .array-data 1
        0x37t
        0x59t
        0x4dt
        0x5t
        0x43t
        0x7t
        0x45t
        0x58t
        0x56t
        0x10t
        0x17t
        0x11t
        0x10t
        0x46t
        0x49t
        0xbt
        0x45t
        0x16t
        0x0t
        0x52t
    .end array-data
.end method
