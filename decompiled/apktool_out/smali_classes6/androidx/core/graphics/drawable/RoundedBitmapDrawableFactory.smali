.class public final Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6c94eb"

    const v2, 0x4d61ea89    # 2.3689026E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0xct
        0x4ct
        0x5at
        0x1t
        0x7t
        0x52t
        0x21t
        0x50t
        0x40t
        0x8t
        0x3t
        0x46t
        0x27t
        0x4bt
        0x55t
        0x12t
        0x3t
        0x54t
        0xft
        0x5ct
        0x72t
        0x4t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v0, p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static create(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    .locals 5

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5e119e"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 1
        0x67t
        0xat
        0x44t
        0x5ft
        0x5dt
        0x0t
        0x51t
        0x27t
        0x58t
        0x45t
        0x54t
        0x4t
        0x45t
        0x21t
        0x43t
        0x50t
        0x4et
        0x4t
        0x57t
        0x9t
        0x54t
        0x11t
        0x5at
        0x4t
        0x5bt
        0xbt
        0x5et
        0x45t
        0x19t
        0x1t
        0x50t
        0x6t
        0x5et
        0x55t
        0x5ct
        0x45t
    .end array-data
.end method

.method public static create(Landroid/content/res/Resources;Ljava/lang/String;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    .locals 5

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4274f1"

    const/16 v4, -0x4c32

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :array_0
    .array-data 1
        0x66t
        0x5dt
        0x42t
        0x5at
        0x2t
        0x54t
        0x50t
        0x70t
        0x5et
        0x40t
        0xbt
        0x50t
        0x44t
        0x76t
        0x45t
        0x55t
        0x11t
        0x50t
        0x56t
        0x5et
        0x52t
        0x14t
        0x5t
        0x50t
        0x5at
        0x5ct
        0x58t
        0x40t
        0x46t
        0x55t
        0x51t
        0x51t
        0x58t
        0x50t
        0x3t
        0x11t
    .end array-data
.end method
