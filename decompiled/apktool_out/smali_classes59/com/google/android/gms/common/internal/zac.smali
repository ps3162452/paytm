.class public final Lcom/google/android/gms/common/internal/zac;
.super Ljava/lang/Object;


# static fields
.field private static final zaa:Landroidx/collection/SimpleArrayMap;

.field private static zab:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zac;->zaa:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method public static zaa(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static zab(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_channel_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zac(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget v1, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget v1, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget v1, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zad(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    const/16 v2, 0x30

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zac;->zaa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget v2, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "021212"

    const v3, -0x314baee0

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget v2, Lcom/google/android/gms/base/R$string;->common_google_play_services_updating_text:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "69b39f"

    invoke-static {v0, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    const-string v2, "1fa213"

    const-wide v4, 0x41dff9301cc00000L    # 2.145697907E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget v2, Lcom/google/android/gms/base/R$string;->common_google_play_services_unsupported_text:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v2, "7d3da7"

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    new-array v0, v2, [B

    fill-array-data v0, :array_4

    const-string v2, "8bc337"

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    sget v2, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_text:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v1, Lcom/google/android/gms/base/R$string;->common_google_play_services_wear_update_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    sget v2, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_text:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    sget v2, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_text:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 1
        0x53t
        0x5dt
        0x5ct
        0x5ft
        0x5et
        0x5ct
        0x6ft
        0x55t
        0x5et
        0x5dt
        0x56t
        0x5et
        0x55t
        0x6dt
        0x41t
        0x5et
        0x50t
        0x4bt
        0x6ft
        0x41t
        0x54t
        0x40t
        0x47t
        0x5bt
        0x53t
        0x57t
        0x42t
        0x6dt
        0x43t
        0x57t
        0x43t
        0x46t
        0x43t
        0x5bt
        0x52t
        0x46t
        0x55t
        0x56t
        0x6et
        0x42t
        0x43t
        0x5dt
        0x56t
        0x5bt
        0x5dt
        0x57t
        0x6et
        0x46t
        0x55t
        0x4at
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x55t
        0x56t
        0xft
        0x5et
        0x56t
        0x8t
        0x69t
        0x5et
        0xdt
        0x5ct
        0x5et
        0xat
        0x53t
        0x66t
        0x12t
        0x5ft
        0x58t
        0x1ft
        0x69t
        0x4at
        0x7t
        0x41t
        0x4ft
        0xft
        0x55t
        0x5ct
        0x11t
        0x6ct
        0x4at
        0xft
        0x51t
        0x57t
        0x3dt
        0x5at
        0x57t
        0x39t
        0x50t
        0x58t
        0xbt
        0x5ft
        0x5ct
        0x2t
        0x69t
        0x4dt
        0x7t
        0x4bt
        0x4dt
    .end array-data

    :array_2
    .array-data 1
        0x52t
        0x9t
        0xct
        0x5ft
        0x5et
        0x5dt
        0x6et
        0x1t
        0xet
        0x5dt
        0x56t
        0x5ft
        0x54t
        0x39t
        0x11t
        0x5et
        0x50t
        0x4at
        0x6et
        0x15t
        0x4t
        0x40t
        0x47t
        0x5at
        0x52t
        0x3t
        0x12t
        0x6dt
        0x50t
        0x43t
        0x58t
        0x39t
        0x14t
        0x5ct
        0x50t
        0x45t
        0x50t
        0xft
        0xdt
        0x53t
        0x53t
        0x5ft
        0x54t
        0x39t
        0x15t
        0x57t
        0x49t
        0x47t
    .end array-data

    :array_3
    .array-data 1
        0x54t
        0xbt
        0x5et
        0x9t
        0xet
        0x59t
        0x68t
        0x3t
        0x5ct
        0xbt
        0x6t
        0x5bt
        0x52t
        0x3bt
        0x43t
        0x8t
        0x0t
        0x4et
        0x68t
        0x17t
        0x56t
        0x16t
        0x17t
        0x5et
        0x54t
        0x1t
        0x40t
        0x3bt
        0xft
        0x52t
        0x43t
        0x13t
        0x5ct
        0x16t
        0xat
        0x68t
        0x52t
        0x16t
        0x41t
        0xbt
        0x13t
        0x68t
        0x43t
        0x1t
        0x4bt
        0x10t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5bt
        0xdt
        0xet
        0x5et
        0x5ct
        0x59t
        0x67t
        0x5t
        0xct
        0x5ct
        0x54t
        0x5bt
        0x5dt
        0x3dt
        0x13t
        0x5ft
        0x52t
        0x4et
        0x67t
        0x11t
        0x6t
        0x41t
        0x45t
        0x5et
        0x5bt
        0x7t
        0x10t
        0x6ct
        0x5at
        0x59t
        0x4et
        0x3t
        0xft
        0x5at
        0x57t
        0x68t
        0x59t
        0x1t
        0x0t
        0x5ct
        0x46t
        0x59t
        0x4ct
        0x3dt
        0x17t
        0x56t
        0x4bt
        0x43t
    .end array-data
.end method

.method public static zae(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "307f5a"

    const v2, 0x4e57c87e    # 9.050602E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zac;->zaa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zad(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x50t
        0x5ft
        0x5at
        0xbt
        0x5at
        0xft
        0x6ct
        0x57t
        0x58t
        0x9t
        0x52t
        0xdt
        0x56t
        0x6ft
        0x47t
        0xat
        0x54t
        0x18t
        0x6ct
        0x43t
        0x52t
        0x14t
        0x43t
        0x8t
        0x50t
        0x55t
        0x44t
        0x39t
        0x47t
        0x4t
        0x40t
        0x5ft
        0x5bt
        0x13t
        0x41t
        0x8t
        0x5ct
        0x5et
        0x68t
        0x14t
        0x50t
        0x10t
        0x46t
        0x59t
        0x45t
        0x3t
        0x51t
        0x3et
        0x47t
        0x55t
        0x4ft
        0x12t
    .end array-data
.end method

.method public static zaf(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "cfe5f0"

    const v2, 0x4e70c538

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zag(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x9t
        0x8t
        0x58t
        0x9t
        0x5et
        0x3ct
        0x1t
        0xat
        0x5at
        0x1t
        0x5ct
        0x6t
        0x39t
        0x15t
        0x59t
        0x7t
        0x49t
        0x3ct
        0x15t
        0x0t
        0x47t
        0x10t
        0x59t
        0x0t
        0x3t
        0x16t
        0x6at
        0x14t
        0x55t
        0x10t
        0x9t
        0x9t
        0x40t
        0x12t
        0x59t
        0xct
        0x8t
        0x3at
        0x47t
        0x3t
        0x41t
        0x16t
        0xft
        0x17t
        0x50t
        0x2t
        0x6ft
        0x17t
        0xft
        0x11t
        0x59t
        0x3t
    .end array-data
.end method

.method public static zag(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    const/16 v3, 0x30

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x15

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "7dc6dc"

    const-wide v4, 0x41d5224668c00000L    # 1.418271139E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "85f2e2"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "6575d4"

    const/16 v2, 0x7021

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "039e29"

    const/16 v3, -0x7a5d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "7f3803"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-array v0, v7, [B

    fill-array-data v0, :array_5

    const-string v1, "2b6ca2"

    const/16 v2, 0x4931

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "32c5d1"

    const-wide/32 v4, -0x24d855ef

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [B

    fill-array-data v0, :array_7

    const-string v1, "e857cc"

    const-wide/32 v2, -0x6607906f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-array v1, v7, [B

    fill-array-data v1, :array_8

    const-string v2, "a0195a"

    const-wide/32 v4, 0x71200d1b    # 9.37699993E-315

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v3, "0cc18b"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    new-array v1, v7, [B

    fill-array-data v1, :array_a

    const-string v2, "c06803"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    new-array v2, v2, [B

    fill-array-data v2, :array_b

    const-string v3, "ae9ed6"

    const v4, 0x4ec03445

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_6
    new-array v1, v7, [B

    fill-array-data v1, :array_c

    const-string v2, "7ef049"

    invoke-static {v1, v2, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    new-array v2, v2, [B

    fill-array-data v2, :array_d

    const-string v3, "a45273"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_7
    new-array v1, v7, [B

    fill-array-data v1, :array_e

    const-string v2, "c145b8"

    invoke-static {v1, v2, v6, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    const-string v3, "bcef32"

    const-wide v4, 0x41d1579262c00000L    # 1.163807115E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_8
    new-array v1, v7, [B

    fill-array-data v1, :array_10

    const-string v2, "54bb83"

    invoke-static {v1, v2, v6, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    new-array v2, v2, [B

    fill-array-data v2, :array_11

    const-string v3, "0569c8"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_9
    new-array v0, v7, [B

    fill-array-data v0, :array_12

    const-string v1, "dac079"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x33

    new-array v1, v1, [B

    fill-array-data v1, :array_13

    const-string v2, "f75ebe"

    invoke-static {v1, v2, v6, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    const-string v1, "39e39c"

    const/16 v2, 0x149

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    new-array v0, v7, [B

    fill-array-data v0, :array_15

    const-string v1, "3b5ef6"

    const v2, 0x4ee30ab2    # 1.9045645E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x51

    new-array v1, v1, [B

    fill-array-data v1, :array_16

    const-string v2, "f7fec8"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_17

    const-string v1, "1af7ea"

    const-wide/32 v2, -0x5502b6ee

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    sget v0, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    sget v0, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    sget v0, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x62t
        0xat
        0x6t
        0x4et
        0x14t
        0x6t
        0x54t
        0x10t
        0x6t
        0x52t
        0x44t
        0x6t
        0x45t
        0x16t
        0xct
        0x44t
        0x44t
        0x0t
        0x58t
        0x0t
        0x6t
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7ft
        0x5at
        0x9t
        0x55t
        0x9t
        0x57t
        0x79t
        0x45t
        0xft
        0x73t
        0x13t
        0x53t
        0x51t
        0x59t
        0x7t
        0x50t
        0xct
        0x5et
        0x51t
        0x41t
        0x1ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x71t
        0x5at
        0x58t
        0x52t
        0x8t
        0x51t
        0x77t
        0x45t
        0x5et
        0x74t
        0x12t
        0x55t
        0x5ft
        0x59t
        0x56t
        0x57t
        0xdt
        0x58t
        0x5ft
        0x41t
        0x4et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x64t
        0x5bt
        0x5ct
        0x45t
        0x51t
        0x4ct
        0x42t
        0x41t
        0x5ct
        0xbt
        0x46t
        0x19t
        0x45t
        0x40t
        0x5ct
        0x17t
        0x12t
        0x49t
        0x42t
        0x5ct
        0x5ft
        0xct
        0x5et
        0x5ct
        0x10t
        0x5at
        0x4at
        0x45t
        0x40t
        0x5ct
        0x43t
        0x47t
        0x4bt
        0xct
        0x51t
        0x4dt
        0x55t
        0x57t
        0x19t
        0x4t
        0x5ct
        0x5dt
        0x10t
        0x50t
        0x56t
        0x10t
        0x5et
        0x5dt
        0x10t
        0x5dt
        0x56t
        0x11t
        0x12t
        0x4ct
        0x43t
        0x56t
        0x19t
        0x4t
        0x47t
        0x4dt
        0x58t
        0x56t
        0x57t
        0x11t
        0x5bt
        0x5at
        0x51t
        0x47t
        0x5ct
        0x1t
        0x12t
        0x5ft
        0x55t
        0x52t
        0x4dt
        0x10t
        0x40t
        0x5ct
        0x43t
        0x1dt
    .end array-data

    :array_4
    .array-data 1
        0x54t
        0x9t
        0x5et
        0x55t
        0x5ft
        0x5dt
        0x68t
        0x1t
        0x5ct
        0x57t
        0x57t
        0x5ft
        0x52t
        0x39t
        0x43t
        0x54t
        0x51t
        0x4at
        0x68t
        0x15t
        0x56t
        0x4at
        0x46t
        0x5at
        0x54t
        0x3t
        0x40t
        0x67t
        0x42t
        0x56t
        0x44t
        0x12t
        0x41t
        0x51t
        0x53t
        0x47t
        0x52t
        0x2t
        0x6ct
        0x48t
        0x42t
        0x5ct
        0x51t
        0xft
        0x5ft
        0x5dt
        0x6ft
        0x47t
        0x5et
        0x12t
        0x5ft
        0x5dt
    .end array-data

    :array_5
    .array-data 1
        0x75t
        0xdt
        0x59t
        0x4t
        0xdt
        0x57t
        0x73t
        0x12t
        0x5ft
        0x22t
        0x17t
        0x53t
        0x5bt
        0xet
        0x57t
        0x1t
        0x8t
        0x5et
        0x5bt
        0x16t
        0x4ft
    .end array-data

    nop

    :array_6
    .array-data 1
        0x67t
        0x5at
        0x6t
        0x15t
        0x17t
        0x41t
        0x56t
        0x51t
        0xat
        0x53t
        0xdt
        0x54t
        0x57t
        0x12t
        0x2t
        0x56t
        0x7t
        0x5et
        0x46t
        0x5ct
        0x17t
        0x15t
        0x7t
        0x5et
        0x46t
        0x5et
        0x7t
        0x15t
        0xat
        0x5et
        0x47t
        0x12t
        0x1t
        0x50t
        0x44t
        0x42t
        0x5at
        0x55t
        0xdt
        0x50t
        0x0t
        0x11t
        0x5at
        0x5ct
        0x4dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x6t
        0x57t
        0x58t
        0x5at
        0xct
        0xdt
        0x3at
        0x5ft
        0x5at
        0x58t
        0x4t
        0xft
        0x0t
        0x67t
        0x45t
        0x5bt
        0x2t
        0x1at
        0x3at
        0x4bt
        0x50t
        0x45t
        0x15t
        0xat
        0x6t
        0x5dt
        0x46t
        0x68t
        0x10t
        0xat
        0x2t
        0x56t
        0x6at
        0x5et
        0xdt
        0x3ct
        0x3t
        0x59t
        0x5ct
        0x5bt
        0x6t
        0x7t
        0x3at
        0x4ct
        0x5ct
        0x43t
        0xft
        0x6t
    .end array-data

    :array_8
    .array-data 1
        0x26t
        0x5ft
        0x5et
        0x5et
        0x59t
        0x4t
        0x20t
        0x40t
        0x58t
        0x78t
        0x43t
        0x0t
        0x8t
        0x5ct
        0x50t
        0x5bt
        0x5ct
        0xdt
        0x8t
        0x44t
        0x48t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x7ft
        0xdt
        0x6t
        0x11t
        0x57t
        0x4t
        0x10t
        0x17t
        0xbt
        0x54t
        0x18t
        0x23t
        0x60t
        0x2at
        0x43t
        0x52t
        0x57t
        0xft
        0x40t
        0xct
        0xdt
        0x54t
        0x56t
        0x16t
        0x43t
        0x43t
        0x1at
        0x5et
        0x4dt
        0x42t
        0x51t
        0x17t
        0x17t
        0x54t
        0x55t
        0x12t
        0x44t
        0x6t
        0x7t
        0x11t
        0x4ct
        0xdt
        0x10t
        0x0t
        0xct
        0x5ft
        0x56t
        0x7t
        0x53t
        0x17t
        0x43t
        0x45t
        0x57t
        0x42t
        0x59t
        0x10t
        0x43t
        0x5ft
        0x57t
        0x16t
        0x10t
        0x2t
        0x15t
        0x50t
        0x51t
        0xet
        0x51t
        0x1t
        0xft
        0x54t
        0x16t
    .end array-data

    :array_a
    .array-data 1
        0x24t
        0x5ft
        0x59t
        0x5ft
        0x5ct
        0x56t
        0x22t
        0x40t
        0x5ft
        0x79t
        0x46t
        0x52t
        0xat
        0x5ct
        0x57t
        0x5at
        0x59t
        0x5ft
        0xat
        0x44t
        0x4ft
    .end array-data

    nop

    :array_b
    .array-data 1
        0x35t
        0xdt
        0x5ct
        0x45t
        0x5t
        0x46t
        0x11t
        0x9t
        0x50t
        0x6t
        0x5t
        0x42t
        0x8t
        0xat
        0x57t
        0x45t
        0xdt
        0x45t
        0x41t
        0xbt
        0x56t
        0x11t
        0x44t
        0x5at
        0x8t
        0x6t
        0x5ct
        0xbt
        0x17t
        0x53t
        0x5t
        0x45t
        0x4dt
        0xat
        0x44t
        0x42t
        0x9t
        0x0t
        0x19t
        0x10t
        0x17t
        0x53t
        0x13t
        0x4bt
    .end array-data

    :array_c
    .array-data 1
        0x70t
        0xat
        0x9t
        0x57t
        0x58t
        0x5ct
        0x76t
        0x15t
        0xft
        0x71t
        0x42t
        0x58t
        0x5et
        0x9t
        0x7t
        0x52t
        0x5dt
        0x55t
        0x5et
        0x11t
        0x1ft
    .end array-data

    nop

    :array_d
    .array-data 1
        0x25t
        0x51t
        0x43t
        0x57t
        0x5bt
        0x5ct
        0x11t
        0x51t
        0x47t
        0x12t
        0x52t
        0x41t
        0x13t
        0x5bt
        0x47t
        0x12t
        0x58t
        0x50t
        0x2t
        0x41t
        0x47t
        0x40t
        0x52t
        0x57t
        0x4ft
        0x14t
        0x65t
        0x5et
        0x52t
        0x52t
        0x12t
        0x51t
        0x15t
        0x41t
        0x52t
        0x56t
        0x41t
        0x58t
        0x5at
        0x55t
        0x44t
        0x13t
        0x7t
        0x5bt
        0x47t
        0x12t
        0x53t
        0x56t
        0x15t
        0x55t
        0x5ct
        0x5et
        0x52t
        0x57t
        0x41t
        0x5dt
        0x5bt
        0x54t
        0x58t
        0x41t
        0xct
        0x55t
        0x41t
        0x5bt
        0x58t
        0x5dt
    .end array-data

    nop

    :array_e
    .array-data 1
        0x24t
        0x5et
        0x5bt
        0x52t
        0xet
        0x5dt
        0x22t
        0x41t
        0x5dt
        0x74t
        0x14t
        0x59t
        0xat
        0x5dt
        0x55t
        0x57t
        0xbt
        0x54t
        0xat
        0x45t
        0x4dt
    .end array-data

    nop

    :array_f
    .array-data 1
        0x25t
        0xct
        0xat
        0x1t
        0x5ft
        0x57t
        0x42t
        0x33t
        0x9t
        0x7t
        0x4at
        0x12t
        0x11t
        0x6t
        0x17t
        0x10t
        0x5at
        0x51t
        0x7t
        0x10t
        0x45t
        0xft
        0x40t
        0x12t
        0xbt
        0xdt
        0x13t
        0x7t
        0x5ft
        0x5bt
        0x6t
        0x4dt
        0x45t
        0x25t
        0x52t
        0x5ct
        0xct
        0xct
        0x11t
        0x46t
        0x41t
        0x57t
        0x1t
        0xct
        0x13t
        0x3t
        0x41t
        0x1ct
    .end array-data

    :array_10
    .array-data 1
        0x72t
        0x5bt
        0xdt
        0x5t
        0x54t
        0x56t
        0x74t
        0x44t
        0xbt
        0x23t
        0x4et
        0x52t
        0x5ct
        0x58t
        0x3t
        0x0t
        0x51t
        0x5ft
        0x5ct
        0x40t
        0x1bt
    .end array-data

    nop

    :array_11
    .array-data 1
        0x79t
        0x5bt
        0x42t
        0x5ct
        0x11t
        0x56t
        0x51t
        0x59t
        0x16t
        0x5ct
        0x11t
        0x4at
        0x5ft
        0x47t
        0x16t
        0x56t
        0x0t
        0x5bt
        0x45t
        0x47t
        0x44t
        0x5ct
        0x7t
        0x16t
        0x10t
        0x65t
        0x5at
        0x5ct
        0x2t
        0x4bt
        0x55t
        0x15t
        0x45t
        0x5ct
        0x6t
        0x18t
        0x5ct
        0x5at
        0x51t
        0x4at
        0x43t
        0x5et
        0x5ft
        0x47t
        0x16t
        0x5dt
        0x6t
        0x4ct
        0x51t
        0x5ct
        0x5at
        0x5ct
        0x7t
        0x18t
        0x59t
        0x5bt
        0x50t
        0x56t
        0x11t
        0x55t
        0x51t
        0x41t
        0x5ft
        0x56t
        0xdt
    .end array-data

    nop

    :array_12
    .array-data 1
        0x23t
        0xet
        0xct
        0x57t
        0x5bt
        0x5ct
        0x25t
        0x11t
        0xat
        0x71t
        0x41t
        0x58t
        0xdt
        0xdt
        0x2t
        0x52t
        0x5et
        0x55t
        0xdt
        0x15t
        0x1at
    .end array-data

    nop

    :array_13
    .array-data 1
        0x28t
        0x52t
        0x41t
        0x12t
        0xdt
        0x17t
        0xdt
        0x17t
        0x50t
        0x17t
        0x10t
        0xat
        0x14t
        0x17t
        0x5at
        0x6t
        0x1t
        0x10t
        0x14t
        0x45t
        0x50t
        0x1t
        0x4ct
        0x45t
        0x36t
        0x5bt
        0x50t
        0x4t
        0x11t
        0x0t
        0x46t
        0x45t
        0x50t
        0x11t
        0x10t
        0x1ct
        0x46t
        0x45t
        0x50t
        0x14t
        0x17t
        0x0t
        0x15t
        0x43t
        0x15t
        0x9t
        0x3t
        0x11t
        0x3t
        0x45t
        0x1bt
    .end array-data

    :array_14
    .array-data 1
        0x50t
        0x56t
        0x8t
        0x5et
        0x56t
        0xdt
        0x6ct
        0x5et
        0xat
        0x5ct
        0x5et
        0xft
        0x56t
        0x66t
        0x15t
        0x5ft
        0x58t
        0x1at
        0x6ct
        0x4at
        0x0t
        0x41t
        0x4ft
        0xat
        0x50t
        0x5ct
        0x16t
        0x6ct
        0x57t
        0x6t
        0x47t
        0x4et
        0xat
        0x41t
        0x52t
        0x3ct
        0x56t
        0x4bt
        0x17t
        0x5ct
        0x4bt
        0x3ct
        0x47t
        0x50t
        0x11t
        0x5ft
        0x5ct
    .end array-data

    :array_15
    .array-data 1
        0x74t
        0xdt
        0x5at
        0x2t
        0xat
        0x53t
        0x72t
        0x12t
        0x5ct
        0x24t
        0x10t
        0x57t
        0x5at
        0xet
        0x54t
        0x7t
        0xft
        0x5at
        0x5at
        0x16t
        0x4ct
    .end array-data

    nop

    :array_16
    .array-data 1
        0x27t
        0x59t
        0x46t
        0xct
        0xdt
        0x4et
        0x7t
        0x5bt
        0xft
        0x1t
        0x43t
        0x59t
        0x5t
        0x54t
        0x9t
        0x10t
        0xdt
        0x4ct
        0x46t
        0x40t
        0x7t
        0x16t
        0x43t
        0x4bt
        0x16t
        0x52t
        0x5t
        0xct
        0x5t
        0x51t
        0x3t
        0x53t
        0x46t
        0x12t
        0xbt
        0x5dt
        0x8t
        0x17t
        0x5t
        0xat
        0xdt
        0x56t
        0x3t
        0x54t
        0x12t
        0xct
        0xdt
        0x5ft
        0x48t
        0x17t
        0x36t
        0x9t
        0x6t
        0x59t
        0x15t
        0x52t
        0x46t
        0x15t
        0x11t
        0x57t
        0x10t
        0x5et
        0x2t
        0x0t
        0x43t
        0x59t
        0x46t
        0x41t
        0x7t
        0x9t
        0xat
        0x5ct
        0x46t
        0x56t
        0x5t
        0x6t
        0xct
        0x4dt
        0x8t
        0x43t
        0x48t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x52t
        0xet
        0xbt
        0x5at
        0xat
        0xft
        0x6et
        0x6t
        0x9t
        0x58t
        0x2t
        0xdt
        0x54t
        0x3et
        0x16t
        0x5bt
        0x4t
        0x18t
        0x6et
        0x12t
        0x3t
        0x45t
        0x13t
        0x8t
        0x52t
        0x4t
        0x15t
        0x68t
        0xct
        0xft
        0x47t
        0x0t
        0xat
        0x5et
        0x1t
        0x3et
        0x50t
        0x2t
        0x5t
        0x58t
        0x10t
        0xft
        0x45t
        0x3et
        0x12t
        0x5et
        0x11t
        0xdt
        0x54t
    .end array-data
.end method

.method private static zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/common/internal/zac;->zaa:Landroidx/collection/SimpleArrayMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/common/internal/zac;->zab:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->clear()V

    sput-object v0, Lcom/google/android/gms/common/internal/zac;->zab:Ljava/util/Locale;

    :cond_0
    invoke-virtual {v2, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "874ac1"

    const-wide/32 v6, 0x21308d9d

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x16

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "3b3786"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "3585cf"

    const v5, -0x31549843

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "3f6d9a"

    const v5, 0x4ef4358a    # 2.0485747E9f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x14

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "e5fb87"

    const-wide/32 v6, -0x410cba7d

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v4, "f9dce3"

    const-wide v6, -0x3e3de41335000000L    # -6.07639958E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :array_0
    .array-data 1
        0x4bt
        0x43t
        0x46t
        0x8t
        0xdt
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0xdt
        0x5et
        0x19t
        0x5ft
        0x59t
        0x5ct
        0x5t
        0x5ft
        0x52t
        0x16t
        0x57t
        0x5dt
        0x6t
        0x41t
        0x58t
        0x51t
        0x52t
        0x1dt
        0x5t
        0x5et
        0x44t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7et
        0x5ct
        0x4bt
        0x46t
        0xat
        0x8t
        0x54t
        0x15t
        0x4at
        0x50t
        0x10t
        0x9t
        0x46t
        0x47t
        0x5bt
        0x50t
        0x59t
        0x46t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x74t
        0x9t
        0x59t
        0x3t
        0x55t
        0x4t
        0x72t
        0x16t
        0x5ft
        0x25t
        0x4ft
        0x0t
        0x5at
        0xat
        0x57t
        0x6t
        0x50t
        0xdt
        0x5at
        0x12t
        0x4ft
    .end array-data

    nop

    :array_4
    .array-data 1
        0x22t
        0x5at
        0x12t
        0x42t
        0x5dt
        0x5at
        0x15t
        0x41t
        0x1ft
        0x42t
        0x4at
        0x52t
        0x16t
        0x5at
        0x13t
        0x10t
        0x5bt
        0x52t
        0x5ft
        0x15t
    .end array-data

    :array_5
    .array-data 1
        0x21t
        0x56t
        0xbt
        0x4t
        0x9t
        0x56t
        0x27t
        0x49t
        0xdt
        0x22t
        0x13t
        0x52t
        0xft
        0x55t
        0x5t
        0x1t
        0xct
        0x5ft
        0xft
        0x4dt
        0x1dt
    .end array-data
.end method
