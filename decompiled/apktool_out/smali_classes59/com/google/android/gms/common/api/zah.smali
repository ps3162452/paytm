.class final Lcom/google/android/gms/common/api/zah;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/internal/BasePendingResult",
        "<TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ae4a8d"

    const/16 v3, -0x6dd0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x22t
        0x17t
        0x51t
        0x0t
        0x4ct
        0xdt
        0xft
        0x2t
        0x14t
        0x7t
        0x59t
        0xdt
        0xdt
        0x0t
        0x50t
        0x41t
        0x4at
        0x1t
        0x12t
        0x10t
        0x58t
        0x15t
        0x4bt
        0x44t
        0x8t
        0x16t
        0x14t
        0xft
        0x57t
        0x10t
        0x41t
        0x16t
        0x41t
        0x11t
        0x48t
        0xbt
        0x13t
        0x11t
        0x51t
        0x5t
    .end array-data
.end method
