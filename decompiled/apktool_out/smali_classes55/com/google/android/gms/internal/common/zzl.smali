.class final Lcom/google/android/gms/internal/common/zzl;
.super Lcom/google/android/gms/internal/common/zzk;


# instance fields
.field private final zza:C


# direct methods
.method constructor <init>(C)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzk;-><init>()V

    int-to-char v0, p1

    iput-char v0, p0, Lcom/google/android/gms/internal/common/zzl;->zza:C

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 11

    const/16 v10, 0x10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v0, v10, [B

    fill-array-data v0, :array_0

    const-string v2, "63db49"

    const-wide/32 v4, 0x248f1e2c

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/google/android/gms/internal/common/zzl;->zza:C

    const/4 v2, 0x6

    new-array v4, v2, [C

    const/16 v2, 0x5c

    aput-char v2, v4, v1

    const/4 v2, 0x1

    const/16 v5, 0x75

    aput-char v5, v4, v2

    aput-char v1, v4, v8

    const/4 v2, 0x3

    aput-char v1, v4, v2

    aput-char v1, v4, v9

    const/4 v2, 0x5

    aput-char v1, v4, v2

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v9, :cond_0

    rsub-int/lit8 v5, v0, 0x5

    new-array v6, v10, [B

    fill-array-data v6, :array_1

    const-string v7, "35a492"

    invoke-static {v6, v7, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    and-int/lit8 v7, v2, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v5

    shr-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v8, [B

    fill-array-data v0, :array_2

    const-string v1, "976418"

    const/16 v2, 0x2ee8

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x5bt
        0x5t
        0x10t
        0x79t
        0x58t
        0x42t
        0x50t
        0xct
        0x7t
        0x46t
        0x17t
        0x5ft
        0x40t
        0x4ct
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x4t
        0x53t
        0x7t
        0xdt
        0x7t
        0x5t
        0x2t
        0x59t
        0xdt
        0x78t
        0x70t
        0x70t
        0x71t
        0x24t
        0x72t
    .end array-data

    :array_2
    .array-data 1
        0x1et
        0x1et
    .end array-data
.end method

.method public final zza(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/internal/common/zzl;->zza:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
