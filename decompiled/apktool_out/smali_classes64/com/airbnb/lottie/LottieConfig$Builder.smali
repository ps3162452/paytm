.class public final Lcom/airbnb/lottie/LottieConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableSystraceMarkers:Z

.field private networkFetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->enableSystraceMarkers:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/airbnb/lottie/LottieConfig;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/LottieConfig;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->networkFetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->enableSystraceMarkers:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/LottieConfig;-><init>(Lcom/airbnb/lottie/network/LottieNetworkFetcher;Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;ZLcom/airbnb/lottie/LottieConfig$1;)V

    return-object v0
.end method

.method public setEnableSystraceMarkers(Z)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->enableSystraceMarkers:Z

    return-object p0
.end method

.method public setNetworkCacheDir(Ljava/io/File;)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b8ae97"

    const/16 v3, 0x752c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/LottieConfig$Builder$1;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieConfig$Builder$1;-><init>(Lcom/airbnb/lottie/LottieConfig$Builder;Ljava/io/File;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x36t
        0x50t
        0x4t
        0x17t
        0x5ct
        0x17t
        0xbt
        0x4bt
        0x41t
        0x4t
        0x55t
        0x45t
        0x7t
        0x59t
        0x5t
        0x1ct
        0x19t
        0x56t
        0x42t
        0x5bt
        0x0t
        0x6t
        0x51t
        0x52t
        0x42t
        0x48t
        0x13t
        0xat
        0x4ft
        0x5et
        0x6t
        0x5dt
        0x13t
        0x44t
    .end array-data
.end method

.method public setNetworkCacheProvider(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 5
    .param p1    # Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2fc390"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/LottieConfig$Builder$2;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieConfig$Builder$2;-><init>(Lcom/airbnb/lottie/LottieConfig$Builder;Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x66t
        0xet
        0x6t
        0x41t
        0x5ct
        0x10t
        0x5bt
        0x15t
        0x43t
        0x52t
        0x55t
        0x42t
        0x57t
        0x7t
        0x7t
        0x4at
        0x19t
        0x51t
        0x12t
        0x5t
        0x2t
        0x50t
        0x51t
        0x55t
        0x12t
        0x16t
        0x11t
        0x5ct
        0x4ft
        0x59t
        0x56t
        0x3t
        0x11t
        0x12t
    .end array-data
.end method

.method public setNetworkFetcher(Lcom/airbnb/lottie/network/LottieNetworkFetcher;)Lcom/airbnb/lottie/LottieConfig$Builder;
    .locals 0
    .param p1    # Lcom/airbnb/lottie/network/LottieNetworkFetcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/airbnb/lottie/LottieConfig$Builder;->networkFetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    return-object p0
.end method
