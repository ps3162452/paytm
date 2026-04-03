.class public Lcom/google/android/gms/common/util/SharedPreferencesUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static publishWorldReadableSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8c3303"

    const-wide v4, 0x41dd69d693800000L    # 1.973901902E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x4ft
        0xct
        0x41t
        0x5ft
        0x54t
        0x1et
        0x4at
        0x6t
        0x52t
        0x57t
        0x51t
        0x51t
        0x54t
        0x6t
        0x13t
        0x40t
        0x58t
        0x52t
        0x4at
        0x6t
        0x57t
        0x13t
        0x40t
        0x41t
        0x5dt
        0x5t
        0x56t
        0x41t
        0x55t
        0x5dt
        0x5bt
        0x6t
        0x40t
        0x13t
        0x43t
        0x5bt
        0x57t
        0x16t
        0x5ft
        0x57t
        0x10t
        0x5ct
        0x56t
        0xft
        0x4at
        0x13t
        0x52t
        0x56t
        0x18t
        0x16t
        0x40t
        0x56t
        0x54t
        0x13t
        0x5at
        0x1at
        0x13t
        0x52t
        0x40t
        0x58t
    .end array-data
.end method
