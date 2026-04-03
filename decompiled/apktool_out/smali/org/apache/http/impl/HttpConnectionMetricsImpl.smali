.class public Lorg/apache/http/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpConnectionMetrics;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String;

.field public static final REQUEST_COUNT:Ljava/lang/String;

.field public static final RESPONSE_COUNT:Ljava/lang/String;

.field public static final SENT_BYTES_COUNT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "5485c1"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->RECEIVED_BYTES_COUNT:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "bc9793"

    const v2, -0x310073e0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->REQUEST_COUNT:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "67bbd7"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->RESPONSE_COUNT:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "8197ee"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->SENT_BYTES_COUNT:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5dt
        0x40t
        0x4ct
        0x45t
        0x4dt
        0x43t
        0x50t
        0x57t
        0x5dt
        0x5ct
        0x15t
        0x54t
        0x51t
        0x19t
        0x5at
        0x4ct
        0x17t
        0x54t
        0x46t
        0x19t
        0x5bt
        0x5at
        0x16t
        0x5ft
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xat
        0x17t
        0x4dt
        0x47t
        0x17t
        0x41t
        0x7t
        0x12t
        0x4ct
        0x52t
        0x4at
        0x47t
        0x4ft
        0x0t
        0x56t
        0x42t
        0x57t
        0x47t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5et
        0x43t
        0x16t
        0x12t
        0x4at
        0x45t
        0x53t
        0x44t
        0x12t
        0xdt
        0xat
        0x44t
        0x53t
        0x1at
        0x1t
        0xdt
        0x11t
        0x59t
        0x42t
    .end array-data

    :array_3
    .array-data 1
        0x50t
        0x45t
        0x4dt
        0x47t
        0x4bt
        0x16t
        0x5dt
        0x5ft
        0x4dt
        0x1at
        0x7t
        0x1ct
        0x4ct
        0x54t
        0x4at
        0x1at
        0x6t
        0xat
        0x4dt
        0x5ft
        0x4dt
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "18c374"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x62t
        0x4ct
        0x16t
        0x51t
        0x16t
    .end array-data
.end method


# virtual methods
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8a49b2"

    const-wide v4, -0x3e35b916c5000000L    # -8.81709686E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x15t
        0x41t
        0x5bt
        0x43t
    .end array-data
.end method

.method public getReceivedBytesCount()J
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c4be5b"

    const-wide/32 v4, 0x2bc62974

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x40t
        0x17t
        0x7t
        0x14t
    .end array-data
.end method

.method public getRequestCount()J
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5c6b0b"

    const-wide/32 v4, -0x3e8fbb75

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x17t
        0x43t
        0x0t
        0x11t
    .end array-data
.end method

.method public getResponseCount()J
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "00b8c3"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x63t
        0x44t
        0x17t
        0x5at
        0x42t
    .end array-data
.end method

.method public getSentBytesCount()J
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4fa559"

    const/16 v3, 0x7795

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x67t
        0x12t
        0x14t
        0x57t
        0x14t
    .end array-data
.end method

.method public incrementRequestCount()V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "705a1e"

    const-wide/32 v4, 0x501183d3

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x64t
        0x44t
        0x40t
        0x3t
        0x10t
    .end array-data
.end method

.method public incrementResponseCount()V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8d8dcf"

    const/16 v3, -0x431c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6bt
        0x10t
        0x4dt
        0x6t
        0x42t
    .end array-data
.end method

.method public reset()V
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "69df1d"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x65t
        0x4dt
        0x11t
        0x4t
        0x10t
    .end array-data
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8dcbfb"

    const/16 v3, 0x621f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6bt
        0x10t
        0x16t
        0x0t
        0x47t
    .end array-data
.end method
