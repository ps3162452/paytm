.class Lcom/airbnb/lottie/parser/CircleShapeParser;
.super Ljava/lang/Object;


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_0

    const-string v2, "d56980"

    const-wide v4, -0x3e220a2e54800000L    # -2.010597038E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v7, [B

    const/16 v2, 0x48

    aput-byte v2, v1, v6

    const-string v2, "88c10d"

    const-wide v4, -0x3e2a792f9e800000L    # -1.444626822E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v7, [B

    const/16 v2, 0x46

    aput-byte v2, v1, v6

    const-string v2, "5585df"

    const/16 v3, -0x75f7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v3, "c87864"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [B

    const/16 v3, 0x5d

    aput-byte v3, v2, v6

    const-string v3, "91ea78"

    const-wide/32 v4, -0x63b92a26

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void

    :array_0
    .array-data 1
        0xat
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xbt
        0x5ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-ne p2, v8, :cond_0

    move v0, v6

    :goto_0
    move v5, v7

    move v4, v0

    move-object v2, v3

    move-object v1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    :cond_0
    move v0, v7

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v5

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v0

    if-ne v0, v8, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/airbnb/lottie/model/content/CircleShape;

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;ZZ)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
