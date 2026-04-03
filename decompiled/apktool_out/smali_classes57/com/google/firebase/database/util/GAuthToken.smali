.class public Lcom/google/firebase/database/util/GAuthToken;
.super Ljava/lang/Object;


# static fields
.field private static final AUTH_KEY:Ljava/lang/String;

.field private static final TOKEN_KEY:Ljava/lang/String;

.field private static final TOKEN_PREFIX:Ljava/lang/String;


# instance fields
.field private final auth:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "563008"

    const v2, 0x4caa34aa    # 8.923682E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/util/GAuthToken;->AUTH_KEY:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "f5c749"

    const-wide/32 v2, 0x2f892f27

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/util/GAuthToken;->TOKEN_KEY:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "0dcbaf"

    const/16 v2, 0x98b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/util/GAuthToken;->TOKEN_PREFIX:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x54t
        0x43t
        0x47t
        0x58t
    .end array-data

    :array_1
    .array-data 1
        0x12t
        0x5at
        0x8t
        0x52t
        0x5at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x57t
        0x5t
        0x16t
        0x16t
        0x9t
        0x1at
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/util/GAuthToken;->token:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/database/util/GAuthToken;->auth:Ljava/util/Map;

    return-void
.end method

.method public static tryParseFromString(Ljava/lang/String;)Lcom/google/firebase/database/util/GAuthToken;
    .locals 6

    sget-object v0, Lcom/google/firebase/database/util/GAuthToken;->TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/firebase/database/util/GAuthToken;->TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/google/firebase/database/util/JsonMapper;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/util/GAuthToken;

    sget-object v0, Lcom/google/firebase/database/util/GAuthToken;->TOKEN_KEY:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/google/firebase/database/util/GAuthToken;->AUTH_KEY:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/database/util/GAuthToken;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ed14e1"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x23t
        0x5t
        0x58t
        0x58t
        0x0t
        0x55t
        0x45t
        0x10t
        0x5et
        0x14t
        0x15t
        0x50t
        0x17t
        0x17t
        0x54t
        0x14t
        0x2t
        0x50t
        0x10t
        0x10t
        0x59t
        0x14t
        0x11t
        0x5et
        0xet
        0x1t
        0x5ft
    .end array-data
.end method


# virtual methods
.method public getAuth()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/util/GAuthToken;->auth:Ljava/util/Map;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/util/GAuthToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/firebase/database/util/GAuthToken;->TOKEN_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/database/util/GAuthToken;->token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/database/util/GAuthToken;->AUTH_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/database/util/GAuthToken;->auth:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {v0}, Lcom/google/firebase/database/util/JsonMapper;->serializeJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/firebase/database/util/GAuthToken;->TOKEN_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x1f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "666169"

    const-wide/32 v4, 0x5c317fac

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 1
        0x70t
        0x57t
        0x5ft
        0x5dt
        0x53t
        0x5dt
        0x16t
        0x42t
        0x59t
        0x11t
        0x45t
        0x5ct
        0x44t
        0x5ft
        0x57t
        0x5dt
        0x5ft
        0x43t
        0x53t
        0x16t
        0x51t
        0x50t
        0x43t
        0x4dt
        0x5et
        0x16t
        0x42t
        0x5et
        0x5dt
        0x5ct
        0x58t
    .end array-data
.end method
