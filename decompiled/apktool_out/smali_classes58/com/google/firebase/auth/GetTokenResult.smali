.class public Lcom/google/firebase/auth/GetTokenResult;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/firebase/annotations/PublicApi;
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/GetTokenResult;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/GetTokenResult;->zzb:Ljava/util/Map;

    return-void
.end method

.method private final zza(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/GetTokenResult;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public getAuthTimestamp()J
    .locals 4
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3a0683"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/GetTokenResult;->zza(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :array_0
    .array-data 1
        0x52t
        0x14t
        0x44t
        0x5et
        0x67t
        0x47t
        0x5at
        0xct
        0x55t
    .end array-data
.end method

.method public getClaims()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/GetTokenResult;->zzb:Ljava/util/Map;

    return-object v0
.end method

.method public getExpirationTimestamp()J
    .locals 3
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e41069"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/GetTokenResult;->zza(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :array_0
    .array-data 1
        0x0t
        0x4ct
        0x41t
    .end array-data
.end method

.method public getIssuedAtTimestamp()J
    .locals 3
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "00401a"

    const v2, 0x4ecbb180

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/GetTokenResult;->zza(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :array_0
    .array-data 1
        0x59t
        0x51t
        0x40t
    .end array-data
.end method

.method public getSignInProvider()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/GetTokenResult;->zzb:Ljava/util/Map;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d67611"

    const v3, 0x4dfd9865    # 5.3182787E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "67ef3d"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x2t
        0x5ft
        0x45t
        0x53t
        0x53t
        0x50t
        0x17t
        0x53t
    .end array-data

    :array_1
    .array-data 1
        0x45t
        0x5et
        0x2t
        0x8t
        0x6ct
        0xdt
        0x58t
        0x68t
        0x15t
        0x14t
        0x5ct
        0x12t
        0x5ft
        0x53t
        0x0t
        0x14t
    .end array-data
.end method

.method public getToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/GetTokenResult;->zza:Ljava/lang/String;

    return-object v0
.end method
