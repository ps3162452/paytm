.class public final Lcom/airbnb/lottie/BuildConfig;
.super Ljava/lang/Object;


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b0bd63"

    const-wide/32 v2, 0x3b84ebf6

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "66244f"

    const/16 v2, -0x2127

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/BuildConfig;->LIBRARY_PACKAGE_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x55t
        0xet
        0x1t
        0x57t
        0x40t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x55t
        0x59t
        0x5ft
        0x1at
        0x55t
        0xft
        0x44t
        0x54t
        0x5ct
        0x56t
        0x1at
        0xat
        0x59t
        0x42t
        0x46t
        0x5dt
        0x51t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
