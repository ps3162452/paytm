.class public interface abstract Lorg/apache/http/client/params/ClientPNames;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALLOW_CIRCULAR_REDIRECTS:Ljava/lang/String;

.field public static final CONNECTION_MANAGER_FACTORY:Ljava/lang/String;

.field public static final CONNECTION_MANAGER_FACTORY_CLASS_NAME:Ljava/lang/String;

.field public static final COOKIE_POLICY:Ljava/lang/String;

.field public static final DEFAULT_HEADERS:Ljava/lang/String;

.field public static final DEFAULT_HOST:Ljava/lang/String;

.field public static final HANDLE_AUTHENTICATION:Ljava/lang/String;

.field public static final HANDLE_REDIRECTS:Ljava/lang/String;

.field public static final MAX_REDIRECTS:Ljava/lang/String;

.field public static final REJECT_RELATIVE_REDIRECT:Ljava/lang/String;

.field public static final VIRTUAL_HOST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x1b

    const/16 v7, 0x11

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x26

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "7d9672"

    const-wide/32 v2, -0xebddcd2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->ALLOW_CIRCULAR_REDIRECTS:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "f78630"

    const-wide/32 v2, -0x4ce0092a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->CONNECTION_MANAGER_FACTORY:Ljava/lang/String;

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "377e8a"

    const-wide v2, 0x41dc66928f400000L    # 1.905936957E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->CONNECTION_MANAGER_FACTORY_CLASS_NAME:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_3

    const-string v1, "a994f6"

    const-wide/32 v2, 0x5736b5f0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->COOKIE_POLICY:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "3881c5"

    const-wide v2, 0x41d1983da3000000L    # 1.180759692E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->DEFAULT_HEADERS:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_5

    const-string v1, "34b0e6"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->DEFAULT_HOST:Ljava/lang/String;

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "dec890"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->HANDLE_AUTHENTICATION:Ljava/lang/String;

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "620907"

    const/16 v2, -0x1204

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->HANDLE_REDIRECTS:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_8

    const-string v1, "a1d9c5"

    const-wide/32 v2, -0x77acbb48

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->MAX_REDIRECTS:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_9

    const-string v1, "833eb3"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->REJECT_RELATIVE_REDIRECT:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_a

    const-string v1, "a662c2"

    const-wide v2, 0x41bdfbb48e000000L    # 5.03035022E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/params/ClientPNames;->VIRTUAL_HOST:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5ft
        0x10t
        0x4dt
        0x46t
        0x19t
        0x42t
        0x45t
        0xbt
        0x4dt
        0x59t
        0x54t
        0x5dt
        0x5bt
        0x4at
        0x58t
        0x5at
        0x5bt
        0x5dt
        0x40t
        0x49t
        0x5at
        0x5ft
        0x45t
        0x51t
        0x42t
        0x8t
        0x58t
        0x44t
        0x1at
        0x40t
        0x52t
        0x0t
        0x50t
        0x44t
        0x52t
        0x51t
        0x43t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xet
        0x43t
        0x4ct
        0x46t
        0x1dt
        0x53t
        0x9t
        0x59t
        0x56t
        0x53t
        0x50t
        0x44t
        0xft
        0x58t
        0x56t
        0x1bt
        0x5et
        0x51t
        0x8t
        0x56t
        0x5ft
        0x53t
        0x41t
        0x1et
        0x0t
        0x56t
        0x5bt
        0x42t
        0x5ct
        0x42t
        0x1ft
        0x1at
        0x57t
        0x54t
        0x59t
        0x55t
        0x5t
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5bt
        0x43t
        0x43t
        0x15t
        0x16t
        0x2t
        0x5ct
        0x59t
        0x59t
        0x0t
        0x5bt
        0x15t
        0x5at
        0x58t
        0x59t
        0x48t
        0x55t
        0x0t
        0x5dt
        0x56t
        0x50t
        0x0t
        0x4at
        0x4ft
        0x55t
        0x56t
        0x54t
        0x11t
        0x57t
        0x13t
        0x4at
        0x1at
        0x54t
        0x9t
        0x59t
        0x12t
        0x40t
        0x1at
        0x59t
        0x4t
        0x55t
        0x4t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x9t
        0x4dt
        0x4dt
        0x44t
        0x48t
        0x46t
        0x13t
        0x56t
        0x4dt
        0x5bt
        0x5t
        0x59t
        0xdt
        0x17t
        0x5at
        0x5bt
        0x9t
        0x5dt
        0x8t
        0x5ct
        0x14t
        0x44t
        0x9t
        0x5at
        0x8t
        0x5at
        0x40t
    .end array-data

    :array_4
    .array-data 1
        0x5bt
        0x4ct
        0x4ct
        0x41t
        0x4dt
        0x51t
        0x56t
        0x5et
        0x59t
        0x44t
        0xft
        0x41t
        0x1et
        0x50t
        0x5dt
        0x50t
        0x7t
        0x50t
        0x41t
        0x4bt
    .end array-data

    :array_5
    .array-data 1
        0x5bt
        0x40t
        0x16t
        0x40t
        0x4bt
        0x52t
        0x56t
        0x52t
        0x3t
        0x45t
        0x9t
        0x42t
        0x1et
        0x5ct
        0xdt
        0x43t
        0x11t
    .end array-data

    nop

    :array_6
    .array-data 1
        0xct
        0x11t
        0x17t
        0x48t
        0x17t
        0x40t
        0x16t
        0xat
        0x17t
        0x57t
        0x5at
        0x5ft
        0x8t
        0x4bt
        0xbt
        0x59t
        0x57t
        0x54t
        0x8t
        0x0t
        0x4et
        0x59t
        0x4ct
        0x44t
        0xct
        0x0t
        0xdt
        0x4ct
        0x50t
        0x53t
        0x5t
        0x11t
        0xat
        0x57t
        0x57t
    .end array-data

    :array_7
    .array-data 1
        0x5et
        0x46t
        0x44t
        0x49t
        0x1et
        0x47t
        0x44t
        0x5dt
        0x44t
        0x56t
        0x53t
        0x58t
        0x5at
        0x1ct
        0x58t
        0x58t
        0x5et
        0x53t
        0x5at
        0x57t
        0x1dt
        0x4bt
        0x55t
        0x53t
        0x5ft
        0x40t
        0x55t
        0x5at
        0x44t
        0x44t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x9t
        0x45t
        0x10t
        0x49t
        0x4dt
        0x45t
        0x13t
        0x5et
        0x10t
        0x56t
        0x0t
        0x5at
        0xdt
        0x1ft
        0x9t
        0x58t
        0x1bt
        0x18t
        0x13t
        0x54t
        0x0t
        0x50t
        0x11t
        0x50t
        0x2t
        0x45t
        0x17t
    .end array-data

    :array_9
    .array-data 1
        0x50t
        0x47t
        0x47t
        0x15t
        0x4ct
        0x43t
        0x4at
        0x5ct
        0x47t
        0xat
        0x1t
        0x5ct
        0x54t
        0x1dt
        0x41t
        0x0t
        0x8t
        0x56t
        0x5bt
        0x47t
        0x1et
        0x17t
        0x7t
        0x5ft
        0x59t
        0x47t
        0x5at
        0x13t
        0x7t
        0x1et
        0x4at
        0x56t
        0x57t
        0xct
        0x10t
        0x56t
        0x5bt
        0x47t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x9t
        0x42t
        0x42t
        0x42t
        0x4dt
        0x44t
        0x8t
        0x44t
        0x42t
        0x47t
        0x2t
        0x5et
        0x4ct
        0x5et
        0x59t
        0x41t
        0x17t
    .end array-data
.end method
