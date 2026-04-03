.class public final Lcom/google/firebase/components/BuildConfig;
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

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "41c873"

    const-wide/32 v2, -0x2ccd90d9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/BuildConfig;->APPLICATION_ID:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "ea23b6"

    const v2, -0x31129915

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    const-string v1, "421484"

    const-wide/32 v2, 0x5c8a452e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/BuildConfig;->FLAVOR:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "b54f09"

    const-wide v2, -0x3e30641e14800000L    # -1.060619223E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/BuildConfig;->VERSION_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x5et
        0xet
        0x16t
        0x50t
        0x5ct
        0x5bt
        0x56t
        0xft
        0x5dt
        0x19t
        0x55t
        0x5dt
        0x43t
        0x6t
        0x5at
        0x56t
        0x40t
        0x51t
        0x1ft
        0x0t
        0x57t
        0x5at
        0x43t
        0x5bt
        0x5ft
        0x6t
        0x56t
        0x43t
        0x40t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x17t
        0x4t
        0x5et
        0x56t
        0x3t
        0x45t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x53t
        0x3t
        0x1at
        0x56t
        0x1et
        0x9t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
