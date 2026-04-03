.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method


# virtual methods
.method protected addWeightCode(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "58f174"

    const v2, 0x4eee2169

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :array_0
    .array-data 1
        0x1dt
        0xbt
        0x57t
        0x1t
        0x4t
        0x1dt
    .end array-data
.end method

.method protected checkWeight(I)I
    .locals 0

    return p1
.end method
