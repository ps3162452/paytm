.class public final Landroidx/core/content/IntentCompat;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_CREATE_REMINDER:Ljava/lang/String;

.field public static final CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String;

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String;

.field public static final EXTRA_START_PLAYBACK:Ljava/lang/String;

.field public static final EXTRA_TIME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c45642"

    const/16 v2, -0x5d1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/IntentCompat;->ACTION_CREATE_REMINDER:Ljava/lang/String;

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "485aa5"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/IntentCompat;->CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String;

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "af63b6"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/IntentCompat;->EXTRA_HTML_TEXT:Ljava/lang/String;

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "34b86a"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/IntentCompat;->EXTRA_START_PLAYBACK:Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "ae5043"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/IntentCompat;->EXTRA_TIME:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x2t
        0x5at
        0x51t
        0x44t
        0x5bt
        0x5bt
        0x7t
        0x1at
        0x5ct
        0x58t
        0x40t
        0x57t
        0xdt
        0x40t
        0x1bt
        0x57t
        0x57t
        0x46t
        0xat
        0x5bt
        0x5bt
        0x18t
        0x77t
        0x60t
        0x26t
        0x75t
        0x61t
        0x73t
        0x6bt
        0x60t
        0x26t
        0x79t
        0x7ct
        0x78t
        0x70t
        0x77t
        0x31t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x55t
        0x56t
        0x51t
        0x13t
        0xet
        0x5ct
        0x50t
        0x16t
        0x5ct
        0xft
        0x15t
        0x50t
        0x5at
        0x4ct
        0x1bt
        0x2t
        0x0t
        0x41t
        0x51t
        0x5ft
        0x5at
        0x13t
        0x18t
        0x1bt
        0x78t
        0x7dt
        0x74t
        0x2ft
        0x23t
        0x74t
        0x77t
        0x73t
        0x6at
        0x2dt
        0x20t
        0x60t
        0x7at
        0x7bt
        0x7dt
        0x24t
        0x33t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x8t
        0x52t
        0x41t
        0xdt
        0x5ft
        0x5t
        0x48t
        0x5ft
        0x5dt
        0x16t
        0x53t
        0xft
        0x12t
        0x18t
        0x56t
        0x1at
        0x42t
        0x13t
        0x7t
        0x18t
        0x7bt
        0x36t
        0x7bt
        0x2dt
        0x39t
        0x62t
        0x76t
        0x3at
        0x62t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x52t
        0x5at
        0x6t
        0x4at
        0x59t
        0x8t
        0x57t
        0x1at
        0xbt
        0x56t
        0x42t
        0x4t
        0x5dt
        0x40t
        0x4ct
        0x5dt
        0x4et
        0x15t
        0x41t
        0x55t
        0x4ct
        0x6bt
        0x62t
        0x20t
        0x61t
        0x60t
        0x3dt
        0x68t
        0x7at
        0x20t
        0x6at
        0x76t
        0x23t
        0x7bt
        0x7dt
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0xbt
        0x51t
        0x42t
        0x5bt
        0x5at
        0x5t
        0x4bt
        0x5ct
        0x5et
        0x40t
        0x56t
        0xft
        0x11t
        0x1bt
        0x55t
        0x4ct
        0x47t
        0x13t
        0x4t
        0x1bt
        0x64t
        0x7dt
        0x7et
        0x24t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createManageUnusedAppRestrictionsIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    const/4 v6, 0x0

    const/16 v2, 0x2d

    const/4 v4, 0x7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/PackageManagerCompat;->areUnusedAppRestrictionsAvailable(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    const-string v2, "380be1"

    const v3, -0x314133cb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "8832ce"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    const-string v2, "2faab7"

    const v3, 0x4e9bee94

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v1, v4, [B

    fill-array-data v1, :array_3

    const-string v2, "f59528"

    const-wide v4, 0x41ddbaf510c00000L    # 1.995166787E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/PackageManagerCompat;->getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "13d86e"

    const v3, -0x31d106bc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x52t
        0x56t
        0x54t
        0x10t
        0xat
        0x58t
        0x57t
        0x16t
        0x43t
        0x7t
        0x11t
        0x45t
        0x5at
        0x56t
        0x57t
        0x11t
        0x4bt
        0x70t
        0x63t
        0x68t
        0x7ct
        0x2bt
        0x26t
        0x70t
        0x67t
        0x71t
        0x7ft
        0x2ct
        0x3at
        0x75t
        0x76t
        0x6ct
        0x71t
        0x2bt
        0x29t
        0x62t
        0x6ct
        0x6bt
        0x75t
        0x36t
        0x31t
        0x78t
        0x7dt
        0x7ft
        0x63t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x48t
        0x59t
        0x50t
        0x59t
        0x2t
        0x2t
        0x5dt
    .end array-data

    :array_2
    .array-data 1
        0x53t
        0x8t
        0x5t
        0x13t
        0xdt
        0x5et
        0x56t
        0x48t
        0x8t
        0xft
        0x16t
        0x52t
        0x5ct
        0x12t
        0x4ft
        0x0t
        0x1t
        0x43t
        0x5bt
        0x9t
        0xft
        0x4ft
        0x23t
        0x62t
        0x66t
        0x29t
        0x3et
        0x33t
        0x27t
        0x61t
        0x7dt
        0x2dt
        0x24t
        0x3et
        0x32t
        0x72t
        0x60t
        0x2bt
        0x28t
        0x32t
        0x31t
        0x7et
        0x7dt
        0x28t
        0x32t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x16t
        0x54t
        0x5at
        0x5et
        0x53t
        0x5ft
        0x3t
    .end array-data

    :array_4
    .array-data 1
        0x64t
        0x5dt
        0x11t
        0x4bt
        0x53t
        0x1t
        0x11t
        0x72t
        0x14t
        0x48t
        0x16t
        0x37t
        0x54t
        0x40t
        0x10t
        0x4at
        0x5ft
        0x6t
        0x45t
        0x5at
        0xbt
        0x56t
        0x16t
        0x3t
        0x54t
        0x52t
        0x10t
        0x4dt
        0x44t
        0x0t
        0x42t
        0x13t
        0x5t
        0x4at
        0x53t
        0x45t
        0x5ft
        0x5ct
        0x10t
        0x18t
        0x57t
        0x13t
        0x50t
        0x5at
        0x8t
        0x59t
        0x54t
        0x9t
        0x54t
        0x13t
        0xbt
        0x56t
        0x16t
        0x11t
        0x59t
        0x5at
        0x17t
        0x18t
        0x52t
        0x0t
        0x47t
        0x5at
        0x7t
        0x5dt
    .end array-data
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
