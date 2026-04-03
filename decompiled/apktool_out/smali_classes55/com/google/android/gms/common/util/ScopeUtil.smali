.class public final Lcom/google/android/gms/common/util/ScopeUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toScopeString(Ljava/util/Set;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v4, 0x15

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "63e52e"

    const-wide v2, -0x3e3f5fa7d5800000L    # -5.57887573E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "e28f2a"

    const-wide v4, -0x3e2328edb9000000L    # -1.935427868E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    nop

    :array_0
    .array-data 1
        0x45t
        0x50t
        0xat
        0x45t
        0x57t
        0x16t
        0x16t
        0x50t
        0x4t
        0x5bt
        0x15t
        0x11t
        0x16t
        0x51t
        0x0t
        0x15t
        0x5ct
        0x10t
        0x5at
        0x5ft
        0x4bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0x51t
        0x57t
        0x16t
        0x57t
        0x12t
        0x45t
        0x51t
        0x59t
        0x8t
        0x15t
        0x15t
        0x45t
        0x50t
        0x5dt
        0x46t
        0x5ct
        0x14t
        0x9t
        0x5et
        0x16t
    .end array-data
.end method
