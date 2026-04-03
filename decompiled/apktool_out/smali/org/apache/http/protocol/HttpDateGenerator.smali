.class public Lorg/apache/http/protocol/HttpDateGenerator;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final GMT:Ljava/util/TimeZone;

.field public static final PATTERN_RFC1123:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8ba43d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HttpDateGenerator;->PATTERN_RFC1123:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/http/protocol/HttpDateGenerator;->GMT:Ljava/util/TimeZone;

    return-void

    :array_0
    .array-data 1
        0x7dt
        0x27t
        0x24t
        0x18t
        0x13t
        0x0t
        0x5ct
        0x42t
        0x2ct
        0x79t
        0x7et
        0x44t
        0x41t
        0x1bt
        0x18t
        0x4dt
        0x13t
        0x2ct
        0x70t
        0x58t
        0xct
        0x59t
        0x9t
        0x17t
        0x4bt
        0x42t
        0x1bt
        0x4et
        0x49t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8a7b3a"

    const-wide/32 v4, -0x11a3310b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6bt
        0x15t
        0x42t
        0x0t
        0x12t
    .end array-data
.end method


# virtual methods
.method public getCurrentDate()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5c8562"

    const v3, -0x323af6e1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x17t
        0x4dt
        0x57t
        0x17t
    .end array-data
.end method
