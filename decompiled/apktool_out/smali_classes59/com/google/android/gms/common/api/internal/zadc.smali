.class public final Lcom/google/android/gms/common/api/internal/zadc;
.super Ljava/lang/Object;


# static fields
.field public static final zaa:Lcom/google/android/gms/common/api/Status;


# instance fields
.field final zab:Ljava/util/Set;

.field private final zac:Lcom/google/android/gms/common/api/internal/zadb;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const/16 v2, 0x2f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0785bf"

    const v4, -0x31438263    # -1.5811744E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/zadc;->zaa:Lcom/google/android/gms/common/api/Status;

    return-void

    :array_0
    .array-data 1
        0x64t
        0x5ft
        0x5dt
        0x15t
        0x1t
        0x9t
        0x5et
        0x59t
        0x5dt
        0x56t
        0x16t
        0xft
        0x5ft
        0x59t
        0x18t
        0x41t
        0xdt
        0x46t
        0x77t
        0x58t
        0x57t
        0x52t
        0xet
        0x3t
        0x10t
        0x67t
        0x54t
        0x54t
        0x1bt
        0x46t
        0x43t
        0x52t
        0x4at
        0x43t
        0xbt
        0x5t
        0x55t
        0x44t
        0x18t
        0x42t
        0x3t
        0x15t
        0x10t
        0x5bt
        0x57t
        0x46t
        0x16t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zadc;->zab:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zadb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zadb;-><init>(Lcom/google/android/gms/common/api/internal/zadc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zadc;->zac:Lcom/google/android/gms/common/api/internal/zadb;

    return-void
.end method


# virtual methods
.method final zaa(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zadc;->zab:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zadc;->zac:Lcom/google/android/gms/common/api/internal/zadb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan(Lcom/google/android/gms/common/api/internal/zadb;)V

    return-void
.end method

.method public final zab()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zadc;->zab:Ljava/util/Set;

    new-array v2, v1, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan(Lcom/google/android/gms/common/api/internal/zadb;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zadc;->zab:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
