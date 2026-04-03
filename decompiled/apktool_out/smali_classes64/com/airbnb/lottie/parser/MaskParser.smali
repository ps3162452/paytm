.class Lcom/airbnb/lottie/parser/MaskParser;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    const/4 v8, -0x1

    :goto_1
    packed-switch v8, :pswitch_data_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :sswitch_0
    const/4 v8, 0x4

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    const-string v10, "84e938"

    const/16 v11, 0x523a

    invoke-static {v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v1

    goto :goto_1

    :sswitch_1
    new-array v8, v6, [B

    fill-array-data v8, :array_1

    const-string v10, "b808a2"

    const-wide/32 v12, -0x767acd7f

    invoke-static {v8, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v5

    goto :goto_1

    :sswitch_2
    new-array v8, v5, [B

    const/16 v10, 0x5a

    aput-byte v10, v8, v1

    const-string v10, "5869d0"

    const-wide/32 v12, -0x7e9d2e24

    invoke-static {v8, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v6

    goto :goto_1

    :sswitch_3
    new-array v8, v7, [B

    fill-array-data v8, :array_2

    const-string v10, "9b50b8"

    const-wide v12, 0x41b2ba4e44000000L    # 3.1419962E8

    invoke-static {v8, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v7

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x12

    new-array v8, v8, [B

    fill-array-data v8, :array_3

    const-string v10, "9663f8"

    const/16 v11, -0x2324

    invoke-static {v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v8, 0x14

    new-array v8, v8, [B

    fill-array-data v8, :array_4

    const-string v9, "b73eda"

    const-wide v10, 0x41b875011c000000L    # 4.1032118E8

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_0

    :sswitch_4
    new-array v8, v5, [B

    const/4 v10, 0x4

    aput-byte v10, v8, v1

    const-string v10, "e71e95"

    invoke-static {v8, v10, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_2

    :sswitch_5
    new-array v8, v5, [B

    const/16 v10, 0x45

    aput-byte v10, v8, v1

    const-string v10, "69a7fd"

    const v11, 0x4e149f3c    # 6.233659E8f

    invoke-static {v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_2

    :sswitch_6
    new-array v8, v5, [B

    const/16 v10, 0x5f

    aput-byte v10, v8, v1

    const-string v10, "17bd78"

    const v11, -0x310a7261    # -2.0598496E9f

    invoke-static {v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_2

    :sswitch_7
    new-array v8, v5, [B

    const/16 v10, 0x5e

    aput-byte v10, v8, v1

    const-string v10, "73e723"

    const-wide v12, 0x41bac61446000000L    # 4.49188934E8

    invoke-static {v8, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    goto/16 :goto_2

    :pswitch_1
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_0

    :pswitch_2
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_0

    :pswitch_3
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_0

    :pswitch_4
    const/16 v4, 0x5e

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    const-string v8, "dfe944"

    invoke-static {v4, v8, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    new-instance v1, Lcom/airbnb/lottie/model/content/Mask;

    invoke-direct {v1, v4, v3, v2, v0}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_2
        0xe04 -> :sswitch_1
        0x197f1 -> :sswitch_3
        0x3339a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 1
        0x55t
        0x5bt
        0x1t
        0x5ct
    .end array-data

    :array_1
    .array-data 1
        0x12t
        0x4ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x50t
        0xct
        0x43t
    .end array-data

    :sswitch_data_1
    .sparse-switch
        0x61 -> :sswitch_4
        0x69 -> :sswitch_7
        0x6e -> :sswitch_6
        0x73 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :array_3
    .array-data 1
        0x6ct
        0x58t
        0x5dt
        0x5dt
        0x9t
        0x4ft
        0x57t
        0x16t
        0x5bt
        0x52t
        0x15t
        0x53t
        0x19t
        0x5bt
        0x59t
        0x57t
        0x3t
        0x18t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x4ct
        0x17t
        0x77t
        0x0t
        0x2t
        0x0t
        0x17t
        0x5bt
        0x47t
        0xct
        0xat
        0x6t
        0x42t
        0x43t
        0x5ct
        0x45t
        0x25t
        0x5t
        0x6t
        0x19t
    .end array-data

    :array_5
    .array-data 1
        0x25t
        0x8t
        0xct
        0x54t
        0x55t
        0x40t
        0xdt
        0x9t
        0xbt
        0x19t
        0x57t
        0x5bt
        0xat
        0x12t
        0x4t
        0x50t
        0x5at
        0x47t
        0x44t
        0xft
        0xbt
        0x4dt
        0x51t
        0x46t
        0x17t
        0x3t
        0x6t
        0x4dt
        0x14t
        0x59t
        0x5t
        0x15t
        0xet
        0x4at
        0x1at
        0x14t
        0x30t
        0xet
        0x0t
        0x40t
        0x14t
        0x55t
        0x16t
        0x3t
        0x45t
        0x57t
        0x5bt
        0x40t
        0x44t
        0x15t
        0x10t
        0x49t
        0x44t
        0x5bt
        0x16t
        0x12t
        0x0t
        0x5dt
        0x14t
        0x56t
        0x11t
        0x12t
        0x45t
        0x4et
        0x5dt
        0x58t
        0x8t
        0x46t
        0x7t
        0x5ct
        0x14t
        0x40t
        0x16t
        0x3t
        0x4t
        0x4dt
        0x51t
        0x50t
        0x44t
        0xat
        0xct
        0x52t
        0x51t
        0x14t
        0x5t
        0x2t
        0x1t
        0x19t
        0x59t
        0x55t
        0x17t
        0xdt
        0x16t
        0x17t
    .end array-data
.end method
