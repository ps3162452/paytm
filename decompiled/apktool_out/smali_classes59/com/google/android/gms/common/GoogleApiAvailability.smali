.class public Lcom/google/android/gms/common/GoogleApiAvailability;
.super Lcom/google/android/gms/common/GoogleApiAvailabilityLight;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*java.*/com/google/android/gms.*"
    allowlistAnnotations = {
        Lcom/google/android/gms/internal/base/zad;,
        Lcom/google/android/gms/internal/base/zae;
    }
    explanation = "Sub classing of GMS Core\'s APIs are restricted to GMS Core client libs and testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I

.field private static final zaa:Ljava/lang/Object;

.field private static final zab:Lcom/google/android/gms/common/GoogleApiAvailability;


# instance fields
.field private zac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "955782"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-direct {v0}, Lcom/google/android/gms/common/GoogleApiAvailability;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sput v0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return-void

    :array_0
    .array-data 1
        0x5at
        0x5at
        0x58t
        0x19t
        0x5ft
        0x5dt
        0x56t
        0x52t
        0x59t
        0x52t
        0x16t
        0x53t
        0x57t
        0x51t
        0x47t
        0x58t
        0x51t
        0x56t
        0x17t
        0x52t
        0x58t
        0x44t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method public static final varargs zai(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;
    .locals 8

    const/16 v5, 0x1f

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "8fdbfc"

    const/16 v2, 0x2c5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    const-string v4, "e1b9dd"

    const-wide/32 v6, 0x250e829d

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj()Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x6at
        0x3t
        0x15t
        0x17t
        0x3t
        0x10t
        0x4ct
        0x3t
        0x0t
        0x42t
        0x27t
        0x33t
        0x71t
        0x46t
        0x9t
        0x17t
        0x15t
        0x17t
        0x18t
        0x8t
        0xbt
        0x16t
        0x46t
        0x1t
        0x5dt
        0x46t
        0xat
        0x17t
        0xat
        0xft
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x37t
        0x54t
        0x13t
        0x4ct
        0x1t
        0x17t
        0x11t
        0x54t
        0x6t
        0x19t
        0x25t
        0x34t
        0x2ct
        0x11t
        0xft
        0x4ct
        0x17t
        0x10t
        0x45t
        0x5ft
        0xdt
        0x4dt
        0x44t
        0x6t
        0x0t
        0x11t
        0xct
        0x4ct
        0x8t
        0x8t
        0x4bt
    .end array-data
.end method


# virtual methods
.method public varargs checkApiAvailability(Lcom/google/android/gms/common/api/GoogleApi;[Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<*>;[",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<*>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zai(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/zab;->zaa:Lcom/google/android/gms/common/zab;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public varargs checkApiAvailability(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/HasApiKey",
            "<*>;[",
            "Lcom/google/android/gms/common/api/HasApiKey",
            "<*>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zai(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/zaa;->zaa:Lcom/google/android/gms/common/zaa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersion(Landroid/content/Context;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getClientVersion(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const-string v1, "581284"

    const v2, -0x31ab62ca

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/zag;->zab(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zag;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDialog(Landroidx/fragment/app/Fragment;II)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroidx/fragment/app/Fragment;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDialog(Landroidx/fragment/app/Fragment;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [B

    const/4 v2, 0x0

    const/16 v3, 0x53

    aput-byte v3, v1, v2

    const-string v2, "79aa12"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/zag;->zac(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zag;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getErrorResolutionPendingIntent(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public final getErrorString(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public isGooglePlayServicesAvailable(Landroid/content/Context;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public final isUserResolvableError(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isUserResolvableError(I)Z

    move-result v0

    return v0
.end method

.method public makeGooglePlayServicesAvailable(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget v0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    const/16 v1, 0x43

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "db1a3a"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zacc;->zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zacc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zap;->zah(Lcom/google/android/gms/common/ConnectionResult;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zacc;->zad()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x9t
        0x3t
        0x5at
        0x4t
        0x74t
        0xet
        0xbt
        0x5t
        0x5dt
        0x4t
        0x63t
        0xdt
        0x5t
        0x1bt
        0x62t
        0x4t
        0x41t
        0x17t
        0xdt
        0x1t
        0x54t
        0x12t
        0x72t
        0x17t
        0x5t
        0xbt
        0x5dt
        0x0t
        0x51t
        0xdt
        0x1t
        0x42t
        0x5ct
        0x14t
        0x40t
        0x15t
        0x44t
        0x0t
        0x54t
        0x41t
        0x50t
        0x0t
        0x8t
        0xet
        0x54t
        0x5t
        0x13t
        0x7t
        0x16t
        0xdt
        0x5ct
        0x41t
        0x47t
        0x9t
        0x1t
        0x42t
        0x5ct
        0x0t
        0x5at
        0xft
        0x44t
        0x16t
        0x59t
        0x13t
        0x56t
        0x0t
        0x0t
    .end array-data
.end method

.method public setDefaultNotificationChannelId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "697a16"

    const v2, -0x314e2557

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Lcom/google/android/gms/common/GoogleApiAvailability;->zac:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 1
        0x58t
        0x56t
        0x43t
        0x8t
        0x57t
        0x5ft
        0x55t
        0x58t
        0x43t
        0x8t
        0x5et
        0x58t
    .end array-data
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;II)Z
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v0

    return v0
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 4
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ece6db"

    const v3, -0x310165db

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zad(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x22t
        0xct
        0xat
        0x51t
        0x8t
        0x7t
        0x35t
        0xft
        0x4t
        0x4ft
        0x37t
        0x7t
        0x17t
        0x15t
        0xct
        0x55t
        0x1t
        0x11t
        0x20t
        0x11t
        0x17t
        0x59t
        0x16t
        0x26t
        0xct
        0x2t
        0x9t
        0x59t
        0x3t
    .end array-data
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;ILandroidx/activity/result/ActivityResultLauncher;Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Landroidx/activity/result/ActivityResultLauncher",
            "<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v5, Lcom/google/android/gms/common/zac;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/google/android/gms/common/zac;-><init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/app/Activity;ILandroidx/activity/result/ActivityResultLauncher;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "86b681"

    const-wide/32 v4, 0x292cbf37

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zad(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x59t
        0xdt
        0x51t
        0x54t
        0x54t
        0x68t
        0x5at
        0x3t
        0x4ft
        0x6bt
        0x54t
        0x4at
        0x40t
        0xbt
        0x55t
        0x5dt
        0x42t
        0x7dt
        0x44t
        0x10t
        0x59t
        0x4at
        0x75t
        0x51t
        0x57t
        0xet
        0x59t
        0x5ft
    .end array-data
.end method

.method public showErrorNotification(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x5f

    aput-byte v2, v1, v4

    const-string v2, "1a7235"

    const/16 v3, 0x3fa5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v4, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zae(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public showErrorNotification(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->zae(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method final zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    invoke-virtual {v2, v3, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "87c14d"

    const-wide v4, -0x3e24ab7a15000000L    # -1.834096556E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zac;->zad(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_3

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zac;->zac(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    if-nez p3, :cond_6

    :goto_1
    invoke-virtual {v0, v1, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zac;->zag(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_5
    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "726ecf"

    const v3, -0x330ba3da

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "4e84fa"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move-object p5, p3

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x6ct
        0x5ft
        0x6t
        0x5ct
        0x51t
        0x4at
        0x7ct
        0x5et
        0x2t
        0x5dt
        0x5bt
        0x3t
        0x16t
        0x76t
        0xft
        0x54t
        0x46t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x5dt
        0x59t
        0x2t
        0xft
        0x3t
        0x76t
        0x42t
        0x5ft
        0x24t
        0x15t
        0x7t
        0x5et
        0x5et
        0x57t
        0x7t
        0xat
        0xat
        0x5et
        0x46t
        0x4ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x77t
        0x17t
        0x5dt
        0x55t
        0x12t
        0x8t
        0x5at
        0x2t
        0x18t
        0x50t
        0xft
        0x0t
        0x58t
        0xat
        0x5ft
        0x14t
        0x0t
        0xet
        0x46t
        0x45t
        0x7ft
        0x5bt
        0x9t
        0x6t
        0x58t
        0x0t
        0x18t
        0x64t
        0xat
        0x0t
        0x4dt
        0x45t
        0x4bt
        0x51t
        0x14t
        0x17t
        0x5dt
        0x6t
        0x5dt
        0x47t
        0x46t
        0x0t
        0x42t
        0x4t
        0x51t
        0x58t
        0x7t
        0x3t
        0x5dt
        0x9t
        0x51t
        0x40t
        0x1ft
        0x41t
        0x5dt
        0x16t
        0x4bt
        0x41t
        0x3t
        0x4ft
        0x14t
        0x26t
        0x57t
        0x5at
        0x8t
        0x4t
        0x57t
        0x11t
        0x51t
        0x5bt
        0x8t
        0x33t
        0x51t
        0x16t
        0x4dt
        0x58t
        0x12t
        0x5ct
        0x11t
        0x16t
    .end array-data
.end method

.method public final zab(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x101007a

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zac;->zad(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, ""

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ffc462"

    const v3, -0x3137f455

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zad(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x21t
        0x9t
        0xct
        0x53t
        0x5at
        0x57t
        0x36t
        0xat
        0x2t
        0x4dt
        0x65t
        0x57t
        0x14t
        0x10t
        0xat
        0x57t
        0x53t
        0x41t
        0x33t
        0x16t
        0x7t
        0x55t
        0x42t
        0x5bt
        0x8t
        0x1t
        0x27t
        0x5dt
        0x57t
        0x5et
        0x9t
        0x1t
    .end array-data
.end method

.method public final zac(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabw;)Lcom/google/android/gms/common/api/internal/zabx;
    .locals 6
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    new-instance v1, Landroid/content/IntentFilter;

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "42c9fe"

    const-wide/32 v4, -0x4f50beed

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "ecbbee"

    const-wide/32 v4, 0x7354d3d5

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabx;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/api/internal/zabx;-><init>(Lcom/google/android/gms/common/api/internal/zabw;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/base/zao;->zaa(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabx;->zaa(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUninstalledAppPossiblyUpdating(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zabw;->zaa()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabx;->zab()V

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :array_0
    .array-data 1
        0x55t
        0x5ct
        0x7t
        0x4bt
        0x9t
        0xct
        0x50t
        0x1ct
        0xat
        0x57t
        0x12t
        0x0t
        0x5at
        0x46t
        0x4dt
        0x58t
        0x5t
        0x11t
        0x5dt
        0x5dt
        0xdt
        0x17t
        0x36t
        0x24t
        0x77t
        0x79t
        0x22t
        0x7et
        0x23t
        0x3at
        0x75t
        0x76t
        0x27t
        0x7ct
        0x22t
    .end array-data

    :array_1
    .array-data 1
        0x15t
        0x2t
        0x1t
        0x9t
        0x4t
        0x2t
        0x0t
    .end array-data
.end method

.method final zad(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    :try_start_0
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/SupportErrorDialogFragment;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/google/android/gms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/google/android/gms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final zae(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3a1f7b"

    const-wide v2, 0x41df938b55400000L    # 2.119052629E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "522b10"

    const-wide v4, -0x3e3df96c15800000L    # -6.04841941E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaf(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "2e5a8f"

    const v2, -0x3135ff55

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x91

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "505bbc"

    const/16 v3, -0x4e88

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zac;->zaf(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zac;->zae(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v4, "24c633"

    const-wide/32 v6, 0x654ffed3

    invoke-static {v0, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/gms/base/R$drawable;->common_full_open_on_phone:I

    sget v2, Lcom/google/android/gms/base/R$string;->common_open_on_phone:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2, p4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    packed-switch p2, :pswitch_data_0

    const v1, 0x9b6d

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v4, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_4
    const v1, 0x108008a

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget v5, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    sget-object v2, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleApiAvailability;->zac:Ljava/lang/String;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "99e027"

    const-wide/32 v6, -0x720741c4

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "a9acac"

    const/16 v5, -0x42d9

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zac;->zab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_7

    new-instance v2, Landroid/app/NotificationChannel;

    const/16 v5, 0x23

    new-array v5, v5, [B

    fill-array-data v5, :array_7

    const-string v6, "dd9bed"

    const/16 v7, 0x5130

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v2, v5, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_6
    :goto_4
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_4

    :pswitch_0
    sget-object v1, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v1, 0x28c4

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 1
        0x74t
        0xet
        0x5et
        0x1t
        0x5bt
        0x7t
        0x72t
        0x11t
        0x58t
        0x27t
        0x41t
        0x3t
        0x5at
        0xdt
        0x50t
        0x4t
        0x5et
        0xet
        0x5at
        0x15t
        0x48t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x72t
        0x7ft
        0x61t
        0x42t
        0x52t
        0x5ft
        0x47t
        0x57t
        0x12t
        0x23t
        0x61t
        0x79t
        0x15t
        0x73t
        0x44t
        0x3t
        0x58t
        0x5ct
        0x54t
        0x50t
        0x5bt
        0xet
        0x58t
        0x44t
        0x4ct
        0x1ct
        0x12t
        0x21t
        0x5et
        0x5et
        0x5bt
        0x57t
        0x51t
        0x16t
        0x58t
        0x5ft
        0x5bt
        0x60t
        0x57t
        0x11t
        0x44t
        0x5ct
        0x41t
        0xft
        0x17t
        0x11t
        0x1dt
        0x10t
        0x41t
        0x53t
        0x55t
        0x5ft
        0x14t
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x75t
        0xat
        0x5at
        0x6t
        0x54t
        0x3t
        0x73t
        0x15t
        0x5ct
        0x20t
        0x4et
        0x7t
        0x5bt
        0x9t
        0x54t
        0x3t
        0x51t
        0xat
        0x5bt
        0x11t
        0x4ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x78t
        0x59t
        0x46t
        0x11t
        0xbt
        0xdt
        0x52t
        0x10t
        0x47t
        0x7t
        0x11t
        0xct
        0x59t
        0x45t
        0x41t
        0xbt
        0xdt
        0xdt
        0x15t
        0x56t
        0x5at
        0x10t
        0x42t
        0x20t
        0x5at
        0x5et
        0x5bt
        0x7t
        0x1t
        0x17t
        0x5ct
        0x5ft
        0x5bt
        0x30t
        0x7t
        0x10t
        0x40t
        0x5ct
        0x41t
        0x4ct
        0x30t
        0x26t
        0x66t
        0x7ft
        0x79t
        0x37t
        0x36t
        0x2at
        0x7at
        0x7et
        0x6at
        0x30t
        0x27t
        0x32t
        0x60t
        0x79t
        0x67t
        0x27t
        0x26t
        0x4dt
        0x15t
        0x73t
        0x54t
        0xet
        0xet
        0x43t
        0x72t
        0x5ft
        0x5at
        0x5t
        0xet
        0x6t
        0x74t
        0x40t
        0x5ct
        0x23t
        0x14t
        0x2t
        0x5ct
        0x5ct
        0x54t
        0x0t
        0xbt
        0xft
        0x5ct
        0x44t
        0x4ct
        0x41t
        0x11t
        0xbt
        0x5at
        0x47t
        0x70t
        0x10t
        0x10t
        0xct
        0x47t
        0x7et
        0x5at
        0x16t
        0xbt
        0x5t
        0x5ct
        0x53t
        0x54t
        0x16t
        0xbt
        0xct
        0x5bt
        0x18t
        0x76t
        0xdt
        0xct
        0x17t
        0x50t
        0x48t
        0x41t
        0x4et
        0x42t
        0x20t
        0x5at
        0x5et
        0x5bt
        0x7t
        0x1t
        0x17t
        0x5ct
        0x5ft
        0x5bt
        0x30t
        0x7t
        0x10t
        0x40t
        0x5ct
        0x41t
        0x4bt
        0x42t
        0xat
        0x5bt
        0x43t
        0x41t
        0x7t
        0x3t
        0x7t
        0x1bt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5ct
        0x5bt
        0x17t
        0x5ft
        0x55t
        0x5at
        0x51t
        0x55t
        0x17t
        0x5ft
        0x5ct
        0x5dt
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_5
    .array-data 1
        0x5at
        0x56t
        0x8t
        0x1et
        0x55t
        0x58t
        0x56t
        0x5et
        0x9t
        0x55t
        0x1ct
        0x56t
        0x57t
        0x5dt
        0x17t
        0x5ft
        0x5bt
        0x53t
        0x17t
        0x5et
        0x8t
        0x43t
        0x1ct
        0x56t
        0x4ft
        0x58t
        0xct
        0x5ct
        0x53t
        0x55t
        0x50t
        0x55t
        0xct
        0x44t
        0x4bt
    .end array-data

    :array_6
    .array-data 1
        0x2t
        0x56t
        0xct
        0x4dt
        0x6t
        0xct
        0xet
        0x5et
        0xdt
        0x6t
        0x4ft
        0x2t
        0xft
        0x5dt
        0x13t
        0xct
        0x8t
        0x7t
        0x4ft
        0x5et
        0xct
        0x10t
        0x4ft
        0x2t
        0x17t
        0x58t
        0x8t
        0xft
        0x0t
        0x1t
        0x8t
        0x55t
        0x8t
        0x17t
        0x18t
    .end array-data

    :array_7
    .array-data 1
        0x7t
        0xbt
        0x54t
        0x4ct
        0x2t
        0xbt
        0xbt
        0x3t
        0x55t
        0x7t
        0x4bt
        0x5t
        0xat
        0x0t
        0x4bt
        0xdt
        0xct
        0x0t
        0x4at
        0x3t
        0x54t
        0x11t
        0x4bt
        0x5t
        0x12t
        0x5t
        0x50t
        0xet
        0x4t
        0x6t
        0xdt
        0x8t
        0x50t
        0x16t
        0x1ct
    .end array-data
.end method

.method final zaf(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/zad;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/zad;-><init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/content/Context;)V

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final zag(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/LifecycleFragment;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 8
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v7, [B

    const/16 v1, 0x56

    aput-byte v1, v0, v6

    const-string v1, "25b5e4"

    const v2, 0x4efeb671

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/common/internal/zag;->zad(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zag;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "559d89"

    const v3, -0x331b4893    # -1.1991332E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p5}, Lcom/google/android/gms/common/GoogleApiAvailability;->zad(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    move v0, v7

    goto :goto_0

    :array_0
    .array-data 1
        0x72t
        0x5at
        0x56t
        0x3t
        0x54t
        0x5ct
        0x65t
        0x59t
        0x58t
        0x1dt
        0x6bt
        0x5ct
        0x47t
        0x43t
        0x50t
        0x7t
        0x5dt
        0x4at
        0x70t
        0x47t
        0x4bt
        0xbt
        0x4at
        0x7dt
        0x5ct
        0x54t
        0x55t
        0xbt
        0x5ft
    .end array-data
.end method

.method public final zah(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v2, p3, v1}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v2

    sget v5, Lcom/google/android/gms/internal/base/zap;->zaa:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    invoke-static {p1, v0, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->zae(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    move v0, v1

    goto :goto_0
.end method
