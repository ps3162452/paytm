.class final Lcom/google/android/gms/common/api/internal/zabo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zaa:Lcom/google/android/gms/common/api/internal/zabp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabo;->zaa:Lcom/google/android/gms/common/api/internal/zabp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabo;->zaa:Lcom/google/android/gms/common/api/internal/zabp;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabp;->zaa:Lcom/google/android/gms/common/api/internal/zabq;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zabq;->zae(Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zabq;->zae(Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d52df4"

    const v4, -0x313b25b6

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x44t
        0x51t
        0x5bt
        0x17t
        0x5t
        0x5bt
        0xat
        0x5bt
        0x57t
        0x7t
        0x12t
        0x5dt
        0xat
        0x52t
        0x12t
        0x6t
        0x3t
        0x57t
        0x5t
        0x40t
        0x41t
        0x1t
        0x46t
        0x5dt
        0x10t
        0x15t
        0x45t
        0x5t
        0x15t
        0x14t
        0x17t
        0x5ct
        0x55t
        0xat
        0x3t
        0x50t
        0x44t
        0x5at
        0x47t
        0x10t
        0x48t
    .end array-data
.end method
