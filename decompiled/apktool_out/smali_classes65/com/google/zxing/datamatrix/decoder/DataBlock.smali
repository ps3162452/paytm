.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 13

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v6

    array-length v2, v6

    move v0, v3

    move v1, v3

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v6, v0

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v8, v1, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    array-length v7, v6

    move v0, v3

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v9, v6, v4

    move v2, v3

    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v10

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v11

    add-int/lit8 v1, v0, 0x1

    new-instance v12, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    add-int/2addr v11, v10

    new-array v11, v11, [B

    invoke-direct {v12, v10, v11}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v12, v8, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v1, v1

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v2

    sub-int v2, v1, v2

    move v5, v3

    move v6, v3

    :goto_3
    add-int/lit8 v1, v2, -0x1

    if-ge v5, v1, :cond_4

    move v1, v3

    :goto_4
    if-ge v1, v0, :cond_3

    aget-object v4, v8, v1

    iget-object v7, v4, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    add-int/lit8 v1, v1, 0x1

    move v6, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v1

    const/16 v4, 0x18

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    move v7, v1

    :goto_5
    if-eqz v7, :cond_6

    const/16 v1, 0x8

    :goto_6
    move v4, v3

    :goto_7
    if-ge v4, v1, :cond_7

    aget-object v5, v8, v4

    iget-object v9, v5, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v10, v2, -0x1

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    aput-byte v6, v9, v10

    add-int/lit8 v4, v4, 0x1

    move v6, v5

    goto :goto_7

    :cond_5
    move v7, v3

    goto :goto_5

    :cond_6
    move v1, v0

    goto :goto_6

    :cond_7
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v9, v1

    move v1, v6

    :goto_8
    if-ge v2, v9, :cond_b

    move v6, v1

    move v5, v3

    :goto_9
    if-ge v5, v0, :cond_a

    if-eqz v7, :cond_8

    add-int/lit8 v1, v5, 0x8

    rem-int/2addr v1, v0

    move v4, v1

    :goto_a
    if-eqz v7, :cond_9

    const/4 v1, 0x7

    if-le v4, v1, :cond_9

    add-int/lit8 v1, v2, -0x1

    :goto_b
    aget-object v4, v8, v4

    iget-object v10, v4, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    aput-byte v6, v10, v1

    add-int/lit8 v5, v5, 0x1

    move v6, v4

    goto :goto_9

    :cond_8
    move v4, v5

    goto :goto_a

    :cond_9
    move v1, v2

    goto :goto_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move v1, v6

    goto :goto_8

    :cond_b
    array-length v0, p0

    if-eq v1, v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    return-object v8
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
