.class public Landroidx/core/app/ActivityCompat;
.super Landroidx/core/content/ContextCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityCompat$Api30Impl;,
        Landroidx/core/app/ActivityCompat$Api31Impl;,
        Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;,
        Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;,
        Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    }
.end annotation


# static fields
.field private static sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/content/ContextCompat;-><init>()V

    return-void
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static getPermissionCompatDelegate()Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    .locals 1

    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "774de3"

    const v3, -0x31033cd9

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "1ce3cd"

    const-wide v4, -0x3e296d7d50800000L    # -1.514801854E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x56t
        0x59t
        0x50t
        0x16t
        0xat
        0x5at
        0x53t
        0x19t
        0x5dt
        0xat
        0x11t
        0x56t
        0x59t
        0x43t
        0x1at
        0x1t
        0x1dt
        0x47t
        0x45t
        0x56t
        0x1at
        0x36t
        0x20t
        0x75t
        0x72t
        0x65t
        0x66t
        0x21t
        0x37t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0xdt
        0x1t
        0x41t
        0xct
        0xdt
        0x55t
        0x4dt
        0xct
        0x5dt
        0x17t
        0x1t
        0x5ft
        0x17t
        0x4bt
        0x56t
        0x1bt
        0x10t
        0x43t
        0x2t
        0x4bt
        0x61t
        0x26t
        0x22t
        0x74t
        0x31t
        0x37t
        0x76t
        0x31t
        0x3bt
        0x7ft
        0x22t
        0x28t
        0x76t
    .end array-data
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v0, 0x1

    return v0
.end method

.method public static isLaunchedFromBubble(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api31Impl;->isLaunchedFromBubble(Landroid/app/Activity;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    :cond_0
    return-void
.end method

.method public static recreate(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroidx/core/app/ActivityCompat$2;

    invoke-direct {v1, p0}, Landroidx/core/app/ActivityCompat$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroidx/core/app/ActivityRecreator;->recreate(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_0
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;
    .locals 1

    invoke-static {p0, p1}, Landroidx/core/view/DragAndDropPermissionsCompat;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "51ecdc"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b54e86"

    const v3, -0x32b7c392    # -2.0996272E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    instance-of v0, p0, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    invoke-interface {v0, p2}, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    instance-of v0, p0, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroidx/core/app/ActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Landroidx/core/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :array_0
    .array-data 1
        0x65t
        0x54t
        0x17t
        0xet
        0xdt
        0x10t
        0x46t
        0x58t
        0xat
        0xdt
        0x44t
        0x11t
        0x50t
        0x40t
        0x10t
        0x6t
        0x17t
        0x17t
        0x15t
        0x57t
        0xat
        0x11t
        0x44t
        0x13t
        0x50t
        0x43t
        0x8t
        0xat
        0x17t
        0x10t
        0x5ct
        0x5et
        0xbt
        0x10t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x58t
        0x41t
        0x16t
        0x4ct
        0x16t
        0xct
        0x5at
        0x40t
        0x45t
        0x5bt
        0x59t
        0xct
        0x41t
        0x55t
        0xct
        0x56t
        0x16t
        0xct
        0x40t
        0x58t
        0x9t
        0x18t
        0x59t
        0x10t
        0x15t
        0x51t
        0x8t
        0x48t
        0x42t
        0x1bt
        0x15t
        0x42t
        0x4t
        0x54t
        0x43t
        0x7t
        0x46t
    .end array-data
.end method

.method public static requireViewById(Landroid/app/Activity;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1ca485"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x78t
        0x27t
        0x41t
        0x50t
        0x57t
        0x50t
        0x42t
        0x43t
        0xft
        0x5bt
        0x4ct
        0x15t
        0x43t
        0x6t
        0x7t
        0x51t
        0x4at
        0x50t
        0x5ft
        0x0t
        0x4t
        0x14t
        0x59t
        0x15t
        0x67t
        0xat
        0x4t
        0x43t
        0x18t
        0x5ct
        0x5ft
        0x10t
        0x8t
        0x50t
        0x5dt
        0x15t
        0x45t
        0xbt
        0x8t
        0x47t
        0x18t
        0x74t
        0x52t
        0x17t
        0x8t
        0x42t
        0x51t
        0x41t
        0x48t
    .end array-data
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat$Api30Impl;->setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static setPermissionCompatDelegate(Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;)V
    .locals 0

    sput-object p0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    :cond_0
    return-void
.end method
