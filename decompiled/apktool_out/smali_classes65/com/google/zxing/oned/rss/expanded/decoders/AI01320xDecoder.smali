.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method


# virtual methods
.method protected addWeightCode(Ljava/lang/StringBuilder;I)V
    .locals 4

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_0

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    const-string v1, "12b8e1"

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    const-string v1, "bbd208"

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x19t
        0x1t
        0x50t
        0x8t
        0x57t
        0x18t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4at
        0x51t
        0x56t
        0x2t
        0x3t
        0x11t
    .end array-data
.end method

.method protected checkWeight(I)I
    .locals 1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    add-int/lit16 p1, p1, -0x2710

    goto :goto_0
.end method
