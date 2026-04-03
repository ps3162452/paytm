.class public interface abstract Lorg/apache/http/client/protocol/ClientContext;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTHSCHEME_REGISTRY:Ljava/lang/String;

.field public static final AUTH_SCHEME_PREF:Ljava/lang/String;

.field public static final COOKIESPEC_REGISTRY:Ljava/lang/String;

.field public static final COOKIE_ORIGIN:Ljava/lang/String;

.field public static final COOKIE_SPEC:Ljava/lang/String;

.field public static final COOKIE_STORE:Ljava/lang/String;

.field public static final CREDS_PROVIDER:Ljava/lang/String;

.field public static final PROXY_AUTH_STATE:Ljava/lang/String;

.field public static final TARGET_AUTH_STATE:Ljava/lang/String;

.field public static final USER_TOKEN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x18

    const/16 v6, 0x15

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    const-string v1, "433d36"

    const-wide v2, 0x418dca8c58000000L    # 6.2476683E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/protocol/ClientContext;->AUTHSCHEME_REGISTRY:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "9b2edb"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/protocol/ClientContext;->AUTH_SCHEME_PREF:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "c529f6"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/protocol/ClientContext;->COOKIESPEC_REGISTRY:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "9561c1"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/protocol/ClientContext;->COOKIE_ORIGIN:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "e279da"

    const-wide/32 v2, 0x3f5b5756

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/protocol/ClientContext;->COOKIE_SPEC:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "4ac5aa"

    const v2, -0x321ac263

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/protocol/ClientContext;->COOKIE_STORE:Ljava/lang/String;

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "a210fd"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/protocol/ClientContext;->CREDS_PROVIDER:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_7

    const-string v1, "79effe"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/protocol/ClientContext;->PROXY_AUTH_STATE:Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "aefd59"

    const/16 v2, -0x57d2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/protocol/ClientContext;->TARGET_AUTH_STATE:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "22a753"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/protocol/ClientContext;->USER_TOKEN:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x5ct
        0x47t
        0x47t
        0x14t
        0x1dt
        0x57t
        0x41t
        0x47t
        0x5bt
        0x17t
        0x50t
        0x5et
        0x51t
        0x5et
        0x56t
        0x49t
        0x41t
        0x53t
        0x53t
        0x5at
        0x40t
        0x10t
        0x41t
        0x4ft
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0x16t
        0x46t
        0x15t
        0x4at
        0x3t
        0x4ct
        0x16t
        0x5at
        0x4bt
        0x17t
        0x1t
        0x51t
        0x7t
        0x5ft
        0x0t
        0x49t
        0x12t
        0x4bt
        0x7t
        0x54t
    .end array-data

    nop

    :array_2
    .array-data 1
        0xbt
        0x41t
        0x46t
        0x49t
        0x48t
        0x55t
        0xct
        0x5at
        0x59t
        0x50t
        0x3t
        0x45t
        0x13t
        0x50t
        0x51t
        0x14t
        0x14t
        0x53t
        0x4t
        0x5ct
        0x41t
        0x4dt
        0x14t
        0x4ft
    .end array-data

    :array_3
    .array-data 1
        0x51t
        0x41t
        0x42t
        0x41t
        0x4dt
        0x52t
        0x56t
        0x5at
        0x5dt
        0x58t
        0x6t
        0x1ct
        0x56t
        0x47t
        0x5ft
        0x56t
        0xat
        0x5ft
    .end array-data

    nop

    :array_4
    .array-data 1
        0xdt
        0x46t
        0x43t
        0x49t
        0x4at
        0x2t
        0xat
        0x5dt
        0x5ct
        0x50t
        0x1t
        0x4ct
        0x16t
        0x42t
        0x52t
        0x5at
    .end array-data

    :array_5
    .array-data 1
        0x5ct
        0x15t
        0x17t
        0x45t
        0x4ft
        0x2t
        0x5bt
        0xet
        0x8t
        0x5ct
        0x4t
        0x4ct
        0x47t
        0x15t
        0xct
        0x47t
        0x4t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x9t
        0x46t
        0x45t
        0x40t
        0x48t
        0x5t
        0x14t
        0x46t
        0x59t
        0x1et
        0x5t
        0x16t
        0x4t
        0x56t
        0x54t
        0x5et
        0x12t
        0xdt
        0x0t
        0x5et
        0x42t
        0x1dt
        0x16t
        0x16t
        0xet
        0x44t
        0x58t
        0x54t
        0x3t
        0x16t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x5ft
        0x4dt
        0x11t
        0x16t
        0x48t
        0x4t
        0x42t
        0x4dt
        0xdt
        0x48t
        0x16t
        0x17t
        0x58t
        0x41t
        0x1ct
        0x4bt
        0x15t
        0x6t
        0x58t
        0x49t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x9t
        0x11t
        0x12t
        0x14t
        0x1bt
        0x58t
        0x14t
        0x11t
        0xet
        0x4at
        0x41t
        0x58t
        0x13t
        0x2t
        0x3t
        0x10t
        0x18t
        0x4at
        0x2t
        0xat
        0x16t
        0x1t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x5at
        0x46t
        0x15t
        0x47t
        0x1bt
        0x46t
        0x41t
        0x57t
        0x13t
        0x1at
        0x41t
        0x5ct
        0x59t
        0x57t
        0xft
    .end array-data
.end method
