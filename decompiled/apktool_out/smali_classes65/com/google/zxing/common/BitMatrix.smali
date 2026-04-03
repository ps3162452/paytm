.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3c1ea9"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/lit8 v0, p1, 0x1f

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    return-void

    :array_0
    .array-data 1
        0x71t
        0xct
        0x45t
        0xdt
        0x41t
        0x5dt
        0x5at
        0xet
        0x54t
        0xbt
        0x12t
        0x50t
        0x5ct
        0xdt
        0x42t
        0x45t
        0xct
        0x4ct
        0x40t
        0x17t
        0x11t
        0x7t
        0x4t
        0x19t
        0x54t
        0x11t
        0x54t
        0x4t
        0x15t
        0x5ct
        0x41t
        0x43t
        0x45t
        0xdt
        0x0t
        0x57t
        0x13t
        0x53t
    .end array-data
.end method

.method private constructor <init>(III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/common/BitMatrix;
    .locals 11

    const/16 v10, 0x18

    const/4 v4, -0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v7, v0, [Z

    move v0, v1

    move v2, v1

    move v3, v4

    move v5, v1

    move v6, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_5

    :cond_1
    if-le v6, v5, :cond_3

    if-ne v3, v4, :cond_4

    sub-int v3, v6, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    sub-int v5, v6, v5

    if-eq v5, v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v10, [B

    fill-array-data v1, :array_0

    const-string v2, "d3e918"

    const-wide/32 v4, -0xe80b99

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p0, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v0, v8

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p0, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v0, v8

    aput-boolean v1, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1f

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "672317"

    const-wide v6, -0x3e6b79b7bc000000L    # -8.6086161E7

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    if-le v6, v5, :cond_a

    if-ne v3, v4, :cond_c

    sub-int v3, v6, v5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    :cond_a
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v3, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    :goto_1
    if-ge v1, v6, :cond_d

    aget-boolean v2, v7, v1

    if-eqz v2, :cond_b

    rem-int v2, v1, v3

    div-int v4, v1, v3

    invoke-virtual {v0, v2, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    sub-int v0, v6, v5

    if-eq v0, v3, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v10, [B

    fill-array-data v2, :array_2

    const-string v3, "6331a7"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-object v0

    :array_0
    .array-data 1
        0x16t
        0x5ct
        0x12t
        0x19t
        0x5dt
        0x5dt
        0xat
        0x54t
        0x11t
        0x51t
        0x42t
        0x18t
        0x0t
        0x5ct
        0x45t
        0x57t
        0x5et
        0x4ct
        0x44t
        0x5et
        0x4t
        0x4dt
        0x52t
        0x50t
    .end array-data

    :array_1
    .array-data 1
        0x5ft
        0x5bt
        0x5et
        0x56t
        0x56t
        0x56t
        0x5at
        0x17t
        0x51t
        0x5bt
        0x50t
        0x45t
        0x57t
        0x54t
        0x46t
        0x56t
        0x43t
        0x17t
        0x53t
        0x59t
        0x51t
        0x5ct
        0x44t
        0x59t
        0x42t
        0x52t
        0x40t
        0x56t
        0x55t
        0xdt
        0x16t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x5ct
        0x44t
        0x11t
        0xdt
        0x52t
        0x58t
        0x54t
        0x47t
        0x59t
        0x12t
        0x17t
        0x52t
        0x5ct
        0x13t
        0x5ft
        0xet
        0x43t
        0x16t
        0x5et
        0x52t
        0x45t
        0x2t
        0x5ft
    .end array-data
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .locals 5

    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/zxing/common/BitMatrix;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/zxing/common/BitMatrix;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget-object v2, p1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public flip(II)V
    .locals 5

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public get(II)Z
    .locals 3

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int/lit8 v1, p1, 0x20

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    mul-int/2addr v0, p2

    add-int/2addr v0, v1

    aget v0, v2, v0

    and-int/lit8 v1, p1, 0x1f

    ushr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottomRightOnBit()[I
    .locals 6

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-gez v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v3, v2, v0

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v5, v0, v2

    const/16 v0, 0x1f

    move v1, v0

    :goto_2
    ushr-int v0, v5, v1

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v5, 0x0

    rem-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v1, v2

    aput v1, v0, v5

    const/4 v1, 0x1

    aput v3, v0, v1

    goto :goto_1
.end method

.method public getEnclosingRectangle()[I
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    move v4, v2

    move v5, v3

    move v3, v0

    move v2, v0

    move v0, v1

    :goto_0
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v0, v6, :cond_5

    move v6, v1

    :goto_1
    iget v7, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v8, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v6

    aget v8, v7, v8

    if-eqz v8, :cond_a

    if-ge v0, v4, :cond_0

    move v4, v0

    :cond_0
    if-le v0, v2, :cond_1

    move v2, v0

    :cond_1
    mul-int/lit8 v7, v6, 0x20

    if-ge v7, v5, :cond_9

    move v7, v1

    :goto_2
    rsub-int/lit8 v9, v7, 0x1f

    shl-int v9, v8, v9

    if-nez v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    mul-int/lit8 v9, v6, 0x20

    add-int/2addr v9, v7

    if-ge v9, v5, :cond_9

    mul-int/lit8 v5, v6, 0x20

    add-int/2addr v5, v7

    move v7, v5

    :goto_3
    mul-int/lit8 v5, v6, 0x20

    add-int/lit8 v5, v5, 0x1f

    if-le v5, v3, :cond_8

    const/16 v5, 0x1f

    :goto_4
    ushr-int v9, v8, v5

    if-nez v9, :cond_3

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_3
    mul-int/lit8 v8, v6, 0x20

    add-int/2addr v8, v5

    if-le v8, v3, :cond_8

    mul-int/lit8 v3, v6, 0x20

    add-int/2addr v3, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sub-int/2addr v3, v5

    sub-int/2addr v2, v4

    if-ltz v3, :cond_6

    if-gez v2, :cond_7

    :cond_6
    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v5, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    goto :goto_6

    :cond_8
    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_5

    :cond_9
    move v7, v5

    goto :goto_3

    :cond_a
    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_5
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {p2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    :goto_0
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v0, v2, :cond_2

    mul-int/lit8 v2, v0, 0x20

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    mul-int v4, p1, v1

    add-int/2addr v4, v0

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getRowSize()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    return v0
.end method

.method public getTopLeftOnBit()[I
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v0, v2

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v6, v2, v0

    move v3, v1

    :goto_2
    rsub-int/lit8 v2, v3, 0x1f

    shl-int v2, v6, v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [I

    rem-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v3

    aput v0, v2, v1

    const/4 v0, 0x1

    aput v4, v2, v0

    move-object v0, v2

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public rotate180()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    div-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v1

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->reverse()V

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->reverse()V

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4, v1}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 5

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public setRegion(IIII)V
    .locals 9

    const/4 v8, 0x1

    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "27d461"

    const-wide/32 v4, 0x9904cb9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lt p4, v8, :cond_2

    if-ge p3, v8, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "463e1d"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v1, p1, p3

    add-int v2, p2, p4

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v2, v0, :cond_4

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-le v1, v0, :cond_6

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "05b8ad"

    const-wide/32 v4, 0x3aeba5f1

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    :cond_6
    if-ge p2, v2, :cond_7

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    move v0, p1

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    mul-int v5, p2, v3

    div-int/lit8 v6, v0, 0x20

    add-int/2addr v5, v6

    aget v6, v4, v5

    and-int/lit8 v7, v0, 0x1f

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void

    :array_0
    .array-data 1
        0x7et
        0x52t
        0x2t
        0x40t
        0x16t
        0x50t
        0x5ct
        0x53t
        0x44t
        0x40t
        0x59t
        0x41t
        0x12t
        0x5at
        0x11t
        0x47t
        0x42t
        0x11t
        0x50t
        0x52t
        0x44t
        0x5at
        0x59t
        0x5ft
        0x5ct
        0x52t
        0x3t
        0x55t
        0x42t
        0x58t
        0x44t
        0x52t
    .end array-data

    :array_1
    .array-data 1
        0x7ct
        0x53t
        0x5at
        0x2t
        0x59t
        0x10t
        0x14t
        0x57t
        0x5dt
        0x1t
        0x11t
        0x13t
        0x5dt
        0x52t
        0x47t
        0xdt
        0x11t
        0x9t
        0x41t
        0x45t
        0x47t
        0x45t
        0x53t
        0x1t
        0x14t
        0x57t
        0x47t
        0x45t
        0x5dt
        0x1t
        0x55t
        0x45t
        0x47t
        0x45t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x64t
        0x5dt
        0x7t
        0x18t
        0x13t
        0x1t
        0x57t
        0x5ct
        0xdt
        0x56t
        0x41t
        0x9t
        0x45t
        0x46t
        0x16t
        0x18t
        0x7t
        0xdt
        0x44t
        0x15t
        0xbt
        0x56t
        0x12t
        0xdt
        0x54t
        0x50t
        0x42t
        0x4ct
        0x9t
        0x1t
        0x10t
        0x58t
        0x3t
        0x4ct
        0x13t
        0xdt
        0x48t
    .end array-data
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 5

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8d8d88"

    const-wide/32 v2, -0x54e2cfcb

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x60t
        0x44t
    .end array-data
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\n"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move-object v3, p2

    goto :goto_2

    :cond_1
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unset(II)V
    .locals 5

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public xor(Lcom/google/zxing/common/BitMatrix;)V
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getRowSize()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9e8a6b"

    const-wide/32 v4, 0x62e1d84e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v3, Lcom/google/zxing/common/BitArray;

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    div-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v0, v2, :cond_3

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    invoke-virtual {p1, v0, v3}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v5

    move v2, v1

    :goto_1
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    mul-int v7, v0, v4

    add-int/2addr v7, v2

    aget v8, v6, v7

    aget v9, v5, v2

    xor-int/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0xbt
        0x48t
        0x14t
        0x42t
        0x42t
        0x54t
        0x4t
        0x4ct
        0x13t
        0x5ft
        0x1at
        0x19t
        0x1t
        0x51t
        0xct
        0x53t
        0xct
        0x4at
        0xct
        0x57t
        0xft
        0x45t
        0x42t
        0x5dt
        0xat
        0x18t
        0xft
        0x59t
        0x16t
        0x19t
        0x8t
        0x59t
        0x15t
        0x55t
        0xat
    .end array-data
.end method
