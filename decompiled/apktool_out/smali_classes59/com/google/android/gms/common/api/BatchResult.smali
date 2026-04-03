.class public final Lcom/google/android/gms/common/api/BatchResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/Status;

.field private final zab:[Lcom/google/android/gms/common/api/PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/BatchResult;->zaa:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/common/api/BatchResult;->zab:[Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/BatchResult;->zaa:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public take(Lcom/google/android/gms/common/api/BatchResultToken;)Lcom/google/android/gms/common/api/Result;
    .locals 5
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/BatchResultToken",
            "<TR;>;)TR;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/google/android/gms/common/api/BatchResultToken;->mId:I

    iget-object v3, p0, Lcom/google/android/gms/common/api/BatchResult;->zab:[Lcom/google/android/gms/common/api/PendingResult;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "99d295"

    invoke-static {v3, v4, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/BatchResult;->zab:[Lcom/google/android/gms/common/api/PendingResult;

    iget v1, p1, Lcom/google/android/gms/common/api/BatchResultToken;->mId:I

    aget-object v0, v0, v1

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x6dt
        0x51t
        0x1t
        0x12t
        0x4bt
        0x50t
        0x4at
        0x4ct
        0x8t
        0x46t
        0x19t
        0x41t
        0x56t
        0x52t
        0x1t
        0x5ct
        0x19t
        0x51t
        0x56t
        0x5ct
        0x17t
        0x12t
        0x57t
        0x5at
        0x4dt
        0x19t
        0x6t
        0x57t
        0x55t
        0x5at
        0x57t
        0x5et
        0x44t
        0x46t
        0x56t
        0x15t
        0x4dt
        0x51t
        0xdt
        0x41t
        0x19t
        0x57t
        0x58t
        0x4dt
        0x7t
        0x5at
    .end array-data
.end method
