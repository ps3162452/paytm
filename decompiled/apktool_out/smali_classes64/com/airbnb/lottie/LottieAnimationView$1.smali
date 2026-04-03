.class Lcom/airbnb/lottie/LottieAnimationView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$1;->onResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Ljava/lang/Throwable;)V
    .locals 4

    const/16 v1, 0x1b

    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->isNetworkException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    const-string v1, "af9557"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c4bb64"

    const/16 v3, -0x630c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x34t
        0x8t
        0x58t
        0x57t
        0x59t
        0x52t
        0x41t
        0x12t
        0x56t
        0x15t
        0x59t
        0x58t
        0x0t
        0x2t
        0x19t
        0x56t
        0x5at
        0x5at
        0x11t
        0x9t
        0x4at
        0x5ct
        0x41t
        0x5et
        0xet
        0x8t
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x36t
        0x5at
        0x3t
        0x0t
        0x5at
        0x51t
        0x43t
        0x40t
        0xdt
        0x42t
        0x46t
        0x55t
        0x11t
        0x47t
        0x7t
        0x42t
        0x55t
        0x5bt
        0xet
        0x44t
        0xdt
        0x11t
        0x5ft
        0x40t
        0xat
        0x5bt
        0xct
    .end array-data
.end method
