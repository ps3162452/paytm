.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutstandingListen"
.end annotation


# instance fields
.field private final hashFunction:Lcom/google/firebase/database/connection/ListenHashProvider;

.field private final query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

.field private final resultCallback:Lcom/google/firebase/database/connection/RequestResultCallback;

.field private final tag:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;Ljava/lang/Long;Lcom/google/firebase/database/connection/ListenHashProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->resultCallback:Lcom/google/firebase/database/connection/RequestResultCallback;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    iput-object p4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->hashFunction:Lcom/google/firebase/database/connection/ListenHashProvider;

    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->tag:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;Ljava/lang/Long;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;-><init>(Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;Ljava/lang/Long;Lcom/google/firebase/database/connection/ListenHashProvider;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/RequestResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->resultCallback:Lcom/google/firebase/database/connection/RequestResultCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    return-object v0
.end method


# virtual methods
.method public getHashFunction()Lcom/google/firebase/database/connection/ListenHashProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->hashFunction:Lcom/google/firebase/database/connection/ListenHashProvider;

    return-object v0
.end method

.method public getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    return-object v0
.end method

.method public getTag()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->tag:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "36afb7"

    const v3, -0x312690d5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->tag:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x10

    aput-byte v3, v1, v2

    const-string v2, "9560d7"

    const-wide/32 v4, -0x6e60d1be

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x13t
        0x1et
        0x35t
        0x7t
        0x5t
        0xdt
        0x13t
    .end array-data
.end method
