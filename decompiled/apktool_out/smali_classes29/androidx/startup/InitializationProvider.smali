.class public Landroidx/startup/InitializationProvider;
.super Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d34f92"

    const/16 v3, 0x43c4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2at
        0x5ct
        0x40t
        0x46t
        0x58t
        0x5et
        0x8t
        0x5ct
        0x43t
        0x3t
        0x5dt
        0x1ct
    .end array-data
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bb4ac4"

    const v3, -0x317882c3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2ct
        0xdt
        0x40t
        0x41t
        0x2t
        0x58t
        0xet
        0xdt
        0x43t
        0x4t
        0x7t
        0x1at
    .end array-data
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f562ce"

    const-wide/32 v4, 0x670c017f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x28t
        0x5at
        0x42t
        0x12t
        0x2t
        0x9t
        0xat
        0x5at
        0x41t
        0x57t
        0x7t
        0x4bt
    .end array-data
.end method

.method public final onCreate()Z
    .locals 6

    invoke-virtual {p0}, Landroidx/startup/InitializationProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/startup/AppInitializer;->getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/startup/AppInitializer;->discoverAndInitialize()V

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Landroidx/startup/StartupException;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4c8b06"

    const-wide/32 v4, 0xe5fee2

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x77t
        0xct
        0x56t
        0x16t
        0x55t
        0x4et
        0x40t
        0x43t
        0x5bt
        0x3t
        0x5et
        0x58t
        0x5bt
        0x17t
        0x18t
        0x0t
        0x55t
        0x16t
        0x5at
        0x16t
        0x54t
        0xet
    .end array-data
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6e9081"

    const-wide v4, -0x3e2f399884400000L    # -1.125752303E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x78t
        0xat
        0x4dt
        0x10t
        0x59t
        0x5dt
        0x5at
        0xat
        0x4et
        0x55t
        0x5ct
        0x1ft
    .end array-data
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2a1d09"

    const v3, 0x4dd67c6c    # 4.498098E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7ct
        0xet
        0x45t
        0x44t
        0x51t
        0x55t
        0x5et
        0xet
        0x46t
        0x1t
        0x54t
        0x17t
    .end array-data
.end method
