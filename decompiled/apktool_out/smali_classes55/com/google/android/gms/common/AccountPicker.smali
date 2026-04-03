.class public final Lcom/google/android/gms/common/AccountPicker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;,
        Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 6
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const/16 v2, 0x4a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "e80bff"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v1, 0x34

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d7add0"

    const-wide v4, -0x3e2fc3c4a1000000L    # -1.08953126E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "72f12c"

    const v3, 0x4e90d94f    # 1.2150803E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "d9be5e"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "7b1809"

    const/16 v3, -0x5cb5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "8f0b49"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "35cd7f"

    const-wide v4, 0x41b924e16d000000L    # 4.21847405E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "5f4d9a"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "b52d21"

    const v3, 0x4e74dc0c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "78c695"

    const-wide v4, 0x41da8978f9800000L    # 1.78086807E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const-string v2, "dc21f2"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const-string v2, "5930cd"

    const v3, 0x4e479d24    # 8.372411E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    const-string v2, "557998"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v2, "8dea18"

    const/16 v3, -0x6760

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_e

    const-string v2, "12d974"

    const-wide/32 v4, 0x261473d0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :array_0
    .array-data 1
        0x32t
        0x5dt
        0x10t
        0xdt
        0x8t
        0xat
        0x1ct
        0x18t
        0x43t
        0x17t
        0x16t
        0x16t
        0xat
        0x4at
        0x44t
        0x42t
        0xet
        0x9t
        0x16t
        0x4ct
        0x55t
        0x6t
        0x22t
        0x9t
        0x8t
        0x59t
        0x59t
        0xct
        0x46t
        0x0t
        0xct
        0x54t
        0x44t
        0x7t
        0x14t
        0x46t
        0x3t
        0x57t
        0x42t
        0x42t
        0x7t
        0x5t
        0x6t
        0x57t
        0x45t
        0xct
        0x12t
        0x46t
        0x6t
        0x50t
        0x59t
        0x12t
        0x46t
        0x15t
        0x11t
        0x41t
        0x5ct
        0x7t
        0x2t
        0x46t
        0x4t
        0x5bt
        0x53t
        0xdt
        0x13t
        0x8t
        0x11t
        0x18t
        0x40t
        0xbt
        0x5t
        0xdt
        0x0t
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7t
        0x58t
        0xct
        0x4at
        0x3t
        0x5ft
        0xbt
        0x50t
        0xdt
        0x1t
        0x4at
        0x51t
        0xat
        0x53t
        0x13t
        0xbt
        0xdt
        0x54t
        0x4at
        0x50t
        0xct
        0x17t
        0x4at
        0x53t
        0xbt
        0x5at
        0xct
        0xbt
        0xat
        0x1et
        0x5t
        0x54t
        0x2t
        0xbt
        0x11t
        0x5et
        0x10t
        0x19t
        0x22t
        0x2ct
        0x2bt
        0x7ft
        0x37t
        0x72t
        0x3et
        0x25t
        0x27t
        0x73t
        0x2bt
        0x62t
        0x2ft
        0x30t
    .end array-data

    :array_2
    .array-data 1
        0x54t
        0x5dt
        0xbt
        0x1ft
        0x55t
        0xct
        0x58t
        0x55t
        0xat
        0x54t
        0x1ct
        0x2t
        0x59t
        0x56t
        0x14t
        0x5et
        0x5bt
        0x7t
        0x19t
        0x55t
        0xbt
        0x42t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5t
        0x55t
        0xet
        0xat
        0x42t
        0x4t
        0x6t
        0x55t
        0x7t
        0x24t
        0x56t
        0x6t
        0xbt
        0x4ct
        0xct
        0x11t
        0x46t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x56t
        0xet
        0x5dt
        0x57t
        0x47t
        0x58t
        0x55t
        0xet
        0x54t
        0x79t
        0x53t
        0x5at
        0x58t
        0x17t
        0x5ft
        0x4ct
        0x64t
        0x40t
        0x47t
        0x7t
        0x42t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x59t
        0x2t
        0x54t
        0x23t
        0x57t
        0x5at
        0x57t
        0x13t
        0x5et
        0x16t
        0x7bt
        0x49t
        0x4ct
        0xft
        0x5ft
        0xct
        0x47t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x40t
        0x50t
        0xft
        0x1t
        0x54t
        0x12t
        0x56t
        0x51t
        0x22t
        0x7t
        0x54t
        0x9t
        0x46t
        0x5bt
        0x17t
    .end array-data

    :array_7
    .array-data 1
        0x54t
        0xat
        0x43t
        0x5t
        0x40t
        0x12t
        0x65t
        0x14t
        0x5bt
        0x9t
        0x49t
        0x15t
        0x73t
        0x9t
        0x46t
        0x25t
        0x5at
        0x2t
        0x5at
        0x13t
        0x5at
        0x10t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x6t
        0x50t
        0x41t
        0x7t
        0x40t
        0x58t
        0x12t
        0x41t
        0x5bt
        0xbt
        0x5ct
        0x65t
        0x7t
        0x4dt
        0x46t
        0x2bt
        0x44t
        0x54t
        0x10t
        0x47t
        0x5bt
        0x0t
        0x57t
    .end array-data

    :array_9
    .array-data 1
        0x56t
        0x4dt
        0x17t
        0x5et
        0x6dt
        0x5at
        0x5ct
        0x5dt
        0xdt
        0x62t
        0x40t
        0x45t
        0x52t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x5t
        0x7t
        0x56t
        0x70t
        0x5t
        0x51t
        0xbt
        0x16t
        0x5ct
        0x45t
        0x34t
        0x57t
        0x15t
        0x16t
        0x5bt
        0x43t
        0x3t
        0x56t
        0x22t
        0x6t
        0x53t
        0x45t
        0x13t
        0x40t
        0x1t
        0x10t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x46t
        0x5ct
        0x47t
        0x77t
        0xet
        0x17t
        0x76t
        0x56t
        0x41t
        0x55t
        0x22t
        0x7t
        0x56t
        0x56t
        0x46t
        0x5et
        0x17t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x5at
        0x43t
        0x52t
        0x4bt
        0x4bt
        0x51t
        0x51t
        0x50t
        0x63t
        0x51t
        0x5ct
        0x55t
        0x50t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x57t
        0x12t
        0x0t
        0x13t
        0x43t
        0x51t
        0x5ct
        0x1t
        0x26t
        0x14t
        0x42t
        0x4ct
        0x57t
        0x9t
        0x31t
        0x9t
        0x54t
        0x55t
        0x5dt
    .end array-data

    :array_e
    .array-data 1
        0x59t
        0x5dt
        0x17t
        0x4dt
        0x52t
        0x50t
        0x75t
        0x5dt
        0x9t
        0x58t
        0x5et
        0x5at
        0x77t
        0x5bt
        0x8t
        0x4dt
        0x52t
        0x46t
    .end array-data
.end method

.method public static newChooseAccountIntent(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Landroid/content/Intent;
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x16

    const/16 v8, 0x11

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzD(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zze(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "464880"

    const-wide v4, 0x41b1f670c0000000L    # 3.01363392E8

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzd(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Lcom/google/android/gms/common/zza;

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "756214"

    invoke-static {v0, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzB(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    const/16 v0, 0xca

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "047594"

    const/16 v3, -0x19bb

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzD(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v2, "69fecc"

    const v3, 0x4eaf1cfe

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-array v0, v9, [B

    fill-array-data v0, :array_4

    const-string v2, "87d720"

    const/16 v3, 0x2ff9

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-array v0, v8, [B

    fill-array-data v0, :array_5

    const-string v2, "1dbfa8"

    const v3, -0x317603a7

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzi(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzh(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v2, "8fc567"

    const-wide v4, 0x41acff2262000000L    # 2.43241265E8

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzh(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-array v0, v8, [B

    fill-array-data v0, :array_7

    const-string v2, "4d91be"

    const v3, -0x31eaffa2

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzc(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v2, "879c81"

    const/16 v3, -0x5b7c

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzb(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzB(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v2, "53459b"

    invoke-static {v0, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-array v0, v9, [B

    fill-array-data v0, :array_a

    const-string v2, "6f05de"

    invoke-static {v0, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzy(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v2, "e92e5b"

    const-wide/32 v4, -0x2410e16b

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzg(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzC(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    new-array v0, v8, [B

    fill-array-data v0, :array_c

    const-string v2, "6c44b7"

    invoke-static {v0, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzf(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_d

    const-string v2, "35df46"

    const/16 v3, -0x2c72

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zza(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)I

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v2, "217620"

    const/16 v3, 0x7f49

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzD(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v2, "fc72b6"

    invoke-static {v0, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zze(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    const-string v2, "3a4cfb"

    invoke-static {v0, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzD(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzd(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Lcom/google/android/gms/common/zza;

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzz(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzA(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_11

    const-string v3, "1fec26"

    const/16 v4, 0x2d28

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    return-object v1

    nop

    :array_0
    .array-data 1
        0x63t
        0x53t
        0x14t
        0x57t
        0x56t
        0x5ct
        0x4dt
        0x16t
        0x47t
        0x4dt
        0x48t
        0x40t
        0x5bt
        0x44t
        0x40t
        0x18t
        0x50t
        0x5ft
        0x47t
        0x42t
        0x51t
        0x5ct
        0x7ct
        0x5ft
        0x59t
        0x57t
        0x5dt
        0x56t
        0x18t
        0x56t
        0x5dt
        0x5at
        0x40t
        0x5dt
        0x4at
        0x10t
        0x52t
        0x59t
        0x46t
        0x18t
        0x59t
        0x53t
        0x57t
        0x59t
        0x41t
        0x56t
        0x4ct
        0x10t
        0x57t
        0x5et
        0x5dt
        0x48t
        0x18t
        0x43t
        0x40t
        0x4ft
        0x58t
        0x5dt
        0x5ct
        0x10t
        0x55t
        0x55t
        0x57t
        0x57t
        0x4dt
        0x5et
        0x40t
        0x16t
        0x44t
        0x51t
        0x5bt
        0x5bt
        0x51t
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x5at
        0x58t
        0x41t
        0x54t
        0x5at
        0x43t
        0x15t
        0x5ft
        0x41t
        0x11t
        0x5bt
        0x59t
        0x59t
        0x4ft
        0x12t
        0x47t
        0x55t
        0x5bt
        0x5ct
        0x52t
        0x12t
        0x57t
        0x5bt
        0x45t
        0x15t
        0x57t
        0x51t
        0x52t
        0x5bt
        0x42t
        0x5bt
        0x42t
        0x12t
        0x52t
        0x5ct
        0x5et
        0x45t
        0x16t
        0x41t
        0x45t
        0x4dt
        0x5bt
        0x50t
        0x52t
        0x12t
        0x50t
        0x57t
        0x54t
        0x5at
        0x43t
        0x5ct
        0x45t
        0x14t
        0x47t
        0x5ct
        0x55t
        0x59t
        0x54t
        0x46t
    .end array-data

    :array_2
    .array-data 1
        0x7dt
        0x55t
        0x5ct
        0x5ct
        0x57t
        0x53t
        0x10t
        0x40t
        0x5ft
        0x50t
        0x19t
        0x47t
        0x55t
        0x58t
        0x52t
        0x56t
        0x4dt
        0x51t
        0x54t
        0x14t
        0x56t
        0x56t
        0x5at
        0x5bt
        0x45t
        0x5at
        0x43t
        0x15t
        0x57t
        0x5bt
        0x5et
        0x19t
        0x54t
        0x59t
        0x50t
        0x57t
        0x5bt
        0x55t
        0x55t
        0x59t
        0x5ct
        0x14t
        0x59t
        0x47t
        0x17t
        0x5at
        0x57t
        0x58t
        0x49t
        0x14t
        0x44t
        0x40t
        0x49t
        0x44t
        0x5ft
        0x46t
        0x43t
        0x50t
        0x5dt
        0x14t
        0x56t
        0x5bt
        0x45t
        0x15t
        0x4dt
        0x5ct
        0x55t
        0x14t
        0x63t
        0x7dt
        0x7ct
        0x79t
        0x75t
        0x6bt
        0x73t
        0x74t
        0x60t
        0x6bt
        0x7et
        0x7dt
        0x70t
        0x7dt
        0x6dt
        0x6bt
        0x77t
        0x7bt
        0x78t
        0x72t
        0x75t
        0x71t
        0x6ft
        0x79t
        0x76t
        0x61t
        0x7ct
        0x66t
        0x79t
        0x75t
        0x7bt
        0x7t
        0x15t
        0x14t
        0x64t
        0x7ct
        0x72t
        0x78t
        0x7ct
        0x6bt
        0x7ct
        0x7dt
        0x70t
        0x7dt
        0x6dt
        0x6bt
        0x77t
        0x7bt
        0x78t
        0x72t
        0x75t
        0x71t
        0x6ft
        0x79t
        0x76t
        0x61t
        0x7ct
        0x66t
        0x79t
        0x75t
        0x7bt
        0x6t
        0x15t
        0x14t
        0x64t
        0x7ct
        0x72t
        0x78t
        0x7ct
        0x6bt
        0x74t
        0x75t
        0x65t
        0x7et
        0x66t
        0x73t
        0x7ft
        0x7bt
        0x70t
        0x79t
        0x7ct
        0x6bt
        0x7dt
        0x75t
        0x63t
        0x70t
        0x6bt
        0x7dt
        0x71t
        0x78t
        0x4t
        0x15t
        0x56t
        0x46t
        0x10t
        0x60t
        0x7ft
        0x70t
        0x74t
        0x71t
        0x6ft
        0x70t
        0x76t
        0x6ct
        0x66t
        0x7at
        0x79t
        0x73t
        0x7ft
        0x61t
        0x66t
        0x73t
        0x7ft
        0x7bt
        0x70t
        0x79t
        0x7ct
        0x6bt
        0x7dt
        0x75t
        0x63t
        0x70t
        0x6bt
        0x7dt
        0x71t
        0x78t
        0x4t
        0x15t
        0x4dt
        0x5ct
        0x55t
        0x59t
        0x52t
        0x46t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x55t
        0x56t
        0xbt
        0x4bt
        0x4t
        0xct
        0x59t
        0x5et
        0xat
        0x0t
        0x4dt
        0x2t
        0x58t
        0x5dt
        0x14t
        0xat
        0xat
        0x7t
        0x18t
        0x5et
        0xbt
        0x16t
        0x4dt
        0x0t
        0x59t
        0x54t
        0xbt
        0xat
        0xdt
        0x4dt
        0x57t
        0x5at
        0x5t
        0xat
        0x16t
        0xdt
        0x42t
        0x17t
        0x25t
        0x2dt
        0x2ct
        0x2ct
        0x65t
        0x7ct
        0x39t
        0x24t
        0x20t
        0x20t
        0x79t
        0x6ct
        0x28t
        0x31t
    .end array-data

    :array_4
    .array-data 1
        0x5bt
        0x58t
        0x9t
        0x19t
        0x55t
        0x5ft
        0x57t
        0x50t
        0x8t
        0x52t
        0x1ct
        0x51t
        0x56t
        0x53t
        0x16t
        0x58t
        0x5bt
        0x54t
        0x16t
        0x50t
        0x9t
        0x44t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x50t
        0x8t
        0xet
        0x9t
        0x16t
        0x59t
        0x53t
        0x8t
        0x7t
        0x27t
        0x2t
        0x5bt
        0x5et
        0x11t
        0xct
        0x12t
        0x12t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x59t
        0xat
        0xft
        0x5at
        0x41t
        0x56t
        0x5at
        0xat
        0x6t
        0x74t
        0x55t
        0x54t
        0x57t
        0x13t
        0xdt
        0x41t
        0x62t
        0x4et
        0x48t
        0x3t
        0x10t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x55t
        0x0t
        0x5dt
        0x70t
        0x1t
        0x6t
        0x5bt
        0x11t
        0x57t
        0x45t
        0x2dt
        0x15t
        0x40t
        0xdt
        0x56t
        0x5ft
        0x11t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x4bt
        0x52t
        0x55t
        0x6t
        0x5bt
        0x45t
        0x5dt
        0x53t
        0x78t
        0x0t
        0x5bt
        0x5et
        0x4dt
        0x59t
        0x4dt
    .end array-data

    :array_9
    .array-data 1
        0x46t
        0x56t
        0x58t
        0x50t
        0x5at
        0x16t
        0x50t
        0x57t
        0x75t
        0x56t
        0x5at
        0xdt
        0x40t
        0x5dt
        0x40t
        0x7ct
        0x4at
        0x2ct
        0x5at
        0x47t
        0x77t
        0x59t
        0x50t
        0x1t
        0x5et
        0x52t
        0x56t
        0x59t
        0x5ct
    .end array-data

    nop

    :array_a
    .array-data 1
        0x57t
        0xat
        0x47t
        0x54t
        0x1dt
        0x16t
        0x66t
        0x14t
        0x5ft
        0x58t
        0x14t
        0x11t
        0x70t
        0x9t
        0x42t
        0x74t
        0x7t
        0x6t
        0x59t
        0x13t
        0x5et
        0x41t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x1t
        0x5ct
        0x41t
        0x6t
        0x47t
        0xbt
        0x15t
        0x4dt
        0x5bt
        0xat
        0x5bt
        0x36t
        0x0t
        0x41t
        0x46t
        0x2at
        0x43t
        0x7t
        0x17t
        0x4bt
        0x5bt
        0x1t
        0x50t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x6t
        0x40t
        0x73t
        0xft
        0x44t
        0x75t
        0xct
        0x46t
        0x51t
        0x23t
        0x54t
        0x55t
        0xct
        0x41t
        0x5at
        0x16t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x41t
        0x50t
        0x5t
        0xat
        0x77t
        0x5at
        0x5at
        0x50t
        0xat
        0x12t
        0x64t
        0x57t
        0x50t
        0x5et
        0x5t
        0x1t
        0x51t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x5dt
        0x47t
        0x52t
        0x44t
        0x40t
        0x59t
        0x56t
        0x54t
        0x63t
        0x5et
        0x57t
        0x5dt
        0x57t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x9t
        0x15t
        0x52t
        0x40t
        0x10t
        0x5ft
        0x2t
        0x6t
        0x74t
        0x47t
        0x11t
        0x42t
        0x9t
        0xet
        0x63t
        0x5at
        0x7t
        0x5bt
        0x3t
    .end array-data

    :array_10
    .array-data 1
        0x5bt
        0xet
        0x47t
        0x17t
        0x3t
        0x6t
        0x77t
        0xet
        0x59t
        0x2t
        0xft
        0xct
        0x75t
        0x8t
        0x58t
        0x17t
        0x3t
        0x10t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x57t
        0xft
        0x17t
        0x10t
        0x46t
        0x69t
        0x41t
        0x7t
        0x17t
        0x17t
        0x4bt
        0x69t
        0x5et
        0x16t
        0x11t
        0xat
        0x5dt
        0x58t
        0x42t
        0x39t
        0x7t
        0x16t
        0x5ct
        0x52t
        0x5dt
        0x3t
    .end array-data
.end method
