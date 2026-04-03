.class public final Lme/dm7/barcodescanner/zxing/BuildConfig;
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

    const/4 v3, 0x0

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "69af55"

    const v2, -0x31bde873

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/dm7/barcodescanner/zxing/BuildConfig;->APPLICATION_ID:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "17625b"

    const v2, -0x315bfbe4

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/dm7/barcodescanner/zxing/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    new-array v0, v3, [B

    const-string v1, "b24bd5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/dm7/barcodescanner/zxing/BuildConfig;->FLAVOR:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "1cded8"

    const-wide/32 v2, -0x19eef612

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/dm7/barcodescanner/zxing/BuildConfig;->VERSION_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5bt
        0x5ct
        0x4ft
        0x2t
        0x58t
        0x2t
        0x18t
        0x5bt
        0x0t
        0x14t
        0x56t
        0x5at
        0x52t
        0x5ct
        0x12t
        0x5t
        0x54t
        0x5bt
        0x58t
        0x5ct
        0x13t
        0x48t
        0x4ft
        0x4dt
        0x5ft
        0x57t
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x52t
        0x5at
        0x57t
        0x54t
        0x11t
        0x54t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x4dt
        0x5ct
        0x4bt
        0x50t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
