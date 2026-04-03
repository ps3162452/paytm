.class final Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;


# instance fields
.field private final mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final version:Lcom/google/zxing/datamatrix/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    iget-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private static readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeRows()I

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeColumns()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    if-eq v3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7bc3fb"

    const v3, -0x31665419

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v3, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeRows()I

    move-result v5

    iget-object v3, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeColumns()I

    move-result v6

    div-int v7, v0, v5

    div-int v8, v2, v6

    new-instance v9, Lcom/google/zxing/common/BitMatrix;

    mul-int v0, v8, v6

    mul-int v2, v7, v5

    invoke-direct {v9, v0, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v4, v1

    :goto_0
    if-ge v4, v7, :cond_5

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_3

    move v0, v1

    :goto_3
    if-ge v0, v6, :cond_2

    add-int/lit8 v10, v6, 0x2

    mul-int/2addr v10, v3

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v0

    add-int/lit8 v11, v5, 0x2

    mul-int/2addr v11, v4

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v11, v2

    invoke-virtual {p1, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_1

    mul-int v10, v3, v6

    add-int/2addr v10, v0

    mul-int v11, v4, v5

    add-int/2addr v11, v2

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_5
    return-object v9

    nop

    :array_0
    .array-data 1
        0x73t
        0xbt
        0xet
        0x56t
        0x8t
        0x11t
        0x5et
        0xdt
        0xdt
        0x13t
        0x9t
        0x4t
        0x17t
        0x0t
        0xat
        0x47t
        0x2bt
        0x3t
        0x45t
        0xbt
        0x1bt
        0x13t
        0xbt
        0x17t
        0x44t
        0x16t
        0x43t
        0x5et
        0x7t
        0x16t
        0x54t
        0xat
        0x43t
        0x47t
        0xet
        0x7t
        0x17t
        0x14t
        0x6t
        0x41t
        0x15t
        0xbt
        0x58t
        0xct
        0x43t
        0x40t
        0xft
        0x18t
        0x52t
    .end array-data
.end method

.method getVersion()Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    return-object v0
.end method

.method readCodewords()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v0

    new-array v8, v0, [B

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v7, v3

    move v12, v1

    move v1, v4

    move v4, v0

    move v0, v5

    move v5, v12

    move v13, v2

    move v2, v6

    move v6, v13

    :goto_0
    if-ne v0, v9, :cond_0

    if-nez v1, :cond_0

    if-nez v7, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner1(II)I

    move-result v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v8, v2

    add-int/lit8 v2, v0, -0x2

    add-int/lit8 v1, v1, 0x2

    const/4 v0, 0x1

    move v12, v4

    move v4, v1

    move v1, v5

    move v5, v2

    move v2, v6

    move v6, v3

    move v3, v0

    move v0, v12

    :goto_1
    if-lt v5, v9, :cond_a

    if-lt v4, v10, :cond_a

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v0

    if-eq v6, v0, :cond_6

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    add-int/lit8 v3, v9, -0x2

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    and-int/lit8 v3, v10, 0x3

    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner2(II)I

    move-result v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v8, v2

    add-int/lit8 v2, v0, -0x2

    add-int/lit8 v1, v1, 0x2

    const/4 v0, 0x1

    move v4, v1

    move v1, v5

    move v5, v2

    move v2, v6

    move v6, v3

    move v3, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v9, 0x4

    if-ne v0, v3, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    and-int/lit8 v3, v10, 0x7

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner3(II)I

    move-result v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v8, v2

    add-int/lit8 v2, v0, -0x2

    add-int/lit8 v1, v1, 0x2

    const/4 v0, 0x1

    move v5, v2

    move v2, v6

    move v6, v3

    move v3, v7

    move v12, v1

    move v1, v0

    move v0, v4

    move v4, v12

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v9, -0x2

    if-ne v0, v3, :cond_3

    if-nez v1, :cond_3

    and-int/lit8 v3, v10, 0x7

    const/4 v11, 0x4

    if-ne v3, v11, :cond_3

    if-nez v6, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner4(II)I

    move-result v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v8, v2

    add-int/lit8 v2, v0, -0x2

    add-int/lit8 v1, v1, 0x2

    const/4 v0, 0x1

    move v6, v3

    move v3, v7

    move v12, v0

    move v0, v4

    move v4, v1

    move v1, v5

    move v5, v2

    move v2, v12

    goto :goto_1

    :cond_3
    move v3, v1

    move v1, v0

    move v0, v2

    if-ge v1, v9, :cond_9

    if-ltz v3, :cond_9

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v3, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    aput-byte v11, v8, v0

    :goto_2
    add-int/lit8 v0, v1, -0x2

    add-int/lit8 v1, v3, 0x2

    if-ltz v0, :cond_4

    if-lt v1, v10, :cond_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    move v3, v1

    move v1, v2

    move v2, v0

    :goto_3
    if-ltz v2, :cond_8

    if-ge v3, v10, :cond_8

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v3, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    aput-byte v11, v8, v1

    :goto_4
    add-int/lit8 v1, v2, 0x2

    add-int/lit8 v2, v3, -0x2

    if-ge v1, v9, :cond_5

    if-gez v2, :cond_7

    :cond_5
    add-int/lit8 v3, v1, 0x3

    add-int/lit8 v1, v2, 0x1

    move v2, v6

    move v6, v0

    move v0, v4

    move v4, v1

    move v1, v5

    move v5, v3

    move v3, v7

    goto/16 :goto_1

    :cond_6
    return-object v8

    :cond_7
    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v2, v0

    goto :goto_2

    :cond_a
    move v7, v3

    move v12, v1

    move v1, v4

    move v4, v0

    move v0, v5

    move v5, v12

    move v13, v2

    move v2, v6

    move v6, v13

    goto/16 :goto_0
.end method

.method readCorner1(II)I
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method readCorner2(II)I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x4

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method readCorner3(II)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method readCorner4(II)I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method readModule(IIII)Z
    .locals 3

    if-gez p1, :cond_1

    add-int v0, p1, p3

    add-int/lit8 v1, p3, 0x4

    and-int/lit8 v1, v1, 0x7

    rsub-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    :goto_0
    if-gez v1, :cond_0

    add-int/2addr v1, p4

    add-int/lit8 v2, p4, 0x4

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    return v0

    :cond_1
    move v0, p1

    move v1, p2

    goto :goto_0
.end method

.method readUtah(IIII)I
    .locals 3

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method
