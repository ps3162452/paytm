.class public Lcom/airbnb/lottie/LottieImageAsset;
.super Ljava/lang/Object;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dirName:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    iput p2, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    iput-object p3, p0, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/airbnb/lottie/LottieImageAsset;->dirName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDirName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->dirName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    return v0
.end method

.method public hasBitmap()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "be0280"

    invoke-static {v3, v4, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "f700a5"

    const-wide/32 v6, -0x7d05259

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 1
        0x6t
        0x4t
        0x44t
        0x53t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x56t
        0x43t
        0x55t
        0x57t
        0x1t
        0x4at
    .end array-data
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
