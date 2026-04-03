.class public Lcom/airbnb/lottie/model/layer/Layer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/layer/Layer$LayerType;,
        Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    }
.end annotation


# instance fields
.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final hidden:Z

.field private final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layerId:J

.field private final layerName:Ljava/lang/String;

.field private final layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field private final parentId:J

.field private final preCompHeight:I

.field private final preCompWidth:I

.field private final refId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final solidColor:I

.field private final solidHeight:I

.field private final solidWidth:I

.field private final startFrame:F

.field private final text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final textProperties:Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeStretch:F

.field private final transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
    .locals 1
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/lang/String;",
            "J",
            "Lcom/airbnb/lottie/model/layer/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;",
            "IIIFFII",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/airbnb/lottie/model/layer/Layer$MatteType;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    iput-object p6, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    iput-wide p7, p0, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    iput-object p9, p0, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    iput-object p10, p0, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    iput-object p11, p0, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    iput p12, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    iput p13, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    iput p14, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    move/from16 v0, p15

    iput v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->timeStretch:F

    move/from16 v0, p16

    iput v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->startFrame:F

    move/from16 v0, p17

    iput v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->preCompWidth:I

    move/from16 v0, p18

    iput v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->preCompHeight:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    return-void
.end method


# virtual methods
.method getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    return-wide v0
.end method

.method getInOutKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    return-object v0
.end method

.method public getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    return-object v0
.end method

.method getMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    return-object v0
.end method

.method getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    return-object v0
.end method

.method getParentId()J
    .locals 2

    iget-wide v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    return-wide v0
.end method

.method getPreCompHeight()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->preCompHeight:I

    return v0
.end method

.method getPreCompWidth()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->preCompWidth:I

    return v0
.end method

.method getRefId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    return-object v0
.end method

.method getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    return-object v0
.end method

.method getSolidColor()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    return v0
.end method

.method getSolidHeight()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    return v0
.end method

.method getSolidWidth()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    return v0
.end method

.method getStartProgress()F
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->startFrame:F

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method getText()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    return-object v0
.end method

.method getTextProperties()Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    return-object v0
.end method

.method getTimeRemapping()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method getTimeStretch()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->timeStretch:F

    return v0
.end method

.method getTransform()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x9

    const/4 v8, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getParentId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "7f38fe"

    const-wide/32 v4, -0x3c37e0d5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v3, "243318"

    const v4, 0x4e88ebe0    # 1.1485798E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "c8e7b7"

    const-wide v4, -0x3e357bb882000000L    # -8.8975334E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "28e497"

    const v4, 0x4efd5185

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v9, [B

    fill-array-data v3, :array_4

    const-string v4, "a5563a"

    const-wide v6, 0x41cc4755dd000000L    # 9.4887417E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v9, [B

    fill-array-data v2, :array_5

    const-string v3, "da6d73"

    const v4, 0x4eda36bb

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x3et
        0x6ft
        0x63t
        0x59t
        0x14t
        0x0t
        0x59t
        0x12t
        0x40t
        0x2t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x1ft
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6at
        0x75t
        0x4t
        0x44t
        0x9t
        0x44t
        0x59t
        0x18t
    .end array-data

    :array_3
    .array-data 1
        0x3bt
        0x7at
        0x4t
        0x57t
        0x52t
        0x50t
        0x40t
        0x57t
        0x10t
        0x5at
        0x5dt
        0xdt
        0x12t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x44t
        0x51t
        0x4dt
        0x13t
        0x57t
        0x41t
        0x44t
        0x6dt
        0x3ft
    .end array-data

    nop

    :array_5
    .array-data 1
        0x6dt
        0x32t
        0x5et
        0x5t
        0x47t
        0x56t
        0x17t
        0x5bt
        0x3ct
    .end array-data
.end method
