.class public final Lcom/google/android/gms/common/api/internal/zak;
.super Lcom/google/android/gms/common/api/internal/zap;


# instance fields
.field private final zad:Landroid/util/SparseArray;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zap;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ee0d0f"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void

    :array_0
    .array-data 1
        0x24t
        0x10t
        0x44t
        0xbt
        0x7dt
        0x7t
        0xbt
        0x4t
        0x57t
        0x1t
        0x78t
        0x3t
        0x9t
        0x15t
        0x55t
        0x16t
    .end array-data
.end method

.method public static zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zak;
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zak;->getFragment(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "f199f0"

    const-wide/32 v4, 0x59b636a2

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/common/api/internal/zak;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zak;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/zak;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zak;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x27t
        0x44t
        0x4dt
        0x56t
        0x2bt
        0x51t
        0x8t
        0x50t
        0x5et
        0x5ct
        0x2et
        0x55t
        0xat
        0x41t
        0x5ct
        0x4bt
    .end array-data
.end method

.method private final zai(I)Lcom/google/android/gms/common/api/internal/zaj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaj;

    goto :goto_0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const/16 v4, 0x11

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "090a36"

    const-wide/32 v6, -0x105b8eb5

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget v4, v2, Lcom/google/android/gms/common/api/internal/zaj;->zaa:I

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(I)V

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/16 v4, 0xd

    aput-byte v4, v3, v1

    const-string v4, "70b466"

    const v5, 0x4e302f62    # 7.389738E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3, p4}, Lcom/google/android/gms/common/api/GoogleApiClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x77t
        0x56t
        0x5ft
        0x6t
        0x5ft
        0x53t
        0x71t
        0x49t
        0x59t
        0x22t
        0x5ft
        0x5ft
        0x55t
        0x57t
        0x44t
        0x41t
        0x10t
    .end array-data
.end method

.method public final onStart()V
    .locals 7

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zap;->onStart()V

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zaa:Z

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "4512f6"

    const/4 v6, 0x1

    invoke-static {v4, v5, v0, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d3ddaa"

    const-wide/32 v4, 0x6b465b1b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x5bt
        0x5bt
        0x62t
        0x46t
        0x7t
        0x44t
        0x40t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x25t
        0x46t
        0x10t
        0xbt
        0x2ct
        0x0t
        0xat
        0x52t
        0x3t
        0x1t
        0x29t
        0x4t
        0x8t
        0x43t
        0x1t
        0x16t
    .end array-data
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zap;->onStop()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final zab(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x0

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "57f195"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "77c21e"

    const/4 v3, 0x1

    invoke-static {v1, v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_1

    new-array v0, v5, [B

    fill-array-data v0, :array_2

    const-string v1, "5f317f"

    const-wide/32 v2, -0x335bb38b

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x63

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "a7df9e"

    const/16 v3, 0x2c2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaj;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/api/internal/zak;->zae(I)V

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaj;->zac:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x74t
        0x42t
        0x12t
        0x5et
        0x74t
        0x54t
        0x5bt
        0x56t
        0x1t
        0x54t
        0x71t
        0x50t
        0x59t
        0x47t
        0x3t
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x62t
        0x59t
        0x11t
        0x57t
        0x42t
        0xat
        0x5bt
        0x41t
        0x6t
        0x56t
        0x11t
        0x0t
        0x45t
        0x45t
        0xct
        0x40t
        0x11t
        0x12t
        0x5ft
        0x5et
        0xft
        0x57t
        0x11t
        0x6t
        0x58t
        0x59t
        0xdt
        0x57t
        0x52t
        0x11t
        0x5et
        0x59t
        0x4t
        0x12t
        0x52t
        0x9t
        0x5et
        0x52t
        0xdt
        0x46t
        0x1ft
        0x45t
        0x64t
        0x43t
        0xct
        0x42t
        0x41t
        0xct
        0x59t
        0x50t
        0x43t
        0x53t
        0x44t
        0x11t
        0x58t
        0x1at
        0xet
        0x53t
        0x5ft
        0x4t
        0x50t
        0x52t
        0x4dt
    .end array-data

    :array_2
    .array-data 1
        0x74t
        0x13t
        0x47t
        0x5et
        0x7at
        0x7t
        0x5bt
        0x7t
        0x54t
        0x54t
        0x7ft
        0x3t
        0x59t
        0x16t
        0x56t
        0x43t
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x42t
        0x10t
        0x9t
        0x74t
        0x4t
        0xft
        0x56t
        0x3t
        0x3t
        0x75t
        0xct
        0x7t
        0x52t
        0x7t
        0x1ft
        0x5at
        0x9t
        0x4t
        0x7ft
        0x1t
        0xat
        0x49t
        0x0t
        0x13t
        0x17t
        0x16t
        0x3t
        0x5at
        0x0t
        0x8t
        0x41t
        0x1t
        0x2t
        0x19t
        0xat
        0xft
        0x72t
        0x16t
        0x14t
        0x56t
        0x17t
        0x33t
        0x52t
        0x17t
        0x9t
        0x55t
        0x10t
        0x15t
        0x5et
        0xbt
        0x8t
        0x7ft
        0x4t
        0x8t
        0x5bt
        0x1t
        0x2t
        0x19t
        0x6t
        0x0t
        0x5bt
        0x8t
        0x4t
        0x58t
        0x6t
        0xat
        0x17t
        0x6t
        0x13t
        0x4dt
        0x45t
        0xft
        0x58t
        0x44t
        0x0t
        0x58t
        0xct
        0xdt
        0x5et
        0xat
        0x1t
        0x19t
        0x6t
        0xdt
        0x5et
        0x1t
        0x8t
        0x4dt
        0x45t
        0x28t
        0x73t
        0x44t
        0xft
        0x4at
        0x45t
        0x12t
        0x52t
        0x10t
    .end array-data
.end method

.method protected final zac()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zad(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 9

    const/16 v8, 0x10

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f1b484"

    const/16 v2, 0x2cef

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "1665d1"

    const-wide v4, -0x3e222b4367c00000L    # -2.001924705E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zam;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zaa:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1f

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "de3544"

    const-wide v6, 0x41d864a16ec00000L    # 1.636992443E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_3

    const-string v2, "49ea5d"

    const v4, -0x315ce0b6

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaj;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zaj;-><init>(Lcom/google/android/gms/common/api/internal/zak;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zaa:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    new-array v0, v8, [B

    fill-array-data v0, :array_4

    const-string v1, "4b10d9"

    const-wide v2, -0x3e287b48ea400000L    # -1.578294359E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "abee56"

    const/16 v3, -0x73bb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x21t
        0x5et
        0xdt
        0x53t
        0x54t
        0x51t
        0x27t
        0x41t
        0xbt
        0x77t
        0x54t
        0x5dt
        0x3t
        0x5ft
        0x16t
        0x14t
        0x51t
        0x5at
        0x15t
        0x45t
        0x3t
        0x5at
        0x5bt
        0x51t
        0x46t
        0x52t
        0x3t
        0x5at
        0x56t
        0x5bt
        0x12t
        0x11t
        0x0t
        0x51t
        0x18t
        0x5at
        0x13t
        0x5dt
        0xet
    .end array-data

    :array_1
    .array-data 1
        0x70t
        0x5at
        0x44t
        0x50t
        0x5t
        0x55t
        0x48t
        0x16t
        0x5bt
        0x54t
        0xat
        0x50t
        0x56t
        0x5ft
        0x58t
        0x52t
        0x44t
        0x50t
        0x11t
        0x71t
        0x59t
        0x5at
        0x3t
        0x5dt
        0x54t
        0x77t
        0x46t
        0x5ct
        0x27t
        0x5dt
        0x58t
        0x53t
        0x58t
        0x41t
        0x44t
        0x46t
        0x58t
        0x42t
        0x5et
        0x15t
        0xdt
        0x55t
        0x11t
    .end array-data

    :array_2
    .array-data 1
        0x17t
        0x11t
        0x52t
        0x47t
        0x40t
        0x5dt
        0xat
        0x2t
        0x13t
        0x74t
        0x41t
        0x40t
        0xbt
        0x28t
        0x52t
        0x5bt
        0x55t
        0x53t
        0x1t
        0x45t
        0x55t
        0x5at
        0x46t
        0x14t
        0x7t
        0x9t
        0x5at
        0x50t
        0x5at
        0x40t
        0x44t
    .end array-data

    :array_3
    .array-data 1
        0x75t
        0x4ct
        0x11t
        0xet
        0x78t
        0x5t
        0x5at
        0x58t
        0x2t
        0x4t
        0x7dt
        0x1t
        0x58t
        0x49t
        0x0t
        0x13t
    .end array-data

    :array_4
    .array-data 1
        0x75t
        0x17t
        0x45t
        0x5ft
        0x29t
        0x58t
        0x5at
        0x3t
        0x56t
        0x55t
        0x2ct
        0x5ct
        0x58t
        0x12t
        0x54t
        0x42t
    .end array-data

    :array_5
    .array-data 1
        0x2t
        0xdt
        0xbt
        0xbt
        0x50t
        0x55t
        0x15t
        0xbt
        0xbt
        0x2t
        0x15t
    .end array-data
.end method

.method public final zae(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method
