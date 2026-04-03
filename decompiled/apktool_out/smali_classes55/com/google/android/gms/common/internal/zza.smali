.class abstract Lcom/google/android/gms/common/internal/zza;
.super Lcom/google/android/gms/common/internal/zzc;


# instance fields
.field public final zza:I

.field public final zzb:Landroid/os/Bundle;

.field final zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzc;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zza;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zza;->zzd()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zza;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zza;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zza;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zza;->zzb:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "03678f"

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_2
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zza;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x40t
        0x56t
        0x58t
        0x53t
        0x51t
        0x8t
        0x57t
        0x7at
        0x58t
        0x43t
        0x5dt
        0x8t
        0x44t
    .end array-data
.end method

.method protected abstract zzb(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method protected final zzc()V
    .locals 0

    return-void
.end method

.method protected abstract zzd()Z
.end method
