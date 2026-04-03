.class public final Lcom/google/zxing/oned/EAN13Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;


# static fields
.field private static final CODE_WIDTH:I = 0x5f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 6
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

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "11d3a1"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

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
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x72t
        0x50t
        0xat
        0x13t
        0xet
        0x5ft
        0x5dt
        0x48t
        0x44t
        0x56t
        0xft
        0x52t
        0x5et
        0x55t
        0x1t
        0x13t
        0x24t
        0x70t
        0x7ft
        0x6et
        0x55t
        0x0t
        0x4dt
        0x11t
        0x53t
        0x44t
        0x10t
        0x13t
        0x6t
        0x5et
        0x45t
        0x11t
    .end array-data
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "656510"

    const v4, 0x4d3f76fc

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d185c6"

    const-wide/32 v4, 0x232454bd

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "dbbc83"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v4, v1, v0

    const/16 v0, 0x5f

    new-array v5, v0, [Z

    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v5, v7, v0, v3}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    move v1, v0

    move v2, v3

    :goto_0
    const/4 v0, 0x6

    if-gt v2, v0, :cond_3

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rsub-int/lit8 v6, v2, 0x6

    shr-int v6, v4, v6

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_2

    add-int/lit8 v0, v0, 0xa

    :cond_2
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v0, v6, v0

    invoke-static {v5, v1, v0, v7}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v5, v1, v0, v7}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x7

    :goto_1
    const/16 v2, 0xc

    if-gt v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v2, v4, v2

    invoke-static {v5, v0, v2, v3}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v5, v0, v1, v3}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    return-object v5

    :array_0
    .array-data 1
        0x64t
        0x50t
        0x47t
        0x40t
        0x54t
        0x43t
        0x42t
        0x50t
        0x52t
        0x15t
        0x52t
        0x5ft
        0x58t
        0x41t
        0x53t
        0x5bt
        0x45t
        0x43t
        0x16t
        0x46t
        0x5et
        0x5at
        0x44t
        0x5ct
        0x52t
        0x15t
        0x54t
        0x50t
        0x11t
        0x1t
        0x5t
        0x15t
        0x52t
        0x5ct
        0x56t
        0x59t
        0x42t
        0x46t
        0x16t
        0x59t
        0x5et
        0x5et
        0x51t
        0x19t
        0x16t
        0x57t
        0x44t
        0x44t
        0x16t
        0x52t
        0x59t
        0x41t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x27t
        0x5et
        0x56t
        0x41t
        0x6t
        0x58t
        0x10t
        0x42t
        0x18t
        0x51t
        0xct
        0x16t
        0xat
        0x5et
        0x4ct
        0x15t
        0x13t
        0x57t
        0x17t
        0x42t
        0x18t
        0x56t
        0xbt
        0x53t
        0x7t
        0x5at
        0x4bt
        0x40t
        0xet
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0xet
        0xet
        0x6t
        0x5ft
        0x52t
        0x8t
        0x42t
        0x1t
        0xct
        0x56t
        0x47t
        0x1t
        0xct
        0x16t
        0x10t
    .end array-data
.end method
