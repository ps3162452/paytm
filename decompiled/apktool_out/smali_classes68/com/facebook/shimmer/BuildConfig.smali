.class public final Lcom/facebook/shimmer/BuildConfig;
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
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "5e4d43"

    const v2, -0x31cde004

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/shimmer/BuildConfig;->APPLICATION_ID:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c3dbdd"

    const-wide v2, -0x3e21b19b3c800000L    # -2.033816334E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/shimmer/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    new-array v0, v4, [B

    const-string v1, "a6cc84"

    const-wide v2, 0x41b5856e85000000L    # 3.61066117E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/shimmer/BuildConfig;->FLAVOR:Ljava/lang/String;

    new-array v0, v4, [B

    const-string v1, "d9da04"

    const/4 v2, 0x1

    invoke-static {v0, v1, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/shimmer/BuildConfig;->VERSION_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x56t
        0xat
        0x59t
        0x4at
        0x52t
        0x52t
        0x56t
        0x0t
        0x56t
        0xbt
        0x5bt
        0x58t
        0x1bt
        0x16t
        0x5ct
        0xdt
        0x59t
        0x5et
        0x50t
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x11t
        0x56t
        0x8t
        0x7t
        0x5t
        0x17t
        0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
