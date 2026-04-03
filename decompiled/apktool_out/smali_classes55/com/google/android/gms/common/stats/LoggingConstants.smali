.class public final Lcom/google/android/gms/common/stats/LoggingConstants;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_WAKE_LOCK_KEY:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zza:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e06a20"

    const v2, 0x4ec7d3a2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/LoggingConstants;->EXTRA_WAKE_LOCK_KEY:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d034eb"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "daf17f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zza:Landroid/content/ComponentName;

    return-void

    :array_0
    .array-data 1
        0x32t
        0x71t
        0x7dt
        0x24t
        0x6dt
        0x7ct
        0x2at
        0x73t
        0x7dt
        0x3et
        0x79t
        0x75t
        0x3ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7t
        0x5ft
        0x5et
        0x1at
        0x2t
        0xdt
        0xbt
        0x57t
        0x5ft
        0x51t
        0x4bt
        0x3t
        0xat
        0x54t
        0x41t
        0x5bt
        0xct
        0x6t
        0x4at
        0x57t
        0x5et
        0x47t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7t
        0xet
        0xbt
        0x1ft
        0x50t
        0x9t
        0xbt
        0x6t
        0xat
        0x54t
        0x19t
        0x7t
        0xat
        0x5t
        0x14t
        0x5et
        0x5et
        0x2t
        0x4at
        0x6t
        0xbt
        0x42t
        0x19t
        0x5t
        0xbt
        0xct
        0xbt
        0x5et
        0x59t
        0x48t
        0x17t
        0x15t
        0x7t
        0x45t
        0x44t
        0x48t
        0x23t
        0xct
        0x15t
        0x72t
        0x58t
        0x14t
        0x1t
        0x32t
        0x12t
        0x50t
        0x43t
        0x15t
        0x37t
        0x4t
        0x14t
        0x47t
        0x5et
        0x5t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
