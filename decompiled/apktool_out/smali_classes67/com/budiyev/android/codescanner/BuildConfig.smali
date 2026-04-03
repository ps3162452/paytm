.class public final Lcom/budiyev/android/codescanner/BuildConfig;
.super Ljava/lang/Object;


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a76e1a"

    const/16 v2, 0x7e21

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/budiyev/android/codescanner/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "810194"

    const v2, -0x317019bd

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/budiyev/android/codescanner/BuildConfig;->LIBRARY_PACKAGE_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x13t
        0x52t
        0x5at
        0x0t
        0x50t
        0x12t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0x5et
        0x5dt
        0x1ft
        0x5bt
        0x41t
        0x5ct
        0x58t
        0x49t
        0x54t
        0x4ft
        0x1at
        0x59t
        0x5ft
        0x54t
        0x43t
        0x56t
        0x5dt
        0x5ct
        0x1ft
        0x53t
        0x5et
        0x5dt
        0x51t
        0x4bt
        0x52t
        0x51t
        0x5ft
        0x57t
        0x51t
        0x4at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
