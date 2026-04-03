.class public final Landroidx/core/content/ContentProviderCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requireContext(Landroid/content/ContentProvider;)Landroid/content/Context;
    .locals 6

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1b7990"

    const-wide v4, 0x41d4c7e455800000L    # 1.39457775E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x72t
        0x3t
        0x59t
        0x57t
        0x56t
        0x44t
        0x11t
        0x4t
        0x5et
        0x57t
        0x5dt
        0x10t
        0x52t
        0xdt
        0x59t
        0x4dt
        0x5ct
        0x48t
        0x45t
        0x42t
        0x51t
        0x4bt
        0x56t
        0x5dt
        0x11t
        0x16t
        0x5ft
        0x5ct
        0x19t
        0x40t
        0x43t
        0xdt
        0x41t
        0x50t
        0x5dt
        0x55t
        0x43t
        0x4ct
    .end array-data
.end method
