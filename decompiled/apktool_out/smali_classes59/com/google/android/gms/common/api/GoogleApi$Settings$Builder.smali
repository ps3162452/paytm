.class public Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApi$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zaa:Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;

.field private zab:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/common/api/GoogleApi$Settings;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->zaa:Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->zaa:Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->zab:Landroid/os/Looper;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->zab:Landroid/os/Looper;

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApi$Settings;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->zaa:Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->zab:Landroid/os/Looper;

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/android/gms/common/api/GoogleApi$Settings;-><init>(Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/zae;)V

    return-object v0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "01b908"

    const v2, -0x314d3d0e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->zab:Landroid/os/Looper;

    return-object p0

    :array_0
    .array-data 1
        0x7ct
        0x5et
        0xdt
        0x49t
        0x55t
        0x4at
        0x10t
        0x5ct
        0x17t
        0x4at
        0x44t
        0x18t
        0x5et
        0x5et
        0x16t
        0x19t
        0x52t
        0x5dt
        0x10t
        0x5ft
        0x17t
        0x55t
        0x5ct
        0x16t
    .end array-data
.end method

.method public setMapper(Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;
    .locals 3

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "592bf0"

    const/16 v2, -0x7c47

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->zaa:Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x66t
        0x4dt
        0x53t
        0x16t
        0x13t
        0x43t
        0x70t
        0x41t
        0x51t
        0x7t
        0x16t
        0x44t
        0x5ct
        0x56t
        0x5ct
        0x2ft
        0x7t
        0x40t
        0x45t
        0x5ct
        0x40t
        0x42t
        0xbt
        0x45t
        0x46t
        0x4dt
        0x12t
        0xct
        0x9t
        0x44t
        0x15t
        0x5bt
        0x57t
        0x42t
        0x8t
        0x45t
        0x59t
        0x55t
        0x1ct
    .end array-data
.end method
