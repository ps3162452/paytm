.class public interface abstract Lorg/apache/http/params/CoreConnectionPNames;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT:Ljava/lang/String;

.field public static final MAX_HEADER_COUNT:Ljava/lang/String;

.field public static final MAX_LINE_LENGTH:Ljava/lang/String;

.field public static final SOCKET_BUFFER_SIZE:Ljava/lang/String;

.field public static final SO_LINGER:Ljava/lang/String;

.field public static final SO_TIMEOUT:Ljava/lang/String;

.field public static final STALE_CONNECTION_CHECK:Ljava/lang/String;

.field public static final TCP_NODELAY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x17

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "d349ff"

    const-wide v2, -0x3e2337061b000000L    # -1.931732884E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreConnectionPNames;->CONNECTION_TIMEOUT:Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "eb0dd0"

    const-wide v2, 0x4191cbbbb4000000L    # 7.4641133E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreConnectionPNames;->MAX_HEADER_COUNT:Ljava/lang/String;

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "2ef043"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreConnectionPNames;->MAX_LINE_LENGTH:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "091a61"

    const/16 v2, 0x7e7a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreConnectionPNames;->SOCKET_BUFFER_SIZE:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "598d7a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreConnectionPNames;->SO_LINGER:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "a8b4f5"

    const/16 v2, 0x7c54

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreConnectionPNames;->SO_TIMEOUT:Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "97e1f5"

    const v2, -0x31d45c18

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreConnectionPNames;->STALE_CONNECTION_CHECK:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "b9ac80"

    const/16 v2, -0x2d62

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreConnectionPNames;->TCP_NODELAY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0xct
        0x47t
        0x40t
        0x49t
        0x48t
        0x5t
        0xbt
        0x5dt
        0x5at
        0x5ct
        0x5t
        0x12t
        0xdt
        0x5ct
        0x5at
        0x17t
        0x12t
        0xft
        0x9t
        0x56t
        0x5bt
        0x4ct
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0x16t
        0x44t
        0x14t
        0x4at
        0x53t
        0xat
        0xct
        0x5et
        0x1t
        0x7t
        0x44t
        0xct
        0xdt
        0x5et
        0x4at
        0x9t
        0x51t
        0x1dt
        0x4ft
        0x58t
        0x1t
        0x5t
        0x54t
        0x0t
        0x10t
        0x1dt
        0x7t
        0xbt
        0x45t
        0xbt
        0x16t
    .end array-data

    :array_2
    .array-data 1
        0x5at
        0x11t
        0x12t
        0x40t
        0x1at
        0x50t
        0x5dt
        0xbt
        0x8t
        0x55t
        0x57t
        0x47t
        0x5bt
        0xat
        0x8t
        0x1et
        0x59t
        0x52t
        0x4at
        0x48t
        0xat
        0x59t
        0x5at
        0x56t
        0x1ft
        0x9t
        0x3t
        0x5et
        0x53t
        0x47t
        0x5at
    .end array-data

    :array_3
    .array-data 1
        0x58t
        0x4dt
        0x45t
        0x11t
        0x18t
        0x42t
        0x5ft
        0x5at
        0x5at
        0x4t
        0x42t
        0x1ft
        0x52t
        0x4ct
        0x57t
        0x7t
        0x53t
        0x43t
        0x1dt
        0x4at
        0x58t
        0x1bt
        0x53t
    .end array-data

    :array_4
    .array-data 1
        0x5dt
        0x4dt
        0x4ct
        0x14t
        0x19t
        0x12t
        0x5at
        0x5at
        0x53t
        0x1t
        0x43t
        0x4ft
        0x59t
        0x50t
        0x56t
        0x3t
        0x52t
        0x13t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x9t
        0x4ct
        0x16t
        0x44t
        0x48t
        0x46t
        0xet
        0x5bt
        0x9t
        0x51t
        0x12t
        0x1bt
        0x15t
        0x51t
        0xft
        0x51t
        0x9t
        0x40t
        0x15t
    .end array-data

    :array_6
    .array-data 1
        0x51t
        0x43t
        0x11t
        0x41t
        0x48t
        0x56t
        0x56t
        0x59t
        0xbt
        0x54t
        0x5t
        0x41t
        0x50t
        0x58t
        0xbt
        0x1ft
        0x15t
        0x41t
        0x58t
        0x5bt
        0x0t
        0x52t
        0xet
        0x50t
        0x5at
        0x5ct
    .end array-data

    nop

    :array_7
    .array-data 1
        0xat
        0x4dt
        0x15t
        0x13t
        0x16t
        0x44t
        0x1t
        0x49t
        0x4ft
        0xdt
        0x57t
        0x54t
        0x7t
        0x55t
        0x0t
        0x1at
    .end array-data
.end method
