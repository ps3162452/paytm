.class public abstract Lcom/google/android/gms/common/internal/zag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zab(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zag;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zad;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/zad;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    return-object v0
.end method

.method public static zac(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zag;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zae;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/zae;-><init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V

    return-object v0
.end method

.method public static zad(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zag;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/zaf;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/gms/common/internal/zaf;-><init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/LifecycleFragment;I)V

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zag;->zaa()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "63e550"

    const/16 v3, 0x54e5

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "ee5feb"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v7, v2, :cond_0

    const/16 v0, 0xa0

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "dbab8f"

    const v3, 0x4eebb9d4

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v2, 0xe

    :try_start_2
    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "b29894"

    const-wide v4, 0x41d123ddae000000L    # 1.150252728E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x70t
        0x52t
        0xct
        0x59t
        0x50t
        0x54t
        0x16t
        0x47t
        0xat
        0x15t
        0x46t
        0x44t
        0x57t
        0x41t
        0x11t
        0x15t
        0x47t
        0x55t
        0x45t
        0x5ct
        0x9t
        0x40t
        0x41t
        0x59t
        0x59t
        0x5dt
        0x45t
        0x5ct
        0x5bt
        0x44t
        0x53t
        0x5dt
        0x11t
        0x1bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x0t
        0x5bt
        0x3t
        0x17t
        0xbt
        0x6t
    .end array-data

    :array_2
    .array-data 1
        0x22t
        0x3t
        0x8t
        0xet
        0x5dt
        0x2t
        0x44t
        0x16t
        0xet
        0x42t
        0x4bt
        0x12t
        0x5t
        0x10t
        0x15t
        0x42t
        0x4at
        0x3t
        0x17t
        0xdt
        0xdt
        0x17t
        0x4ct
        0xft
        0xbt
        0xct
        0x41t
        0xbt
        0x56t
        0x12t
        0x1t
        0xct
        0x15t
        0x4ct
        0x18t
        0x32t
        0xct
        0xbt
        0x12t
        0x42t
        0x55t
        0x7t
        0x1dt
        0x42t
        0xet
        0x1t
        0x5bt
        0x13t
        0x16t
        0x42t
        0x16t
        0xat
        0x5dt
        0x8t
        0x44t
        0x10t
        0x4t
        0x11t
        0x57t
        0xat
        0x12t
        0xbt
        0xft
        0x5t
        0x18t
        0x21t
        0xbt
        0xdt
        0x6t
        0xet
        0x5dt
        0x46t
        0x34t
        0xet
        0x0t
        0x1bt
        0x18t
        0x15t
        0x1t
        0x10t
        0x17t
        0xbt
        0x5bt
        0x3t
        0x17t
        0x42t
        0x2t
        0xdt
        0x56t
        0x8t
        0x1t
        0x1t
        0x15t
        0xbt
        0x57t
        0x8t
        0x44t
        0xbt
        0x12t
        0x11t
        0x4dt
        0x3t
        0x17t
        0x42t
        0xet
        0xct
        0x18t
        0x3t
        0x9t
        0x17t
        0xdt
        0x3t
        0x4ct
        0x9t
        0x16t
        0x11t
        0x41t
        0x15t
        0x51t
        0x12t
        0xct
        0x42t
        0x26t
        0xdt
        0x57t
        0x1t
        0x8t
        0x7t
        0x41t
        0x23t
        0x68t
        0x2ft
        0x17t
        0x42t
        0x3t
        0x17t
        0x4ct
        0x46t
        0xat
        0xdt
        0x15t
        0x42t
        0x7ft
        0x9t
        0xbt
        0x5t
        0xdt
        0x7t
        0x18t
        0x36t
        0x8t
        0x3t
        0x18t
        0x42t
        0x6bt
        0x12t
        0xbt
        0x10t
        0x4t
        0x4ct
    .end array-data

    :array_3
    .array-data 1
        0x26t
        0x5bt
        0x58t
        0x54t
        0x56t
        0x53t
        0x30t
        0x57t
        0x5dt
        0x51t
        0x4bt
        0x51t
        0x1t
        0x46t
    .end array-data
.end method

.method protected abstract zaa()V
.end method
