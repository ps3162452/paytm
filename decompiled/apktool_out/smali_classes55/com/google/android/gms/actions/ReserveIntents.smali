.class public Lcom/google/android/gms/actions/ReserveIntents;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_RESERVE_TAXI_RESERVATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4f85c5"

    const-wide v2, 0x41c0fdaa95800000L    # 5.70119467E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/ReserveIntents;->ACTION_RESERVE_TAXI_RESERVATION:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x9t
        0x55t
        0x1bt
        0x4t
        0x5at
        0x5bt
        0x1t
        0x54t
        0x50t
        0x4dt
        0x54t
        0x5at
        0x2t
        0x4at
        0x5at
        0xat
        0x51t
        0x1at
        0x1t
        0x55t
        0x46t
        0x4dt
        0x54t
        0x57t
        0x12t
        0x51t
        0x5at
        0xdt
        0x46t
        0x1at
        0x34t
        0x7dt
        0x66t
        0x26t
        0x67t
        0x62t
        0x23t
        0x67t
        0x61t
        0x22t
        0x6dt
        0x7dt
        0x39t
        0x6at
        0x70t
        0x30t
        0x70t
        0x66t
        0x30t
        0x79t
        0x61t
        0x2at
        0x7at
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
