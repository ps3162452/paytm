.class final Lcom/google/android/gms/common/api/internal/zacx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    const/16 v3, 0x1d

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "1a4114"

    const-wide/32 v6, 0xa3e59b3

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5dt
        0x8t
        0x47t
        0x45t
        0x54t
        0x5at
        0x54t
        0x13t
        0x14t
        0x50t
        0x5dt
        0x46t
        0x54t
        0x0t
        0x50t
        0x48t
        0x11t
        0x41t
        0x5ft
        0x13t
        0x51t
        0x56t
        0x58t
        0x47t
        0x45t
        0x4t
        0x46t
        0x54t
        0x55t
    .end array-data
.end method
