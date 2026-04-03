.class public final Landroidx/core/os/EnvironmentCompat;
.super Ljava/lang/Object;


# static fields
.field public static final MEDIA_UNKNOWN:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "abfd93"

    const/16 v2, -0x681

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/os/EnvironmentCompat;->MEDIA_UNKNOWN:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "4f8f62"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/os/EnvironmentCompat;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x14t
        0xct
        0xdt
        0xat
        0x56t
        0x44t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x71t
        0x8t
        0x4et
        0xft
        0x44t
        0x5dt
        0x5at
        0xbt
        0x5dt
        0x8t
        0x42t
        0x71t
        0x5bt
        0xbt
        0x48t
        0x7t
        0x42t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "f38410"

    const-wide v4, 0x41df66ef5e000000L    # 2.107358584E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/core/os/EnvironmentCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Landroidx/core/os/EnvironmentCompat;->MEDIA_UNKNOWN:Ljava/lang/String;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x20t
        0x52t
        0x51t
        0x58t
        0x54t
        0x54t
        0x46t
        0x47t
        0x57t
        0x14t
        0x43t
        0x55t
        0x15t
        0x5ct
        0x54t
        0x42t
        0x54t
        0x10t
        0x5t
        0x52t
        0x56t
        0x5bt
        0x5ft
        0x59t
        0x5t
        0x52t
        0x54t
        0x14t
        0x41t
        0x51t
        0x12t
        0x5bt
        0x2t
        0x14t
    .end array-data
.end method
