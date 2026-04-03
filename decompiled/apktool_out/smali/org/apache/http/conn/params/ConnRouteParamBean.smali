.class public Lorg/apache/http/conn/params/ConnRouteParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 6

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/params/HttpParams;

    invoke-direct {p0, v0}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f7f44c"

    const-wide v4, -0x3e4f687df2000000L    # -2.78364686E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x43t
        0x13t
        0x56t
        0x15t
    .end array-data
.end method


# virtual methods
.method public setDefaultProxy(Lorg/apache/http/HttpHost;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2fcffc"

    const v3, -0x3157d056    # -1.410848E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x12t
        0x16t
        0x4t
        0x47t
    .end array-data
.end method

.method public setForcedRoute(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f50023"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x35t
        0x41t
        0x45t
        0x52t
        0x13t
    .end array-data
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "42bee7"

    const-wide v4, -0x3e5885b880000000L    # -1.96944832E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x67t
        0x46t
        0x17t
        0x7t
        0x44t
    .end array-data
.end method
