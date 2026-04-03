.class public Lcom/google/firebase/provider/FirebaseInitProvider;
.super Landroid/content/ContentProvider;


# static fields
.field static final EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "aa3696"

    const/16 v2, 0x3f24

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "578ac1"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x2t
        0xet
        0x5et
        0x18t
        0x5et
        0x59t
        0xet
        0x6t
        0x5ft
        0x53t
        0x17t
        0x50t
        0x8t
        0x13t
        0x56t
        0x54t
        0x58t
        0x45t
        0x4t
        0x4ft
        0x55t
        0x5ft
        0x4bt
        0x53t
        0x3t
        0x0t
        0x40t
        0x53t
        0x50t
        0x58t
        0x8t
        0x15t
        0x43t
        0x44t
        0x56t
        0x40t
        0x8t
        0x5t
        0x56t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x73t
        0x5et
        0x4at
        0x4t
        0x1t
        0x50t
        0x46t
        0x52t
        0x71t
        0xft
        0xat
        0x45t
        0x65t
        0x45t
        0x57t
        0x17t
        0xat
        0x55t
        0x50t
        0x45t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static checkContentProviderAuthority(Landroid/content/pm/ProviderInfo;)V
    .locals 4

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "09fdcc"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x7c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "3e2c8e"

    const/16 v3, 0x5d61

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x76t
        0x50t
        0x14t
        0x1t
        0x1t
        0x2t
        0x43t
        0x5ct
        0x2ft
        0xat
        0xat
        0x17t
        0x60t
        0x4bt
        0x9t
        0x12t
        0xat
        0x7t
        0x55t
        0x4bt
        0x46t
        0x34t
        0x11t
        0xct
        0x46t
        0x50t
        0x2t
        0x1t
        0x11t
        0x2at
        0x5et
        0x5ft
        0x9t
        0x44t
        0x0t
        0x2t
        0x5et
        0x57t
        0x9t
        0x10t
        0x43t
        0x1t
        0x55t
        0x19t
        0x8t
        0x11t
        0xft
        0xft
        0x1et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7at
        0xbt
        0x51t
        0xct
        0x4at
        0x17t
        0x56t
        0x6t
        0x46t
        0x43t
        0x48t
        0x17t
        0x5ct
        0x13t
        0x5bt
        0x7t
        0x5dt
        0x17t
        0x13t
        0x4t
        0x47t
        0x17t
        0x50t
        0xat
        0x41t
        0xct
        0x46t
        0x1at
        0x18t
        0xct
        0x5dt
        0x45t
        0x5ft
        0x2t
        0x56t
        0xct
        0x55t
        0x0t
        0x41t
        0x17t
        0x16t
        0x45t
        0x7et
        0xat
        0x41t
        0x17t
        0x18t
        0x9t
        0x5at
        0xet
        0x57t
        0xft
        0x41t
        0x45t
        0x57t
        0x10t
        0x57t
        0x43t
        0x4ct
        0xat
        0x13t
        0x4t
        0x12t
        0xet
        0x51t
        0x16t
        0x40t
        0xct
        0x5ct
        0x4t
        0x18t
        0x4t
        0x43t
        0x15t
        0x5et
        0xat
        0x5bt
        0x4t
        0x47t
        0xct
        0x5dt
        0xdt
        0x71t
        0x1t
        0x13t
        0x13t
        0x53t
        0x11t
        0x51t
        0x4t
        0x51t
        0x9t
        0x57t
        0x43t
        0x51t
        0xbt
        0x13t
        0x4t
        0x42t
        0x13t
        0x54t
        0xct
        0x50t
        0x4t
        0x46t
        0xat
        0x57t
        0xbt
        0x14t
        0x16t
        0x12t
        0x1t
        0x4dt
        0xct
        0x5ft
        0x1t
        0x1ct
        0x4t
        0x4at
        0x4t
        0x57t
        0x9t
        0x57t
        0x4dt
    .end array-data
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    invoke-static {p2}, Lcom/google/firebase/provider/FirebaseInitProvider;->checkContentProviderAuthority(Landroid/content/pm/ProviderInfo;)V

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/firebase/provider/FirebaseInitProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->TAG:Ljava/lang/String;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4ea46c"

    const/16 v3, 0x4977

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->TAG:Ljava/lang/String;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b00808"

    const/16 v3, 0x2434

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x72t
        0xct
        0x13t
        0x51t
        0x54t
        0x2t
        0x47t
        0x0t
        0x20t
        0x44t
        0x46t
        0x43t
        0x5dt
        0xbt
        0x8t
        0x40t
        0x5ft
        0x2t
        0x58t
        0xct
        0x1bt
        0x55t
        0x42t
        0xat
        0x5bt
        0xbt
        0x41t
        0x41t
        0x58t
        0x10t
        0x41t
        0x6t
        0x2t
        0x51t
        0x45t
        0x10t
        0x52t
        0x10t
        0xdt
    .end array-data

    :array_1
    .array-data 1
        0x24t
        0x59t
        0x42t
        0x5dt
        0x52t
        0x59t
        0x11t
        0x55t
        0x71t
        0x48t
        0x40t
        0x18t
        0xbt
        0x5et
        0x59t
        0x4ct
        0x59t
        0x59t
        0xet
        0x59t
        0x4at
        0x59t
        0x44t
        0x51t
        0xdt
        0x5et
        0x10t
        0x4bt
        0x45t
        0x5bt
        0x1t
        0x55t
        0x43t
        0x4bt
        0x56t
        0x4dt
        0xet
    .end array-data
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
