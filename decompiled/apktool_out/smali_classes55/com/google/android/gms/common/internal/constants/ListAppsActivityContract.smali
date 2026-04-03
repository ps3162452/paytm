.class public interface abstract Lcom/google/android/gms/common/internal/constants/ListAppsActivityContract;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_APPS:Ljava/lang/String;

.field public static final EXTRA_PRESELECTED_FILTER:Ljava/lang/String;

.field public static final PRESELECTED_FILTER_FITNESS_APPS:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f22491"

    const-wide v2, 0x41df3ae5d0000000L    # 2.095814464E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/constants/ListAppsActivityContract;->ACTION_APPS:Ljava/lang/String;

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "bf96ac"

    const-wide v2, 0x41c5a71ced000000L    # 7.26546906E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/constants/ListAppsActivityContract;->EXTRA_PRESELECTED_FILTER:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x5dt
        0x5ft
        0x1at
        0x5et
        0x5et
        0x9t
        0x55t
        0x5et
        0x51t
        0x17t
        0x50t
        0x8t
        0x56t
        0x40t
        0x5bt
        0x50t
        0x55t
        0x48t
        0x55t
        0x5ft
        0x47t
        0x17t
        0x41t
        0xat
        0x47t
        0x41t
        0x1at
        0x58t
        0x52t
        0x12t
        0x5bt
        0x5dt
        0x5at
        0x17t
        0x7ct
        0x27t
        0x7ct
        0x73t
        0x73t
        0x7ct
        0x6et
        0x27t
        0x62t
        0x62t
        0x67t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x9t
        0x54t
        0x18t
        0x6t
        0xct
        0xdt
        0x1t
        0x55t
        0x53t
        0x4ft
        0x2t
        0xct
        0x2t
        0x4bt
        0x59t
        0x8t
        0x7t
        0x4ct
        0x1t
        0x54t
        0x45t
        0x4ft
        0x6t
        0x1at
        0x12t
        0x4bt
        0x57t
        0x12t
        0x4dt
        0x32t
        0x34t
        0x7ct
        0x65t
        0x24t
        0x2ft
        0x27t
        0x25t
        0x6dt
        0x73t
        0x25t
        0x3ct
        0x24t
        0x2ft
        0x75t
        0x62t
        0x24t
        0x31t
    .end array-data
.end method
