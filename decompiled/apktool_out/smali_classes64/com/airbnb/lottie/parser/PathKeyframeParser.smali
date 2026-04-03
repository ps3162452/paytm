.class Lcom/airbnb/lottie/parser/PathKeyframeParser;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    new-instance v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    sget-object v3, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE:Lcom/airbnb/lottie/parser/PathParser;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    invoke-direct {v6, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/value/Keyframe;)V

    return-object v6

    :cond_0
    move v4, v5

    goto :goto_0
.end method
