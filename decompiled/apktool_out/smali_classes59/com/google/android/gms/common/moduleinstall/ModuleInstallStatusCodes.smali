.class public final Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final INSUFFICIENT_STORAGE:I = 0xb3b3

.field public static final MODULE_NOT_FOUND:I = 0xb3b2

.field public static final NOT_ALLOWED_MODULE:I = 0xb3b1

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN_MODULE:I = 0xb3b0


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 4

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e158b6"

    const/16 v2, 0x5a5e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "123813"

    const-wide v2, 0x41b098ae5f000000L    # 2.78441567E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "8af8fc"

    const-wide v2, 0x41c8369bd4800000L    # 8.12464041E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "17fe61"

    const-wide v2, -0x3e5ccca3a4000000L    # -1.61066542E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb3b0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x2ct
        0x7ft
        0x66t
        0x6dt
        0x24t
        0x70t
        0x2ct
        0x72t
        0x7ct
        0x7dt
        0x2ct
        0x62t
        0x3at
        0x62t
        0x61t
        0x77t
        0x30t
        0x77t
        0x22t
        0x74t
    .end array-data

    :array_1
    .array-data 1
        0x7ct
        0x7dt
        0x77t
        0x6dt
        0x7dt
        0x76t
        0x6et
        0x7ct
        0x7ct
        0x6ct
        0x6et
        0x75t
        0x7et
        0x67t
        0x7dt
        0x7ct
    .end array-data

    :array_2
    .array-data 1
        0x76t
        0x2et
        0x32t
        0x67t
        0x27t
        0x2ft
        0x74t
        0x2et
        0x31t
        0x7dt
        0x22t
        0x3ct
        0x75t
        0x2et
        0x22t
        0x6dt
        0x2at
        0x26t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x64t
        0x79t
        0x2dt
        0x2bt
        0x79t
        0x66t
        0x7ft
        0x68t
        0x2bt
        0x2at
        0x72t
        0x64t
        0x7dt
        0x72t
    .end array-data
.end method
