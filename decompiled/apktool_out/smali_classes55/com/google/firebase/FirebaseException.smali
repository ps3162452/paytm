.class public Lcom/google/firebase/FirebaseException;
.super Ljava/lang/Exception;


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f74269"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x22t
        0x52t
        0x40t
        0x53t
        0x5ft
        0x55t
        0x46t
        0x5at
        0x51t
        0x41t
        0x45t
        0x58t
        0x1t
        0x52t
        0x14t
        0x5ft
        0x43t
        0x4at
        0x12t
        0x17t
        0x5at
        0x5dt
        0x42t
        0x19t
        0x4t
        0x52t
        0x14t
        0x57t
        0x5bt
        0x49t
        0x12t
        0x4et
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "350440"

    const-wide/32 v2, -0x1210bf33

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x77t
        0x50t
        0x44t
        0x55t
        0x5dt
        0x5ct
        0x13t
        0x58t
        0x55t
        0x47t
        0x47t
        0x51t
        0x54t
        0x50t
        0x10t
        0x59t
        0x41t
        0x43t
        0x47t
        0x15t
        0x5et
        0x5bt
        0x40t
        0x10t
        0x51t
        0x50t
        0x10t
        0x51t
        0x59t
        0x40t
        0x47t
        0x4ct
    .end array-data
.end method
