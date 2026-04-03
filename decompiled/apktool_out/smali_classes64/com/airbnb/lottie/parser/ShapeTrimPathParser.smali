.class Lcom/airbnb/lottie/parser/ShapeTrimPathParser;
.super Ljava/lang/Object;


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v5, [B

    const/16 v2, 0x41

    aput-byte v2, v1, v6

    const-string v2, "25b9ae"

    const v3, 0x4ec3bdcf

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v5, [B

    const/16 v2, 0x52

    aput-byte v2, v1, v6

    const-string v2, "76eaef"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v5, [B

    const/16 v2, 0xd

    aput-byte v2, v1, v6

    const-string v2, "b60e97"

    const/16 v3, 0x7f86

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v7, [B

    fill-array-data v2, :array_0

    const-string v3, "145bbe"

    const/16 v4, -0x5ab5

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [B

    const/16 v3, 0xe

    aput-byte v3, v2, v6

    const-string v3, "ca3eaa"

    const-wide v4, -0x3e2e877874400000L    # -1.172446767E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "b154fe"

    const-wide/32 v4, -0x666b2d58

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void

    nop

    :array_0
    .array-data 1
        0x5ft
        0x59t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xat
        0x55t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    move v6, v0

    move-object v4, v5

    move-object v3, v5

    move-object v2, v5

    move-object v1, v5

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->forId(I)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v6

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v0

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
