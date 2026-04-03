.class public Lcom/airbnb/lottie/parser/AnimatablePathValueParser;
.super Ljava/lang/Object;


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v7, [B

    const/16 v2, 0xe

    aput-byte v2, v1, v6

    const-string v2, "e35740"

    const-wide v4, -0x3e28192c30800000L    # -1.604013886E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v7, [B

    const/16 v2, 0x1a

    aput-byte v2, v1, v6

    const-string v2, "b00b3b"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-array v2, v7, [B

    const/16 v3, 0x4e

    aput-byte v3, v2, v6

    const-string v3, "7f546c"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/PathKeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    invoke-static {v0}, Lcom/airbnb/lottie/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    :goto_1
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    invoke-static {p0, v2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    move-object v3, v2

    move-object v4, v2

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    if-eqz v0, :cond_3

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6c30a1"

    const/16 v5, -0x3a9b

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_4

    :goto_1
    return-object v4

    :cond_4
    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    invoke-direct {v4, v3, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x7at
        0xct
        0x47t
        0x44t
        0x8t
        0x54t
        0x16t
        0x7t
        0x5ct
        0x55t
        0x12t
        0x5ft
        0x11t
        0x17t
        0x13t
        0x43t
        0x14t
        0x41t
        0x46t
        0xct
        0x41t
        0x44t
        0x41t
        0x54t
        0x4et
        0x13t
        0x41t
        0x55t
        0x12t
        0x42t
        0x5ft
        0xct
        0x5dt
        0x43t
        0x4ft
    .end array-data
.end method
