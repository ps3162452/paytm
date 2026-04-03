.class Lcom/airbnb/lottie/parser/ShapeFillParser;
.super Ljava/lang/Object;


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_0

    const-string v2, "959508"

    const-wide/32 v4, -0x5ba28460

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v7, [B

    const/16 v2, 0x53

    aput-byte v2, v1, v6

    const-string v2, "05d25b"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v7, [B

    const/16 v2, 0x5b

    aput-byte v2, v1, v6

    const-string v2, "45566c"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "618849"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const-string v3, "540498"

    const v4, -0x3102e0ff

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v8, [B

    fill-array-data v2, :array_2

    const-string v3, "1fd064"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0x58t
        0x54t
        0x54t
        0x71t
        0x57t
        0x57t
        0x53t
        0x54t
        0x5dt
        0x50t
    .end array-data

    :array_2
    .array-data 1
        0x59t
        0x2t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v0, v3

    move-object v5, v1

    move v2, v6

    move-object v4, v1

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v5

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v2

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v6

    goto :goto_0

    :cond_0
    if-nez v5, :cond_1

    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    new-instance v7, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    :cond_1
    if-ne v0, v3, :cond_2

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_1
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeFill;

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    return-object v0

    :cond_2
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
