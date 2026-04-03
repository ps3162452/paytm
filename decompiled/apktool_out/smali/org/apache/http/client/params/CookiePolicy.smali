.class public final Lorg/apache/http/client/params/CookiePolicy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BEST_MATCH:Ljava/lang/String;

.field public static final BROWSER_COMPATIBILITY:Ljava/lang/String;

.field public static final NETSCAPE:Ljava/lang/String;

.field public static final RFC_2109:Ljava/lang/String;

.field public static final RFC_2965:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x7

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "35f589"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/CookiePolicy;->BEST_MATCH:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "805752"

    const-wide/32 v2, 0x5a4e12bf

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/CookiePolicy;->BROWSER_COMPATIBILITY:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "d3102a"

    const-wide v2, 0x41b4a2d15c000000L    # 3.46214748E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/CookiePolicy;->NETSCAPE:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "b1b23c"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/CookiePolicy;->RFC_2109:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_4

    const-string v1, "7a8744"

    const v2, -0x31270856

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/CookiePolicy;->RFC_2965:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x51t
        0x50t
        0x15t
        0x41t
        0x15t
        0x54t
        0x52t
        0x41t
        0x5t
        0x5dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5bt
        0x5ft
        0x58t
        0x47t
        0x54t
        0x46t
        0x51t
        0x52t
        0x5ct
        0x5bt
        0x5ct
        0x46t
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0xat
        0x56t
        0x45t
        0x43t
        0x51t
        0x0t
        0x14t
        0x56t
    .end array-data

    :array_3
    .array-data 1
        0x10t
        0x57t
        0x1t
        0x0t
        0x2t
        0x53t
        0x5bt
    .end array-data

    :array_4
    .array-data 1
        0x45t
        0x7t
        0x5bt
        0x5t
        0xdt
        0x2t
        0x2t
    .end array-data
.end method

.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "78068a"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x64t
        0x4ct
        0x45t
        0x54t
        0x19t
    .end array-data
.end method
