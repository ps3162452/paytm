.class public Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/DefaultEmojiCompatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultEmojiCompatConfigFactory"
.end annotation


# static fields
.field private static final DEFAULT_EMOJI_QUERY:Ljava/lang/String;

.field private static final INTENT_LOAD_EMOJI_FONT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "5f50cd"

    const v2, 0x4edd0539

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->DEFAULT_EMOJI_QUERY:Ljava/lang/String;

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c178d8"

    const/16 v2, 0x4cf1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->INTENT_LOAD_EMOJI_FONT:Ljava/lang/String;

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "47b07f"

    const v2, 0x4df15327    # 5.0609482E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x50t
        0xbt
        0x5at
        0x5at
        0xat
        0x7t
        0x5at
        0xbt
        0x45t
        0x51t
        0x17t
        0x49t
        0x50t
        0xbt
        0x5at
        0x5at
        0xat
        0x49t
        0x53t
        0x9t
        0x5bt
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x5ft
        0x53t
        0x4at
        0xbt
        0x51t
        0x7t
        0x49t
        0x19t
        0x5bt
        0xbt
        0x56t
        0x17t
        0x54t
        0x59t
        0x4ct
        0x4at
        0x59t
        0x0t
        0x45t
        0x5et
        0x57t
        0xat
        0x16t
        0x2ft
        0x7et
        0x76t
        0x7ct
        0x3bt
        0x7dt
        0x2et
        0x7et
        0x7dt
        0x71t
        0x3bt
        0x7et
        0x2ct
        0x7ft
        0x63t
    .end array-data

    :array_2
    .array-data 1
        0x51t
        0x5at
        0xdt
        0x5at
        0x5et
        0x54t
        0x1at
        0x43t
        0x7t
        0x48t
        0x43t
        0x48t
        0x70t
        0x52t
        0x4t
        0x51t
        0x42t
        0xat
        0x40t
        0x72t
        0xft
        0x5ft
        0x5dt
        0xft
        0x77t
        0x58t
        0xct
        0x56t
        0x5et
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    return-void

    :cond_0
    invoke-static {}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->getHelperForApi()Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    move-result-object p1

    goto :goto_0
.end method

.method private configOrNull(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    invoke-direct {v0, p1, p2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;)V

    goto :goto_0
.end method

.method private convertToByteArray([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private generateFontRequestFrom(Landroid/content/pm/ProviderInfo;Landroid/content/pm/PackageManager;)Landroidx/core/provider/FontRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    new-instance v2, Landroidx/core/provider/FontRequest;

    sget-object v3, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->DEFAULT_EMOJI_QUERY:Ljava/lang/String;

    iget-object v4, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    invoke-virtual {v4, p2, v1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;->getSigningSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->convertToByteArray([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method private static getHelperForApi()Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28;

    invoke-direct {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API19;

    invoke-direct {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API19;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    invoke-direct {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;-><init>()V

    goto :goto_0
.end method

.method private hasFlagSystem(Landroid/content/pm/ProviderInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryDefaultInstalledContentProvider(Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;
    .locals 3

    iget-object v0, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->INTENT_LOAD_EMOJI_FONT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;->queryIntentContentProviders(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    invoke-virtual {v2, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;->getProviderInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->hasFlagSystem(Landroid/content/pm/ProviderInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->queryForDefaultFontRequest(Landroid/content/Context;)Landroidx/core/provider/FontRequest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->configOrNull(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/emoji2/text/EmojiCompat$Config;

    move-result-object v0

    return-object v0
.end method

.method queryForDefaultFontRequest(Landroid/content/Context;)Landroidx/core/provider/FontRequest;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x36

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5d8389"

    const-wide/32 v4, 0x5d448a9f

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->queryDefaultInstalledContentProvider(Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0, v2, v1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->generateFontRequestFrom(Landroid/content/pm/ProviderInfo;Landroid/content/pm/PackageManager;)Landroidx/core/provider/FontRequest;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x65t
        0x5t
        0x5bt
        0x58t
        0x59t
        0x5et
        0x50t
        0x44t
        0x55t
        0x52t
        0x56t
        0x58t
        0x52t
        0x1t
        0x4at
        0x13t
        0x4at
        0x5ct
        0x44t
        0x11t
        0x51t
        0x41t
        0x5dt
        0x5dt
        0x15t
        0x10t
        0x57t
        0x13t
        0x54t
        0x56t
        0x56t
        0x5t
        0x4ct
        0x56t
        0x18t
        0x5ct
        0x58t
        0xbt
        0x52t
        0x5at
        0x18t
        0x5ft
        0x5at
        0xat
        0x4ct
        0x13t
        0x48t
        0x4bt
        0x5at
        0x12t
        0x51t
        0x57t
        0x5dt
        0x4bt
    .end array-data
.end method
