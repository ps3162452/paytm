.class public abstract Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.super Ljava/lang/Object;


# instance fields
.field private final generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

.field private final information:Lcom/google/zxing/common/BitArray;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    invoke-direct {v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    return-void
.end method

.method public static createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x3

    const/4 v6, 0x2

    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;-><init>(Lcom/google/zxing/common/BitArray;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, v7, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x5

    invoke-static {p0, v7, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x7

    invoke-static {p0, v7, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "6fa966"

    const v4, 0x4d7ee4ee    # 2.67276E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;

    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "3eef78"

    const-wide/32 v4, 0x5d9d0e50

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_2

    const-string v3, "8509b3"

    const-wide/32 v4, -0x5c0d7398

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "2f9ce2"

    const-wide/32 v4, -0x2c9be375

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_4

    const-string v3, "e55d7b"

    const-wide v4, 0x41c138bb05000000L    # 5.7786113E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "7c960e"

    const-wide v4, 0x41d7e2bd39800000L    # 1.602942182E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_6

    const-string v3, "41427d"

    const-wide/32 v4, -0x421668b

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "512bd4"

    const/16 v3, -0x4383

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_8

    const-string v3, "7f2623"

    const-wide/32 v4, 0x52dd5ed4

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "8076cb"

    const-wide/32 v4, 0x4f0fd3d2

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_a

    const-string v3, "17f6cb"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const-string v2, "602701"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_c

    const-string v3, "168af4"

    const v4, 0x4ed21c52    # 1.7625357E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v2, "f05fc2"

    const/16 v3, -0x21e0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_e

    const-string v3, "bdbac5"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    new-array v1, v1, [B

    fill-array-data v1, :array_f

    const-string v2, "02a15c"

    const-wide v4, 0x41d2bc7b58c00000L    # 1.257368931E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_10

    const-string v3, "07012b"

    const v4, 0x4ea9a597    # 1.4231008E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :array_0
    .array-data 1
        0x43t
        0x8t
        0xat
        0x57t
        0x59t
        0x41t
        0x58t
        0x46t
        0x5t
        0x5ct
        0x55t
        0x59t
        0x52t
        0x3t
        0x13t
        0x3t
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x54t
        0x55t
    .end array-data

    :array_2
    .array-data 1
        0x9t
        0x4t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x54t
        0x9t
    .end array-data

    :array_4
    .array-data 1
        0x54t
        0x4t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4t
        0x52t
        0x9t
    .end array-data

    :array_6
    .array-data 1
        0x5t
        0x2t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x6t
        0x3t
        0x2t
    .end array-data

    :array_8
    .array-data 1
        0x6t
        0x55t
    .end array-data

    nop

    :array_9
    .array-data 1
        0xbt
        0x1t
        0x7t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x2t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x5t
        0x2t
        0x2t
    .end array-data

    :array_c
    .array-data 1
        0x0t
        0x3t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x55t
        0x1t
        0x5t
    .end array-data

    :array_e
    .array-data 1
        0x53t
        0x53t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x3t
        0x0t
        0x51t
    .end array-data

    :array_10
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method


# virtual methods
.method protected final getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    return-object v0
.end method

.method protected final getInformation()Lcom/google/zxing/common/BitArray;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    return-object v0
.end method

.method public abstract parseInformation()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method
