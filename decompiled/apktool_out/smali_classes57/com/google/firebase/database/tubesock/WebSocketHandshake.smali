.class Lcom/google/firebase/database/tubesock/WebSocketHandshake;
.super Ljava/lang/Object;


# static fields
.field private static final WEBSOCKET_VERSION:Ljava/lang/String;


# instance fields
.field private extraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nonce:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private url:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ca7da7"

    const v2, -0x3161450d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->WEBSOCKET_VERSION:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x52t
        0x52t
    .end array-data
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->protocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->nonce:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->extraHeaders:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    iput-object p2, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->protocol:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->extraHeaders:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->createNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->nonce:Ljava/lang/String;

    return-void
.end method

.method private createNonce()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x10

    const/4 v1, 0x0

    new-array v2, v4, [B

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    const/16 v3, 0xff

    invoke-direct {p0, v1, v3}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateHeader(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "ae7cd0"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :array_0
    .array-data 1
        0x5bt
        0x45t
    .end array-data
.end method

.method private rand(II)I
    .locals 6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getHandshake()[B
    .locals 10

    const/4 v9, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v6, [B

    const/16 v3, 0xf

    aput-byte v3, v1, v8

    const-string v3, "54f4bf"

    const/16 v4, -0x593d

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const-string v4, "020e85"

    invoke-static {v1, v4, v8, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v9, [B

    fill-array-data v0, :array_1

    const-string v1, "f314d6"

    const-wide v4, -0x3e2df7135b400000L    # -1.210299027E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v4, "741c6d"

    const v5, 0x4e51e20b    # 8.80313E8f

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "16db8d"

    invoke-static {v0, v1, v8, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [B

    fill-array-data v1, :array_4

    const-string v4, "3ad8bd"

    const/16 v5, -0x185c

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "e11a32"

    const-wide/32 v4, 0x6a8b465b

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->WEBSOCKET_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "dd4cd2"

    const v4, 0x4cea1551    # 1.2272705E8f

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->nonce:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v4, "03dc37"

    const v5, 0x4eb998c2

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->extraHeaders:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->extraHeaders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v6, [B

    const/16 v4, 0x5e

    aput-byte v4, v3, v8

    const-string v4, "a1d2d4"

    const/16 v5, 0x706

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v7, [B

    fill-array-data v1, :array_8

    const-string v4, "fc1247"

    const-wide/32 v6, -0x19ce3059

    invoke-static {v1, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "7ff79f"

    const/16 v4, 0x40b6

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->generateHeader(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v0, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :array_0
    .array-data 1
        0x78t
        0x5dt
        0x43t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x33t
        0x43t
        0x56t
        0x46t
        0x5t
        0x52t
        0x3t
    .end array-data

    :array_2
    .array-data 1
        0x40t
        0x51t
        0x53t
        0x10t
        0x59t
        0x7t
        0x5ct
        0x51t
        0x45t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x72t
        0x59t
        0xat
        0xct
        0x5dt
        0x7t
        0x45t
        0x5ft
        0xbt
        0xct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x66t
        0x11t
        0x3t
        0x4at
        0x3t
        0x0t
        0x56t
    .end array-data

    :array_5
    .array-data 1
        0x36t
        0x54t
        0x52t
        0x4ct
        0x64t
        0x57t
        0x7t
        0x62t
        0x5et
        0x2t
        0x58t
        0x57t
        0x11t
        0x1ct
        0x67t
        0x4t
        0x41t
        0x41t
        0xct
        0x5et
        0x5ft
    .end array-data

    nop

    :array_6
    .array-data 1
        0x37t
        0x1t
        0x57t
        0x4et
        0x33t
        0x57t
        0x6t
        0x37t
        0x5bt
        0x0t
        0xft
        0x57t
        0x10t
        0x49t
        0x7ft
        0x6t
        0x1dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x63t
        0x56t
        0x7t
        0x4et
        0x64t
        0x52t
        0x52t
        0x60t
        0xbt
        0x0t
        0x58t
        0x52t
        0x44t
        0x1et
        0x34t
        0x11t
        0x5ct
        0x43t
        0x5ft
        0x50t
        0xbt
        0xft
    .end array-data

    nop

    :array_8
    .array-data 1
        0x21t
        0x26t
        0x65t
        0x12t
    .end array-data

    :array_9
    .array-data 1
        0x17t
        0x2et
        0x32t
        0x63t
        0x69t
        0x49t
        0x6t
        0x48t
        0x57t
        0x3at
        0x33t
    .end array-data
.end method

.method public verifyServerHandshakeHeaders(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c5adda"

    const v2, 0x4dbf84e9    # 4.0164483E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [B

    fill-array-data v1, :array_1

    const-string v2, "92f8d9"

    const v3, -0x3276f9ff

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v5, [B

    fill-array-data v0, :array_2

    const-string v1, "750a71"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "a01d7e"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "57d081"

    const v3, 0x4ecac404

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const/16 v1, 0x44

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "f5a389"

    const v3, -0x312b6cfd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x14t
        0x50t
        0x3t
        0x17t
        0xbt
        0x2t
        0x8t
        0x50t
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4ct
        0x42t
        0x1t
        0x4at
        0x5t
        0x5dt
        0x5ct
    .end array-data

    :array_2
    .array-data 1
        0x42t
        0x45t
        0x57t
        0x13t
        0x56t
        0x55t
        0x52t
    .end array-data

    :array_3
    .array-data 1
        0x2t
        0x5ft
        0x5ft
        0xat
        0x52t
        0x6t
        0x15t
        0x59t
        0x5et
        0xat
    .end array-data

    nop

    :array_4
    .array-data 1
        0x56t
        0x58t
        0xat
        0x5et
        0x5dt
        0x52t
        0x41t
        0x5et
        0xbt
        0x5et
        0x18t
        0x57t
        0x54t
        0x5et
        0x8t
        0x55t
        0x5ct
        0xbt
        0x15t
        0x5at
        0xdt
        0x43t
        0x4bt
        0x58t
        0x5bt
        0x50t
        0x44t
        0x58t
        0x5dt
        0x50t
        0x51t
        0x52t
        0x16t
        0x10t
        0x5et
        0x58t
        0x50t
        0x5bt
        0x0t
        0x10t
        0x51t
        0x5ft
        0x15t
        0x44t
        0x1t
        0x42t
        0x4et
        0x54t
        0x47t
        0x17t
        0xct
        0x51t
        0x56t
        0x55t
        0x46t
        0x5ft
        0x5t
        0x5bt
        0x5dt
        0xbt
        0x15t
        0x74t
        0xbt
        0x5et
        0x56t
        0x54t
        0x56t
        0x43t
        0xdt
        0x5ft
        0x56t
    .end array-data

    :array_5
    .array-data 1
        0x5t
        0x5at
        0xft
        0x5dt
        0x5dt
        0x5at
        0x12t
        0x5ct
        0xet
        0x5dt
        0x18t
        0x5ft
        0x7t
        0x5ct
        0xdt
        0x56t
        0x5ct
        0x3t
        0x46t
        0x58t
        0x8t
        0x40t
        0x4bt
        0x50t
        0x8t
        0x52t
        0x41t
        0x5bt
        0x5dt
        0x58t
        0x2t
        0x50t
        0x13t
        0x13t
        0x5et
        0x50t
        0x3t
        0x59t
        0x5t
        0x13t
        0x51t
        0x57t
        0x46t
        0x46t
        0x4t
        0x41t
        0x4et
        0x5ct
        0x14t
        0x15t
        0x9t
        0x52t
        0x56t
        0x5dt
        0x15t
        0x5dt
        0x0t
        0x58t
        0x5dt
        0x3t
        0x46t
        0x60t
        0x11t
        0x54t
        0x4at
        0x58t
        0x2t
        0x50t
    .end array-data
.end method

.method public verifyServerStatusLine(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x9

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x197

    if-eq v0, v1, :cond_2

    const/16 v1, 0x194

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x27

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "81709f"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "28d4f5"

    const/16 v3, 0x729c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "42297d"

    const v3, -0x32082544

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x5et
        0x59t
        0x5et
        0x5ct
        0x5t
        0x4ct
        0x58t
        0x58t
        0x5et
        0x19t
        0x0t
        0x59t
        0x58t
        0x5bt
        0x55t
        0x5dt
        0x5ct
        0x18t
        0x44t
        0x59t
        0x5bt
        0x57t
        0x9t
        0x4ft
        0x5ft
        0x17t
        0x43t
        0x4dt
        0x7t
        0x4ct
        0x44t
        0x44t
        0x10t
        0x5at
        0x9t
        0x5ct
        0x54t
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0x57t
        0xat
        0x5at
        0x3t
        0x56t
        0x46t
        0x51t
        0xbt
        0x5at
        0x46t
        0x53t
        0x53t
        0x51t
        0x8t
        0x51t
        0x2t
        0xft
        0x12t
        0xct
        0x54t
        0x0t
        0x46t
        0x5bt
        0x5dt
        0x4ct
        0x44t
        0x52t
        0x9t
        0x40t
        0x5ct
        0x5ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x5dt
        0x5ct
        0x57t
        0x52t
        0x7t
        0x40t
        0x5bt
        0x5dt
        0x57t
        0x17t
        0x2t
        0x55t
        0x5bt
        0x5et
        0x5ct
        0x53t
        0x5et
        0x14t
        0x42t
        0x40t
        0x56t
        0x4ft
        0x1dt
        0x14t
        0x53t
        0x47t
        0x4dt
        0x5ft
        0x1t
        0x5at
        0x46t
        0x5bt
        0x5at
        0x56t
        0x10t
        0x5dt
        0x5dt
        0x5ct
        0x19t
        0x59t
        0xbt
        0x40t
        0x12t
        0x41t
        0x4ct
        0x47t
        0x14t
        0x5bt
        0x40t
        0x46t
        0x5ct
        0x53t
    .end array-data
.end method
