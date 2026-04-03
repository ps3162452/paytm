.class public final Lcom/google/firebase/database/collection/BuildConfig;
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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "496aaa"

    const-wide v2, 0x41da59575a000000L    # 1.768250728E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/collection/BuildConfig;->APPLICATION_ID:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "48be62"

    const-wide/32 v2, 0x5bf93480

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/collection/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    new-array v0, v4, [B

    const-string v1, "0b8f14"

    const-wide v2, -0x3e28288f68800000L    # -1.599980126E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/collection/BuildConfig;->FLAVOR:Ljava/lang/String;

    new-array v0, v4, [B

    const-string v1, "f59da8"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/collection/BuildConfig;->VERSION_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x56t
        0x5bt
        0x4ft
        0x6t
        0xet
        0x5bt
        0x5et
        0x5at
        0x4t
        0x4ft
        0x7t
        0x5dt
        0x4bt
        0x53t
        0x3t
        0x0t
        0x12t
        0x51t
        0x17t
        0x52t
        0x0t
        0x15t
        0x0t
        0x56t
        0x58t
        0x45t
        0x4t
        0x4ft
        0x2t
        0x5bt
        0x55t
        0x5at
        0x4t
        0x2t
        0x15t
        0x5dt
        0x56t
        0x58t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x5dt
        0xet
        0x0t
        0x57t
        0x41t
        0x51t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
