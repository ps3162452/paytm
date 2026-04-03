.class Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v1, [Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4e4d90"

    const/16 v3, -0x62d6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v5, [B

    const/16 v2, 0x51

    aput-byte v2, v1, v4

    const-string v2, "591d1e"

    invoke-static {v1, v2, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x1ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :goto_1
    if-nez v6, :cond_0

    :goto_2
    return-object v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    move v1, v4

    :goto_3
    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "4755df"

    const-wide v4, 0x41d7723606400000L    # 1.573443609E9

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v2

    :goto_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_4

    :sswitch_0
    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v5, "2adfce"

    const-wide/32 v8, -0x31ba38e0

    invoke-static {v1, v5, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_3

    :sswitch_1
    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v3, "23232a"

    const v7, 0x4e1cf88e    # 6.5838374E8f

    invoke-static {v1, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_3

    :sswitch_2
    new-array v3, v1, [B

    fill-array-data v3, :array_3

    const-string v5, "a3af67"

    const v7, -0x3264d611    # -3.2540208E8f

    invoke-static {v3, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :sswitch_3
    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v3, "b9ae84"

    const-wide v8, 0x41dd81751b800000L    # 1.98009355E9

    invoke-static {v1, v3, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_3

    :sswitch_4
    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v7, "9d874c"

    invoke-static {v1, v7, v5, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto/16 :goto_3

    :sswitch_5
    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v5, "0139c6"

    invoke-static {v1, v5, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto/16 :goto_3

    :sswitch_6
    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v3, "3368f6"

    const-wide/32 v8, 0x78ebf6

    invoke-static {v1, v3, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_3

    :sswitch_7
    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v5, "edc999"

    invoke-static {v1, v5, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_3

    :sswitch_8
    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v3, "9ebaab"

    const v5, -0x31a8b25b

    invoke-static {v1, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_9
    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const-string v3, "052be3"

    const/16 v5, 0x5c8a

    invoke-static {v1, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_a
    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const-string v5, "d64b6a"

    invoke-static {v1, v5, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_b
    new-array v1, v1, [B

    fill-array-data v1, :array_c

    const-string v3, "d9dcb6"

    const-wide/32 v8, 0x251c8947

    invoke-static {v1, v3, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_c
    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v3, "c0b5c1"

    const/16 v5, 0x3d41

    invoke-static {v1, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_3

    :pswitch_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeGroupParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_4
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/GradientStrokeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeFillParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_6
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/GradientFillParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_7
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_8
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapePathParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapePath;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_9
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/CircleShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_a
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/RectangleShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RectangleShape;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_b
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_c
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/PolystarShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_d
    invoke-static {p0}, Lcom/airbnb/lottie/parser/MergePathsParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;

    move-result-object v0

    const/16 v1, 0x96

    new-array v1, v1, [B

    fill-array-data v1, :array_e

    const-string v2, "0f9556"

    const-wide v4, 0x41a3083f9c000000L    # 1.59653838E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_e
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/RepeaterParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Repeater;

    move-result-object v0

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    move-object v2, v0

    goto/16 :goto_2

    :cond_3
    move-object v6, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_7
        0xcc6 -> :sswitch_3
        0xcdf -> :sswitch_4
        0xceb -> :sswitch_0
        0xcec -> :sswitch_2
        0xda0 -> :sswitch_b
        0xe31 -> :sswitch_8
        0xe3e -> :sswitch_c
        0xe55 -> :sswitch_6
        0xe5f -> :sswitch_a
        0xe61 -> :sswitch_1
        0xe79 -> :sswitch_9
        0xe7e -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :array_0
    .array-data 1
        0x61t
        0x59t
        0x5et
        0x5bt
        0xbt
        0x11t
        0x5at
        0x17t
        0x46t
        0x5dt
        0x5t
        0x16t
        0x51t
        0x17t
        0x41t
        0x4ct
        0x14t
        0x3t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x55t
        0x13t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x41t
        0x47t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x6t
        0x40t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x4t
        0x55t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x5et
        0x2t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x44t
        0x43t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x40t
        0x5bt
    .end array-data

    nop

    :array_8
    .array-data 1
        0x0t
        0x8t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x4bt
        0x6t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x44t
        0x58t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x17t
        0x44t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x9t
        0x54t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x11t
        0x40t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x71t
        0x8t
        0x50t
        0x58t
        0x54t
        0x42t
        0x59t
        0x9t
        0x57t
        0x15t
        0x56t
        0x59t
        0x5et
        0x12t
        0x58t
        0x5ct
        0x5bt
        0x45t
        0x10t
        0xbt
        0x5ct
        0x47t
        0x52t
        0x53t
        0x10t
        0x16t
        0x58t
        0x41t
        0x5dt
        0x45t
        0x1et
        0x46t
        0x74t
        0x50t
        0x47t
        0x51t
        0x55t
        0x46t
        0x49t
        0x54t
        0x41t
        0x5et
        0x43t
        0x46t
        0x58t
        0x47t
        0x50t
        0x16t
        0x5ft
        0x8t
        0x55t
        0x4ct
        0x15t
        0x45t
        0x45t
        0x16t
        0x49t
        0x5at
        0x47t
        0x42t
        0x55t
        0x2t
        0x19t
        0x5at
        0x5bt
        0x16t
        0x7bt
        0xft
        0x4dt
        0x7et
        0x54t
        0x42t
        0x1bt
        0x46t
        0x58t
        0x5bt
        0x51t
        0x16t
        0x5dt
        0x13t
        0x4at
        0x41t
        0x15t
        0x54t
        0x55t
        0x46t
        0x54t
        0x54t
        0x5bt
        0x43t
        0x51t
        0xat
        0x55t
        0x4ct
        0x15t
        0x53t
        0x5et
        0x7t
        0x5bt
        0x59t
        0x50t
        0x52t
        0x10t
        0x4t
        0x40t
        0x15t
        0x56t
        0x57t
        0x5ct
        0xat
        0x50t
        0x5bt
        0x52t
        0x16t
        0x55t
        0x8t
        0x58t
        0x57t
        0x59t
        0x53t
        0x7dt
        0x3t
        0x4bt
        0x52t
        0x50t
        0x66t
        0x51t
        0x12t
        0x51t
        0x46t
        0x73t
        0x59t
        0x42t
        0x2dt
        0x50t
        0x41t
        0x7et
        0x57t
        0x44t
        0x27t
        0x57t
        0x51t
        0x74t
        0x54t
        0x5ft
        0x10t
        0x5ct
        0x1dt
        0x1ct
        0x18t
    .end array-data
.end method
