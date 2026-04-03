.class public final Lcom/google/zxing/oned/UPCAWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/Writer;


# instance fields
.field private final subWriter:Lcom/google/zxing/oned/EAN13Writer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/oned/EAN13Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCAWriter;->subWriter:Lcom/google/zxing/oned/EAN13Writer;

    return-void
.end method

.method private static preencode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v4, 0xb

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    rem-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x3

    :goto_1
    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rsub-int v1, v1, 0x3e8

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v0, 0xc

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ec33f5"

    const-wide/32 v4, 0x319e4397

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x37t
        0x6t
        0x42t
        0x46t
        0x3t
        0x46t
        0x11t
        0x6t
        0x57t
        0x13t
        0x5t
        0x5at
        0xbt
        0x17t
        0x56t
        0x5dt
        0x12t
        0x46t
        0x45t
        0x10t
        0x5bt
        0x5ct
        0x13t
        0x59t
        0x1t
        0x43t
        0x51t
        0x56t
        0x46t
        0x4t
        0x54t
        0x43t
        0x5ct
        0x41t
        0x46t
        0x4t
        0x57t
        0x43t
        0x57t
        0x5at
        0x1t
        0x5ct
        0x11t
        0x10t
        0x13t
        0x5ft
        0x9t
        0x5bt
        0x2t
        0x4ft
        0x13t
        0x51t
        0x13t
        0x41t
        0x45t
        0x4t
        0x5ct
        0x47t
        0x46t
    .end array-data
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/UPCAWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

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

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b6baa8"

    const-wide/32 v4, 0x3b0ba23a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/zxing/oned/UPCAWriter;->subWriter:Lcom/google/zxing/oned/EAN13Writer;

    invoke-static {p1}, Lcom/google/zxing/oned/UPCAWriter;->preencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/EAN13Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x21t
        0x57t
        0xct
        0x41t
        0xet
        0x56t
        0xet
        0x4ft
        0x42t
        0x4t
        0xft
        0x5bt
        0xdt
        0x52t
        0x7t
        0x41t
        0x34t
        0x68t
        0x21t
        0x1bt
        0x23t
        0x4dt
        0x41t
        0x5at
        0x17t
        0x42t
        0x42t
        0x6t
        0xet
        0x4ct
        0x42t
    .end array-data
.end method
