.class Lcom/airbnb/lottie/parser/ShapeStrokeParser;
.super Ljava/lang/Object;


# static fields
.field private static final DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_0

    const-string v2, "43206c"

    invoke-static {v1, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v6, [B

    const/16 v2, 0x54

    aput-byte v2, v1, v7

    const-string v2, "701909"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v6, [B

    const/16 v2, 0x15

    aput-byte v2, v1, v7

    const-string v2, "b5516d"

    const-wide/32 v4, 0x6a4fe4bb

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v6, [B

    const/16 v3, 0xc

    aput-byte v3, v2, v7

    const-string v3, "c7652b"

    const v4, 0x4dc78d1b    # 4.1848918E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v3, "f49acf"

    const-wide/32 v4, 0x31b3b52f

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v8, [B

    fill-array-data v2, :array_2

    const-string v3, "d5ba68"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v8, [B

    fill-array-data v1, :array_3

    const-string v2, "29e9d8"

    const v3, 0x4efcb355

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x7

    new-array v2, v8, [B

    fill-array-data v2, :array_4

    const-string v3, "e9f9e2"

    const-wide/32 v4, 0x58b3e0ff

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [B

    aput-byte v9, v2, v7

    const-string v3, "b14541"

    const/16 v4, -0x20a2

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v6, [B

    const/16 v2, 0x5d

    aput-byte v2, v1, v7

    const-string v2, "37fcfb"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v6, [B

    const/16 v2, 0x46

    aput-byte v2, v1, v7

    const-string v2, "009f35"

    const-wide v4, -0x3e335a7694800000L    # -9.61221335E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void

    :array_0
    .array-data 1
        0x5at
        0x5et
    .end array-data

    nop

    :array_1
    .array-data 1
        0xat
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x8t
        0x5ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5ft
        0x55t
    .end array-data

    nop

    :array_4
    .array-data 1
        0xdt
        0x5dt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v4

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_1
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v8

    goto :goto_0

    :pswitch_2
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    goto :goto_0

    :pswitch_3
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v4

    move-object v15, v4

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    aget-object v11, v4, v9

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    aget-object v12, v4, v9

    goto :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v13, v0

    goto :goto_0

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v14

    goto :goto_0

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move-object/from16 v22, v4

    move-object v4, v9

    move-object/from16 v9, v22

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    sget-object v16, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v16

    packed-switch v16, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_2

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_a
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    goto :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    const/16 v16, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_2
    move/from16 v9, v16

    :goto_3
    packed-switch v9, :pswitch_data_2

    goto :goto_1

    :pswitch_b
    move-object v6, v4

    goto :goto_1

    :sswitch_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x5a

    aput-byte v19, v17, v18

    const-string v18, "5d591f"

    const-wide v20, 0x41d129d058400000L    # 1.151811937E9

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    goto :goto_3

    :sswitch_1
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x57

    aput-byte v19, v17, v18

    const-string v18, "303169"

    const/16 v19, -0x1249

    invoke-static/range {v17 .. v19}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :sswitch_2
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x4

    aput-byte v19, v17, v18

    const-string v18, "cb8c38"

    const-wide/32 v20, -0x53383d42

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    goto :goto_3

    :pswitch_c
    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_0

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    if-nez v15, :cond_5

    new-instance v9, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    new-instance v4, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v15, 0x64

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v4, v15}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    :goto_4
    new-instance v4, Lcom/airbnb/lottie/model/content/ShapeStroke;

    invoke-direct/range {v4 .. v14}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    return-object v4

    :cond_5
    move-object v9, v15

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x67 -> :sswitch_2
        0x6f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
