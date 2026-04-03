.class public abstract Lcom/google/android/gms/dynamic/RemoteCreator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private zzb:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/RemoteCreator;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
        }
    .end annotation

    const/16 v2, 0x1d

    iget-object v0, p0, Lcom/google/android/gms/dynamic/RemoteCreator;->zzb:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/dynamic/RemoteCreator;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/dynamic/RemoteCreator;->zzb:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/RemoteCreator;->zzb:Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9082da"

    const v4, -0x311ff542

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e23bdb"

    const-wide v4, 0x41de05cf2bc00000L    # 2.014788783E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "fce011"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    new-array v1, v2, [B

    fill-array-data v1, :array_3

    const-string v2, "1dd664"

    const v3, -0x311aeb4e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7at
        0x5ft
        0x4dt
        0x5et
        0x0t
        0x41t
        0x57t
        0x5ft
        0x4ct
        0x12t
        0x5t
        0x2t
        0x5at
        0x55t
        0x4bt
        0x41t
        0x44t
        0x2t
        0x4bt
        0x55t
        0x59t
        0x46t
        0xbt
        0x13t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x26t
        0x5dt
        0x46t
        0xet
        0x0t
        0x42t
        0xbt
        0x5dt
        0x47t
        0x42t
        0xdt
        0xct
        0x16t
        0x46t
        0x52t
        0xct
        0x10t
        0xbt
        0x4t
        0x46t
        0x56t
        0x42t
        0x7t
        0x10t
        0x0t
        0x53t
        0x47t
        0xdt
        0x16t
        0x4ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x25t
        0xct
        0x10t
        0x5ct
        0x55t
        0x11t
        0x8t
        0xct
        0x11t
        0x10t
        0x5dt
        0x5et
        0x7t
        0x7t
        0x45t
        0x53t
        0x43t
        0x54t
        0x7t
        0x17t
        0xat
        0x42t
        0x11t
        0x52t
        0xat
        0x2t
        0x16t
        0x43t
        0x1ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x72t
        0xbt
        0x11t
        0x5at
        0x52t
        0x14t
        0x5ft
        0xbt
        0x10t
        0x16t
        0x51t
        0x51t
        0x45t
        0x44t
        0x16t
        0x53t
        0x5bt
        0x5bt
        0x45t
        0x1t
        0x44t
        0x55t
        0x59t
        0x5at
        0x45t
        0x1t
        0x1ct
        0x42t
        0x18t
    .end array-data
.end method
