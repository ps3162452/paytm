.class public final Lcom/google/firebase/BuildConfig;
.super Ljava/lang/Object;


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String;

.field public static final BUILD_TYPE:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String;

.field public static final VERSION_CODE:I = -0x1

.field public static final VERSION_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8ee342"

    const v2, 0x4e84f862

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/BuildConfig;->APPLICATION_ID:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "ee699a"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    new-array v0, v3, [B

    const-string v1, "313216"

    const v2, 0x4d85fe0c    # 2.8100237E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/BuildConfig;->FLAVOR:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "05d4e0"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/BuildConfig;->VERSION_NAME:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x5bt
        0xat
        0x8t
        0x1dt
        0x53t
        0x5dt
        0x57t
        0x2t
        0x9t
        0x56t
        0x1at
        0x54t
        0x51t
        0x17t
        0x0t
        0x51t
        0x55t
        0x41t
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x17t
        0x0t
        0x5at
        0x5ct
        0x58t
        0x12t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0xct
        0x4at
        0x7t
        0x4bt
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
