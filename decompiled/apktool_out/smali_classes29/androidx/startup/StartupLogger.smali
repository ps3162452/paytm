.class public final Landroidx/startup/StartupLogger;
.super Ljava/lang/Object;


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "bda3d5"

    const-wide v2, 0x41d1ab9bd7000000L    # 1.185836892E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/startup/StartupLogger;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0x10t
        0x0t
        0x41t
        0x10t
        0x40t
        0x12t
        0x28t
        0xet
        0x54t
        0x3t
        0x50t
        0x10t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Landroidx/startup/StartupLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroidx/startup/StartupLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
