.class public final Landroidx/core/app/ShareCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ShareCompat$Api16Impl;,
        Landroidx/core/app/ShareCompat$IntentBuilder;,
        Landroidx/core/app/ShareCompat$IntentReader;
    }
.end annotation


# static fields
.field public static final EXTRA_CALLING_ACTIVITY:Ljava/lang/String;

.field public static final EXTRA_CALLING_ACTIVITY_INTEROP:Ljava/lang/String;

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String;

.field public static final EXTRA_CALLING_PACKAGE_INTEROP:Ljava/lang/String;

.field private static final HISTORY_FILENAME_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "80c27c"

    const v2, -0x32576124

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ShareCompat;->EXTRA_CALLING_ACTIVITY:Ljava/lang/String;

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "315509"

    const-wide v2, 0x41da7087db000000L    # 1.774329708E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ShareCompat;->EXTRA_CALLING_ACTIVITY_INTEROP:Ljava/lang/String;

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "9161a4"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ShareCompat;->EXTRA_CALLING_PACKAGE:Ljava/lang/String;

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "c2641e"

    const v2, 0x4eb5afe5    # 1.5241018E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ShareCompat;->EXTRA_CALLING_PACKAGE_INTEROP:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "60ee28"

    const-wide v2, -0x3e2a0c87aec00000L    # -1.473110341E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ShareCompat;->HISTORY_FILENAME_PREFIX:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0x5et
        0x7t
        0x40t
        0x58t
        0xat
        0x5ct
        0x48t
        0x4dt
        0x51t
        0x58t
        0x11t
        0x5dt
        0x1et
        0x2t
        0x42t
        0x47t
        0x4dt
        0x7dt
        0x68t
        0x37t
        0x60t
        0x76t
        0x3ct
        0x7bt
        0x71t
        0x2ft
        0x7et
        0x7et
        0x2dt
        0x7ft
        0x6ft
        0x22t
        0x71t
        0x63t
        0x2at
        0x6et
        0x79t
        0x37t
        0x6bt
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0x5ft
        0x51t
        0x47t
        0x5ft
        0x50t
        0x57t
        0x1ft
        0x46t
        0x40t
        0x40t
        0x49t
        0x5ct
        0x43t
        0x41t
        0x1bt
        0x46t
        0xdt
        0x1dt
        0x50t
        0x45t
        0x45t
        0x1et
        0x7ct
        0x6bt
        0x65t
        0x67t
        0x74t
        0x6ft
        0x7at
        0x72t
        0x7dt
        0x79t
        0x7ct
        0x7et
        0x7et
        0x6ct
        0x70t
        0x76t
        0x61t
        0x79t
        0x6ft
        0x7at
        0x65t
        0x6ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x58t
        0x5ft
        0x52t
        0x43t
        0xet
        0x5dt
        0x5dt
        0x49t
        0x18t
        0x52t
        0xet
        0x46t
        0x5ct
        0x1ft
        0x57t
        0x41t
        0x11t
        0x1at
        0x7ct
        0x69t
        0x62t
        0x63t
        0x20t
        0x6bt
        0x7at
        0x70t
        0x7at
        0x7dt
        0x28t
        0x7at
        0x7et
        0x6et
        0x66t
        0x70t
        0x22t
        0x7ft
        0x78t
        0x76t
        0x73t
    .end array-data

    :array_3
    .array-data 1
        0x2t
        0x5ct
        0x52t
        0x46t
        0x5et
        0xct
        0x7t
        0x1ct
        0x45t
        0x41t
        0x41t
        0x15t
        0xct
        0x40t
        0x42t
        0x1at
        0x47t
        0x51t
        0x4dt
        0x53t
        0x46t
        0x44t
        0x1ft
        0x20t
        0x3bt
        0x66t
        0x64t
        0x75t
        0x6et
        0x26t
        0x22t
        0x7et
        0x7at
        0x7dt
        0x7ft
        0x22t
        0x3ct
        0x62t
        0x77t
        0x77t
        0x7at
        0x24t
        0x24t
        0x77t
    .end array-data

    :array_4
    .array-data 1
        0x18t
        0x43t
        0xdt
        0x4t
        0x40t
        0x5dt
        0x55t
        0x5ft
        0x8t
        0x15t
        0x53t
        0x4ct
        0x69t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureMenuItem(Landroid/view/Menu;ILandroidx/core/app/ShareCompat$IntentBuilder;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Landroidx/core/app/ShareCompat;->configureMenuItem(Landroid/view/MenuItem;Landroidx/core/app/ShareCompat$IntentBuilder;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8ab6bf"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "df29ff"

    const v3, -0x311e54b3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x7bt
        0xet
        0x17t
        0x5at
        0x6t
        0x46t
        0x56t
        0xet
        0x16t
        0x16t
        0x4t
        0xft
        0x56t
        0x5t
        0x42t
        0x5bt
        0x7t
        0x8t
        0x4dt
        0x41t
        0xbt
        0x42t
        0x7t
        0xbt
        0x18t
        0x16t
        0xbt
        0x42t
        0xat
        0x46t
        0x51t
        0x5t
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x44t
        0xft
        0x5ct
        0x19t
        0x12t
        0xet
        0x1t
        0x46t
        0x41t
        0x4ct
        0x16t
        0x16t
        0x8t
        0xft
        0x57t
        0x5dt
        0x46t
        0xbt
        0x1t
        0x8t
        0x47t
    .end array-data
.end method

.method public static configureMenuItem(Landroid/view/MenuItem;Landroidx/core/app/ShareCompat$IntentBuilder;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ShareActionProvider;

    if-nez v1, :cond_1

    new-instance v0, Landroid/widget/ShareActionProvider;

    invoke-virtual {p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroidx/core/app/ShareCompat;->HISTORY_FILENAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-interface {p0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    check-cast v0, Landroid/widget/ShareActionProvider;

    goto :goto_0
.end method

.method public static getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/core/app/ShareCompat;->getCallingActivity(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static getCallingActivity(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Landroidx/core/app/ShareCompat;->EXTRA_CALLING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/core/app/ShareCompat;->EXTRA_CALLING_ACTIVITY_INTEROP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :cond_0
    return-object v0
.end method

.method public static getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/core/app/ShareCompat;->getCallingPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static getCallingPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/core/app/ShareCompat;->EXTRA_CALLING_PACKAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/core/app/ShareCompat;->EXTRA_CALLING_PACKAGE_INTEROP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
