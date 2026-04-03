.class public Lcom/airbnb/lottie/parser/LottieCompositionParser;
.super Ljava/lang/Object;


# static fields
.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v7, [B

    const/16 v2, 0x44

    aput-byte v2, v1, v6

    const-string v2, "3b08c2"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v7, [B

    const/16 v2, 0x58

    aput-byte v2, v1, v6

    const-string v2, "043151"

    const/16 v3, -0x5c44

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v8, [B

    fill-array-data v1, :array_0

    const-string v2, "6fce87"

    const-wide v4, 0x41d1edbb7ac00000L    # 1.203170795E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v3, "297dff"

    const-wide/32 v4, -0xebfb10d

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v8, [B

    fill-array-data v2, :array_2

    const-string v3, "49ee62"

    const/16 v4, 0x4a16

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v7, [B

    const/16 v2, 0x10

    aput-byte v2, v1, v6

    const-string v2, "fb0b5d"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    new-array v1, v10, [B

    fill-array-data v1, :array_3

    const-string v2, "7c52c0"

    const-wide v4, 0x41d7d818cc800000L    # 1.60015237E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x7

    new-array v2, v10, [B

    fill-array-data v2, :array_4

    const-string v3, "f04a27"

    const-wide/32 v4, 0xa56cea

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v9, [B

    fill-array-data v2, :array_5

    const-string v3, "9e05d5"

    const-wide/32 v4, 0x3c28245f

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v9, [B

    fill-array-data v2, :array_6

    const-string v3, "a9f1e7"

    const v4, 0x4d7723c2

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "7b081c"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5dt
        0x49t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x52t
        0x4bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5bt
        0x2t
        0x4ct
        0x57t
        0x11t
        0x43t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x7t
        0x43t
        0x47t
        0x4t
        0x46t
        0x44t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x5ft
        0xat
        0x5et
        0x41t
        0x17t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x2t
        0x51t
        0x7t
        0x43t
        0x16t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x5at
        0x3t
        0x42t
        0x53t
        0x54t
        0x11t
        0x44t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v21

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v13}, Landroidx/collection/SparseArrayCompat;-><init>()V

    new-instance v23, Lcom/airbnb/lottie/LottieComposition;

    invoke-direct/range {v23 .. v23}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/airbnb/lottie/parser/LottieCompositionParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v4

    move/from16 v17, v4

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v4

    move/from16 v16, v4

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v20, v4

    goto :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3c23d70a    # 0.01f

    sub-float/2addr v4, v5

    move/from16 v19, v4

    goto :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v18, v4

    goto :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "b58deb"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x27

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "d4adfb"

    const/16 v6, 0x4f9b

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v10}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v0, v17

    int-to-float v7, v0

    mul-float v7, v7, v21

    float-to-int v7, v7

    move/from16 v0, v16

    int-to-float v8, v0

    mul-float v8, v8, v21

    float-to-int v8, v8

    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v4, v23

    move/from16 v6, v20

    move/from16 v7, v19

    move/from16 v8, v18

    move-object/from16 v9, v22

    invoke-virtual/range {v4 .. v15}, Lcom/airbnb/lottie/LottieComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V

    return-object v23

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 1
        0x3et
        0x1bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x28t
        0x5bt
        0x15t
        0x10t
        0xft
        0x7t
        0x44t
        0x5bt
        0xft
        0x8t
        0x1ft
        0x42t
        0x17t
        0x41t
        0x11t
        0x14t
        0x9t
        0x10t
        0x10t
        0x47t
        0x41t
        0x6t
        0x9t
        0x6t
        0x1dt
        0x59t
        0xet
        0x12t
        0xft
        0xct
        0x44t
        0xat
        0x5ct
        0x44t
        0x52t
        0x4ct
        0x50t
        0x1at
        0x51t
    .end array-data
.end method

.method private static parseLayers(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroidx/collection/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9aa2e0"

    const-wide/32 v4, -0x200b90f7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x89

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "066eeb"

    const-wide/32 v4, 0x1b54844d

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    return-void

    :array_0
    .array-data 1
        0x60t
        0xet
        0x14t
        0x12t
        0xdt
        0x51t
        0x4ft
        0x4t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x10t
        0x5ft
        0x5bt
        0x4t
        0x2t
        0x7t
        0x43t
        0x18t
        0x16t
        0x29t
        0xat
        0x16t
        0x44t
        0x5ft
        0x53t
        0x45t
        0x16t
        0xat
        0x5ft
        0x43t
        0x5at
        0x1t
        0x45t
        0x12t
        0x42t
        0x5ft
        0x5bt
        0x4t
        0x17t
        0xbt
        0x5ct
        0x4ft
        0x16t
        0x7t
        0x0t
        0x42t
        0x45t
        0x45t
        0x53t
        0x1t
        0x45t
        0x15t
        0x59t
        0x42t
        0x5et
        0x45t
        0x16t
        0xat
        0x51t
        0x46t
        0x53t
        0x16t
        0x4bt
        0x42t
        0x79t
        0x50t
        0x16t
        0x1ct
        0xat
        0x17t
        0x10t
        0x57t
        0x44t
        0x0t
        0x45t
        0x17t
        0x43t
        0x5ft
        0x58t
        0x2t
        0x45t
        0x23t
        0x54t
        0x59t
        0x54t
        0x0t
        0x45t
        0x2bt
        0x5ct
        0x5at
        0x43t
        0x16t
        0x11t
        0x10t
        0x51t
        0x42t
        0x59t
        0x17t
        0x49t
        0x42t
        0x53t
        0x59t
        0x58t
        0x13t
        0x0t
        0x10t
        0x44t
        0x16t
        0x42t
        0xdt
        0x0t
        0x42t
        0x79t
        0x5at
        0x5at
        0x10t
        0x16t
        0x16t
        0x42t
        0x57t
        0x42t
        0xat
        0x17t
        0x42t
        0x5ct
        0x57t
        0x4ft
        0x0t
        0x17t
        0x11t
        0x10t
        0x42t
        0x59t
        0x45t
        0x16t
        0xat
        0x51t
        0x46t
        0x53t
        0x45t
        0x9t
        0x3t
        0x49t
        0x53t
        0x44t
        0x16t
        0x4bt
    .end array-data
.end method
