.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v0, 0x9

    if-ge v2, v0, :cond_1

    rsub-int/lit8 v0, v2, 0x8

    shl-int v0, v1, v0

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    aput v0, p1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5a8463"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x76t
        0x0t
        0x56t
        0x14t
        0x59t
        0x5dt
        0x59t
        0x18t
        0x18t
        0x51t
        0x58t
        0x50t
        0x5at
        0x5t
        0x5dt
        0x14t
        0x75t
        0x7ct
        0x71t
        0x24t
        0x67t
        0x7t
        0xft
        0x1ft
        0x15t
        0x3t
        0x4dt
        0x40t
        0x16t
        0x54t
        0x5at
        0x15t
        0x18t
    .end array-data
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 14

    const/16 v13, 0x2c

    const/16 v12, 0x27

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v0, 0x50

    if-le v4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x3f

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v5, "b6eda3"

    invoke-static {v3, v5, v1, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x9

    new-array v5, v0, [I

    add-int/lit8 v0, v4, 0x19

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_3

    new-array v2, v13, [B

    fill-array-data v2, :array_1

    const-string v6, "56a947"

    invoke-static {v2, v6, v9, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "d82919"

    invoke-static {v3, v4, v9, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v6, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v2, v6, v2

    invoke-static {v2, v5}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    array-length v6, v5

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_2

    aget v7, v5, v0

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_3
    new-array v3, v0, [Z

    sget-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v0, v0, v12

    invoke-static {v0, v5}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    invoke-static {v3, v1, v5, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v0

    new-array v6, v9, [I

    aput v9, v6, v1

    invoke-static {v3, v0, v6, v1}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_4

    new-array v7, v13, [B

    fill-array-data v7, :array_3

    const-string v8, "52b91c"

    const-wide v10, -0x3e3c1a941a800000L    # -6.67604939E8

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    sget-object v8, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v7, v8, v7

    invoke-static {v7, v5}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    invoke-static {v3, v2, v5, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v2, v7

    invoke-static {v3, v2, v6, v1}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v0, v0, v12

    invoke-static {v0, v5}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    invoke-static {v3, v2, v5, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    return-object v3

    :array_0
    .array-data 1
        0x30t
        0x53t
        0x14t
        0x11t
        0x4t
        0x40t
        0x16t
        0x53t
        0x1t
        0x44t
        0x2t
        0x5ct
        0xct
        0x42t
        0x0t
        0xat
        0x15t
        0x40t
        0x42t
        0x45t
        0xdt
        0xbt
        0x14t
        0x5ft
        0x6t
        0x16t
        0x7t
        0x1t
        0x41t
        0x5ft
        0x7t
        0x45t
        0x16t
        0x44t
        0x15t
        0x5bt
        0x3t
        0x58t
        0x45t
        0x5ct
        0x51t
        0x13t
        0x6t
        0x5ft
        0x2t
        0xdt
        0x15t
        0x40t
        0x42t
        0x5at
        0xat
        0xat
        0x6t
        0x1ft
        0x42t
        0x54t
        0x10t
        0x10t
        0x41t
        0x54t
        0xdt
        0x42t
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x5t
        0x7t
        0x53t
        0xat
        0x0t
        0x2t
        0x3t
        0x1t
        0x59t
        0x0t
        0x75t
        0x75t
        0x76t
        0x72t
        0x24t
        0x7ft
        0x73t
        0x7ft
        0x7ct
        0x7ct
        0x2at
        0x75t
        0x79t
        0x79t
        0x7at
        0x66t
        0x30t
        0x6bt
        0x67t
        0x63t
        0x60t
        0x60t
        0x36t
        0x61t
        0x6dt
        0x6dt
        0x18t
        0x18t
        0x41t
        0x13t
        0x10t
        0x18t
        0x1et
        0x13t
    .end array-data

    :array_2
    .array-data 1
        0x26t
        0x59t
        0x56t
        0x19t
        0x52t
        0x56t
        0xat
        0x4ct
        0x57t
        0x57t
        0x45t
        0x4at
        0x5et
        0x18t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5t
        0x3t
        0x50t
        0xat
        0x5t
        0x56t
        0x3t
        0x5t
        0x5at
        0x0t
        0x70t
        0x21t
        0x76t
        0x76t
        0x27t
        0x7ft
        0x76t
        0x2bt
        0x7ct
        0x78t
        0x29t
        0x75t
        0x7ct
        0x2dt
        0x7at
        0x62t
        0x33t
        0x6bt
        0x62t
        0x37t
        0x60t
        0x64t
        0x35t
        0x61t
        0x68t
        0x39t
        0x18t
        0x1ct
        0x42t
        0x13t
        0x15t
        0x4ct
        0x1et
        0x17t
    .end array-data
.end method
