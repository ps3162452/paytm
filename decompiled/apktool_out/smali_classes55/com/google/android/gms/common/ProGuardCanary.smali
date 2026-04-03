.class final Lcom/google/android/gms/common/ProGuardCanary;
.super Ljava/lang/Object;


# static fields
.field static final CANARY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e6613e"

    const-wide v2, -0x3e407403fb000000L    # -5.29267717E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/ProGuardCanary;->CANARY:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x5bt
        0x45t
        0x6et
        0x43t
        0x17t
        0xat
        0x51t
        0x43t
        0x50t
        0x41t
        0x1t
        0x3at
        0x55t
        0x57t
        0x5ft
        0x52t
        0x17t
        0x1ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
