.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;


# static fields
.field private static final END_PATTERN:[I

.field private static final START_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

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

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "74c770"

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
        0x74t
        0x55t
        0xdt
        0x17t
        0x58t
        0x5et
        0x5bt
        0x4dt
        0x43t
        0x52t
        0x59t
        0x53t
        0x58t
        0x50t
        0x6t
        0x17t
        0x7et
        0x64t
        0x71t
        0x18t
        0x43t
        0x55t
        0x42t
        0x44t
        0x17t
        0x53t
        0xct
        0x43t
        0x17t
    .end array-data
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 13

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "243f81"

    const-wide/32 v4, -0x529cd4b1

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x50

    if-le v4, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x3f

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v5, "26e896"

    invoke-static {v3, v5, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    mul-int/lit8 v0, v4, 0x9

    add-int/lit8 v0, v0, 0x9

    new-array v5, v0, [Z

    sget-object v0, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    invoke-static {v5, v1, v0, v11}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v0

    move v2, v1

    move v3, v0

    :goto_0
    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    const/16 v0, 0x12

    new-array v8, v0, [I

    move v0, v1

    :goto_1
    const/4 v9, 0x5

    if-ge v0, v9, :cond_2

    mul-int/lit8 v9, v0, 0x2

    sget-object v10, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v10, v10, v6

    aget v10, v10, v0

    aput v10, v8, v9

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v10, v10, v7

    aget v10, v10, v0

    aput v10, v8, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5, v3, v8, v11}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    invoke-static {v5, v3, v0, v11}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    return-object v5

    :array_0
    .array-data 1
        0x66t
        0x5ct
        0x56t
        0x46t
        0x54t
        0x54t
        0x5ct
        0x53t
        0x5bt
        0x12t
        0x18t
        0x5et
        0x54t
        0x14t
        0x47t
        0xet
        0x5dt
        0x11t
        0x5bt
        0x5at
        0x43t
        0x13t
        0x4ct
        0x11t
        0x41t
        0x5ct
        0x5ct
        0x13t
        0x54t
        0x55t
        0x12t
        0x56t
        0x56t
        0x46t
        0x5dt
        0x47t
        0x57t
        0x5at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x60t
        0x53t
        0x14t
        0x4dt
        0x5ct
        0x45t
        0x46t
        0x53t
        0x1t
        0x18t
        0x5at
        0x59t
        0x5ct
        0x42t
        0x0t
        0x56t
        0x4dt
        0x45t
        0x12t
        0x45t
        0xdt
        0x57t
        0x4ct
        0x5at
        0x56t
        0x16t
        0x7t
        0x5dt
        0x19t
        0x5at
        0x57t
        0x45t
        0x16t
        0x18t
        0x4dt
        0x5et
        0x53t
        0x58t
        0x45t
        0x0t
        0x9t
        0x16t
        0x56t
        0x5ft
        0x2t
        0x51t
        0x4dt
        0x45t
        0x12t
        0x5at
        0xat
        0x56t
        0x5et
        0x1at
        0x12t
        0x54t
        0x10t
        0x4ct
        0x19t
        0x51t
        0x5dt
        0x42t
        0x45t
    .end array-data
.end method
