.class public Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/network/LottieNetworkFetcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchSync(Ljava/lang/String;)Lcom/airbnb/lottie/network/LottieFetchResult;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ff2e91"

    const v3, 0x4e02ff51    # 5.494426E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v1

    :array_0
    .array-data 1
        0x21t
        0x23t
        0x66t
    .end array-data
.end method
