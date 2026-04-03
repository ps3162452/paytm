.class public Lcom/airbnb/lottie/LottieComposition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieComposition$Factory;,
        Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    }
.end annotation


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private characters:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation
.end field

.field private endFrame:F

.field private fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation
.end field

.field private frameRate:F

.field private hasDashPattern:Z

.field private images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private layerMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private maskAndMatteCount:I

.field private final performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

.field private precomps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;"
        }
    .end annotation
.end field

.field private startFrame:F

.field private final warnings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker;

    invoke-direct {v0}, Lcom/airbnb/lottie/PerformanceTracker;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    return-void
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCharacters()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method public getDuration()F
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public getDurationFrames()F
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    iget v1, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getEndFrame()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    return v0
.end method

.method public getFonts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    return-object v0
.end method

.method public getFrameRate()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    return v0
.end method

.method public getImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    return-object v0
.end method

.method public getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    return-object v0
.end method

.method public getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/Marker;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/Marker;->matchesName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    return-object v0
.end method

.method public getMaskAndMatteCount()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    return-object v0
.end method

.method public getPrecomps(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getStartFrame()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    return v0
.end method

.method public getWarnings()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasDashPattern()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    return v0
.end method

.method public hasImages()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public incrementMatteOrMaskCount(I)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    return-void
.end method

.method public init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroidx/collection/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    iput p2, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    iput p3, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    iput p4, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    iput-object p5, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    iput-object p6, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    iput-object p7, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    iput-object p8, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    iput-object p9, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    iput-object p10, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    iput-object p11, p0, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    return-void
.end method

.method public layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/layer/Layer;

    return-object v0
.end method

.method public setHasDashPattern(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/PerformanceTracker;->setEnabled(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "8c32f7"

    const-wide v4, 0x41d5020005000000L    # 1.409810452E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/layer/Layer;

    const-string v3, "\t"

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x74t
        0xct
        0x47t
        0x46t
        0xft
        0x52t
        0x7bt
        0xct
        0x5et
        0x42t
        0x9t
        0x44t
        0x51t
        0x17t
        0x5at
        0x5dt
        0x8t
        0xdt
        0x32t
    .end array-data
.end method
