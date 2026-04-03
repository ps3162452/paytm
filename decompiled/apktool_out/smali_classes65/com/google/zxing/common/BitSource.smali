.class public final Lcom/google/zxing/common/BitSource;
.super Ljava/lang/Object;


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getBitOffset()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    return v0
.end method

.method public getByteOffset()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    return v0
.end method

.method public readBits(I)I
    .locals 7

    const/16 v6, 0xff

    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    rsub-int/lit8 v1, v0, 0x8

    if-ge p1, v1, :cond_2

    move v0, p1

    :goto_0
    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v4, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v2, v2, v4

    rsub-int/lit8 v4, v0, 0x8

    shr-int v4, v6, v4

    shl-int/2addr v4, v1

    and-int/2addr v2, v4

    shr-int/2addr v2, v1

    sub-int v1, p1, v0

    iget v4, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    iget v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    if-ne v0, v5, :cond_5

    iput v3, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    iget v0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    move v0, v2

    :goto_1
    if-lez v1, :cond_4

    :goto_2
    if-lt v1, v5, :cond_3

    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v3, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    iget v0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 v0, v1, -0x8

    move v1, v0

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    rsub-int/lit8 v2, v1, 0x8

    shl-int/2addr v0, v1

    iget-object v3, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v4, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v3, v3, v4

    shr-int v4, v6, v2

    shl-int/2addr v4, v2

    and-int/2addr v3, v4

    shr-int v2, v3, v2

    or-int/2addr v0, v2

    iget v2, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    :cond_4
    return v0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v1, p1

    move v0, v3

    goto :goto_1
.end method
