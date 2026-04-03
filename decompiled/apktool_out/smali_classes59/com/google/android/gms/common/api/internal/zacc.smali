.class public final Lcom/google/android/gms/common/api/internal/zacc;
.super Lcom/google/android/gms/common/api/internal/zap;


# instance fields
.field private zad:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zap;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a321ce"

    const/16 v3, 0x71a3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x26t
        0x5et
        0x41t
        0x70t
        0x15t
        0x4t
        0x8t
        0x5ft
        0x53t
        0x53t
        0xat
        0x9t
        0x8t
        0x47t
        0x4bt
        0x79t
        0x6t
        0x9t
        0x11t
        0x56t
        0x40t
    .end array-data
.end method

.method public static zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zacc;
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zacc;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "d9ed83"

    const-wide v4, 0x41c4515666800000L    # 6.81749709E8

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/common/api/internal/zacc;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacc;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zacc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zacc;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x23t
        0x54t
        0x16t
        0x25t
        0x4et
        0x52t
        0xdt
        0x55t
        0x4t
        0x6t
        0x51t
        0x5ft
        0xdt
        0x4dt
        0x1ct
        0x2ct
        0x5dt
        0x5ft
        0x14t
        0x5ct
        0x17t
    .end array-data
.end method


# virtual methods
.method public final onDestroy()V
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zap;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const/16 v2, 0x50

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c268aa"

    const-wide/32 v4, -0x2b1c7c7c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :array_0
    .array-data 1
        0x2bt
        0x5dt
        0x45t
        0x4ct
        0x41t
        0x0t
        0x0t
        0x46t
        0x5ft
        0x4et
        0x8t
        0x15t
        0x1at
        0x12t
        0x41t
        0x59t
        0x12t
        0x41t
        0x7t
        0x57t
        0x45t
        0x4ct
        0x13t
        0xet
        0x1at
        0x57t
        0x52t
        0x18t
        0x3t
        0x4t
        0x5t
        0x5dt
        0x44t
        0x5dt
        0x41t
        0x26t
        0xct
        0x5dt
        0x51t
        0x54t
        0x4t
        0x41t
        0x33t
        0x5et
        0x57t
        0x41t
        0x41t
        0x12t
        0x6t
        0x40t
        0x40t
        0x51t
        0x2t
        0x4t
        0x10t
        0x12t
        0x55t
        0x57t
        0x14t
        0xdt
        0x7t
        0x12t
        0x54t
        0x5dt
        0x41t
        0xct
        0x2t
        0x56t
        0x53t
        0x18t
        0x0t
        0x17t
        0x2t
        0x5bt
        0x5at
        0x59t
        0x3t
        0xdt
        0x6t
        0x1ct
    .end array-data
.end method

.method protected final zab(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "093bbd"

    const/16 v2, -0x2c08

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/gms/common/api/ApiException;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    invoke-direct {v3, p1, v0, v4}, Lcom/google/android/gms/common/api/Status;-><init>(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x75t
        0x4bt
        0x41t
        0xdt
        0x10t
        0x44t
        0x53t
        0x56t
        0x5dt
        0xct
        0x7t
        0x7t
        0x44t
        0x50t
        0x5dt
        0x5t
        0x42t
        0x10t
        0x5ft
        0x19t
        0x74t
        0xdt
        0xdt
        0x3t
        0x5ct
        0x5ct
        0x13t
        0x32t
        0xet
        0x5t
        0x49t
        0x19t
        0x40t
        0x7t
        0x10t
        0x12t
        0x59t
        0x5at
        0x56t
        0x11t
    .end array-data
.end method

.method protected final zac()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getLifecycleActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/zap;->zah(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_0
.end method

.method public final zad()Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
