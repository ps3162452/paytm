.class final Lcom/google/android/gms/common/api/internal/zabs;
.super Ljava/lang/Object;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

.field private final zab:Lcom/google/android/gms/common/Feature;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;Lcom/google/android/gms/common/api/internal/zabr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabs;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabs;->zab:Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method static bridge synthetic zaa(Lcom/google/android/gms/common/api/internal/zabs;)Lcom/google/android/gms/common/Feature;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabs;->zab:Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method static bridge synthetic zab(Lcom/google/android/gms/common/api/internal/zabs;)Lcom/google/android/gms/common/api/internal/ApiKey;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabs;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabs;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabs;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zabs;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabs;->zab:Lcom/google/android/gms/common/Feature;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zabs;->zab:Lcom/google/android/gms/common/Feature;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabs;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabs;->zab:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0132a6"

    const-wide/32 v4, -0x1cd936

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabs;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "589477"

    const/16 v3, 0x1b25

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabs;->zab:Lcom/google/android/gms/common/Feature;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x5bt
        0x54t
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x5dt
        0x58t
        0x40t
        0x42t
        0x45t
        0x50t
    .end array-data
.end method
