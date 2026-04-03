.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v2

    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4, v8}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    if-eqz p2, :cond_1

    sget-object v1, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    const/16 v1, 0x8

    :goto_1
    const/4 v5, 0x1

    shr-int v1, v2, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-eqz v3, :cond_3

    move v1, v2

    :goto_2
    const/4 v3, 0x0

    move v7, v3

    move-object/from16 v3, p2

    :goto_3
    if-ge v7, v1, :cond_0

    add-int/lit8 v5, v7, 0x1

    div-int/lit8 v5, v5, 0x2

    and-int/lit8 v6, v7, 0x1

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_5

    :goto_5
    shr-int/lit8 v6, v2, 0x1

    mul-int/2addr v5, v9

    add-int v10, v6, v5

    if-ltz v10, :cond_0

    if-lt v10, v2, :cond_6

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    const/16 v1, 0xf

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    neg-int v5, v5

    goto :goto_5

    :cond_6
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v4}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_6
    const/4 v5, 0x2

    if-ge v6, v5, :cond_9

    const/4 v5, 0x1

    if-ne v6, v5, :cond_7

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->reverse()V

    if-eqz v3, :cond_7

    sget-object v5, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/util/EnumMap;

    const-class v11, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v5, v11}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v5

    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4, v3}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v5

    const/4 v11, 0x1

    if-ne v6, v11, :cond_8

    sget-object v11, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v12, 0xb4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v11

    if-eqz v11, :cond_8

    new-instance v12, Lcom/google/zxing/ResultPoint;

    int-to-float v13, v8

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    :try_start_2
    new-instance v13, Lcom/google/zxing/ResultPoint;

    int-to-float v14, v8

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v14, v15

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v13, v11, v12
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_8
    return-object v5

    :catch_0
    move-exception v5

    :cond_9
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto/16 :goto_3

    :catch_1
    move-exception v5

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_6
.end method

.method protected static patternMatchVariance([I[IF)F
    .locals 9

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    array-length v5, p0

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget v6, p0, v1

    add-int/2addr v4, v6

    aget v6, p1, v1

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v4, v3, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    int-to-float v1, v4

    int-to-float v3, v3

    div-float v6, v1, v3

    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_2
    if-ge v3, v5, :cond_4

    aget v1, p0, v3

    aget v7, p1, v3

    int-to-float v7, v7

    mul-float/2addr v7, v6

    int-to-float v8, v1

    cmpl-float v8, v8, v7

    if-lez v8, :cond_3

    int-to-float v1, v1

    sub-float/2addr v1, v7

    :goto_3
    mul-float v7, p2, v6

    cmpl-float v7, v1, v7

    if-gtz v7, :cond_1

    add-float/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_2

    :cond_3
    int-to-float v1, v1

    sub-float v1, v7, v1

    goto :goto_3

    :cond_4
    int-to-float v0, v4

    div-float v0, v2, v0

    goto :goto_1
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v4, p2

    invoke-static {p2, v2, v4, v2}, Ljava/util/Arrays;->fill([IIII)V

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-lt p1, v5, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v3, v2

    :goto_1
    if-ge p1, v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v0

    if-eqz v6, :cond_2

    aget v6, p2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, p2, v3

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_5

    :cond_3
    if-eq v3, v4, :cond_7

    add-int/lit8 v0, v4, -0x1

    if-ne v3, v0, :cond_4

    if-eq p1, v5, :cond_7

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5
    aput v1, p2, v3

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    array-length v1, p2

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    :cond_0
    :goto_0
    if-lez p1, :cond_2

    if-ltz v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-ltz v1, :cond_3

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_3
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x10e

    if-eqz v0, :cond_3

    sget-object v5, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    :goto_2
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v4

    move v0, v2

    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v5, v4

    aget-object v6, v1, v0

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    aget-object v6, v1, v0

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-direct {v2, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    throw v1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    return-void
.end method
