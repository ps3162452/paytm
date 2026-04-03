.class public final Lcom/google/zxing/aztec/AztecWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "320cb9"

    const v2, 0x4ed888c2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        0x61t
        0x7ft
        0x4et
        0x5at
        0x1t
        0x6t
        0xbt
        0x1dt
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "065d68"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p5, p6}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/google/zxing/aztec/AztecWriter;->renderResult(Lcom/google/zxing/aztec/encoder/AztecCode;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x73t
        0x57t
        0x5bt
        0x44t
        0x59t
        0x56t
        0x5ct
        0x4ft
        0x15t
        0x1t
        0x58t
        0x5bt
        0x5ft
        0x52t
        0x50t
        0x44t
        0x77t
        0x62t
        0x64t
        0x73t
        0x76t
        0x48t
        0x16t
        0x5at
        0x45t
        0x42t
        0x15t
        0x3t
        0x59t
        0x4ct
        0x10t
    .end array-data
.end method

.method private static renderResult(Lcom/google/zxing/aztec/encoder/AztecCode;II)Lcom/google/zxing/common/BitMatrix;
    .locals 12

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/AztecCode;->getMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int v0, v2, v7

    div-int v3, v4, v8

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    mul-int v0, v7, v9

    sub-int v0, v2, v0

    div-int/lit8 v3, v0, 0x2

    mul-int v0, v8, v9

    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x2

    new-instance v10, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v10, v2, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v4, v1

    move v5, v0

    :goto_0
    if-ge v4, v8, :cond_3

    move v0, v1

    move v2, v3

    :goto_1
    if-ge v0, v7, :cond_2

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10, v2, v5, v9, v9}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v9

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v4, 0x1

    add-int v2, v5, v9

    move v4, v0

    move v5, v2

    goto :goto_0

    :cond_3
    return-object v10
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/aztec/AztecWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 7
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

    const/4 v1, 0x0

    if-nez p5, :cond_0

    move-object v3, v1

    :goto_0
    if-nez p5, :cond_1

    move-object v2, v1

    :goto_1
    if-nez p5, :cond_2

    move-object v0, v1

    :goto_2
    if-nez v3, :cond_3

    sget-object v4, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_3
    if-nez v2, :cond_4

    const/16 v5, 0x21

    :goto_4
    if-nez v0, :cond_5

    const/4 v6, 0x0

    :goto_5
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/aztec/AztecWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    goto :goto_2

    :cond_3
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_5
.end method
