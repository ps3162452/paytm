.class Lcom/airbnb/lottie/L$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/L$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheDir()Ljava/io/File;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/airbnb/lottie/L$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "8f6369"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :array_0
    .array-data 1
        0x54t
        0x9t
        0x42t
        0x47t
        0x5ft
        0x5ct
        0x67t
        0x8t
        0x53t
        0x47t
        0x41t
        0x56t
        0x4at
        0xdt
        0x69t
        0x50t
        0x57t
        0x5at
        0x50t
        0x3t
    .end array-data
.end method
