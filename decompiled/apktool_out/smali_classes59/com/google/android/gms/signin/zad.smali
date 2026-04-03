.class public final Lcom/google/android/gms/signin/zad;
.super Ljava/lang/Object;


# static fields
.field public static final zaa:Lcom/google/android/gms/common/api/Api$ClientKey;

.field public static final zab:Lcom/google/android/gms/common/api/Api$ClientKey;

.field public static final zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field static final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field public static final zae:Lcom/google/android/gms/common/api/Scope;

.field public static final zaf:Lcom/google/android/gms/common/api/Scope;

.field public static final zag:Lcom/google/android/gms/common/api/Api;

.field public static final zah:Lcom/google/android/gms/common/api/Api;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/zad;->zaa:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v1, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v1, Lcom/google/android/gms/signin/zad;->zab:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v2, Lcom/google/android/gms/signin/zaa;

    invoke-direct {v2}, Lcom/google/android/gms/signin/zaa;-><init>()V

    sput-object v2, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v3, Lcom/google/android/gms/signin/zab;

    invoke-direct {v3}, Lcom/google/android/gms/signin/zab;-><init>()V

    sput-object v3, Lcom/google/android/gms/signin/zad;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "77101a"

    const/16 v7, -0x71ea

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/signin/zad;->zae:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const/4 v5, 0x5

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "9d5c81"

    const/16 v7, 0x1daf

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/signin/zad;->zaf:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Api;

    const/16 v5, 0xa

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "242297"

    const v7, -0x334cd247    # -9.394119E7f

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v4, Lcom/google/android/gms/signin/zad;->zag:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v4, "7b47ec"

    const-wide v6, -0x3e53dffe3c000000L    # -2.35929826E8

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/android/gms/signin/zad;->zah:Lcom/google/android/gms/common/api/Api;

    return-void

    nop

    :array_0
    .array-data 1
        0x47t
        0x45t
        0x5et
        0x56t
        0x58t
        0xdt
        0x52t
    .end array-data

    :array_1
    .array-data 1
        0x5ct
        0x9t
        0x54t
        0xat
        0x54t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x61t
        0x5dt
        0x55t
        0x5ct
        0x70t
        0x59t
        0x1ct
        0x75t
        0x62t
        0x7bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x64t
        0xbt
        0x53t
        0x59t
        0x2ct
        0xdt
        0x19t
        0x2bt
        0x7at
        0x63t
        0x20t
        0x31t
        0x79t
        0x23t
        0x78t
        0x68t
        0x24t
        0x33t
        0x7et
    .end array-data
.end method
