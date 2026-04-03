.class public Lcom/airbnb/lottie/manager/ImageAssetManager;
.super Ljava/lang/Object;


# static fields
.field private static final bitmapHashLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private delegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final imageAssets:Ljava/util/Map;
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

.field private final imagesFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/ImageAssetDelegate;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    const/16 v1, 0x2f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/ImageAssetDelegate;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    const/16 v1, 0x2f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    :goto_0
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_1

    const/16 v0, 0x3b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "94a246"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    :goto_1
    return-void

    :cond_0
    iput-object p2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x75t
        0x5bt
        0x15t
        0x46t
        0x5dt
        0x53t
        0x7dt
        0x46t
        0x0t
        0x45t
        0x55t
        0x54t
        0x55t
        0x51t
        0x41t
        0x5ft
        0x41t
        0x45t
        0x4dt
        0x14t
        0x3t
        0x57t
        0x14t
        0x5ft
        0x57t
        0x47t
        0x8t
        0x56t
        0x51t
        0x16t
        0x56t
        0x52t
        0x41t
        0x53t
        0x14t
        0x40t
        0x50t
        0x51t
        0x16t
        0x12t
        0x52t
        0x59t
        0x4bt
        0x14t
        0x8t
        0x5ft
        0x55t
        0x51t
        0x5ct
        0x47t
        0x41t
        0x46t
        0x5bt
        0x16t
        0x4et
        0x5bt
        0x13t
        0x59t
        0x1at
    .end array-data
.end method

.method private putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v1, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v8, 0x2c

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    invoke-interface {v1, v0}, Lcom/airbnb/lottie/ImageAssetDelegate;->fetchBitmap(Lcom/airbnb/lottie/LottieImageAsset;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v4, 0xa0

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "fc039a"

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "f22d6d"

    invoke-static {v4, v5, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    const/16 v0, 0x2c

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v6, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v2, v8, [B

    fill-array-data v2, :array_2

    const-string v3, "1003bd"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x86

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "81b17a"

    const-wide/32 v4, 0x66e8c9de

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "1e1c3b"

    const/16 v4, -0x4478

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    const/4 v4, 0x0

    :try_start_3
    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/airbnb/lottie/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "364154"

    const-wide v4, 0x419441f7e8000000L    # 8.4966906E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x2t
        0x2t
        0x44t
        0x52t
        0x3t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x53t
        0x41t
        0x1t
        0x0t
        0x50t
        0x4at
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x51t
        0x44t
        0x52t
        0x42t
        0x31t
        0x63t
        0x7ct
        0x10t
        0x57t
        0xbt
        0x0t
        0x11t
        0x5et
        0x5ft
        0x47t
        0x42t
        0xct
        0x50t
        0x46t
        0x55t
        0x13t
        0x1t
        0xbt
        0x43t
        0x42t
        0x55t
        0x50t
        0x16t
        0x44t
        0x53t
        0x51t
        0x43t
        0x56t
        0x54t
        0x50t
        0x11t
        0x56t
        0x5ft
        0x41t
        0xft
        0x5t
        0x45t
        0x1et
    .end array-data

    :array_3
    .array-data 1
        0x61t
        0x5et
        0x17t
        0x11t
        0x5at
        0x14t
        0x4bt
        0x45t
        0x42t
        0x42t
        0x52t
        0x15t
        0x18t
        0x50t
        0xct
        0x11t
        0x5et
        0xct
        0x59t
        0x56t
        0x7t
        0x42t
        0x17t
        0x7t
        0x57t
        0x5dt
        0x6t
        0x54t
        0x45t
        0x41t
        0x5at
        0x54t
        0x4t
        0x5et
        0x45t
        0x4t
        0x18t
        0x5dt
        0xdt
        0x50t
        0x53t
        0x8t
        0x56t
        0x56t
        0x42t
        0x50t
        0x59t
        0x41t
        0x51t
        0x5ct
        0x3t
        0x56t
        0x52t
        0x4ft
        0x18t
        0x62t
        0x7t
        0x45t
        0x17t
        0x8t
        0x4ct
        0x11t
        0x15t
        0x58t
        0x43t
        0x9t
        0x18t
        0x7dt
        0xdt
        0x45t
        0x43t
        0x8t
        0x5dt
        0x72t
        0xdt
        0x5ct
        0x47t
        0xet
        0x4bt
        0x58t
        0x16t
        0x58t
        0x58t
        0xft
        0x1bt
        0x42t
        0x7t
        0x45t
        0x7et
        0xct
        0x59t
        0x56t
        0x7t
        0x42t
        0x71t
        0xet
        0x54t
        0x55t
        0x7t
        0x43t
        0x17t
        0xet
        0x4at
        0x11t
        0x2et
        0x5et
        0x43t
        0x15t
        0x51t
        0x54t
        0x26t
        0x43t
        0x56t
        0x16t
        0x59t
        0x53t
        0xet
        0x54t
        0x14t
        0x12t
        0x5dt
        0x45t
        0x2bt
        0x5ct
        0x56t
        0x6t
        0x5dt
        0x42t
        0x24t
        0x5et
        0x5bt
        0x5t
        0x5dt
        0x43t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x64t
        0xbt
        0x50t
        0x1t
        0x5ft
        0x7t
        0x11t
        0x11t
        0x5et
        0x43t
        0x5ct
        0x12t
        0x54t
        0xbt
        0x11t
        0x2t
        0x40t
        0x11t
        0x54t
        0x11t
        0x1ft
    .end array-data

    nop

    :array_5
    .array-data 1
        0x66t
        0x58t
        0x55t
        0x53t
        0x59t
        0x51t
        0x13t
        0x42t
        0x5bt
        0x11t
        0x51t
        0x51t
        0x50t
        0x59t
        0x50t
        0x54t
        0x15t
        0x5dt
        0x5et
        0x57t
        0x53t
        0x54t
        0x1bt
    .end array-data
.end method

.method public hasSameContext(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/ImageAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method
