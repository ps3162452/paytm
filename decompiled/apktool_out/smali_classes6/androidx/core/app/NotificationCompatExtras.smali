.class public final Landroidx/core/app/NotificationCompatExtras;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_ACTION_EXTRAS:Ljava/lang/String;

.field public static final EXTRA_GROUP_KEY:Ljava/lang/String;

.field public static final EXTRA_GROUP_SUMMARY:Ljava/lang/String;

.field public static final EXTRA_LOCAL_ONLY:Ljava/lang/String;

.field public static final EXTRA_REMOTE_INPUTS:Ljava/lang/String;

.field public static final EXTRA_SORT_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x1c

    const/4 v4, 0x0

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "77f791"

    const/16 v2, -0x3f9b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatExtras;->EXTRA_ACTION_EXTRAS:Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "a65e99"

    const-wide/32 v2, -0x1eebc4cc

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatExtras;->EXTRA_GROUP_KEY:Ljava/lang/String;

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "f6eb7b"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatExtras;->EXTRA_GROUP_SUMMARY:Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "38eb5c"

    const-wide v2, -0x3e2fd5135ec00000L    # -1.084994181E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatExtras;->EXTRA_LOCAL_ONLY:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_4

    const-string v1, "18123d"

    const-wide v2, -0x3e47298e20000000L    # -4.1670704E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatExtras;->EXTRA_REMOTE_INPUTS:Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "7a7052"

    const-wide/32 v2, 0x2dfcc28

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/NotificationCompatExtras;->EXTRA_SORT_KEY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x56t
        0x59t
        0x2t
        0x45t
        0x56t
        0x58t
        0x53t
        0x19t
        0x15t
        0x42t
        0x49t
        0x41t
        0x58t
        0x45t
        0x12t
        0x19t
        0x58t
        0x52t
        0x43t
        0x5et
        0x9t
        0x59t
        0x7ct
        0x49t
        0x43t
        0x45t
        0x7t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x58t
        0x51t
        0x17t
        0x56t
        0x50t
        0x5t
        0x18t
        0x46t
        0x10t
        0x49t
        0x49t
        0xet
        0x44t
        0x41t
        0x4bt
        0x5et
        0x4bt
        0xet
        0x43t
        0x45t
        0x2et
        0x5ct
        0x40t
    .end array-data

    :array_2
    .array-data 1
        0x7t
        0x58t
        0x1t
        0x10t
        0x58t
        0xbt
        0x2t
        0x18t
        0x16t
        0x17t
        0x47t
        0x12t
        0x9t
        0x44t
        0x11t
        0x4ct
        0x5et
        0x11t
        0x21t
        0x44t
        0xat
        0x17t
        0x47t
        0x31t
        0x13t
        0x5bt
        0x8t
        0x3t
        0x45t
        0x1bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x52t
        0x56t
        0x1t
        0x10t
        0x5at
        0xat
        0x57t
        0x16t
        0x16t
        0x17t
        0x45t
        0x13t
        0x5ct
        0x4at
        0x11t
        0x4ct
        0x59t
        0xct
        0x50t
        0x59t
        0x9t
        0x2dt
        0x5bt
        0xft
        0x4at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x50t
        0x56t
        0x55t
        0x40t
        0x5ct
        0xdt
        0x55t
        0x16t
        0x42t
        0x47t
        0x43t
        0x14t
        0x5et
        0x4at
        0x45t
        0x1ct
        0x41t
        0x1t
        0x5ct
        0x57t
        0x45t
        0x57t
        0x7at
        0xat
        0x41t
        0x4dt
        0x45t
        0x41t
    .end array-data

    :array_5
    .array-data 1
        0x56t
        0xft
        0x53t
        0x42t
        0x5at
        0x5bt
        0x53t
        0x4ft
        0x44t
        0x45t
        0x45t
        0x42t
        0x58t
        0x13t
        0x43t
        0x1et
        0x46t
        0x5dt
        0x45t
        0x15t
        0x7ct
        0x55t
        0x4ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
