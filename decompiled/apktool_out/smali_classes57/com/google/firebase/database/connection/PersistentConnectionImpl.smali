.class public Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/connection/Connection$Delegate;
.implements Lcom/google/firebase/database/connection/PersistentConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final IDLE_INTERRUPT_REASON:Ljava/lang/String;

.field private static final IDLE_TIMEOUT:J = 0xea60L

.field private static final INVALID_AUTH_TOKEN_THRESHOLD:J = 0x3L

.field private static final REQUEST_ACTION:Ljava/lang/String;

.field private static final REQUEST_ACTION_AUTH:Ljava/lang/String;

.field private static final REQUEST_ACTION_GAUTH:Ljava/lang/String;

.field private static final REQUEST_ACTION_MERGE:Ljava/lang/String;

.field private static final REQUEST_ACTION_ONDISCONNECT_CANCEL:Ljava/lang/String;

.field private static final REQUEST_ACTION_ONDISCONNECT_MERGE:Ljava/lang/String;

.field private static final REQUEST_ACTION_ONDISCONNECT_PUT:Ljava/lang/String;

.field private static final REQUEST_ACTION_PUT:Ljava/lang/String;

.field private static final REQUEST_ACTION_QUERY:Ljava/lang/String;

.field private static final REQUEST_ACTION_QUERY_UNLISTEN:Ljava/lang/String;

.field private static final REQUEST_ACTION_STATS:Ljava/lang/String;

.field private static final REQUEST_ACTION_UNAUTH:Ljava/lang/String;

.field private static final REQUEST_AUTHVAR:Ljava/lang/String;

.field private static final REQUEST_COMPOUND_HASH:Ljava/lang/String;

.field private static final REQUEST_COMPOUND_HASH_HASHES:Ljava/lang/String;

.field private static final REQUEST_COMPOUND_HASH_PATHS:Ljava/lang/String;

.field private static final REQUEST_COUNTERS:Ljava/lang/String;

.field private static final REQUEST_CREDENTIAL:Ljava/lang/String;

.field private static final REQUEST_DATA_HASH:Ljava/lang/String;

.field private static final REQUEST_DATA_PAYLOAD:Ljava/lang/String;

.field private static final REQUEST_ERROR:Ljava/lang/String;

.field private static final REQUEST_NUMBER:Ljava/lang/String;

.field private static final REQUEST_PATH:Ljava/lang/String;

.field private static final REQUEST_PAYLOAD:Ljava/lang/String;

.field private static final REQUEST_QUERIES:Ljava/lang/String;

.field private static final REQUEST_STATUS:Ljava/lang/String;

.field private static final REQUEST_TAG:Ljava/lang/String;

.field private static final RESPONSE_FOR_REQUEST:Ljava/lang/String;

.field private static final SERVER_ASYNC_ACTION:Ljava/lang/String;

.field private static final SERVER_ASYNC_AUTH_REVOKED:Ljava/lang/String;

.field private static final SERVER_ASYNC_DATA_MERGE:Ljava/lang/String;

.field private static final SERVER_ASYNC_DATA_RANGE_MERGE:Ljava/lang/String;

.field private static final SERVER_ASYNC_DATA_UPDATE:Ljava/lang/String;

.field private static final SERVER_ASYNC_LISTEN_CANCELLED:Ljava/lang/String;

.field private static final SERVER_ASYNC_PAYLOAD:Ljava/lang/String;

.field private static final SERVER_ASYNC_SECURITY_DEBUG:Ljava/lang/String;

.field private static final SERVER_DATA_END_PATH:Ljava/lang/String;

.field private static final SERVER_DATA_RANGE_MERGE:Ljava/lang/String;

.field private static final SERVER_DATA_START_PATH:Ljava/lang/String;

.field private static final SERVER_DATA_TAG:Ljava/lang/String;

.field private static final SERVER_DATA_UPDATE_BODY:Ljava/lang/String;

.field private static final SERVER_DATA_UPDATE_PATH:Ljava/lang/String;

.field private static final SERVER_DATA_WARNINGS:Ljava/lang/String;

.field private static final SERVER_KILL_INTERRUPT_REASON:Ljava/lang/String;

.field private static final SERVER_RESPONSE_DATA:Ljava/lang/String;

.field private static final SUCCESSFUL_CONNECTION_ESTABLISHED_DELAY:J = 0x7530L

.field private static final TOKEN_REFRESH_INTERRUPT_REASON:Ljava/lang/String;

.field private static connectionIds:J


# instance fields
.field private authToken:Ljava/lang/String;

.field private final authTokenProvider:Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

.field private cachedHost:Ljava/lang/String;

.field private connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field private final context:Lcom/google/firebase/database/connection/ConnectionContext;

.field private currentGetTokenAttempt:J

.field private final delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private firstConnection:Z

.field private forceAuthTokenRefresh:Z

.field private hasOnDisconnects:Z

.field private final hostInfo:Lcom/google/firebase/database/connection/HostInfo;

.field private inactivityTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private interruptReasons:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private invalidAuthTokenCount:I

.field private lastConnectionEstablishedTime:J

.field private lastSessionId:Ljava/lang/String;

.field private lastWriteTimestamp:J

.field private listens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private onDisconnectRequestQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingPuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;",
            ">;"
        }
    .end annotation
.end field

.field private realtime:Lcom/google/firebase/database/connection/Connection;

.field private requestCBHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private requestCounter:J

.field private final retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

.field private writeCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/16 v7, 0x14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6df3c0"

    const-wide/32 v2, -0x74569f89

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->IDLE_INTERRUPT_REASON:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x53

    aput-byte v1, v0, v4

    const-string v1, "2431d7"

    const-wide/32 v2, -0x4ae8327f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_1

    const-string v1, "d813c6"

    const/16 v2, 0x1555

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_AUTH:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "c95da7"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_GAUTH:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x5f

    aput-byte v1, v0, v4

    const-string v1, "202fff"

    const-wide/32 v2, 0x708cceb9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_MERGE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_3

    const-string v1, "cb6245"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_ONDISCONNECT_CANCEL:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "075fc2"

    const/16 v2, -0x3f33

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_ONDISCONNECT_MERGE:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0xd

    aput-byte v1, v0, v4

    const-string v1, "bb7ceb"

    const v2, -0x3136d4e0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_ONDISCONNECT_PUT:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x49

    aput-byte v1, v0, v4

    const-string v1, "92c1fa"

    const v2, 0x4e1745d0    # 6.344837E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_PUT:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x46

    aput-byte v1, v0, v4

    const-string v1, "799cd5"

    const/16 v2, 0x70a7

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_QUERY:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x5a

    aput-byte v1, v0, v4

    const-string v1, "427d21"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_QUERY_UNLISTEN:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x43

    aput-byte v1, v0, v4

    const-string v1, "09a4e0"

    const/16 v2, -0x5bfd

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_STATS:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "f801a9"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_UNAUTH:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "8b4483"

    const/16 v2, -0xf5e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_AUTHVAR:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_7

    const-string v1, "fb38b5"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_COMPOUND_HASH:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_8

    const-string v1, "6e2e22"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_COMPOUND_HASH_HASHES:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_9

    const-string v1, "df01b9"

    const-wide v2, 0x41d6d80f56400000L    # 1.533033817E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_COMPOUND_HASH_PATHS:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x56

    aput-byte v1, v0, v4

    const-string v1, "519d57"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_COUNTERS:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_a

    const-string v1, "2ce27b"

    const-wide v2, 0x41c0fa96ca800000L    # 5.69716117E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_CREDENTIAL:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x9

    aput-byte v1, v0, v4

    const-string v1, "a799f9"

    const-wide/32 v2, -0x3352b46f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_HASH:Ljava/lang/String;

    new-array v0, v5, [B

    aput-byte v6, v0, v4

    const-string v1, "f99d84"

    const/16 v2, -0x4c91

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_PAYLOAD:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "314c89"

    const/16 v2, 0x34de

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ERROR:Ljava/lang/String;

    new-array v0, v5, [B

    aput-byte v7, v0, v4

    const-string v1, "fa92a6"

    const-wide v2, 0x41b99af285000000L    # 4.29585029E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_NUMBER:Ljava/lang/String;

    new-array v0, v5, [B

    aput-byte v7, v0, v4

    const-string v1, "d0a7d5"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_PATH:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x5b

    aput-byte v1, v0, v4

    const-string v1, "98112d"

    const-wide v2, 0x41bdcaaa72000000L    # 4.9982117E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_PAYLOAD:Ljava/lang/String;

    new-array v0, v5, [B

    aput-byte v7, v0, v4

    const-string v1, "e98464"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_QUERIES:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x42

    aput-byte v1, v0, v4

    const-string v1, "1bcba3"

    const v2, -0x3157ab7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_STATUS:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x47

    aput-byte v1, v0, v4

    const-string v1, "3cccdd"

    const v2, 0x4e1494d8    # 6.2319565E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_TAG:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x53

    aput-byte v1, v0, v4

    const-string v1, "177f1e"

    const v2, 0x4ec5ac8c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->RESPONSE_FOR_REQUEST:Ljava/lang/String;

    new-array v0, v5, [B

    const/4 v1, 0x7

    aput-byte v1, v0, v4

    const-string v1, "f71f26"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_ACTION:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_c

    const-string v1, "585196"

    const-wide/32 v2, -0x453ae583

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_AUTH_REVOKED:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x58

    aput-byte v1, v0, v4

    const-string v1, "512aa7"

    const-wide/32 v2, -0x7087b79b

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_DATA_MERGE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_d

    const-string v1, "930789"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_DATA_RANGE_MERGE:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x51

    aput-byte v1, v0, v4

    const-string v1, "5ee17f"

    const-wide v2, -0x3e4e158f78000000L    # -3.00576904E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_DATA_UPDATE:Ljava/lang/String;

    new-array v0, v5, [B

    aput-byte v5, v0, v4

    const-string v1, "b37ec2"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_LISTEN_CANCELLED:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x5a

    aput-byte v1, v0, v4

    const-string v1, "866e33"

    const-wide/32 v2, -0x145f8c57

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_PAYLOAD:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_e

    const-string v1, "d49a23"

    const/16 v2, -0x36d4

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_SECURITY_DEBUG:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x5c

    aput-byte v1, v0, v4

    const-string v1, "9bb4a7"

    const-wide/32 v2, 0x3825c744

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_DATA_END_PATH:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x8

    aput-byte v1, v0, v4

    const-string v1, "e9f63b"

    const/16 v2, -0x647a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_DATA_RANGE_MERGE:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x10

    aput-byte v1, v0, v4

    const-string v1, "cc64a1"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_DATA_START_PATH:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x17

    aput-byte v1, v0, v4

    const-string v1, "cfeff8"

    const-wide/32 v2, -0x6d3abf92

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_DATA_TAG:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x5c

    aput-byte v1, v0, v4

    const-string v1, "85fae2"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_DATA_UPDATE_BODY:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x13

    aput-byte v1, v0, v4

    const-string v1, "c05bcd"

    const-wide/32 v2, 0x78897d0d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_DATA_UPDATE_PATH:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x42

    aput-byte v1, v0, v4

    const-string v1, "53e016"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_DATA_WARNINGS:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "326882"

    const-wide v2, 0x41c49477cb000000L    # 6.9054863E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_KILL_INTERRUPT_REASON:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x5d

    aput-byte v1, v0, v4

    const-string v1, "969031"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_RESPONSE_DATA:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    const-string v1, "307f06"

    const-wide/32 v2, -0xc2ac74a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->TOKEN_REFRESH_INTERRUPT_REASON:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionIds:J

    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        0xbt
        0x8t
        0x5dt
        0x6t
        0x53t
        0x42t
        0xdt
        0x9t
        0x5dt
        0x3ct
        0x59t
        0x52t
        0x8t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x5t
        0x4dt
        0x45t
        0x5bt
    .end array-data

    :array_2
    .array-data 1
        0x4t
        0x58t
        0x40t
        0x10t
        0x9t
    .end array-data

    nop

    :array_3
    .array-data 1
        0xct
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5ft
        0x5at
    .end array-data

    nop

    :array_5
    .array-data 1
        0x13t
        0x56t
        0x51t
        0x44t
        0x15t
        0x51t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x59t
        0x17t
        0x40t
        0x5ct
        0x4et
        0x52t
        0x4at
    .end array-data

    :array_7
    .array-data 1
        0x5t
        0xat
    .end array-data

    nop

    :array_8
    .array-data 1
        0x5et
        0x16t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x14t
        0x15t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x51t
        0x11t
        0x0t
        0x56t
    .end array-data

    :array_b
    .array-data 1
        0x56t
        0x43t
        0x46t
        0xct
        0x4at
    .end array-data

    nop

    :array_c
    .array-data 1
        0x54t
        0x5bt
    .end array-data

    nop

    :array_d
    .array-data 1
        0x4bt
        0x5et
    .end array-data

    nop

    :array_e
    .array-data 1
        0x17t
        0x50t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x40t
        0x57t
        0x44t
        0x4et
        0x5dt
        0x40t
        0x6ct
        0x59t
        0x5ft
        0x54t
        0x54t
    .end array-data

    :array_10
    .array-data 1
        0x47t
        0x5ft
        0x5ct
        0x3t
        0x5et
        0x69t
        0x41t
        0x55t
        0x51t
        0x14t
        0x55t
        0x45t
        0x5bt
    .end array-data
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    iput-boolean v9, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->firstConnection:Z

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->writeCounter:J

    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCounter:J

    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    iput v8, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    iput-object v10, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getAuthTokenProvider()Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authTokenProvider:Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v2

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "dff4a2"

    const-wide v6, 0x41c7e4bca4000000L    # 8.01732936E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withMinDelayAfterFailure(J)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withRetryExponent(D)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withMaxDelay(J)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withJitterFactor(D)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->build()Lcom/google/firebase/database/connection/util/RetryHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    sget-wide v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionIds:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionIds:J

    new-instance v2, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v3

    const/16 v4, 0x14

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "b806ee"

    const v6, -0x312823c5

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    const-string v7, "04372d"

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    iput-object v10, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastSessionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x9t
        0x8t
        0x5at
        0x4t
        0x51t
        0x10t
        0xft
        0x9t
        0x5at
        0x33t
        0x57t
        0x10t
        0x14t
        0x1ft
        0x7ct
        0x4t
        0x5et
        0x14t
        0x3t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x32t
        0x5dt
        0x42t
        0x45t
        0xct
        0x16t
        0x16t
        0x5dt
        0x5et
        0x42t
        0x26t
        0xat
        0xct
        0x56t
        0x55t
        0x55t
        0x11t
        0xct
        0xdt
        0x56t
    .end array-data

    :array_2
    .array-data 1
        0x40t
        0x57t
        0x6ct
    .end array-data
.end method

.method static synthetic access$1300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I
    .locals 1

    iget v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/google/firebase/database/connection/PersistentConnectionImpl;I)I
    .locals 0

    iput p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    return p1
.end method

.method static synthetic access$1308(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I
    .locals 2

    iget v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnection$Delegate;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->restoreState()V

    return-void
.end method

.method static synthetic access$1602(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/Connection;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/util/RetryHelper;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->warnOnListenerWarnings(Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->removeListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->idleHasTimedOut()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    return-wide v0
.end method

.method static synthetic access$608(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authTokenProvider:Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

    return-object v0
.end method

.method private canSendWrites()Z
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelSentTransactions()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getRequest()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_HASH:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->wasSent()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v0

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5eaaff"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    :array_0
    .array-data 1
        0x51t
        0xct
        0x12t
        0x2t
        0x9t
        0x8t
        0x5bt
        0x0t
        0x2t
        0x15t
        0x3t
        0x2t
    .end array-data
.end method

.method private connected()Z
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Authenticating:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doIdleCheck()V
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->IDLE_INTERRUPT_REASON:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isInterrupted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isIdle()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(Z)V

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->IDLE_INTERRUPT_REASON:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->resume(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPutObject(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_PUT:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_PAYLOAD:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_HASH:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private handleTimestamp(J)V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d0ad2f"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "5190c6"

    const-wide/32 v6, 0x2b68284d

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v0, v2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onServerInfoUpdate(Ljava/util/Map;)V

    return-void

    nop

    :array_0
    .array-data 1
        0xct
        0x51t
        0xft
        0x0t
        0x5et
        0xft
        0xat
        0x57t
        0x41t
        0x10t
        0x5bt
        0xbt
        0x1t
        0x43t
        0x15t
        0x5t
        0x5ft
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x54t
        0x4bt
        0x46t
        0x6t
        0x44t
        0x61t
        0x58t
        0x54t
        0x55t
        0x2ct
        0x50t
        0x53t
        0x42t
        0x5ct
        0x44t
    .end array-data
.end method

.method private idleHasTimedOut()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastWriteTimestamp:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextRequestNumber()J
    .locals 4

    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCounter:J

    return-wide v0
.end method

.method private onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "25d88a"

    invoke-static {v2, v3, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "555f4c"

    const v4, 0x4e5904ce    # 9.102427E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v5

    const-string v3, "dcf063"

    invoke-static {v2, v3, v6, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v0, v5}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onAuthStatus(Z)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/Connection;->close()V

    return-void

    :array_0
    .array-data 1
        0x73t
        0x40t
        0x10t
        0x50t
        0x18t
        0x15t
        0x5dt
        0x5et
        0x1t
        0x56t
        0x18t
        0x13t
        0x57t
        0x43t
        0xbt
        0x53t
        0x5dt
        0x5t
        0x8t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x15t
        0x1dt
    .end array-data
.end method

.method private onDataPush(Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
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

    const/4 v4, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d5a64f"

    const/16 v5, 0x52dc

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_PAYLOAD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_MERGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_MERGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_PUT:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_PAYLOAD:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_TAG:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->longFromObject(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v3, :cond_b

    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_b

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1e

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "3661e1"

    const/16 v5, 0xae4

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_DATA_RANGE_MERGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_PUT:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_PAYLOAD:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_TAG:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->longFromObject(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v7

    check-cast v1, Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_STATS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_DATA_END_PATH:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :goto_2
    if-eqz v3, :cond_c

    invoke-static {v3}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_3
    new-instance v3, Lcom/google/firebase/database/connection/RangeMerge;

    sget-object v10, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_MERGE:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v3, v5, v2, v1}, Lcom/google/firebase/database/connection/RangeMerge;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v5, v4

    goto :goto_2

    :cond_5
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "35eaaf"

    const-wide v6, -0x3e2ae7c466000000L    # -1.415638632E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v0, v6, v8, v7}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onRangeMergeUpdate(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_COUNTERS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_PUT:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onListenRevoked(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_AUTH_REVOKED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_STATS:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_PAYLOAD:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_ASYNC_SECURITY_DEBUG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onSecurityDebugPacket(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "4bd390"

    const/16 v4, 0x24ad

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {v0}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onDataUpdate(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    goto/16 :goto_0

    :cond_c
    move-object v2, v4

    goto/16 :goto_3

    :array_0
    .array-data 1
        0xct
        0x54t
        0xft
        0x52t
        0x58t
        0x3t
        0x37t
        0x50t
        0x13t
        0x40t
        0x51t
        0x14t
        0x29t
        0x50t
        0x12t
        0x45t
        0x55t
        0x1t
        0x1t
        0xft
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5at
        0x51t
        0x58t
        0x5et
        0x17t
        0x58t
        0x5dt
        0x51t
        0x16t
        0x54t
        0x8t
        0x41t
        0x47t
        0x4ft
        0x16t
        0x5ct
        0x0t
        0x43t
        0x54t
        0x53t
        0x16t
        0x57t
        0xat
        0x43t
        0x13t
        0x46t
        0x57t
        0x45t
        0xdt
        0x11t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7at
        0x52t
        0xbt
        0xet
        0x13t
        0xft
        0x5dt
        0x52t
        0x45t
        0x4t
        0xct
        0x16t
        0x47t
        0x4ct
        0x45t
        0x13t
        0x0t
        0x8t
        0x54t
        0x50t
        0x45t
        0xct
        0x4t
        0x14t
        0x54t
        0x50t
        0x45t
        0x7t
        0xet
        0x14t
        0x13t
        0x45t
        0x4t
        0x15t
        0x9t
        0x46t
    .end array-data

    :array_3
    .array-data 1
        0x61t
        0xct
        0x16t
        0x56t
        0x5at
        0x5ft
        0x53t
        0xct
        0xdt
        0x49t
        0x5ct
        0x54t
        0x14t
        0x3t
        0x7t
        0x47t
        0x50t
        0x5ft
        0x5at
        0x42t
        0x2t
        0x41t
        0x56t
        0x5dt
        0x14t
        0x11t
        0x1t
        0x41t
        0x4ft
        0x55t
        0x46t
        0x58t
        0x44t
    .end array-data
.end method

.method private onListenRevoked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->removeListens(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$1200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v0

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "3824a1"

    const v4, 0x4eb12e14

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x43t
        0x5dt
        0x40t
        0x59t
        0x8t
        0x42t
        0x40t
        0x51t
        0x5dt
        0x5at
        0x3et
        0x55t
        0x56t
        0x56t
        0x5bt
        0x51t
        0x5t
    .end array-data
.end method

.method private onSecurityDebugPacket(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "bd5990"

    const v3, -0x31a74f5d    # -9.088637E8f

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->info(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0xft
        0x17t
        0x52t
    .end array-data
.end method

.method private putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->getPutObject(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->writeCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->writeCounter:J

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v0, p5, v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendPut(J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastWriteTimestamp:J

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method private removeListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "add5c9"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "9fb433"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "f9d61a"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x13t
        0x1t
        0x9t
        0x5at
        0x15t
        0x50t
        0xft
        0x3t
        0x44t
        0x44t
        0x16t
        0x5ct
        0x13t
        0x1dt
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x6dt
        0x14t
        0x1bt
        0x5dt
        0x5dt
        0x54t
        0x19t
        0x12t
        0xdt
        0x14t
        0x41t
        0x56t
        0x54t
        0x9t
        0x14t
        0x51t
        0x13t
        0x5ft
        0x50t
        0x15t
        0x16t
        0x51t
        0x5dt
        0x56t
        0x4bt
        0x46t
        0x4t
        0x5bt
        0x41t
        0x13t
        0x68t
        0x13t
        0x7t
        0x46t
        0x4at
        0x60t
        0x49t
        0x3t
        0x1t
        0x14t
    .end array-data

    :array_2
    .array-data 1
        0x46t
        0x5bt
        0x11t
        0x42t
        0x11t
        0xft
        0x9t
        0x19t
        0x8t
        0x5ft
        0x42t
        0x15t
        0x3t
        0x57t
        0x1t
        0x44t
        0x11t
        0x4t
        0x1et
        0x50t
        0x17t
        0x42t
        0x42t
        0x4ft
    .end array-data
.end method

.method private removeListens(Ljava/util/List;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "7a65d0"

    const-wide v4, -0x3e2a42ceea800000L    # -1.458881622E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->access$1000(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-object v2

    :array_0
    .array-data 1
        0x45t
        0x4t
        0x5bt
        0x5at
        0x12t
        0x59t
        0x59t
        0x6t
        0x16t
        0x54t
        0x8t
        0x5ct
        0x17t
        0xdt
        0x5ft
        0x46t
        0x10t
        0x55t
        0x59t
        0x12t
        0x16t
        0x54t
        0x10t
        0x10t
        0x47t
        0x0t
        0x42t
        0x5dt
        0x44t
    .end array-data
.end method

.method private restoreAuth()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "7959e1"

    invoke-static {v3, v4, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connecting:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const/16 v3, 0x32

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "cb65dc"

    const/16 v5, -0x6cf5

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v3, 0x29

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "2e3b9a"

    invoke-static {v3, v4, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->restoreState()V

    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v3, "2c6bca"

    const-wide v4, 0x41c96df77a800000L    # 8.53274357E8

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Authenticating:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthAndRestoreState()V

    goto :goto_1

    :array_0
    .array-data 1
        0x54t
        0x58t
        0x59t
        0x55t
        0xct
        0x5ft
        0x50t
        0x19t
        0x47t
        0x5ct
        0x16t
        0x45t
        0x58t
        0x4bt
        0x50t
        0x19t
        0x16t
        0x45t
        0x56t
        0x4dt
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x34t
        0x3t
        0x58t
        0x41t
        0x1t
        0x7t
        0x43t
        0x16t
        0x59t
        0x15t
        0x16t
        0x6t
        0x10t
        0x16t
        0x59t
        0x47t
        0x1t
        0x43t
        0x2t
        0x17t
        0x42t
        0x5dt
        0x48t
        0x43t
        0x1t
        0x17t
        0x42t
        0x15t
        0x13t
        0x2t
        0x10t
        0x42t
        0x5ft
        0x5bt
        0x44t
        0x14t
        0x11t
        0xdt
        0x58t
        0x52t
        0x44t
        0x10t
        0x17t
        0x3t
        0x42t
        0x50t
        0x5et
        0x43t
        0x46t
        0x11t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7ct
        0xat
        0x47t
        0x42t
        0x4bt
        0x4t
        0x41t
        0x11t
        0x5ct
        0x10t
        0x50t
        0xft
        0x55t
        0x45t
        0x52t
        0x17t
        0x4dt
        0x9t
        0x12t
        0x7t
        0x56t
        0x1t
        0x58t
        0x14t
        0x41t
        0x0t
        0x13t
        0x16t
        0x56t
        0xat
        0x57t
        0xbt
        0x13t
        0xbt
        0x4at
        0x41t
        0x5ct
        0x10t
        0x5ft
        0xet
        0x17t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x60t
        0x6t
        0x45t
        0x16t
        0xct
        0x13t
        0x5bt
        0xdt
        0x51t
        0x42t
        0x2t
        0x14t
        0x46t
        0xbt
        0x18t
    .end array-data
.end method

.method private restoreState()V
    .locals 9

    const/16 v8, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const/16 v3, 0x3c

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "0c0b69"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v3, 0x1d

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "db90ba"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v3}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v8, [B

    fill-array-data v5, :array_2

    const-string v6, "9562c3"

    const/16 v7, -0x761

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v1, v8, [B

    fill-array-data v1, :array_3

    const-string v3, "2eed0e"

    const-wide/32 v4, 0x19818937

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendPut(J)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getPath()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v0

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0xbt
        0x5ft
        0x17t
        0x5at
        0x5dt
        0x10t
        0x1t
        0x55t
        0x42t
        0x55t
        0x56t
        0x5et
        0xdt
        0x55t
        0x1t
        0x42t
        0x5ct
        0x54t
        0x43t
        0x59t
        0x4t
        0x16t
        0x4et
        0x55t
        0x44t
        0x42t
        0x7t
        0x16t
        0x4bt
        0x55t
        0x10t
        0x44t
        0xdt
        0x44t
        0x50t
        0x5et
        0x4t
        0x10t
        0x11t
        0x42t
        0x58t
        0x44t
        0x6t
        0x1ct
        0x42t
        0x54t
        0x4ct
        0x44t
        0x43t
        0x47t
        0x7t
        0x16t
        0x58t
        0x42t
        0x6t
        0xat
        0x42t
        0x13t
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x36t
        0x7t
        0x4at
        0x44t
        0xdt
        0x13t
        0xdt
        0xct
        0x5et
        0x10t
        0xdt
        0x14t
        0x10t
        0x11t
        0x4dt
        0x51t
        0xct
        0x5t
        0xdt
        0xct
        0x5et
        0x10t
        0xet
        0x8t
        0x17t
        0x16t
        0x5ct
        0x5et
        0x11t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6bt
        0x50t
        0x45t
        0x46t
        0xct
        0x41t
        0x50t
        0x5bt
        0x51t
        0x12t
        0xft
        0x5at
        0x4at
        0x41t
        0x53t
        0x5ct
        0x43t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x60t
        0x0t
        0x16t
        0x10t
        0x5ft
        0x17t
        0x5bt
        0xbt
        0x2t
        0x44t
        0x47t
        0x17t
        0x5bt
        0x11t
        0x0t
        0x17t
        0x1et
    .end array-data
.end method

.method private sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendAuthAndRestoreState()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthHelper(Z)V

    return-void
.end method

.method private sendAuthHelper(Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    const/16 v3, 0x2b

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "f00f6c"

    const-wide v6, -0x3e39044ff5800000L    # -7.71186709E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const/16 v3, 0x27

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "d5cf0a"

    const/16 v5, -0x4a2c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/firebase/database/util/GAuthToken;->tryParseFromString(Ljava/lang/String;)Lcom/google/firebase/database/util/GAuthToken;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_CREDENTIAL:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/firebase/database/util/GAuthToken;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/firebase/database/util/GAuthToken;->getAuth()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_AUTHVAR:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/firebase/database/util/GAuthToken;->getAuth()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_GAUTH:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_CREDENTIAL:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_AUTH:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x2bt
        0x45t
        0x43t
        0x12t
        0x16t
        0x1t
        0x3t
        0x10t
        0x53t
        0x9t
        0x58t
        0xdt
        0x3t
        0x53t
        0x44t
        0x3t
        0x52t
        0x43t
        0x12t
        0x5ft
        0x10t
        0x15t
        0x53t
        0xdt
        0x2t
        0x10t
        0x51t
        0x13t
        0x42t
        0xbt
        0x4at
        0x10t
        0x52t
        0x13t
        0x42t
        0x43t
        0x11t
        0x51t
        0x43t
        0x5ct
        0x16t
        0x46t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x25t
        0x40t
        0x17t
        0xet
        0x10t
        0x15t
        0xbt
        0x5et
        0x6t
        0x8t
        0x10t
        0xct
        0x11t
        0x46t
        0x17t
        0x46t
        0x52t
        0x4t
        0x44t
        0x46t
        0x6t
        0x12t
        0x10t
        0x15t
        0xbt
        0x15t
        0x2t
        0x13t
        0x44t
        0x9t
        0x1t
        0x5bt
        0x17t
        0xft
        0x53t
        0x0t
        0x10t
        0x50t
        0x42t
    .end array-data
.end method

.method private sendConnectStats()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/ConnectionContext;->isPersistenceEnabled()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "013236"

    invoke-static {v1, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "5c5ec1"

    const/16 v5, -0x5c74

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {v3}, Lcom/google/firebase/database/connection/ConnectionContext;->getClientSdkVersion()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "13cfe1"

    const-wide/32 v4, -0x1d4bc57b

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendStats(Ljava/util/Map;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x54t
        0x41t
        0x41t
        0x5at
        0x45t
        0x44t
        0x54t
        0x5dt
        0x51t
        0x56t
        0x18t
        0x51t
        0x5ft
        0x57t
        0x40t
        0x5ct
        0x5ft
        0x54t
        0x1ft
        0x56t
        0x5ct
        0x52t
        0x54t
        0x5ct
        0x54t
        0x57t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x7t
        0x5et
        0x4bt
        0x2t
        0x5ft
        0x51t
        0x11t
        0x5at
        0xct
        0x7t
        0x1ft
    .end array-data

    :array_2
    .array-data 1
        0x62t
        0x56t
        0xdt
        0x2t
        0xct
        0x5ft
        0x56t
        0x13t
        0x5t
        0xft
        0x17t
        0x42t
        0x45t
        0x13t
        0x0t
        0x9t
        0xbt
        0x5ft
        0x54t
        0x50t
        0x17t
        0xft
        0xat
        0x5ft
        0x11t
        0x40t
        0x17t
        0x7t
        0x11t
        0x42t
    .end array-data
.end method

.method private sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_PUT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->access$1000(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getTag()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_QUERY:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$900(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->access$1100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getHashFunction()Lcom/google/firebase/database/connection/ListenHashProvider;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_HASH:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/ListenHashProvider;->getSimpleHash()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/ListenHashProvider;->shouldIncludeCompoundHash()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/firebase/database/connection/ListenHashProvider;->getCompoundHash()Lcom/google/firebase/database/connection/CompoundHash;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/CompoundHash;->getPosts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_COMPOUND_HASH_HASHES:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/CompoundHash;->getHashes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_COMPOUND_HASH_PATHS:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_COMPOUND_HASH:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_QUERY:Ljava/lang/String;

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_PUT:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_DATA_PAYLOAD:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;

    invoke-direct {v1, p0, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendPut(J)V
    .locals 9

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->markSent()V

    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getRequest()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;JLcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    invoke-direct {p0, v3, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->nextRequestNumber()J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_NUMBER:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    invoke-virtual {v3, v2, p2}, Lcom/google/firebase/database/connection/Connection;->sendRequest(Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendStats(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_COUNTERS:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_STATS:Ljava/lang/String;

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;

    invoke-direct {v2, p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ae88c2"

    const-wide v4, -0x3e38450a9e000000L    # -7.96256964E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x2ft
        0xat
        0x4ct
        0x18t
        0x10t
        0x57t
        0xft
        0x1t
        0x51t
        0x56t
        0x4t
        0x12t
        0x12t
        0x11t
        0x59t
        0x4ct
        0x10t
        0x12t
        0x3t
        0x0t
        0x5bt
        0x59t
        0x16t
        0x41t
        0x4t
        0x45t
        0x4bt
        0x4ct
        0x2t
        0x46t
        0x12t
        0x45t
        0x59t
        0x4at
        0x6t
        0x12t
        0x4t
        0x8t
        0x48t
        0x4ct
        0x1at
    .end array-data
.end method

.method private sendUnauth()V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "db1f11"

    const-wide v4, 0x41d0876b6e800000L    # 1.109241274E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "57f02c"

    const v4, 0x4ecbae3a    # 1.7085965E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_UNAUTH:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x29t
        0x17t
        0x42t
        0x12t
        0x11t
        0x53t
        0x1t
        0x42t
        0x52t
        0x9t
        0x5ft
        0x5ft
        0x1t
        0x1t
        0x45t
        0x3t
        0x55t
        0x11t
        0x10t
        0xdt
        0x11t
        0x15t
        0x54t
        0x5ft
        0x0t
        0x42t
        0x44t
        0x8t
        0x50t
        0x44t
        0x10t
        0xat
        0x1ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x42t
        0x12t
        0x58t
        0x12t
        0x17t
        0x5at
        0x5ct
        0x3t
        0x5et
        0x12t
        0xet
        0x40t
        0x44t
        0x12t
        0x10t
        0x5ct
        0xct
        0x41t
        0x17t
        0x4t
        0x55t
        0x12t
        0x10t
        0x50t
        0x43t
        0x48t
    .end array-data
.end method

.method private sendUnlisten(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_PUT:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$900(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->access$1000(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getTag()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_QUERY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->access$1100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_TAG:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_QUERY_UNLISTEN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private tryScheduleReconnect()V
    .locals 7

    const/16 v6, 0x1d

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->shouldReconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    new-array v3, v6, [B

    fill-array-data v3, :array_0

    const-string v4, "290116"

    const v5, 0x4e8e4c6d

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v4, v6, [B

    fill-array-data v4, :array_1

    const-string v5, "d82323"

    invoke-static {v4, v5, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper;->retry(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x7ct
        0x56t
        0x44t
        0x11t
        0x58t
        0x58t
        0x12t
        0x5dt
        0x59t
        0x42t
        0x52t
        0x59t
        0x5ct
        0x57t
        0x55t
        0x52t
        0x45t
        0x53t
        0x56t
        0x19t
        0x43t
        0x45t
        0x50t
        0x42t
        0x57t
        0x3t
        0x10t
        0x14t
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x37t
        0x5bt
        0x5at
        0x56t
        0x56t
        0x46t
        0x8t
        0x51t
        0x5ct
        0x54t
        0x12t
        0x50t
        0xbt
        0x56t
        0x5ct
        0x56t
        0x51t
        0x47t
        0xdt
        0x57t
        0x5ct
        0x13t
        0x53t
        0x47t
        0x10t
        0x5dt
        0x5ft
        0x43t
        0x46t
    .end array-data
.end method

.method private upgradeAuth()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthHelper(Z)V

    return-void
.end method

.method private warnOnListenerWarnings(Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4a37d5"

    const v2, 0x4eae89ef    # 1.4641376E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "7cf5e8"

    const-wide v4, 0x41b03e980d000000L    # 2.72537613E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->access$1100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0xb

    aput-byte v4, v2, v3

    const-string v3, "b49e99"

    const-wide/32 v4, 0x7d2e8f83

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x66

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "af0729"

    const-wide v6, 0x41d108fa9c000000L    # 1.143204464E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "cf2706"

    const-wide v4, 0x41bf971ceb000000L    # 5.29997035E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;->access$1000(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x44

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "71736e"

    const/16 v4, -0x56d8

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x5at
        0xet
        0x6ct
        0x5et
        0xat
        0x51t
        0x51t
        0x19t
    .end array-data

    :array_1
    .array-data 1
        0x15t
        0x4dt
        0xft
        0x5bt
        0x1t
        0x5dt
        0x4ft
        0x2ct
        0x8t
        0x17t
        0x5ft
        0x18t
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x34t
        0x15t
        0x59t
        0x59t
        0x55t
        0x19t
        0x0t
        0x8t
        0x10t
        0x42t
        0x5ct
        0x4at
        0x11t
        0x3t
        0x53t
        0x5et
        0x54t
        0x50t
        0x4t
        0x2t
        0x10t
        0x5et
        0x5ct
        0x5dt
        0x4t
        0x1et
        0x1et
        0x17t
        0x6bt
        0x56t
        0x14t
        0x14t
        0x10t
        0x53t
        0x53t
        0x4dt
        0x0t
        0x46t
        0x47t
        0x5et
        0x5et
        0x55t
        0x41t
        0x4t
        0x55t
        0x17t
        0x56t
        0x56t
        0x16t
        0x8t
        0x5ct
        0x58t
        0x53t
        0x5dt
        0x4t
        0x2t
        0x10t
        0x56t
        0x5ct
        0x5dt
        0x41t
        0x0t
        0x59t
        0x5bt
        0x46t
        0x5ct
        0x13t
        0x3t
        0x54t
        0x17t
        0x5dt
        0x57t
        0x41t
        0x12t
        0x58t
        0x52t
        0x12t
        0x5at
        0xdt
        0xft
        0x55t
        0x59t
        0x46t
        0x17t
        0x41t
        0x25t
        0x5ft
        0x59t
        0x41t
        0x50t
        0x5t
        0x3t
        0x42t
        0x17t
        0x53t
        0x5dt
        0x5t
        0xft
        0x5et
        0x50t
        0x12t
        0x1et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x44t
        0x46t
        0x53t
        0x43t
        0x10t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x17t
        0x45t
        0x58t
        0x13t
        0x4ft
        0xat
        0x42t
        0x43t
        0x17t
        0x40t
        0x53t
        0x6t
        0x42t
        0x43t
        0x5et
        0x47t
        0x4ft
        0x45t
        0x56t
        0x5ft
        0x53t
        0x13t
        0x70t
        0xct
        0x45t
        0x54t
        0x55t
        0x52t
        0x45t
        0x0t
        0x17t
        0x75t
        0x56t
        0x47t
        0x57t
        0x7t
        0x56t
        0x42t
        0x52t
        0x13t
        0x44t
        0x10t
        0x5bt
        0x54t
        0x44t
        0x13t
        0x50t
        0xat
        0x45t
        0x11t
        0x55t
        0x56t
        0x42t
        0x11t
        0x52t
        0x43t
        0x17t
        0x43t
        0x53t
        0x17t
        0x51t
        0x5et
        0x45t
        0x5et
        0x57t
        0xbt
        0x54t
        0x54t
    .end array-data
.end method


# virtual methods
.method public compareAndPut(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_PUT:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    return-void
.end method

.method public injectConnectionFailure()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/Connection;->injectConnectionFailure()V

    :cond_0
    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b8309b"

    const/16 v4, -0x2c22

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/Connection;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/util/RetryHelper;->signalSuccess()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/util/RetryHelper;->cancel()V

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x21t
        0x57t
        0x5dt
        0x5et
        0x5ct
        0x1t
        0x16t
        0x51t
        0x5ct
        0x5et
        0x19t
        0xbt
        0xct
        0x4ct
        0x56t
        0x42t
        0x4bt
        0x17t
        0x12t
        0x4ct
        0x56t
        0x54t
        0x19t
        0x4t
        0xdt
        0x4at
        0x9t
        0x10t
    .end array-data
.end method

.method public isInterrupted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/ListenHashProvider;Ljava/lang/Long;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/ListenHashProvider;",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    invoke-direct {v2, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xd

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "184e2d"

    const/4 v5, 0x1

    invoke-static {v3, v4, v6, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "96e9f6"

    const-wide/32 v4, 0x5ced3068

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "ac4bd4"

    const/16 v5, 0x7968

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    const/4 v5, 0x0

    move-object v1, p5

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;-><init>(Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;Ljava/lang/Long;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void

    nop

    :array_0
    .array-data 1
        0x7dt
        0x51t
        0x47t
        0x11t
        0x57t
        0xat
        0x58t
        0x56t
        0x53t
        0x45t
        0x5dt
        0xat
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x55t
        0x5ft
        0x16t
        0x4dt
        0x3t
        0x58t
        0x11t
        0x1ft
        0x45t
        0x5at
        0x7t
        0x5at
        0x55t
        0x53t
        0x1t
        0x19t
        0x12t
        0x41t
        0x50t
        0x55t
        0x0t
        0x19t
        0x0t
        0x59t
        0x4bt
        0x16t
        0x16t
        0x58t
        0xbt
        0x53t
        0x19t
        0x67t
        0x10t
        0x5ct
        0x14t
        0x4ft
        0x6at
        0x46t
        0x0t
        0x5at
        0x48t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x20t
        0x7t
        0x50t
        0xbt
        0xat
        0x53t
        0x41t
        0xft
        0x5dt
        0x11t
        0x10t
        0x51t
        0xft
        0x43t
        0x45t
        0x17t
        0x1t
        0x46t
        0x18t
        0x59t
        0x14t
    .end array-data
.end method

.method public merge(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_MERGE:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method public onCacheHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->cachedHost:Ljava/lang/String;

    return-void
.end method

.method public onDataMessage(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_NUMBER:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_NUMBER:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;->onResponse(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ERROR:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDataPush(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9c2482"

    const v4, 0x4ec49859

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x70t
        0x4t
        0x5ct
        0x5bt
        0x4at
        0x5bt
        0x57t
        0x4t
        0x12t
        0x41t
        0x56t
        0x59t
        0x57t
        0xct
        0x45t
        0x5at
        0x18t
        0x5ft
        0x5ct
        0x10t
        0x41t
        0x55t
        0x5ft
        0x57t
        0x3t
        0x43t
    .end array-data
.end method

.method public onDisconnect(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x19

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "17be53"

    const/16 v5, -0x456d

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->cancelSentTransactions()V

    invoke-virtual {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->shouldReconnect()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastConnectionEstablishedTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v1, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    if-eq p1, v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/util/RetryHelper;->signalSuccess()V

    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    :cond_4
    iput-wide v6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastConnectionEstablishedTime:J

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onDisconnect()V

    return-void

    nop

    :array_0
    .array-data 1
        0x76t
        0x58t
        0x16t
        0x45t
        0x5at
        0x5dt
        0x11t
        0x53t
        0xbt
        0x16t
        0x56t
        0x5ct
        0x5ft
        0x59t
        0x7t
        0x6t
        0x41t
        0x13t
        0x55t
        0x42t
        0x7t
        0x45t
        0x41t
        0x5ct
        0x11t
    .end array-data
.end method

.method public onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_ONDISCONNECT_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v3, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_ONDISCONNECT_CANCEL:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onDisconnectMerge(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_ONDISCONNECT_MERGE:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_ONDISCONNECT_MERGE:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onDisconnectPut(Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_ONDISCONNECT_PUT:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_ONDISCONNECT_PUT:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onKill(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x66

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "acff5a"

    const/16 v4, 0x581b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->SERVER_KILL_INTERRUPT_REASON:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x27t
        0xat
        0x14t
        0x3t
        0x57t
        0x0t
        0x12t
        0x6t
        0x46t
        0x22t
        0x54t
        0x15t
        0x0t
        0x1t
        0x7t
        0x15t
        0x50t
        0x41t
        0x2t
        0xct
        0x8t
        0x8t
        0x50t
        0x2t
        0x15t
        0xat
        0x9t
        0x8t
        0x15t
        0x16t
        0x0t
        0x10t
        0x46t
        0x0t
        0x5at
        0x13t
        0x2t
        0x6t
        0x0t
        0x13t
        0x59t
        0xdt
        0x18t
        0x43t
        0xdt
        0xft
        0x59t
        0xdt
        0x4t
        0x7t
        0x46t
        0x4t
        0x4ct
        0x41t
        0x15t
        0xbt
        0x3t
        0x46t
        0x46t
        0x4t
        0x13t
        0x15t
        0x3t
        0x14t
        0x1bt
        0x41t
        0x36t
        0xat
        0xat
        0xat
        0x15t
        0xft
        0xet
        0x17t
        0x46t
        0x7t
        0x41t
        0x15t
        0x4t
        0xet
        0x16t
        0x12t
        0x15t
        0x13t
        0x4t
        0x0t
        0x9t
        0x8t
        0x5bt
        0x4t
        0x2t
        0x17t
        0x48t
        0x46t
        0x67t
        0x4t
        0x0t
        0x10t
        0x9t
        0x8t
        0xft
        0x41t
    .end array-data
.end method

.method public onReady(JLjava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a15a9f"

    const-wide v4, 0x41cfc6092e800000L    # 1.066144349E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastConnectionEstablishedTime:J

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->handleTimestamp(J)V

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->firstConnection:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendConnectStats()V

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->restoreAuth()V

    iput-boolean v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->firstConnection:Z

    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastSessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onConnect()V

    return-void

    :array_0
    .array-data 1
        0xet
        0x5ft
        0x67t
        0x4t
        0x58t
        0x2t
        0x18t
    .end array-data
.end method

.method public openNetworkConnection(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    const/16 v3, 0x3e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "fc0516"

    const/16 v5, -0xc7c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v0, v2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onAuthStatus(Z)V

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connecting:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    new-instance v0, Lcom/google/firebase/database/connection/Connection;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->cachedHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastSessionId:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/Connection;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Lcom/google/firebase/database/connection/Connection$Delegate;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/Connection;->open()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :array_0
    .array-data 1
        0x32t
        0x11t
        0x49t
        0x5ct
        0x5ft
        0x51t
        0x46t
        0x17t
        0x5ft
        0x15t
        0x5et
        0x46t
        0x3t
        0xdt
        0x10t
        0x5bt
        0x54t
        0x42t
        0x11t
        0xct
        0x42t
        0x5et
        0x11t
        0x55t
        0x9t
        0xdt
        0x5et
        0x50t
        0x52t
        0x42t
        0xft
        0xct
        0x5et
        0x15t
        0x46t
        0x5et
        0xft
        0xft
        0x55t
        0x15t
        0x58t
        0x58t
        0x46t
        0x17t
        0x58t
        0x50t
        0x11t
        0x41t
        0x14t
        0xct
        0x5et
        0x52t
        0x11t
        0x45t
        0x12t
        0x2t
        0x44t
        0x50t
        0xbt
        0x16t
        0x43t
        0x10t
    .end array-data
.end method

.method public purgeOutstandingWrites()V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0xe

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v0

    new-array v2, v7, [B

    fill-array-data v2, :array_0

    const-string v3, "3257db"

    const/4 v4, 0x1

    invoke-static {v2, v3, v6, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v0

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "e7de56"

    const-wide/32 v4, -0x41b5c9d7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void

    :array_0
    .array-data 1
        0x44t
        0x40t
        0x5ct
        0x43t
        0x1t
        0x3dt
        0x50t
        0x53t
        0x5bt
        0x54t
        0x1t
        0xet
        0x56t
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0x45t
        0xdt
        0x11t
        0x50t
        0x69t
        0x6t
        0x56t
        0xat
        0x6t
        0x50t
        0x5at
        0x0t
        0x53t
    .end array-data
.end method

.method public put(Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->REQUEST_ACTION_PUT:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method public refreshAuthToken()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d4a4e8"

    const/16 v3, 0x68ce

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->TOKEN_REFRESH_INTERRUPT_REASON:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->TOKEN_REFRESH_INTERRUPT_REASON:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->resume(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x25t
        0x41t
        0x15t
        0x5ct
        0x45t
        0x4ct
        0xbt
        0x5ft
        0x4t
        0x5at
        0x45t
        0x4at
        0x1t
        0x52t
        0x13t
        0x51t
        0x16t
        0x50t
        0x44t
        0x46t
        0x4t
        0x45t
        0x10t
        0x5dt
        0x17t
        0x40t
        0x4t
        0x50t
    .end array-data
.end method

.method public refreshAuthToken(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b0eba3"

    const/16 v3, 0x568f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->upgradeAuth()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendUnauth()V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x23t
        0x45t
        0x11t
        0xat
        0x41t
        0x47t
        0xdt
        0x5bt
        0x0t
        0xct
        0x41t
        0x41t
        0x7t
        0x56t
        0x17t
        0x7t
        0x12t
        0x5bt
        0x7t
        0x54t
        0x4bt
    .end array-data
.end method

.method public resume(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ee16b6"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->shouldReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x26t
        0xat
        0x5ft
        0x58t
        0x7t
        0x55t
        0x11t
        0xct
        0x5et
        0x58t
        0x42t
        0x58t
        0xat
        0x45t
        0x5dt
        0x59t
        0xct
        0x51t
        0x0t
        0x17t
        0x11t
        0x5ft
        0xct
        0x42t
        0x0t
        0x17t
        0x43t
        0x43t
        0x12t
        0x42t
        0x0t
        0x1t
        0x11t
        0x50t
        0xdt
        0x44t
        0x5ft
        0x45t
    .end array-data
.end method

.method shouldReconnect()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2df545"

    const v2, -0x31025172

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x41t
        0xct
        0x13t
        0x41t
        0x50t
        0x5at
        0x45t
        0xat
    .end array-data
.end method

.method public unlisten(Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "e44c90"

    const-wide v6, -0x3e45bae70c000000L    # -4.40735988E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->removeListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendUnlisten(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x5at
        0x58t
        0xat
        0x4at
        0x44t
        0x0t
        0x5at
        0x5dt
        0xdt
        0x5et
        0x10t
        0xat
        0x5at
        0x14t
    .end array-data
.end method
