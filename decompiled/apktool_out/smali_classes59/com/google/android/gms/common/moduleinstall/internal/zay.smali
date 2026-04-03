.class public final Lcom/google/android/gms/common/moduleinstall/internal/zay;
.super Lcom/google/android/gms/common/api/GoogleApi;

# interfaces
.implements Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;


# static fields
.field public static final zab:I

.field private static final zac:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private static final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private static final zae:Lcom/google/android/gms/common/api/Api;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zac:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v1, Lcom/google/android/gms/common/moduleinstall/internal/zaq;

    invoke-direct {v1}, Lcom/google/android/gms/common/moduleinstall/internal/zaq;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "07c627"

    const v5, 0x4eca45cf

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zae:Lcom/google/android/gms/common/api/Api;

    return-void

    :array_0
    .array-data 1
        0x7dt
        0x58t
        0x7t
        0x43t
        0x5et
        0x52t
        0x79t
        0x59t
        0x10t
        0x42t
        0x53t
        0x5bt
        0x5ct
        0x19t
        0x22t
        0x66t
        0x7bt
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zae:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    sget-object v2, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zae:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    sget-object v2, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method

.method static final varargs zad(Z[Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "3ddf54"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v2, p1

    if-lez v2, :cond_0

    :goto_0
    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "a54601"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    const/16 v4, 0x1f

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "3d2fad"

    invoke-static {v4, v5, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->zaa(Ljava/util/List;Z)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x61t
        0x1t
        0x15t
        0x13t
        0x50t
        0x47t
        0x47t
        0x1t
        0x0t
        0x46t
        0x74t
        0x64t
        0x7at
        0x17t
        0x44t
        0xbt
        0x40t
        0x47t
        0x47t
        0x44t
        0xat
        0x9t
        0x41t
        0x14t
        0x51t
        0x1t
        0x44t
        0x8t
        0x40t
        0x58t
        0x5ft
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x31t
        0x59t
        0x51t
        0x57t
        0x43t
        0x54t
        0x41t
        0x45t
        0x46t
        0x59t
        0x46t
        0x58t
        0x5t
        0x50t
        0x14t
        0x57t
        0x44t
        0x11t
        0xdt
        0x50t
        0x55t
        0x45t
        0x44t
        0x11t
        0xet
        0x5bt
        0x51t
        0x16t
        0x7ft
        0x41t
        0x15t
        0x5ct
        0x5bt
        0x58t
        0x51t
        0x5dt
        0x2ct
        0x5at
        0x50t
        0x43t
        0x5ct
        0x54t
        0x20t
        0x45t
        0x5dt
        0x18t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x61t
        0x1t
        0x43t
        0x13t
        0x4t
        0x17t
        0x47t
        0x1t
        0x56t
        0x46t
        0x20t
        0x34t
        0x7at
        0x44t
        0x5ft
        0x13t
        0x12t
        0x10t
        0x13t
        0xat
        0x5dt
        0x12t
        0x41t
        0x6t
        0x56t
        0x44t
        0x5ct
        0x13t
        0xdt
        0x8t
        0x1dt
    .end array-data
.end method


# virtual methods
.method public final varargs areModulesAvailable([Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/api/OptionalModuleApi;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v4, p1}, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zad(Z[Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->getApiFeatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;-><init>(ZI)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v1

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    sget-object v3, Lcom/google/android/gms/internal/base/zav;->zaa:Lcom/google/android/gms/common/Feature;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    const/16 v2, 0x6aa5

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    new-instance v2, Lcom/google/android/gms/common/moduleinstall/internal/zap;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/moduleinstall/internal/zap;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public final varargs deferredInstall([Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/api/OptionalModuleApi;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {v4, p1}, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zad(Z[Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->getApiFeatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    sget-object v3, Lcom/google/android/gms/internal/base/zav;->zaa:Lcom/google/android/gms/common/Feature;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    const/16 v2, 0x6aa6

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    new-instance v2, Lcom/google/android/gms/common/moduleinstall/internal/zan;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/moduleinstall/internal/zan;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public final varargs getInstallModulesIntent([Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/api/OptionalModuleApi;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zad(Z[Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->getApiFeatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;-><init>(Landroid/app/PendingIntent;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v1

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/internal/base/zav;->zaa:Lcom/google/android/gms/common/Feature;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    const/16 v2, 0x6aab

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    new-instance v2, Lcom/google/android/gms/common/moduleinstall/internal/zam;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/moduleinstall/internal/zam;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public final installModules(Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->fromModuleInstallRequest(Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->getListener()Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->getListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->getApiFeatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

    invoke-direct {v0, v8}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez v3, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-array v1, v7, [Lcom/google/android/gms/common/Feature;

    sget-object v2, Lcom/google/android/gms/internal/base/zav;->zaa:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    const/16 v1, 0x6aa8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    new-instance v1, Lcom/google/android/gms/common/moduleinstall/internal/zao;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gms/common/moduleinstall/internal/zao;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    const-class v0, Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/common/api/GoogleApi;->registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    move-object v6, v0

    :goto_1
    new-instance v5, Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/moduleinstall/internal/zaab;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/internal/zai;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/moduleinstall/internal/zai;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;Lcom/google/android/gms/common/moduleinstall/internal/zaab;)V

    new-instance v1, Lcom/google/android/gms/common/moduleinstall/internal/zaj;

    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/common/moduleinstall/internal/zaj;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/zaab;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/RegistrationMethods;->builder()Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->withHolder(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    new-array v4, v7, [Lcom/google/android/gms/common/Feature;

    sget-object v5, Lcom/google/android/gms/internal/base/zav;->zaa:Lcom/google/android/gms/common/Feature;

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->register(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->unregister(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    const/16 v0, 0x6aa9

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->build()Lcom/google/android/gms/common/api/internal/RegistrationMethods;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRegisterEventListener(Lcom/google/android/gms/common/api/internal/RegistrationMethods;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/moduleinstall/internal/zak;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/moduleinstall/internal/zak;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v1, Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerHolder(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    move-object v6, v0

    goto :goto_1
.end method

.method public final varargs releaseModules([Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/api/OptionalModuleApi;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {v4, p1}, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zad(Z[Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->getApiFeatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    sget-object v3, Lcom/google/android/gms/internal/base/zav;->zaa:Lcom/google/android/gms/common/Feature;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    const/16 v2, 0x6aa7

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    new-instance v2, Lcom/google/android/gms/common/moduleinstall/internal/zal;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/moduleinstall/internal/zal;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public final unregisterListener(Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    const/16 v1, 0x6aaa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->doUnregisterEventListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
