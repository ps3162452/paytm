.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final API_NOT_CONNECTED:I = 0x11

.field public static final CANCELED:I = 0x10

.field public static final CONNECTION_SUSPENDED_DURING_CALL:I = 0x14

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RECONNECTION_TIMED_OUT:I = 0x16

.field public static final RECONNECTION_TIMED_OUT_DURING_UPDATE:I = 0x15

.field public static final REMOTE_EXCEPTION:I = 0x13

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 5

    const/16 v4, 0xb

    const/4 v1, 0x7

    const/16 v0, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c81203"

    const v3, -0x3162a3eb    # -1.3200288E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "37e071"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "e7de9f"

    const-wide/32 v2, 0x13572b17

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "976f4d"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "8ab2e7"

    const-wide v2, 0x41ac58c63e000000L    # 2.37789983E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-array v0, v4, [B

    fill-array-data v0, :array_5

    const-string v1, "e173a2"

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "983f06"

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "230c88"

    invoke-static {v0, v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    new-array v0, v1, [B

    fill-array-data v0, :array_8

    const-string v1, "e60406"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    new-array v0, v4, [B

    fill-array-data v0, :array_9

    const-string v1, "7df9ad"

    const-wide/32 v2, 0x7bf7c023

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "68dc7b"

    const/16 v2, 0x2390

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "4f384a"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "0365e8"

    const-wide/32 v2, -0x6dc61f75

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v1, "b9d256"

    const-wide v2, -0x3e28a21240400000L    # -1.568126719E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "7b3caf"

    const v2, 0x4e871bcd

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "9cd84c"

    const-wide/32 v2, -0x77d47551

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    new-array v0, v0, [B

    fill-array-data v0, :array_10

    const-string v1, "d65d79"

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    new-array v0, v0, [B

    fill-array-data v0, :array_11

    const-string v1, "de3452"

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_12
    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    const-string v1, "65dd1c"

    const-wide/32 v2, -0x2bd003e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    new-array v0, v1, [B

    fill-array-data v0, :array_13

    const-string v1, "737248"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    const-string v1, "9ec804"

    const-wide v2, 0x41cd8da5b2000000L    # 9.91644516E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
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
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        0x56t
        0x5at
        0x5ct
        0x5ft
        0x44t
        0xdt
        0x18t
        0x42t
        0x46t
        0x51t
        0x47t
        0x16t
        0x4bt
        0x11t
        0x51t
        0x5ft
        0x57t
        0x6t
        0x2t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0x72t
        0x26t
        0x7ft
        0x79t
        0x7ft
        0x76t
        0x74t
        0x31t
        0x79t
        0x78t
        0x7ft
        0x6ct
        0x63t
        0x2ct
        0x7dt
        0x72t
        0x75t
        0x6ct
        0x78t
        0x30t
        0x64t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x37t
        0x72t
        0x27t
        0x2at
        0x77t
        0x28t
        0x20t
        0x74t
        0x30t
        0x2ct
        0x76t
        0x28t
        0x3at
        0x63t
        0x2dt
        0x28t
        0x7ct
        0x22t
        0x3at
        0x78t
        0x31t
        0x31t
        0x66t
        0x22t
        0x30t
        0x65t
        0x2dt
        0x2bt
        0x7et
        0x39t
        0x30t
        0x67t
        0x20t
        0x24t
        0x6dt
        0x23t
    .end array-data

    :array_3
    .array-data 1
        0x7at
        0x78t
        0x78t
        0x28t
        0x71t
        0x27t
        0x6dt
        0x7et
        0x79t
        0x28t
        0x6bt
        0x37t
        0x6ct
        0x64t
        0x66t
        0x23t
        0x7at
        0x20t
        0x7ct
        0x73t
        0x69t
        0x22t
        0x61t
        0x36t
        0x70t
        0x79t
        0x71t
        0x39t
        0x77t
        0x25t
        0x75t
        0x7bt
    .end array-data

    :array_4
    .array-data 1
        0x6at
        0x24t
        0x2ft
        0x7dt
        0x31t
        0x72t
        0x67t
        0x24t
        0x3at
        0x71t
        0x20t
        0x67t
        0x6ct
        0x28t
        0x2dt
        0x7ct
    .end array-data

    :array_5
    .array-data 1
        0x21t
        0x74t
        0x76t
        0x77t
        0x3et
        0x71t
        0x29t
        0x78t
        0x72t
        0x7dt
        0x35t
    .end array-data

    :array_6
    .array-data 1
        0x78t
        0x68t
        0x7at
        0x39t
        0x7et
        0x79t
        0x6dt
        0x67t
        0x70t
        0x29t
        0x7et
        0x78t
        0x7ct
        0x7bt
        0x67t
        0x23t
        0x74t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x71t
        0x72t
        0x7et
        0x20t
        0x7dt
        0x74t
        0x77t
        0x77t
    .end array-data

    :array_8
    .array-data 1
        0x31t
        0x7ft
        0x7dt
        0x71t
        0x7ft
        0x63t
        0x31t
    .end array-data

    :array_9
    .array-data 1
        0x7et
        0x2at
        0x32t
        0x7ct
        0x33t
        0x36t
        0x62t
        0x34t
        0x32t
        0x7ct
        0x25t
    .end array-data

    :array_a
    .array-data 1
        0x73t
        0x6at
        0x36t
        0x2ct
        0x65t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x70t
        0x23t
        0x65t
        0x7dt
        0x78t
        0x2et
        0x64t
        0x23t
        0x61t
        0x67t
        0x71t
        0x33t
        0x66t
        0x29t
        0x61t
    .end array-data

    :array_c
    .array-data 1
        0x79t
        0x7dt
        0x62t
        0x70t
        0x37t
        0x76t
        0x71t
        0x7ft
        0x69t
        0x70t
        0x37t
        0x6at
        0x7ft
        0x61t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x2ct
        0x7ct
        0x30t
        0x65t
        0x7at
        0x64t
        0x29t
        0x66t
        0x21t
        0x60t
        0x67t
        0x79t
        0x30t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x65t
        0x27t
        0x60t
        0x2ct
        0x2dt
        0x33t
        0x63t
        0x2bt
        0x7ct
        0x2dt
        0x3et
        0x34t
        0x72t
        0x33t
        0x66t
        0x2at
        0x33t
        0x23t
        0x73t
    .end array-data

    :array_f
    .array-data 1
        0x70t
        0x2dt
        0x32t
        0x79t
        0x78t
        0x2at
        0x7dt
        0x3ct
        0x25t
        0x7bt
        0x77t
        0x2ct
        0x6ct
        0x2dt
        0x30t
    .end array-data

    :array_10
    .array-data 1
        0x37t
        0x7ft
        0x72t
        0x2at
        0x68t
        0x70t
        0x2at
        0x69t
        0x67t
        0x21t
        0x66t
        0x6ct
        0x2dt
        0x64t
        0x70t
        0x20t
    .end array-data

    :array_11
    .array-data 1
        0x37t
        0x20t
        0x61t
        0x62t
        0x7ct
        0x71t
        0x21t
        0x3at
        0x77t
        0x7dt
        0x66t
        0x73t
        0x26t
        0x29t
        0x76t
        0x70t
    .end array-data

    :array_12
    .array-data 1
        0x65t
        0x70t
        0x36t
        0x32t
        0x78t
        0x20t
        0x73t
        0x6at
        0x32t
        0x21t
        0x63t
        0x30t
        0x7ft
        0x7at
        0x2at
        0x3bt
        0x64t
        0x33t
        0x72t
        0x74t
        0x30t
        0x21t
        0x6et
        0x31t
        0x73t
        0x64t
        0x31t
        0x2dt
        0x63t
        0x26t
        0x72t
    .end array-data

    :array_13
    .array-data 1
        0x64t
        0x66t
        0x74t
        0x71t
        0x71t
        0x6bt
        0x64t
    .end array-data

    :array_14
    .array-data 1
        0x6at
        0x30t
        0x20t
        0x7bt
        0x75t
        0x67t
        0x6at
        0x3at
        0x20t
        0x79t
        0x73t
        0x7ct
        0x7ct
    .end array-data
.end method
