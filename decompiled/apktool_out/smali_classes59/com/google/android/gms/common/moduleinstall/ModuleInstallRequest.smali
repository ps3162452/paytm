.class public final Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;
    }
.end annotation


# instance fields
.field private final zaa:Ljava/util/List;

.field private final zab:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

.field private final zac:Ljava/util/concurrent/Executor;


# direct methods
.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;Ljava/util/concurrent/Executor;ZLcom/google/android/gms/common/moduleinstall/zac;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a677f6"

    const-wide v2, -0x3e3b233b82000000L    # -7.00025084E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "8de803"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p3, :cond_0

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "7e2c05"

    const-wide/32 v2, 0x52e511f0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->zaa:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->zab:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    iput-object p3, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->zac:Ljava/util/concurrent/Executor;

    return-void

    nop

    :array_0
    .array-data 1
        0x20t
        0x66t
        0x7et
        0x44t
        0x46t
        0x5bt
        0x14t
        0x45t
        0x43t
        0x17t
        0x8t
        0x59t
        0x15t
        0x16t
        0x55t
        0x52t
        0x46t
        0x58t
        0x14t
        0x5at
        0x5bt
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x79t
        0x34t
        0x2ct
        0x4bt
        0x10t
        0x5et
        0x4dt
        0x17t
        0x11t
        0x18t
        0x5et
        0x5ct
        0x4ct
        0x44t
        0x7t
        0x5dt
        0x10t
        0x56t
        0x55t
        0x14t
        0x11t
        0x41t
        0x1et
    .end array-data

    :array_2
    .array-data 1
        0x7bt
        0xct
        0x41t
        0x17t
        0x55t
        0x5bt
        0x52t
        0x17t
        0x12t
        0xet
        0x45t
        0x46t
        0x43t
        0x45t
        0x5ct
        0xct
        0x44t
        0x15t
        0x55t
        0x0t
        0x12t
        0xdt
        0x45t
        0x59t
        0x5bt
        0x45t
        0x45t
        0xbt
        0x55t
        0x5bt
        0x17t
        0x9t
        0x5bt
        0x10t
        0x44t
        0x50t
        0x59t
        0x0t
        0x40t
        0x43t
        0x55t
        0x4dt
        0x52t
        0x6t
        0x47t
        0x17t
        0x5ft
        0x47t
        0x17t
        0xct
        0x41t
        0x43t
        0x43t
        0x50t
        0x43t
        0x4bt
    .end array-data
.end method

.method public static newBuilder()Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getApis()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/OptionalModuleApi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->zaa:Ljava/util/List;

    return-object v0
.end method

.method public getListener()Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->zab:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    return-object v0
.end method

.method public getListenerExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->zac:Ljava/util/concurrent/Executor;

    return-object v0
.end method
