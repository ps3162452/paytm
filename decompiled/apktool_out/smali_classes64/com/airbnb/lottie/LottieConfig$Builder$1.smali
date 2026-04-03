.class Lcom/airbnb/lottie/LottieConfig$Builder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieConfig$Builder;->setNetworkCacheDir(Ljava/io/File;)Lcom/airbnb/lottie/LottieConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/airbnb/lottie/LottieConfig$Builder;

.field final val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieConfig$Builder;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieConfig$Builder$1;->this$0:Lcom/airbnb/lottie/LottieConfig$Builder;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieConfig$Builder$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheDir()Ljava/io/File;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fe84e7"

    const-wide v4, 0x41d5150886c00000L    # 1.414799899E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder$1;->val$file:Ljava/io/File;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5t
        0x4t
        0x5bt
        0x5ct
        0x0t
        0x17t
        0x0t
        0xct
        0x54t
        0x51t
        0x45t
        0x5at
        0x13t
        0x16t
        0x4ct
        0x14t
        0x7t
        0x52t
        0x46t
        0x4t
        0x18t
        0x50t
        0xct
        0x45t
        0x3t
        0x6t
        0x4ct
        0x5bt
        0x17t
        0x4et
    .end array-data
.end method
