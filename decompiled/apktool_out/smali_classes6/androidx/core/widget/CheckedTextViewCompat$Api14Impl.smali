.class Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CheckedTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api14Impl"
.end annotation


# static fields
.field private static sCheckMarkDrawableField:Ljava/lang/reflect/Field;

.field private static sResolved:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0x15

    const/4 v5, 0x1

    sget-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/widget/CheckedTextView;

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d38f1a"

    const/16 v4, 0x6557

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v5, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    :cond_0
    sget-object v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v3, "32f9fa"

    const/4 v4, 0x0

    invoke-static {v2, v3, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "bde9bf"

    const-wide/32 v6, 0x6e2d4c39

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    new-array v2, v8, [B

    fill-array-data v2, :array_3

    const-string v3, "babb23"

    const-wide/32 v4, -0x4637fe0b

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x30

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "3dd570"

    const v5, 0x4e969687    # 1.2632237E9f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v1, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    :cond_1
    move-object v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x9t
        0x70t
        0x50t
        0x3t
        0x52t
        0xat
        0x29t
        0x52t
        0x4at
        0xdt
        0x75t
        0x13t
        0x5t
        0x44t
        0x59t
        0x4t
        0x5dt
        0x4t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x5at
        0x3t
        0x5at
        0xdt
        0x4t
        0x57t
        0x66t
        0x3t
        0x41t
        0x12t
        0x37t
        0x5at
        0x57t
        0x11t
        0x7at
        0x9t
        0xct
        0x43t
        0x53t
        0x12t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x24t
        0x5t
        0xct
        0x55t
        0x7t
        0x2t
        0x42t
        0x10t
        0xat
        0x19t
        0x10t
        0x3t
        0x16t
        0x16t
        0xct
        0x5ct
        0x14t
        0x3t
        0x42t
        0x9t
        0x26t
        0x51t
        0x7t
        0x5t
        0x9t
        0x29t
        0x4t
        0x4bt
        0x9t
        0x22t
        0x10t
        0x5t
        0x12t
        0x58t
        0x0t
        0xat
        0x7t
        0x44t
        0x3t
        0x50t
        0x7t
        0xat
        0x6t
    .end array-data

    :array_3
    .array-data 1
        0x21t
        0x9t
        0x7t
        0x1t
        0x59t
        0x56t
        0x6t
        0x35t
        0x7t
        0x1at
        0x46t
        0x65t
        0xbt
        0x4t
        0x15t
        0x21t
        0x5dt
        0x5et
        0x12t
        0x0t
        0x16t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x75t
        0x5t
        0xdt
        0x59t
        0x52t
        0x54t
        0x13t
        0x10t
        0xbt
        0x15t
        0x50t
        0x55t
        0x47t
        0x44t
        0x7t
        0x5dt
        0x52t
        0x53t
        0x58t
        0x44t
        0x9t
        0x54t
        0x45t
        0x5bt
        0x13t
        0x0t
        0x16t
        0x54t
        0x40t
        0x51t
        0x51t
        0x8t
        0x1t
        0x15t
        0x41t
        0x59t
        0x52t
        0x44t
        0x16t
        0x50t
        0x51t
        0x5ct
        0x56t
        0x7t
        0x10t
        0x5ct
        0x58t
        0x5et
    .end array-data
.end method
