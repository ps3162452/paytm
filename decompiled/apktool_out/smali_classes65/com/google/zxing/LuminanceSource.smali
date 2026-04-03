.class public abstract Lcom/google/zxing/LuminanceSource;
.super Ljava/lang/Object;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/LuminanceSource;->width:I

    iput p2, p0, Lcom/google/zxing/LuminanceSource;->height:I

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "86bb16"

    const v3, 0x4ed55e66

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6ct
        0x5et
        0xbt
        0x11t
        0x11t
        0x5at
        0x4dt
        0x5bt
        0xbt
        0xct
        0x50t
        0x58t
        0x5bt
        0x53t
        0x42t
        0x11t
        0x5et
        0x43t
        0x4at
        0x55t
        0x7t
        0x42t
        0x55t
        0x59t
        0x5dt
        0x45t
        0x42t
        0xct
        0x5et
        0x42t
        0x18t
        0x45t
        0x17t
        0x12t
        0x41t
        0x59t
        0x4at
        0x42t
        0x42t
        0x1t
        0x43t
        0x59t
        0x48t
        0x46t
        0xbt
        0xct
        0x56t
        0x18t
    .end array-data
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/LuminanceSource;->height:I

    return v0
.end method

.method public abstract getMatrix()[B
.end method

.method public abstract getRow(I[B)[B
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/LuminanceSource;->width:I

    return v0
.end method

.method public invert()Lcom/google/zxing/LuminanceSource;
    .locals 1

    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x3e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b29a1d"

    const v3, 0x4ec23405

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x36t
        0x5at
        0x50t
        0x12t
        0x11t
        0x8t
        0x17t
        0x5ft
        0x50t
        0xft
        0x50t
        0xat
        0x1t
        0x57t
        0x19t
        0x12t
        0x5et
        0x11t
        0x10t
        0x51t
        0x5ct
        0x41t
        0x55t
        0xbt
        0x7t
        0x41t
        0x19t
        0xft
        0x5et
        0x10t
        0x42t
        0x41t
        0x4ct
        0x11t
        0x41t
        0xbt
        0x10t
        0x46t
        0x19t
        0x13t
        0x5et
        0x10t
        0x3t
        0x46t
        0x50t
        0xet
        0x5ft
        0x44t
        0x0t
        0x4bt
        0x19t
        0x58t
        0x1t
        0x44t
        0x6t
        0x57t
        0x5et
        0x13t
        0x54t
        0x1t
        0x11t
        0x1ct
    .end array-data
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x3e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ee151e"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x31t
        0xdt
        0x58t
        0x46t
        0x11t
        0x9t
        0x10t
        0x8t
        0x58t
        0x5bt
        0x50t
        0xbt
        0x6t
        0x0t
        0x11t
        0x46t
        0x5et
        0x10t
        0x17t
        0x6t
        0x54t
        0x15t
        0x55t
        0xat
        0x0t
        0x16t
        0x11t
        0x5bt
        0x5et
        0x11t
        0x45t
        0x16t
        0x44t
        0x45t
        0x41t
        0xat
        0x17t
        0x11t
        0x11t
        0x47t
        0x5et
        0x11t
        0x4t
        0x11t
        0x58t
        0x5at
        0x5ft
        0x45t
        0x7t
        0x1ct
        0x11t
        0x1t
        0x4t
        0x45t
        0x1t
        0x0t
        0x56t
        0x47t
        0x54t
        0x0t
        0x16t
        0x4bt
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/zxing/LuminanceSource;->width:I

    new-array v0, v0, [B

    new-instance v5, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/zxing/LuminanceSource;->height:I

    iget v3, p0, Lcom/google/zxing/LuminanceSource;->width:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/google/zxing/LuminanceSource;->height:I

    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v2

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/google/zxing/LuminanceSource;->width:I

    if-ge v3, v4, :cond_3

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x40

    if-ge v4, v6, :cond_0

    const/16 v4, 0x23

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/16 v6, 0x80

    if-ge v4, v6, :cond_1

    const/16 v4, 0x2b

    goto :goto_2

    :cond_1
    const/16 v6, 0xc0

    if-ge v4, v6, :cond_2

    const/16 v4, 0x2e

    goto :goto_2

    :cond_2
    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
