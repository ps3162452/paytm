.class public interface abstract Lorg/apache/http/params/CoreProtocolPNames;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HTTP_CONTENT_CHARSET:Ljava/lang/String;

.field public static final HTTP_ELEMENT_CHARSET:Ljava/lang/String;

.field public static final ORIGIN_SERVER:Ljava/lang/String;

.field public static final PROTOCOL_VERSION:Ljava/lang/String;

.field public static final STRICT_TRANSFER_ENCODING:Ljava/lang/String;

.field public static final USER_AGENT:Ljava/lang/String;

.field public static final USE_EXPECT_CONTINUE:Ljava/lang/String;

.field public static final WAIT_FOR_CONTINUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x1d

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "81c822"

    const-wide v2, 0x41b05658b5000000L    # 2.74094261E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreProtocolPNames;->HTTP_CONTENT_CHARSET:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "833e76"

    const-wide v2, 0x41c336dcc4800000L    # 6.44725129E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreProtocolPNames;->HTTP_ELEMENT_CHARSET:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "9aecce"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreProtocolPNames;->ORIGIN_SERVER:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "363a42"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreProtocolPNames;->PROTOCOL_VERSION:Ljava/lang/String;

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "2517f1"

    const v2, -0x312baf27

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreProtocolPNames;->STRICT_TRANSFER_ENCODING:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "57c32d"

    const-wide v2, 0x41a76718be000000L    # 1.96316255E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreProtocolPNames;->USER_AGENT:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_6

    const-string v1, "6056f1"

    const-wide v2, -0x3e222e2cd7400000L    # -2.001161379E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreProtocolPNames;->USE_EXPECT_CONTINUE:Ljava/lang/String;

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "3ecd63"

    const-wide/32 v2, 0x5cb1aea0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/params/CoreProtocolPNames;->WAIT_FOR_CONTINUE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x45t
        0x17t
        0x48t
        0x1ct
        0x42t
        0x4at
        0x5et
        0x17t
        0x57t
        0x51t
        0x5dt
        0x54t
        0x1ft
        0x0t
        0x57t
        0x5ct
        0x46t
        0x5dt
        0x5ft
        0x17t
        0x15t
        0x51t
        0x5at
        0x59t
        0x43t
        0x10t
        0x5dt
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0x47t
        0x47t
        0x15t
        0x19t
        0x46t
        0x4at
        0x5ct
        0x47t
        0xat
        0x54t
        0x59t
        0x54t
        0x1dt
        0x56t
        0x9t
        0x52t
        0x5bt
        0x5dt
        0x5dt
        0x47t
        0x48t
        0x54t
        0x5et
        0x59t
        0x41t
        0x40t
        0x0t
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x51t
        0x15t
        0x11t
        0x13t
        0x4dt
        0xat
        0x4bt
        0x8t
        0x2t
        0xat
        0xdt
        0x48t
        0x4at
        0x4t
        0x17t
        0x15t
        0x6t
        0x17t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5bt
        0x42t
        0x47t
        0x11t
        0x1at
        0x42t
        0x41t
        0x59t
        0x47t
        0xet
        0x57t
        0x5dt
        0x5ft
        0x18t
        0x45t
        0x4t
        0x46t
        0x41t
        0x5at
        0x59t
        0x5dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5at
        0x41t
        0x45t
        0x47t
        0x48t
        0x41t
        0x40t
        0x5at
        0x45t
        0x58t
        0x5t
        0x5et
        0x5et
        0x1bt
        0x42t
        0x43t
        0x14t
        0x58t
        0x51t
        0x41t
        0x1ct
        0x43t
        0x14t
        0x50t
        0x5ct
        0x46t
        0x57t
        0x52t
        0x14t
        0x1ct
        0x57t
        0x5bt
        0x52t
        0x58t
        0x2t
        0x58t
        0x5ct
        0x52t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x5dt
        0x43t
        0x17t
        0x43t
        0x1ct
        0x11t
        0x46t
        0x52t
        0x11t
        0x52t
        0x55t
        0x1t
        0x5bt
        0x43t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x5et
        0x44t
        0x41t
        0x46t
        0x48t
        0x41t
        0x44t
        0x5ft
        0x41t
        0x59t
        0x5t
        0x5et
        0x5at
        0x1et
        0x50t
        0x4et
        0x16t
        0x54t
        0x55t
        0x44t
        0x18t
        0x55t
        0x9t
        0x5ft
        0x42t
        0x59t
        0x5bt
        0x43t
        0x3t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x5bt
        0x11t
        0x17t
        0x14t
        0x18t
        0x43t
        0x41t
        0xat
        0x17t
        0xbt
        0x55t
        0x5ct
        0x5ft
        0x4bt
        0x14t
        0x5t
        0x5ft
        0x47t
        0x1et
        0x3t
        0xct
        0x16t
        0x1bt
        0x50t
        0x5ct
        0xbt
        0x17t
        0xdt
        0x58t
        0x46t
        0x56t
    .end array-data
.end method
