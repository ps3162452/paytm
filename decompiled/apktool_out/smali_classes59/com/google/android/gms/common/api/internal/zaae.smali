.class public final Lcom/google/android/gms/common/api/internal/zaae;
.super Lcom/google/android/gms/common/api/internal/zap;


# instance fields
.field private final zad:Landroidx/collection/ArraySet;

.field private final zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 6

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/api/internal/zap;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zad:Landroidx/collection/ArraySet;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaae;->zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ab1c8b"

    const-wide v4, -0x3e22a64681c00000L    # -1.969677817E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void

    :array_0
    .array-data 1
        0x22t
        0xdt
        0x5ft
        0xdt
        0x5dt
        0x1t
        0x15t
        0xbt
        0x5et
        0xdt
        0x54t
        0x7t
        0x12t
        0x11t
        0x7dt
        0xat
        0x5et
        0x7t
        0x2t
        0x1bt
        0x52t
        0xft
        0x5dt
        0x2at
        0x4t
        0xet
        0x41t
        0x6t
        0x4at
    .end array-data
.end method

.method public static zad(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/internal/ApiKey;)V
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaae;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "7a5155"

    const-wide/32 v4, -0x1d432d3f

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/common/api/internal/zaae;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaae;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaae;

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/common/api/internal/zaae;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    :cond_0
    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "6cc9a6"

    const-wide/32 v4, -0x5fc22f85

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zaae;->zad:Landroidx/collection/ArraySet;

    invoke-virtual {v1, p2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaA(Lcom/google/android/gms/common/api/internal/zaae;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0xet
        0x5bt
        0x5ft
        0x50t
        0x56t
        0x43t
        0x8t
        0x5at
        0x5ft
        0x59t
        0x50t
        0x44t
        0x12t
        0x79t
        0x58t
        0x53t
        0x50t
        0x54t
        0x18t
        0x56t
        0x5dt
        0x50t
        0x7dt
        0x52t
        0xdt
        0x45t
        0x54t
        0x47t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0x13t
        0xat
        0x72t
        0x4t
        0x4ft
        0x16t
        0x0t
        0x2t
        0x57t
        0xft
        0x59t
        0x42t
        0x43t
        0x1t
        0x5ct
        0x41t
        0x58t
        0x43t
        0xft
        0xft
    .end array-data
.end method

.method private final zae()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zad:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaA(Lcom/google/android/gms/common/api/internal/zaae;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zap;->onResume()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaae;->zae()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zap;->onStart()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaae;->zae()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zap;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaB(Lcom/google/android/gms/common/api/internal/zaae;)V

    return-void
.end method

.method final zaa()Landroidx/collection/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zad:Landroidx/collection/ArraySet;

    return-object v0
.end method

.method protected final zab(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected final zac()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zae:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zay()V

    return-void
.end method
