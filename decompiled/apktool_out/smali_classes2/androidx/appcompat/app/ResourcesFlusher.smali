.class Landroidx/appcompat/app/ResourcesFlusher;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sDrawableCacheField:Ljava/lang/reflect/Field;

.field private static sDrawableCacheFieldFetched:Z

.field private static sResourcesImplField:Ljava/lang/reflect/Field;

.field private static sResourcesImplFieldFetched:Z

.field private static sThemedResourceCacheClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sThemedResourceCacheClazzFetched:Z

.field private static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field private static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "fad9b1"

    const-wide v2, -0x3e27c456b7c00000L    # -1.626252577E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x34t
        0x4t
        0x17t
        0x56t
        0x17t
        0x43t
        0x5t
        0x4t
        0x17t
        0x7ft
        0xet
        0x44t
        0x15t
        0x9t
        0x1t
        0x4bt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flush(Landroid/content/res/Resources;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Landroidx/appcompat/app/ResourcesFlusher;->flushNougats(Landroid/content/res/Resources;)V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    invoke-static {p0}, Landroidx/appcompat/app/ResourcesFlusher;->flushMarshmallows(Landroid/content/res/Resources;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/appcompat/app/ResourcesFlusher;->flushLollipops(Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method private static flushLollipops(Landroid/content/res/Resources;)V
    .locals 8

    const/4 v6, 0x1

    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ce3754"

    const-wide v4, -0x3e38245b66000000L    # -8.0054098E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    :cond_0
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ca29d5"

    const v4, 0x4ec3c42b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v3, 0x36

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "c7e9cb"

    const-wide/32 v6, -0x58adb73b

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0xet
        0x21t
        0x41t
        0x56t
        0x42t
        0x55t
        0x1t
        0x9t
        0x56t
        0x74t
        0x54t
        0x57t
        0xbt
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x20t
        0xet
        0x47t
        0x55t
        0x0t
        0x15t
        0xdt
        0xet
        0x46t
        0x19t
        0x16t
        0x50t
        0x17t
        0x13t
        0x5bt
        0x5ct
        0x12t
        0x50t
        0x43t
        0x33t
        0x57t
        0x4at
        0xbt
        0x40t
        0x11t
        0x2t
        0x57t
        0x4at
        0x47t
        0x58t
        0x27t
        0x13t
        0x53t
        0x4et
        0x5t
        0x57t
        0xft
        0x4t
        0x71t
        0x58t
        0x7t
        0x5dt
        0x6t
        0x41t
        0x54t
        0x50t
        0x1t
        0x59t
        0x7t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x20t
        0x58t
        0x10t
        0x55t
        0x7t
        0x42t
        0xdt
        0x58t
        0x11t
        0x19t
        0x11t
        0x7t
        0x17t
        0x45t
        0xct
        0x5ct
        0x15t
        0x7t
        0x43t
        0x41t
        0x4t
        0x55t
        0x16t
        0x7t
        0x43t
        0x51t
        0x17t
        0x56t
        0xet
        0x42t
        0x31t
        0x52t
        0x16t
        0x56t
        0x16t
        0x10t
        0x0t
        0x52t
        0x16t
        0x1at
        0xet
        0x26t
        0x11t
        0x56t
        0x12t
        0x58t
        0x1t
        0xet
        0x6t
        0x74t
        0x4t
        0x5at
        0xbt
        0x7t
    .end array-data
.end method

.method private static flushMarshmallows(Landroid/content/res/Resources;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5e4f78"

    const-wide/32 v4, -0x2fa7a5fb

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v7, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "b36759"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v3, 0x36

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "32c4f2"

    const-wide v6, -0x3e248f7f56800000L    # -1.841431206E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroidx/appcompat/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x58t
        0x21t
        0x46t
        0x7t
        0x40t
        0x59t
        0x57t
        0x9t
        0x51t
        0x25t
        0x56t
        0x5bt
        0x5dt
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x21t
        0x5ct
        0x43t
        0x5bt
        0x51t
        0x19t
        0xct
        0x5ct
        0x42t
        0x17t
        0x47t
        0x5ct
        0x16t
        0x41t
        0x5ft
        0x52t
        0x43t
        0x5ct
        0x42t
        0x61t
        0x53t
        0x44t
        0x5at
        0x4ct
        0x10t
        0x50t
        0x53t
        0x44t
        0x16t
        0x54t
        0x26t
        0x41t
        0x57t
        0x40t
        0x54t
        0x5bt
        0xet
        0x56t
        0x75t
        0x56t
        0x56t
        0x51t
        0x7t
        0x13t
        0x50t
        0x5et
        0x50t
        0x55t
        0x6t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x70t
        0x5dt
        0x16t
        0x58t
        0x2t
        0x12t
        0x5dt
        0x5dt
        0x17t
        0x14t
        0x14t
        0x57t
        0x47t
        0x40t
        0xat
        0x51t
        0x10t
        0x57t
        0x13t
        0x44t
        0x2t
        0x58t
        0x13t
        0x57t
        0x13t
        0x54t
        0x11t
        0x5bt
        0xbt
        0x12t
        0x61t
        0x57t
        0x10t
        0x5bt
        0x13t
        0x40t
        0x50t
        0x57t
        0x10t
        0x17t
        0xbt
        0x76t
        0x41t
        0x53t
        0x14t
        0x55t
        0x4t
        0x5et
        0x56t
        0x71t
        0x2t
        0x57t
        0xet
        0x57t
    .end array-data
.end method

.method private static flushNougats(Landroid/content/res/Resources;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b6c455"

    const v4, 0x4dd93ff2    # 4.5560582E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v8, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    :cond_0
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v3, 0x31

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "875f24"

    invoke-static {v3, v4, v9, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_1

    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v0, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "d78d5a"

    const-wide/32 v6, -0x61abd210

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    sput-boolean v8, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    :cond_3
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/appcompat/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v3, 0x36

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "1df6b6"

    const-wide/32 v6, -0x415b095b

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v4, 0x35

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "0fd6c2"

    invoke-static {v4, v5, v9, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v0

    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v3, 0x3a

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v4, "61ca93"

    const/16 v5, -0x6350

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_4

    :array_0
    .array-data 1
        0xft
        0x64t
        0x6t
        0x47t
        0x5at
        0x40t
        0x10t
        0x55t
        0x6t
        0x47t
        0x7ct
        0x58t
        0x12t
        0x5at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7bt
        0x58t
        0x40t
        0xat
        0x56t
        0x14t
        0x56t
        0x58t
        0x41t
        0x46t
        0x40t
        0x51t
        0x4ct
        0x45t
        0x5ct
        0x3t
        0x44t
        0x51t
        0x18t
        0x65t
        0x50t
        0x15t
        0x5dt
        0x41t
        0x4at
        0x54t
        0x50t
        0x15t
        0x11t
        0x59t
        0x6at
        0x52t
        0x46t
        0x9t
        0x47t
        0x46t
        0x5bt
        0x52t
        0x46t
        0x2ft
        0x5ft
        0x44t
        0x54t
        0x17t
        0x53t
        0xft
        0x57t
        0x58t
        0x5ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x9t
        0x73t
        0x4at
        0x5t
        0x42t
        0x0t
        0x6t
        0x5bt
        0x5dt
        0x27t
        0x54t
        0x2t
        0xct
        0x52t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x72t
        0xbt
        0x13t
        0x5at
        0x6t
        0x16t
        0x5ft
        0xbt
        0x12t
        0x16t
        0x10t
        0x53t
        0x45t
        0x16t
        0xft
        0x53t
        0x14t
        0x53t
        0x11t
        0x12t
        0x7t
        0x5at
        0x17t
        0x53t
        0x11t
        0x2t
        0x14t
        0x59t
        0xft
        0x16t
        0x63t
        0x1t
        0x15t
        0x59t
        0x17t
        0x44t
        0x52t
        0x1t
        0x15t
        0x15t
        0xft
        0x64t
        0x54t
        0x17t
        0x9t
        0x43t
        0x10t
        0x55t
        0x54t
        0x17t
        0x2ft
        0x5bt
        0x12t
        0x5at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x73t
        0x9t
        0x11t
        0x5at
        0x7t
        0x12t
        0x5et
        0x9t
        0x10t
        0x16t
        0x11t
        0x57t
        0x44t
        0x14t
        0xdt
        0x53t
        0x15t
        0x57t
        0x10t
        0x34t
        0x1t
        0x45t
        0xct
        0x47t
        0x42t
        0x5t
        0x1t
        0x45t
        0x2at
        0x5ft
        0x40t
        0xat
        0x47t
        0x5bt
        0x27t
        0x40t
        0x51t
        0x11t
        0x5t
        0x54t
        0xft
        0x57t
        0x73t
        0x7t
        0x7t
        0x5et
        0x6t
        0x12t
        0x56t
        0xft
        0x1t
        0x5at
        0x7t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x75t
        0x5et
        0x16t
        0xdt
        0x5dt
        0x13t
        0x58t
        0x5et
        0x17t
        0x41t
        0x4bt
        0x56t
        0x42t
        0x43t
        0xat
        0x4t
        0x4ft
        0x56t
        0x16t
        0x47t
        0x2t
        0xdt
        0x4ct
        0x56t
        0x16t
        0x57t
        0x11t
        0xet
        0x54t
        0x13t
        0x64t
        0x54t
        0x10t
        0xet
        0x4ct
        0x41t
        0x55t
        0x54t
        0x10t
        0x28t
        0x54t
        0x43t
        0x5at
        0x12t
        0xet
        0x25t
        0x4bt
        0x52t
        0x41t
        0x50t
        0x1t
        0xdt
        0x5ct
        0x70t
        0x57t
        0x52t
        0xbt
        0x4t
    .end array-data
.end method

.method private static flushThemedResourcesCache(Ljava/lang/Object;)V
    .locals 8

    const/4 v6, 0x1

    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    if-nez v0, :cond_0

    const/16 v0, 0x27

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d05848"

    const v2, 0x4ec3c49d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    :cond_0
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4f3ce6"

    const-wide/32 v4, 0x4b60abeb

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    sget-boolean v1, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    if-nez v1, :cond_3

    const/16 v1, 0x10

    :try_start_1
    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "59b908"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sput-boolean v6, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    :cond_3
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v2, 0x3d

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "83ef70"

    const/16 v4, -0x2f4b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->TAG:Ljava/lang/String;

    const/16 v3, 0x42

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "d71181"

    const-wide v6, 0x41a34c1b52000000L    # 1.61877417E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_3

    :array_0
    .array-data 1
        0x5t
        0x5et
        0x51t
        0x4at
        0x5bt
        0x51t
        0x0t
        0x1et
        0x56t
        0x57t
        0x5at
        0x4ct
        0x1t
        0x5et
        0x41t
        0x16t
        0x46t
        0x5dt
        0x17t
        0x1et
        0x61t
        0x50t
        0x51t
        0x55t
        0x1t
        0x54t
        0x67t
        0x5dt
        0x47t
        0x57t
        0x11t
        0x42t
        0x56t
        0x5dt
        0x77t
        0x59t
        0x7t
        0x58t
        0x50t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x9t
        0x46t
        0xft
        0x1t
        0x16t
        0x5at
        0x9t
        0x47t
        0x43t
        0x3t
        0x5ft
        0x5at
        0x2t
        0x13t
        0x37t
        0xdt
        0x53t
        0x59t
        0x3t
        0x57t
        0x31t
        0x0t
        0x45t
        0x5bt
        0x13t
        0x41t
        0x0t
        0x0t
        0x75t
        0x55t
        0x5t
        0x5bt
        0x6t
        0x45t
        0x55t
        0x58t
        0x7t
        0x40t
        0x10t
    .end array-data

    :array_2
    .array-data 1
        0x58t
        0x6ct
        0xct
        0x4dt
        0x58t
        0x5dt
        0x58t
        0x5ct
        0x6t
        0x7ct
        0x5et
        0x4ct
        0x47t
        0x50t
        0x7t
        0x4at
    .end array-data

    :array_3
    .array-data 1
        0x7bt
        0x5ct
        0x10t
        0xat
        0x53t
        0x10t
        0x56t
        0x5ct
        0x11t
        0x46t
        0x45t
        0x55t
        0x4ct
        0x41t
        0xct
        0x3t
        0x41t
        0x55t
        0x18t
        0x67t
        0xdt
        0x3t
        0x5at
        0x55t
        0x5ct
        0x61t
        0x0t
        0x15t
        0x58t
        0x45t
        0x4at
        0x50t
        0x0t
        0x25t
        0x56t
        0x53t
        0x50t
        0x56t
        0x46t
        0xbt
        0x62t
        0x5et
        0x4ct
        0x5bt
        0x0t
        0xbt
        0x52t
        0x54t
        0x7dt
        0x5dt
        0x11t
        0x14t
        0x5et
        0x55t
        0x4bt
        0x13t
        0x3t
        0xft
        0x52t
        0x5ct
        0x5ct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x27t
        0x58t
        0x44t
        0x5dt
        0x5ct
        0x11t
        0xat
        0x58t
        0x45t
        0x11t
        0x4at
        0x54t
        0x10t
        0x45t
        0x58t
        0x54t
        0x4et
        0x54t
        0x44t
        0x41t
        0x50t
        0x5dt
        0x4dt
        0x54t
        0x44t
        0x51t
        0x43t
        0x5et
        0x55t
        0x11t
        0x30t
        0x5ft
        0x54t
        0x5ct
        0x5dt
        0x55t
        0x36t
        0x52t
        0x42t
        0x5et
        0x4dt
        0x43t
        0x7t
        0x52t
        0x72t
        0x50t
        0x5bt
        0x59t
        0x1t
        0x14t
        0x5ct
        0x64t
        0x56t
        0x45t
        0xct
        0x52t
        0x5ct
        0x54t
        0x5ct
        0x74t
        0xat
        0x43t
        0x43t
        0x58t
        0x5dt
        0x42t
    .end array-data
.end method
