.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final API_DISABLED:I = 0x17

.field public static final API_DISABLED_FOR_CONNECTION:I = 0x18

.field public static final API_UNAVAILABLE:I = 0x10

.field public static final CANCELED:I = 0xd

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xf

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_ACTIVITY_NOT_FOUND:I = 0x16

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final RESTRICTED_PROFILE:I = 0x14

.field public static final RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_MISSING_PERMISSION:I = 0x13

.field public static final SERVICE_UPDATING:I = 0x12

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_FAILED:I = 0x11

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xe

.field public static final UNKNOWN:I = -0x1


# instance fields
.field final zza:I

.field private final zzb:I

.field private final zzc:Landroid/app/PendingIntent;

.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->zza:I

    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static zza(I)Ljava/lang/String;
    .locals 6

    const/16 v2, 0x10

    const/4 v1, 0x7

    const/16 v0, 0xf

    const/4 v5, 0x1

    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9f946e"

    const v3, 0x4ef18a97    # 2.0261958E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v1, v5, [B

    const/16 v2, 0x1e

    aput-byte v2, v1, v4

    const-string v2, "7d457b"

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "31714d"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "6f5e3e"

    const-wide/32 v2, -0x75575da8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "3b77c8"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "85e5dd"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "972610"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "8cfac2"

    const/16 v2, 0x2a22

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "e6f7d1"

    const-wide/32 v2, -0x681efaec

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "3548e1"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    new-array v0, v2, [B

    fill-array-data v0, :array_9

    const-string v1, "056c6c"

    const-wide v2, -0x3e5c4b7194000000L    # -1.65300022E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "856611"

    const v2, -0x3353856e    # -9.042856E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "2a8e2c"

    const-wide/32 v2, -0x2a443a6b

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "9e1ab9"

    const-wide v2, -0x3e491eb6f3000000L    # -3.83863053E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v1, [B

    fill-array-data v0, :array_d

    const-string v1, "92899c"

    const v2, 0x4caf3674    # 9.186192E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "593585"

    const v2, 0x4e5c0e6e    # 9.229833E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "675e00"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_f
    new-array v0, v0, [B

    fill-array-data v0, :array_10

    const-string v1, "03ed66"

    const/16 v2, -0x18e8

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_10
    new-array v0, v0, [B

    fill-array-data v0, :array_11

    const-string v1, "121b5d"

    const/16 v2, 0x4a54

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    const-string v1, "23a2e8"

    const-wide v2, -0x3e26e62432400000L    # -1.684500279E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_13

    const-string v1, "2b5ecf"

    const-wide/32 v2, -0x237a6b09

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    const-string v1, "1b2930"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    new-array v0, v0, [B

    fill-array-data v0, :array_15

    const-string v1, "d717ac"

    const v2, 0x4e8562fe    # 1.1189286E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    new-array v0, v2, [B

    fill-array-data v0, :array_16

    const-string v1, "c921ef"

    const-wide/32 v2, -0x12dea

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    new-array v0, v2, [B

    fill-array-data v0, :array_17

    const-string v1, "797b37"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    const-string v1, "1fa176"

    const-wide/32 v2, 0x13e58d60

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    new-array v0, v0, [B

    fill-array-data v0, :array_19

    const-string v1, "dd8eb3"

    const v2, -0x317d5faf

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    new-array v0, v1, [B

    fill-array-data v0, :array_1a

    const-string v1, "0b13d9"

    const/16 v2, -0x5006

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    new-array v0, v1, [B

    fill-array-data v0, :array_1b

    const-string v1, "14402c"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1a
        0x0 -> :sswitch_19
        0x1 -> :sswitch_18
        0x2 -> :sswitch_17
        0x3 -> :sswitch_16
        0x4 -> :sswitch_15
        0x5 -> :sswitch_14
        0x6 -> :sswitch_13
        0x7 -> :sswitch_12
        0x8 -> :sswitch_11
        0x9 -> :sswitch_10
        0xa -> :sswitch_f
        0xb -> :sswitch_e
        0xd -> :sswitch_d
        0xe -> :sswitch_c
        0xf -> :sswitch_b
        0x10 -> :sswitch_a
        0x11 -> :sswitch_9
        0x12 -> :sswitch_8
        0x13 -> :sswitch_7
        0x14 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x17 -> :sswitch_3
        0x18 -> :sswitch_2
        0x63 -> :sswitch_1
        0x5dc -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x6ct
        0x28t
        0x72t
        0x7at
        0x79t
        0x32t
        0x77t
        0x39t
        0x7ct
        0x66t
        0x64t
        0x2at
        0x6bt
        0x39t
        0x7at
        0x7bt
        0x72t
        0x20t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x63t
        0x7et
        0x67t
        0x71t
        0x3bt
        0x76t
        0x69t
        0x63t
        0x74t
        0x66t
        0x2at
        0x72t
        0x7dt
        0x68t
        0x62t
        0x60t
        0x2bt
        0x61t
        0x70t
        0x70t
        0x74t
        0x6bt
        0x36t
        0x76t
        0x60t
        0x62t
        0x78t
        0x66t
        0x21t
        0x77t
    .end array-data

    :array_2
    .array-data 1
        0x63t
        0x28t
        0x73t
        0x2ct
        0x7dt
        0x2ct
        0x65t
        0x2et
        0x70t
        0x21t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x72t
        0x32t
        0x7et
        0x68t
        0x27t
        0x71t
        0x60t
        0x23t
        0x75t
        0x7bt
        0x26t
        0x7ct
        0x6ct
        0x24t
        0x78t
        0x65t
        0x3ct
        0x7bt
        0x7ct
        0x2ct
        0x79t
        0x72t
        0x20t
        0x6ct
        0x7at
        0x2dt
        0x79t
    .end array-data

    :array_4
    .array-data 1
        0x79t
        0x65t
        0x2ct
        0x6at
        0x20t
        0x2dt
        0x6bt
        0x74t
        0x27t
        0x79t
        0x21t
        0x20t
    .end array-data

    :array_5
    .array-data 1
        0x6bt
        0x72t
        0x61t
        0x79t
        0x7dt
        0x65t
        0x6dt
        0x7et
        0x7dt
        0x78t
        0x6et
        0x71t
        0x7at
        0x63t
        0x7bt
        0x60t
        0x78t
        0x64t
        0x60t
        0x68t
        0x7ct
        0x79t
        0x65t
        0x6ft
        0x7ft
        0x78t
        0x67t
        0x78t
        0x75t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x79t
        0x33t
        0x2ft
        0x3et
        0x35t
        0x77t
        0x6at
        0x30t
        0x2ft
        0x2et
        0x2dt
        0x6dt
        0x6dt
        0x33t
        0x22t
        0x20t
        0x37t
        0x77t
        0x67t
        0x31t
        0x23t
        0x30t
        0x36t
        0x7bt
        0x6at
        0x26t
        0x22t
    .end array-data

    :array_7
    .array-data 1
        0x37t
        0x73t
        0x35t
        0x63t
        0x36t
        0x78t
        0x26t
        0x62t
        0x23t
        0x73t
        0x3bt
        0x61t
        0x37t
        0x79t
        0x20t
        0x7et
        0x28t
        0x74t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x60t
        0x70t
        0x66t
        0x6et
        0x2ct
        0x72t
        0x76t
        0x6at
        0x79t
        0x71t
        0x36t
        0x62t
        0x7at
        0x7bt
        0x73t
        0x67t
        0x35t
        0x74t
        0x61t
        0x78t
        0x7dt
        0x6bt
        0x36t
        0x78t
        0x7ct
        0x7bt
    .end array-data

    nop

    :array_9
    .array-data 1
        0x63t
        0x70t
        0x64t
        0x35t
        0x7ft
        0x20t
        0x75t
        0x6at
        0x63t
        0x33t
        0x72t
        0x22t
        0x64t
        0x7ct
        0x78t
        0x24t
    .end array-data

    :array_a
    .array-data 1
        0x6bt
        0x7ct
        0x71t
        0x78t
        0x6et
        0x78t
        0x76t
        0x6at
        0x70t
        0x77t
        0x78t
        0x7dt
        0x7dt
        0x71t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x73t
        0x31t
        0x71t
        0x3at
        0x67t
        0x2dt
        0x73t
        0x37t
        0x79t
        0x2ct
        0x7et
        0x22t
        0x70t
        0x2dt
        0x7dt
    .end array-data

    :array_c
    .array-data 1
        0x70t
        0x2bt
        0x65t
        0x24t
        0x30t
        0x6bt
        0x6ct
        0x35t
        0x65t
        0x24t
        0x26t
    .end array-data

    :array_d
    .array-data 1
        0x6dt
        0x7bt
        0x75t
        0x7ct
        0x76t
        0x36t
        0x6dt
    .end array-data

    :array_e
    .array-data 1
        0x76t
        0x78t
        0x7dt
        0x76t
        0x7dt
        0x79t
        0x70t
        0x7dt
    .end array-data

    :array_f
    .array-data 1
        0x7at
        0x7et
        0x76t
        0x20t
        0x7et
        0x63t
        0x73t
        0x68t
        0x76t
        0x2dt
        0x75t
        0x73t
        0x7dt
        0x68t
        0x73t
        0x24t
        0x79t
        0x7ct
        0x73t
        0x73t
    .end array-data

    :array_10
    .array-data 1
        0x74t
        0x76t
        0x33t
        0x21t
        0x7at
        0x79t
        0x60t
        0x76t
        0x37t
        0x3bt
        0x73t
        0x64t
        0x62t
        0x7ct
        0x37t
    .end array-data

    :array_11
    .array-data 1
        0x62t
        0x77t
        0x63t
        0x34t
        0x7ct
        0x27t
        0x74t
        0x6dt
        0x78t
        0x2ct
        0x63t
        0x25t
        0x7dt
        0x7bt
        0x75t
    .end array-data

    :array_12
    .array-data 1
        0x7bt
        0x7dt
        0x35t
        0x77t
        0x37t
        0x76t
        0x73t
        0x7ft
        0x3et
        0x77t
        0x37t
        0x6at
        0x7dt
        0x61t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x7ct
        0x27t
        0x61t
        0x32t
        0x2ct
        0x34t
        0x79t
        0x3dt
        0x70t
        0x37t
        0x31t
        0x29t
        0x60t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x63t
        0x27t
        0x61t
        0x76t
        0x7ft
        0x65t
        0x65t
        0x2bt
        0x7dt
        0x77t
        0x6ct
        0x62t
        0x74t
        0x33t
        0x67t
        0x70t
        0x61t
        0x75t
        0x75t
    .end array-data

    :array_15
    .array-data 1
        0x2dt
        0x79t
        0x67t
        0x76t
        0x2dt
        0x2at
        0x20t
        0x68t
        0x70t
        0x74t
        0x22t
        0x2ct
        0x31t
        0x79t
        0x65t
    .end array-data

    :array_16
    .array-data 1
        0x30t
        0x70t
        0x75t
        0x7ft
        0x3at
        0x2ft
        0x2dt
        0x66t
        0x60t
        0x74t
        0x34t
        0x33t
        0x2at
        0x6bt
        0x77t
        0x75t
    .end array-data

    :array_17
    .array-data 1
        0x64t
        0x7ct
        0x65t
        0x34t
        0x7at
        0x74t
        0x72t
        0x66t
        0x73t
        0x2bt
        0x60t
        0x76t
        0x75t
        0x75t
        0x72t
        0x26t
    .end array-data

    :array_18
    .array-data 1
        0x62t
        0x23t
        0x33t
        0x67t
        0x7et
        0x75t
        0x74t
        0x39t
        0x37t
        0x74t
        0x65t
        0x65t
        0x78t
        0x29t
        0x2ft
        0x6et
        0x62t
        0x66t
        0x75t
        0x27t
        0x35t
        0x74t
        0x68t
        0x64t
        0x74t
        0x37t
        0x34t
        0x78t
        0x65t
        0x73t
        0x75t
    .end array-data

    :array_19
    .array-data 1
        0x37t
        0x21t
        0x6at
        0x33t
        0x2bt
        0x70t
        0x21t
        0x3bt
        0x75t
        0x2ct
        0x31t
        0x60t
        0x2dt
        0x2at
        0x7ft
    .end array-data

    :array_1a
    .array-data 1
        0x63t
        0x37t
        0x72t
        0x70t
        0x21t
        0x6at
        0x63t
    .end array-data

    :array_1b
    .array-data 1
        0x64t
        0x7at
        0x7ft
        0x7et
        0x7dt
        0x34t
        0x7ft
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/ConnectionResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasResolution()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v4, 0xa

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v2, "8119f3"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    invoke-static {v2}, Lcom/google/android/gms/common/ConnectionResult;->zza(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "8cddb3"

    const-wide/32 v4, -0x6d723705

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "f9a9d2"

    const-wide/32 v4, 0x42f4eb3b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x4bt
        0x45t
        0x50t
        0x4dt
        0x13t
        0x40t
        0x7bt
        0x5et
        0x55t
        0x5ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4at
        0x6t
        0x17t
        0xbt
        0xet
        0x46t
        0x4ct
        0xat
        0xbt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0xbt
        0x5ct
        0x12t
        0x4at
        0x5t
        0x55t
        0x3t
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zza:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
