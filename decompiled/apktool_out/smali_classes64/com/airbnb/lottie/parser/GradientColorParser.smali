.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    new-array v4, v1, [D

    new-array v5, v1, [D

    move v1, v2

    move v3, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v6, v0

    aput-wide v6, v4, v1

    move v0, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v6, v0

    aput-wide v6, v5, v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v1

    aget v1, v1, v2

    float-to-double v6, v1

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/airbnb/lottie/parser/GradientColorParser;->getOpacityAtPosition(D[D[D)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v3, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v1

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 11
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    const-wide v8, 0x406fe00000000000L    # 255.0

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    array-length v0, p3

    if-ge v6, v0, :cond_1

    add-int/lit8 v0, v6, -0x1

    aget-wide v0, p3, v0

    aget-wide v2, p3, v6

    aget-wide v4, p3, v6

    cmpl-double v4, v4, p1

    if-ltz v4, :cond_0

    sub-double v4, p1, v0

    sub-double v0, v2, v0

    div-double v0, v4, v0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v5}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(DDD)D

    move-result-wide v4

    add-int/lit8 v0, v6, -0x1

    aget-wide v0, p4, v0

    aget-wide v2, p4, v6

    invoke-static/range {v0 .. v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p4, v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    goto :goto_1
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    :cond_3
    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    :cond_4
    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v5, v0, [F

    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v6, v0, [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_2
    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    if-ge v3, v0, :cond_6

    div-int/lit8 v7, v3, 0x4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v8, v0

    rem-int/lit8 v0, v3, 0x4

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v1, v2

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    :pswitch_0
    if-lez v7, :cond_5

    add-int/lit8 v0, v7, -0x1

    aget v0, v5, v0

    double-to-float v10, v8

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_5

    double-to-float v0, v8

    const v8, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v8

    aput v0, v5, v7

    move v0, v1

    move v1, v2

    goto :goto_3

    :cond_5
    double-to-float v0, v8

    aput v0, v5, v7

    move v0, v1

    move v1, v2

    goto :goto_3

    :pswitch_1
    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v2, v8

    move v0, v1

    move v1, v2

    goto :goto_3

    :pswitch_2
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v8

    double-to-int v1, v0

    move v0, v1

    move v1, v2

    goto :goto_3

    :pswitch_3
    const/16 v0, 0xff

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {v0, v2, v1, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v6, v7

    move v0, v1

    move v1, v2

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v0, v5, v6}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    invoke-direct {p0, v0, v4}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v0

    return-object v0
.end method
