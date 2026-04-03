.class Lcom/airbnb/lottie/parser/RepeaterParser;
.super Ljava/lang/Object;


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const-string v2, "0d8a59"

    const-wide v4, 0x41c432bbc3800000L    # 6.77738375E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v3, [B

    aput-byte v6, v1, v6

    const-string v2, "c86bf7"

    const-wide v4, 0x41d07349ac400000L    # 1.103963825E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v3, [B

    const/16 v2, 0x5d

    aput-byte v2, v1, v6

    const-string v2, "2b7a70"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "21d826"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [B

    fill-array-data v2, :array_2

    const-string v3, "b9d541"

    const/16 v4, -0x37e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void

    :array_0
    .array-data 1
        0x5et
        0x9t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0xat
        0x5dt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Repeater;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    move v5, v0

    move-object v3, v4

    move-object v2, v4

    move-object v1, v4

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v4

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v5

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/model/content/Repeater;

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
