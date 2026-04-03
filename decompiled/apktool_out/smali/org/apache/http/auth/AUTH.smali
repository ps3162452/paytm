.class public final Lorg/apache/http/auth/AUTH;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROXY_AUTH:Ljava/lang/String;

.field public static final PROXY_AUTH_RESP:Ljava/lang/String;

.field public static final WWW_AUTH:Ljava/lang/String;

.field public static final WWW_AUTH_RESP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f1208a"

    const v2, 0x4e601206    # 9.398194E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/auth/AUTH;->PROXY_AUTH:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c8deb0"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/auth/AUTH;->PROXY_AUTH_RESP:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "57c9a3"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/auth/AUTH;->WWW_AUTH:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "1e3a3e"

    invoke-static {v0, v1, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/auth/AUTH;->WWW_AUTH_RESP:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x36t
        0x43t
        0x5dt
        0x48t
        0x41t
        0x4ct
        0x27t
        0x44t
        0x46t
        0x58t
        0x5dt
        0xft
        0x12t
        0x58t
        0x51t
        0x51t
        0x4ct
        0x4t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x33t
        0x4at
        0xbt
        0x1dt
        0x1bt
        0x1dt
        0x22t
        0x4dt
        0x10t
        0xdt
        0xdt
        0x42t
        0xat
        0x42t
        0x5t
        0x11t
        0xbt
        0x5ft
        0xdt
    .end array-data

    :array_2
    .array-data 1
        0x62t
        0x60t
        0x34t
        0x14t
        0x20t
        0x46t
        0x41t
        0x5ft
        0x6t
        0x57t
        0x15t
        0x5at
        0x56t
        0x56t
        0x17t
        0x5ct
    .end array-data

    :array_3
    .array-data 1
        0x70t
        0x10t
        0x47t
        0x9t
        0x5ct
        0x17t
        0x58t
        0x1ft
        0x52t
        0x15t
        0x5at
        0xat
        0x5ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1f4590"

    const/16 v3, 0x6c3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x62t
        0x12t
        0x41t
        0x57t
        0x18t
    .end array-data
.end method
