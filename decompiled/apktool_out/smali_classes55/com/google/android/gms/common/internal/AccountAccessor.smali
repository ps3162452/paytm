.class public Lcom/google/android/gms/common/internal/AccountAccessor;
.super Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;


# direct methods
.method public static getAccountBinderSafe(Lcom/google/android/gms/common/internal/IAccountAccessor;)Landroid/accounts/Account;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/IAccountAccessor;->zzb()Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    const/16 v1, 0xf

    :try_start_1
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v4, "219d6b"

    const-wide v6, 0x41d07fa1e9c00000L    # 1.107199911E9

    invoke-static {v1, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x25

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "d7cd58"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x73t
        0x52t
        0x5at
        0xbt
        0x43t
        0xct
        0x46t
        0x70t
        0x5at
        0x7t
        0x53t
        0x11t
        0x41t
        0x5et
        0x4bt
    .end array-data

    :array_1
    .array-data 1
        0x36t
        0x52t
        0xet
        0xbt
        0x41t
        0x5dt
        0x44t
        0x56t
        0x0t
        0x7t
        0x5at
        0x4dt
        0xat
        0x43t
        0x43t
        0x5t
        0x56t
        0x5bt
        0x1t
        0x44t
        0x10t
        0xbt
        0x47t
        0x18t
        0x14t
        0x45t
        0xct
        0x6t
        0x54t
        0x5at
        0x8t
        0x4et
        0x43t
        0x0t
        0x5ct
        0x5dt
        0x0t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzb()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
