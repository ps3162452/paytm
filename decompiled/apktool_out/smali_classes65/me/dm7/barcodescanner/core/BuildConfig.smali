.class public final Lme/dm7/barcodescanner/core/BuildConfig;
.super Ljava/lang/Object;


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String;

.field public static final BUILD_TYPE:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String;

.field public static final VERSION_CODE:I = 0xb8

.field public static final VERSION_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b3e746"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/dm7/barcodescanner/core/BuildConfig;->APPLICATION_ID:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "8f4833"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/dm7/barcodescanner/core/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    new-array v0, v2, [B

    const-string v1, "d31ca7"

    const/16 v2, 0x6149

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/dm7/barcodescanner/core/BuildConfig;->FLAVOR:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "422447"

    const v2, 0x4e7e8262

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/dm7/barcodescanner/core/BuildConfig;->VERSION_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0xft
        0x56t
        0x4bt
        0x53t
        0x59t
        0x1t
        0x4ct
        0x51t
        0x4t
        0x45t
        0x57t
        0x59t
        0x6t
        0x56t
        0x16t
        0x54t
        0x55t
        0x58t
        0xct
        0x56t
        0x17t
        0x19t
        0x57t
        0x59t
        0x10t
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4at
        0x3t
        0x58t
        0x5dt
        0x52t
        0x40t
        0x5dt
    .end array-data

    :array_2
    .array-data 1
        0x5t
        0x1ct
        0xat
        0x1at
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
