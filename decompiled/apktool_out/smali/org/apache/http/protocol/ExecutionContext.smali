.class public interface abstract Lorg/apache/http/protocol/ExecutionContext;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HTTP_CONNECTION:Ljava/lang/String;

.field public static final HTTP_PROXY_HOST:Ljava/lang/String;

.field public static final HTTP_REQUEST:Ljava/lang/String;

.field public static final HTTP_REQ_SENT:Ljava/lang/String;

.field public static final HTTP_RESPONSE:Ljava/lang/String;

.field public static final HTTP_TARGET_HOST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xf

    const/4 v2, 0x1

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "a0e8d9"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/ExecutionContext;->HTTP_CONNECTION:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "aa7b39"

    const v2, 0x4e542a6d    # 8.8988755E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/ExecutionContext;->HTTP_PROXY_HOST:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "c126d4"

    const-wide/32 v2, -0x41bcc47d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/ExecutionContext;->HTTP_REQUEST:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "02609d"

    const-wide v2, 0x41c7e44ce9800000L    # 8.01675731E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/ExecutionContext;->HTTP_REQ_SENT:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "6fe82a"

    const-wide v2, -0x3e4420e211000000L    # -4.67607023E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/ExecutionContext;->HTTP_RESPONSE:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "f561d0"

    const v2, 0x4e9efbf7

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/ExecutionContext;->HTTP_TARGET_HOST:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x9t
        0x44t
        0x11t
        0x48t
        0x4at
        0x5at
        0xet
        0x5et
        0xbt
        0x5dt
        0x7t
        0x4dt
        0x8t
        0x5ft
        0xbt
    .end array-data

    :array_1
    .array-data 1
        0x9t
        0x15t
        0x43t
        0x12t
        0x1dt
        0x49t
        0x13t
        0xet
        0x4ft
        0x1bt
        0x6ct
        0x51t
        0xet
        0x12t
        0x43t
    .end array-data

    :array_2
    .array-data 1
        0xbt
        0x45t
        0x46t
        0x46t
        0x4at
        0x46t
        0x6t
        0x40t
        0x47t
        0x53t
        0x17t
        0x40t
    .end array-data

    :array_3
    .array-data 1
        0x58t
        0x46t
        0x42t
        0x40t
        0x17t
        0x16t
        0x55t
        0x43t
        0x43t
        0x55t
        0x4at
        0x10t
        0x6ft
        0x41t
        0x53t
        0x5et
        0x4dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5et
        0x12t
        0x11t
        0x48t
        0x1ct
        0x13t
        0x53t
        0x15t
        0x15t
        0x57t
        0x5ct
        0x12t
        0x53t
    .end array-data

    nop

    :array_5
    .array-data 1
        0xet
        0x41t
        0x42t
        0x41t
        0x4at
        0x44t
        0x7t
        0x47t
        0x51t
        0x54t
        0x10t
        0x6ft
        0xet
        0x5at
        0x45t
        0x45t
    .end array-data
.end method
