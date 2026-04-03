.class public final Lcom/google/firebase/database/BuildConfig;
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

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f27a0e"

    const-wide/32 v2, -0x37333e29

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/BuildConfig;->APPLICATION_ID:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "6dcafc"

    const-wide v2, 0x41d6e34fa3400000L    # 1.535983245E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    const-string v1, "bdc46c"

    const-wide/32 v2, -0x2c5173a4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/BuildConfig;->FLAVOR:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "7dfca2"

    const-wide v2, -0x3e2f92debc800000L    # -1.102349582E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/BuildConfig;->VERSION_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x5dt
        0x5at
        0x4ft
        0x57t
        0xat
        0x9t
        0x55t
        0x5bt
        0x4t
        0x1et
        0x3t
        0xft
        0x40t
        0x52t
        0x3t
        0x51t
        0x16t
        0x3t
        0x1ct
        0x53t
        0x0t
        0x44t
        0x4t
        0x4t
        0x53t
        0x44t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x1t
        0xft
        0x4t
        0x7t
        0x10t
        0x53t
    .end array-data

    :array_2
    .array-data 1
        0x6t
        0x5dt
        0x48t
        0x50t
        0x4ft
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
