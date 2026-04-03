.class public abstract Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
.super Lcom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lcom/google/android/gms/dynamic/IFragmentWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/IFragmentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9cffa4"

    const-wide v2, 0x41d4ad14df800000L    # 1.387549566E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x5at
        0xct
        0xbt
        0x48t
        0x6t
        0x5bt
        0x56t
        0x4t
        0xat
        0x3t
        0x4ft
        0x55t
        0x57t
        0x7t
        0x14t
        0x9t
        0x8t
        0x50t
        0x17t
        0x4t
        0xbt
        0x15t
        0x4ft
        0x50t
        0x40t
        0xdt
        0x7t
        0xbt
        0x8t
        0x57t
        0x17t
        0x2at
        0x20t
        0x14t
        0x0t
        0x53t
        0x54t
        0x6t
        0x8t
        0x12t
        0x36t
        0x46t
        0x58t
        0x13t
        0x16t
        0x3t
        0x13t
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "5c91f2"

    const-wide v2, 0x41d1dec02a400000L    # 1.199243433E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/dynamic/IFragmentWrapper;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/dynamic/IFragmentWrapper;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/dynamic/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x56t
        0xct
        0x54t
        0x1ft
        0x1t
        0x5dt
        0x5at
        0x4t
        0x55t
        0x54t
        0x48t
        0x53t
        0x5bt
        0x7t
        0x4bt
        0x5et
        0xft
        0x56t
        0x1bt
        0x4t
        0x54t
        0x42t
        0x48t
        0x56t
        0x4ct
        0xdt
        0x58t
        0x5ct
        0xft
        0x51t
        0x1bt
        0x2at
        0x7ft
        0x43t
        0x7t
        0x55t
        0x58t
        0x6t
        0x57t
        0x45t
        0x31t
        0x40t
        0x54t
        0x13t
        0x49t
        0x54t
        0x14t
    .end array-data
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzq(Landroid/content/Intent;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_2
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzp(Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_3
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzo(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_4
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_5
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzm(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_6
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzl(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzA()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget v1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzz()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget v1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzy()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget v1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzx()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget v1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzw()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget v1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzv()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget v1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzu()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget v1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzt()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget v1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzc()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzf()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzs()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget v1, Lcom/google/android/gms/internal/common/zzc;->zza:I

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zze()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzb()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzd()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/common/zzc;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzg()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
