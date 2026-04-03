.class public Landroidx/core/app/ShareCompat$IntentReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallingActivity:Landroid/content/ComponentName;

.field private final mCallingPackage:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a93168"

    const-wide v2, 0x41c7c64f3a000000L    # 7.97744756E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ShareCompat$IntentReader;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x28t
        0x57t
        0x47t
        0x54t
        0x58t
        0x4ct
        0x33t
        0x5ct
        0x52t
        0x55t
        0x53t
        0x4at
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/core/app/ShareCompat$IntentReader;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-static {p2}, Landroidx/core/app/ShareCompat;->getCallingPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    invoke-static {p2}, Landroidx/core/app/ShareCompat;->getCallingActivity(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentReader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/core/app/ShareCompat$IntentReader;

    invoke-direct {v0, p0}, Landroidx/core/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 10

    const/4 v9, 0x4

    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_7

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    new-array v1, v9, [B

    fill-array-data v1, :array_0

    const-string v2, "9a501c"

    invoke-static {v1, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    new-array v1, v9, [B

    fill-array-data v1, :array_1

    const-string v2, "fb66af"

    const/16 v3, 0x60c6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "fbfaa8"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_3

    if-ge v1, v8, :cond_4

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "e85857"

    const-wide v4, 0x41ddd0fe58c00000L    # 2.000943459E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v1, v7, [B

    const/16 v2, 0xd

    aput-byte v2, v1, v6

    const-string v2, "630498"

    const v3, 0x4e48ca05    # 8.421707E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-ne v1, v8, :cond_6

    :goto_2
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_5

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "833d00"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    return-void

    :array_0
    .array-data 1
        0x1ft
        0xdt
        0x41t
        0xbt
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x5t
        0x42t
        0xdt
    .end array-data

    :array_2
    .array-data 1
        0x40t
        0x3t
        0xbt
        0x11t
        0x5at
    .end array-data

    nop

    :array_3
    .array-data 1
        0x43t
        0x1bt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1et
        0x5dt
        0x51t
        0x17t
        0x40t
        0xbt
    .end array-data
.end method


# virtual methods
.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroidx/core/app/ShareCompat$IntentReader;->TAG:Ljava/lang/String;

    const/16 v3, 0x2c

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "1458c4"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x72t
        0x5bt
        0x40t
        0x54t
        0x7t
        0x14t
        0x5ft
        0x5bt
        0x41t
        0x18t
        0x11t
        0x51t
        0x45t
        0x46t
        0x5ct
        0x5dt
        0x15t
        0x51t
        0x11t
        0x5dt
        0x56t
        0x57t
        0xdt
        0x14t
        0x57t
        0x5bt
        0x47t
        0x18t
        0x0t
        0x55t
        0x5dt
        0x58t
        0x5ct
        0x56t
        0x4t
        0x14t
        0x50t
        0x57t
        0x41t
        0x51t
        0x15t
        0x5dt
        0x45t
        0x4dt
    .end array-data
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroidx/core/app/ShareCompat$IntentReader;->TAG:Ljava/lang/String;

    const/16 v3, 0x2f

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "b499bc"

    const v5, 0x4d4c3236    # 2.1411517E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x21t
        0x5bt
        0x4ct
        0x55t
        0x6t
        0x43t
        0xct
        0x5bt
        0x4dt
        0x19t
        0x10t
        0x6t
        0x16t
        0x46t
        0x50t
        0x5ct
        0x14t
        0x6t
        0x42t
        0x5dt
        0x5at
        0x56t
        0xct
        0x43t
        0x4t
        0x5bt
        0x4bt
        0x19t
        0x1t
        0x2t
        0xet
        0x58t
        0x50t
        0x57t
        0x5t
        0x43t
        0x3t
        0x44t
        0x49t
        0x55t
        0xbt
        0x0t
        0x3t
        0x40t
        0x50t
        0x56t
        0xct
    .end array-data
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroidx/core/app/ShareCompat$IntentReader;->TAG:Ljava/lang/String;

    const/16 v3, 0x30

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "824589"

    const/16 v5, -0x5072

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x7bt
        0x5dt
        0x41t
        0x59t
        0x5ct
        0x19t
        0x56t
        0x5dt
        0x40t
        0x15t
        0x4at
        0x5ct
        0x4ct
        0x40t
        0x5dt
        0x50t
        0x4et
        0x5ct
        0x18t
        0x5et
        0x55t
        0x57t
        0x5dt
        0x55t
        0x18t
        0x54t
        0x5bt
        0x47t
        0x18t
        0x5at
        0x59t
        0x5et
        0x58t
        0x5ct
        0x56t
        0x5et
        0x18t
        0x53t
        0x44t
        0x45t
        0x54t
        0x50t
        0x5bt
        0x53t
        0x40t
        0x5ct
        0x57t
        0x57t
    .end array-data
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailBcc()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "84c66e"

    const-wide/32 v4, 0x194c5b9c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x59t
        0x5at
        0x7t
        0x44t
        0x59t
        0xct
        0x5ct
        0x1at
        0xat
        0x58t
        0x42t
        0x0t
        0x56t
        0x40t
        0x4dt
        0x53t
        0x4et
        0x11t
        0x4at
        0x55t
        0x4dt
        0x74t
        0x75t
        0x26t
    .end array-data
.end method

.method public getEmailCc()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "282687"

    const-wide/32 v4, -0x19c8fd00

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x53t
        0x56t
        0x56t
        0x44t
        0x57t
        0x5et
        0x56t
        0x16t
        0x5bt
        0x58t
        0x4ct
        0x52t
        0x5ct
        0x4ct
        0x1ct
        0x53t
        0x40t
        0x43t
        0x40t
        0x59t
        0x1ct
        0x75t
        0x7bt
    .end array-data
.end method

.method public getEmailTo()[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "174b6f"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x50t
        0x59t
        0x50t
        0x10t
        0x59t
        0xft
        0x55t
        0x19t
        0x5dt
        0xct
        0x42t
        0x3t
        0x5ft
        0x43t
        0x1at
        0x7t
        0x4et
        0x12t
        0x43t
        0x56t
        0x1at
        0x27t
        0x7bt
        0x27t
        0x78t
        0x7bt
    .end array-data
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "147190"

    const-wide/32 v4, -0x1eaf64a1

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Landroidx/core/app/ShareCompat$IntentReader;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x50t
        0x5at
        0x53t
        0x43t
        0x56t
        0x59t
        0x55t
        0x1at
        0x5et
        0x5ft
        0x4dt
        0x55t
        0x5ft
        0x40t
        0x19t
        0x54t
        0x41t
        0x44t
        0x43t
        0x55t
        0x19t
        0x79t
        0x6dt
        0x7dt
        0x7dt
        0x6bt
        0x63t
        0x74t
        0x61t
        0x64t
    .end array-data
.end method

.method public getStream()Landroid/net/Uri;
    .locals 6

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f0676c"

    const-wide/32 v4, -0x2734287a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7t
        0x5et
        0x52t
        0x45t
        0x59t
        0xat
        0x2t
        0x1et
        0x5ft
        0x59t
        0x42t
        0x6t
        0x8t
        0x44t
        0x18t
        0x52t
        0x4et
        0x17t
        0x14t
        0x51t
        0x18t
        0x64t
        0x62t
        0x31t
        0x23t
        0x71t
        0x7bt
    .end array-data
.end method

.method public getStream(I)Landroid/net/Uri;
    .locals 6

    const/16 v5, 0x1b

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    new-array v1, v5, [B

    fill-array-data v1, :array_0

    const-string v2, "cac04a"

    const v3, -0x31291089

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    new-array v1, v5, [B

    fill-array-data v1, :array_1

    const-string v2, "51aca9"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "1ff52b"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->getStreamCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "a000ca"

    const v3, 0x4cfe29d8    # 1.3325485E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x2t
        0xft
        0x7t
        0x42t
        0x5bt
        0x8t
        0x7t
        0x4ft
        0xat
        0x5et
        0x40t
        0x4t
        0xdt
        0x15t
        0x4dt
        0x55t
        0x4ct
        0x15t
        0x11t
        0x0t
        0x4dt
        0x63t
        0x60t
        0x33t
        0x26t
        0x20t
        0x2et
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0x5ft
        0x5t
        0x11t
        0xet
        0x50t
        0x51t
        0x1ft
        0x8t
        0xdt
        0x15t
        0x5ct
        0x5bt
        0x45t
        0x4ft
        0x6t
        0x19t
        0x4dt
        0x47t
        0x50t
        0x4ft
        0x30t
        0x35t
        0x6bt
        0x70t
        0x70t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x62t
        0x12t
        0x14t
        0x50t
        0x53t
        0xft
        0x11t
        0xft
        0x12t
        0x50t
        0x5ft
        0x11t
        0x11t
        0x7t
        0x10t
        0x54t
        0x5bt
        0xet
        0x50t
        0x4t
        0xat
        0x50t
        0x8t
        0x42t
    .end array-data

    :array_3
    .array-data 1
        0x41t
        0x59t
        0x5et
        0x54t
        0x6t
        0x19t
        0x41t
        0x42t
        0x55t
        0x41t
        0x16t
        0x4t
        0x12t
        0x44t
        0x55t
        0x54t
        0x59t
        0x41t
    .end array-data
.end method

.method public getStreamCount()I
    .locals 5

    const/16 v4, 0x1b

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v2, "8e0cd0"

    const v3, 0x4ed2d3d3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "9ae1da"

    const/16 v3, 0x3925

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x59t
        0xbt
        0x54t
        0x11t
        0xbt
        0x59t
        0x5ct
        0x4bt
        0x59t
        0xdt
        0x10t
        0x55t
        0x56t
        0x11t
        0x1et
        0x6t
        0x1ct
        0x44t
        0x4at
        0x4t
        0x1et
        0x30t
        0x30t
        0x62t
        0x7dt
        0x24t
        0x7dt
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0xft
        0x1t
        0x43t
        0xbt
        0x8t
        0x5dt
        0x4ft
        0xct
        0x5ft
        0x10t
        0x4t
        0x57t
        0x15t
        0x4bt
        0x54t
        0x1ct
        0x15t
        0x4bt
        0x0t
        0x4bt
        0x62t
        0x30t
        0x33t
        0x7ct
        0x20t
        0x28t
    .end array-data
.end method

.method public getSubject()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "430384"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x55t
        0x5dt
        0x54t
        0x41t
        0x57t
        0x5dt
        0x50t
        0x1dt
        0x59t
        0x5dt
        0x4ct
        0x51t
        0x5at
        0x47t
        0x1et
        0x56t
        0x40t
        0x40t
        0x46t
        0x52t
        0x1et
        0x60t
        0x6dt
        0x76t
        0x7et
        0x76t
        0x73t
        0x67t
    .end array-data
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e283e3"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x4t
        0x5ct
        0x5ct
        0x41t
        0xat
        0x5at
        0x1t
        0x1ct
        0x51t
        0x5dt
        0x11t
        0x56t
        0xbt
        0x46t
        0x16t
        0x56t
        0x1dt
        0x47t
        0x17t
        0x53t
        0x16t
        0x67t
        0x20t
        0x6bt
        0x31t
    .end array-data
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMultipleShare()Z
    .locals 4

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9f8ed3"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x58t
        0x8t
        0x5ct
        0x17t
        0xbt
        0x5at
        0x5dt
        0x48t
        0x51t
        0xbt
        0x10t
        0x56t
        0x57t
        0x12t
        0x16t
        0x4t
        0x7t
        0x47t
        0x50t
        0x9t
        0x56t
        0x4bt
        0x37t
        0x76t
        0x77t
        0x22t
        0x67t
        0x28t
        0x31t
        0x7ft
        0x6dt
        0x2ft
        0x68t
        0x29t
        0x21t
    .end array-data
.end method

.method public isShareIntent()Z
    .locals 6

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d50d0a"

    const/16 v3, 0x6640

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a4f70e"

    const-wide v4, 0x41d671d905800000L    # 1.50623951E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5t
        0x5bt
        0x54t
        0x16t
        0x5ft
        0x8t
        0x0t
        0x1bt
        0x59t
        0xat
        0x44t
        0x4t
        0xat
        0x41t
        0x1et
        0x5t
        0x53t
        0x15t
        0xdt
        0x5at
        0x5et
        0x4at
        0x63t
        0x24t
        0x2at
        0x71t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x5at
        0x2t
        0x45t
        0x5ft
        0xct
        0x5t
        0x1at
        0xft
        0x59t
        0x44t
        0x0t
        0xft
        0x40t
        0x48t
        0x56t
        0x53t
        0x11t
        0x8t
        0x5bt
        0x8t
        0x19t
        0x63t
        0x20t
        0x2ft
        0x70t
        0x39t
        0x7at
        0x65t
        0x29t
        0x35t
        0x7dt
        0x36t
        0x7bt
        0x75t
    .end array-data
.end method

.method public isSingleShare()Z
    .locals 4

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c88d03"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x2t
        0x56t
        0x5ct
        0x16t
        0x5ft
        0x5at
        0x7t
        0x16t
        0x51t
        0xat
        0x44t
        0x56t
        0xdt
        0x4ct
        0x16t
        0x5t
        0x53t
        0x47t
        0xat
        0x57t
        0x56t
        0x4at
        0x63t
        0x76t
        0x2dt
        0x7ct
    .end array-data
.end method
