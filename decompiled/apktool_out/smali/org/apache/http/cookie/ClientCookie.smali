.class public interface abstract Lorg/apache/http/cookie/ClientCookie;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/cookie/Cookie;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COMMENTURL_ATTR:Ljava/lang/String;

.field public static final COMMENT_ATTR:Ljava/lang/String;

.field public static final DISCARD_ATTR:Ljava/lang/String;

.field public static final DOMAIN_ATTR:Ljava/lang/String;

.field public static final EXPIRES_ATTR:Ljava/lang/String;

.field public static final MAX_AGE_ATTR:Ljava/lang/String;

.field public static final PATH_ATTR:Ljava/lang/String;

.field public static final PORT_ATTR:Ljava/lang/String;

.field public static final SECURE_ATTR:Ljava/lang/String;

.field public static final VERSION_ATTR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x7

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c7b08d"

    invoke-static {v0, v1, v6, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/ClientCookie;->COMMENTURL_ATTR:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "145f5a"

    const v2, -0x31be205c    # -8.131648E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/ClientCookie;->COMMENT_ATTR:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "d017ea"

    const/16 v2, 0x6e82

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/ClientCookie;->DISCARD_ATTR:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_3

    const-string v1, "21b4d8"

    const-wide/32 v2, -0x3603bab

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/ClientCookie;->DOMAIN_ATTR:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_4

    const-string v1, "41d38a"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/ClientCookie;->EXPIRES_ATTR:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_5

    const-string v1, "47dc6f"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/ClientCookie;->MAX_AGE_ATTR:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_6

    const-string v1, "473f19"

    const/16 v2, 0x871

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/ClientCookie;->PATH_ATTR:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_7

    const-string v1, "6a9365"

    const v2, 0x4ef69182

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/ClientCookie;->PORT_ATTR:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_8

    const-string v1, "34d89b"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/ClientCookie;->SECURE_ATTR:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_9

    const-string v1, "24155f"

    const v2, -0x323ae9af    # -4.1332176E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/ClientCookie;->VERSION_ATTR:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x58t
        0xft
        0x5dt
        0x5dt
        0xat
        0x17t
        0x42t
        0x10t
        0x5ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x52t
        0x5bt
        0x58t
        0xbt
        0x50t
        0xft
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x59t
        0x42t
        0x54t
        0x4t
        0x13t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x56t
        0x5et
        0xft
        0x55t
        0xdt
        0x56t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x51t
        0x49t
        0x14t
        0x5at
        0x4at
        0x4t
        0x47t
    .end array-data

    :array_5
    .array-data 1
        0x59t
        0x56t
        0x1ct
        0x4et
        0x57t
        0x1t
        0x51t
    .end array-data

    :array_6
    .array-data 1
        0x44t
        0x56t
        0x47t
        0xet
    .end array-data

    :array_7
    .array-data 1
        0x46t
        0xet
        0x4bt
        0x47t
    .end array-data

    :array_8
    .array-data 1
        0x40t
        0x51t
        0x7t
        0x4dt
        0x4bt
        0x7t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x44t
        0x51t
        0x43t
        0x46t
        0x5ct
        0x9t
        0x5ct
    .end array-data
.end method


# virtual methods
.method public abstract containsAttribute(Ljava/lang/String;)Z
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method
