.class Lcom/google/firebase/database/connection/Connection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/connection/Connection$Delegate;,
        Lcom/google/firebase/database/connection/Connection$DisconnectReason;,
        Lcom/google/firebase/database/connection/Connection$State;
    }
.end annotation


# static fields
.field private static final REQUEST_PAYLOAD:Ljava/lang/String;

.field private static final REQUEST_TYPE:Ljava/lang/String;

.field private static final REQUEST_TYPE_DATA:Ljava/lang/String;

.field private static final SERVER_CONTROL_MESSAGE:Ljava/lang/String;

.field private static final SERVER_CONTROL_MESSAGE_DATA:Ljava/lang/String;

.field private static final SERVER_CONTROL_MESSAGE_HELLO:Ljava/lang/String;

.field private static final SERVER_CONTROL_MESSAGE_RESET:Ljava/lang/String;

.field private static final SERVER_CONTROL_MESSAGE_SHUTDOWN:Ljava/lang/String;

.field private static final SERVER_CONTROL_MESSAGE_TYPE:Ljava/lang/String;

.field private static final SERVER_DATA_MESSAGE:Ljava/lang/String;

.field private static final SERVER_ENVELOPE_DATA:Ljava/lang/String;

.field private static final SERVER_ENVELOPE_TYPE:Ljava/lang/String;

.field private static final SERVER_HELLO_HOST:Ljava/lang/String;

.field private static final SERVER_HELLO_SESSION_ID:Ljava/lang/String;

.field private static final SERVER_HELLO_TIMESTAMP:Ljava/lang/String;

.field private static connectionIds:J


# instance fields
.field private conn:Lcom/google/firebase/database/connection/WebsocketConnection;

.field private delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

.field private hostInfo:Lcom/google/firebase/database/connection/HostInfo;

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private state:Lcom/google/firebase/database/connection/Connection$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x47

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-array v0, v4, [B

    const/16 v1, 0x57

    aput-byte v1, v0, v5

    const-string v1, "38650e"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->REQUEST_PAYLOAD:Ljava/lang/String;

    new-array v0, v4, [B

    aput-byte v6, v0, v5

    const-string v1, "3d1e16"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->REQUEST_TYPE:Ljava/lang/String;

    new-array v0, v4, [B

    aput-byte v4, v0, v5

    const-string v1, "e20217"

    const-wide v2, -0x3e3db8aa1c000000L    # -6.13329864E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->REQUEST_TYPE_DATA:Ljava/lang/String;

    new-array v0, v4, [B

    const/16 v1, 0x5a

    aput-byte v1, v0, v5

    const-string v1, "9967c9"

    const v2, -0x31e4df7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE:Ljava/lang/String;

    new-array v0, v4, [B

    const/4 v1, 0x7

    aput-byte v1, v0, v5

    const-string v1, "c78bc1"

    const-wide/32 v2, 0x355f8fb1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE_DATA:Ljava/lang/String;

    new-array v0, v4, [B

    const/16 v1, 0x5e

    aput-byte v1, v0, v5

    const-string v1, "6c5eb0"

    const/16 v2, -0x7b0a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE_HELLO:Ljava/lang/String;

    new-array v0, v4, [B

    const/16 v1, 0x10

    aput-byte v1, v0, v5

    const-string v1, "be4770"

    const-wide/32 v2, 0x2f33c7b7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE_RESET:Ljava/lang/String;

    new-array v0, v4, [B

    const/16 v1, 0x17

    aput-byte v1, v0, v5

    const-string v1, "d6cbcc"

    const-wide v2, 0x41c9460e8e000000L    # 8.48043292E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE_SHUTDOWN:Ljava/lang/String;

    new-array v0, v4, [B

    aput-byte v6, v0, v5

    const-string v1, "336766"

    const-wide v2, 0x41d00b057b000000L    # 1.07663102E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE_TYPE:Ljava/lang/String;

    new-array v0, v4, [B

    const/4 v1, 0x6

    aput-byte v1, v0, v5

    const-string v1, "b9aab7"

    const-wide/32 v2, -0x47428054

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_DATA_MESSAGE:Ljava/lang/String;

    new-array v0, v4, [B

    aput-byte v5, v0, v5

    const-string v1, "d838cc"

    const/16 v2, -0x274a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_ENVELOPE_DATA:Ljava/lang/String;

    new-array v0, v4, [B

    const/16 v1, 0x40

    aput-byte v1, v0, v5

    const-string v1, "42537d"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_ENVELOPE_TYPE:Ljava/lang/String;

    new-array v0, v4, [B

    const/16 v1, 0xc

    aput-byte v1, v0, v5

    const-string v1, "d9d84f"

    const-wide v2, -0x3e2591fb1c400000L    # -1.773671311E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_HELLO_HOST:Ljava/lang/String;

    new-array v0, v4, [B

    const/16 v1, 0x15

    aput-byte v1, v0, v5

    const-string v1, "fe3736"

    const-wide/32 v2, -0x474d7bdf

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_HELLO_SESSION_ID:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "5e7c17"

    const/16 v2, 0x2618

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_HELLO_TIMESTAMP:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/firebase/database/connection/Connection;->connectionIds:J

    return-void

    :array_0
    .array-data 1
        0x41t
        0x16t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Lcom/google/firebase/database/connection/Connection$Delegate;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/firebase/database/connection/Connection;->connectionIds:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/firebase/database/connection/Connection;->connectionIds:J

    iput-object p2, p0, Lcom/google/firebase/database/connection/Connection;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    iput-object p4, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    new-instance v2, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v3

    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "4d9dfb"

    const-wide/32 v6, 0x7e1bdd5c

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x5

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    const-string v7, "e487fc"

    invoke-static {v6, v7, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    sget-object v0, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    new-instance v0, Lcom/google/firebase/database/connection/WebsocketConnection;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/WebsocketConnection;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    return-void

    :array_0
    .array-data 1
        0x77t
        0xbt
        0x57t
        0xat
        0x3t
        0x1t
        0x40t
        0xdt
        0x56t
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6t
        0x5bt
        0x56t
        0x59t
        0x39t
    .end array-data
.end method

.method private onConnectionReady(JLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5049ae"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/database/connection/Connection$Delegate;->onReady(JLjava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x47t
        0x55t
        0x55t
        0x55t
        0x15t
        0xct
        0x58t
        0x55t
        0x14t
        0x5at
        0xet
        0xbt
        0x5bt
        0x55t
        0x57t
        0x4dt
        0x8t
        0xat
        0x5bt
        0x10t
        0x51t
        0x4at
        0x15t
        0x4t
        0x57t
        0x5ct
        0x5dt
        0x4at
        0x9t
        0x0t
        0x51t
    .end array-data
.end method

.method private onConnectionShutdown(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1c669e"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onKill(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    return-void

    :array_0
    .array-data 1
        0x72t
        0xct
        0x58t
        0x58t
        0x5ct
        0x6t
        0x45t
        0xat
        0x59t
        0x58t
        0x19t
        0x16t
        0x59t
        0x16t
        0x42t
        0x52t
        0x56t
        0x12t
        0x5ft
        0x43t
        0x55t
        0x59t
        0x54t
        0x8t
        0x50t
        0xdt
        0x52t
        0x16t
        0x4bt
        0x0t
        0x52t
        0x6t
        0x5ft
        0x40t
        0x5ct
        0x1t
        0x1ft
        0x43t
        0x65t
        0x5et
        0x4ct
        0x11t
        0x45t
        0xat
        0x58t
        0x51t
        0x19t
        0x1t
        0x5et
        0x14t
        0x58t
        0x18t
        0x17t
        0x4bt
    .end array-data
.end method

.method private onControlMessage(Ljava/util/Map;)V
    .locals 9
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

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "8af84d"

    const/16 v4, -0x13f1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/firebase/database/connection/Connection;->REQUEST_TYPE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE_SHUTDOWN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/google/firebase/database/connection/Connection;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/Connection;->onConnectionShutdown(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE_RESET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/google/firebase/database/connection/Connection;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/Connection;->onReset(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x21

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "3cddc1"

    const v5, -0x341afafe    # -3.0018052E7f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    goto :goto_0

    :cond_4
    :try_start_1
    sget-object v1, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE_HELLO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/google/firebase/database/connection/Connection;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/Connection;->onHandshake(Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x22

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "3bdde4"

    const-wide v6, -0x3e30af66aa000000L    # -1.05075166E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "d10d9f"

    const/16 v4, 0x477f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x7ft
        0xet
        0x12t
        0x18t
        0x57t
        0xbt
        0x56t
        0x15t
        0x14t
        0x57t
        0x58t
        0x44t
        0x55t
        0x4t
        0x15t
        0x4bt
        0x55t
        0x3t
        0x5dt
        0x5bt
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x75t
        0x2t
        0xdt
        0x8t
        0x6t
        0x55t
        0x13t
        0x17t
        0xbt
        0x44t
        0x13t
        0x50t
        0x41t
        0x10t
        0x1t
        0x44t
        0x0t
        0x5et
        0x5dt
        0x17t
        0x16t
        0xbt
        0xft
        0x11t
        0x5et
        0x6t
        0x17t
        0x17t
        0x2t
        0x56t
        0x56t
        0x59t
        0x44t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7at
        0x5t
        0xat
        0xbt
        0x17t
        0x5dt
        0x5dt
        0x5t
        0x44t
        0x11t
        0xbt
        0x5ft
        0x5dt
        0xdt
        0x13t
        0xat
        0x45t
        0x57t
        0x5ct
        0xct
        0x10t
        0x16t
        0xat
        0x58t
        0x13t
        0xft
        0x1t
        0x17t
        0x16t
        0x55t
        0x54t
        0x7t
        0x5et
        0x44t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x23t
        0x5et
        0x44t
        0x44t
        0x50t
        0x8t
        0x12t
        0x50t
        0x5ct
        0xdt
        0x5dt
        0x46t
        0x7t
        0x5et
        0x5et
        0x10t
        0x4bt
        0x9t
        0x8t
        0x11t
        0x5dt
        0x1t
        0x4at
        0x15t
        0x5t
        0x56t
        0x55t
        0x5et
        0x19t
    .end array-data
.end method

.method private onDataMessage(Ljava/util/Map;)V
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

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4e8c52"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onDataMessage(Ljava/util/Map;)V

    return-void

    :array_0
    .array-data 1
        0x46t
        0x0t
        0x5bt
        0x6t
        0x5ct
        0x44t
        0x51t
        0x1t
        0x18t
        0x7t
        0x54t
        0x46t
        0x55t
        0x45t
        0x55t
        0x6t
        0x46t
        0x41t
        0x55t
        0x2t
        0x5dt
        0x59t
        0x15t
    .end array-data
.end method

.method private onHandshake(Ljava/util/Map;)V
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

    sget-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_HELLO_TIMESTAMP:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE_HELLO:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v1, v0}, Lcom/google/firebase/database/connection/Connection$Delegate;->onCacheHost(Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE_SHUTDOWN:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v4, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/WebsocketConnection;->start()V

    invoke-direct {p0, v2, v3, v0}, Lcom/google/firebase/database/connection/Connection;->onConnectionReady(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onReset(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x23

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5bbb41"

    const-wide v4, -0x3e27d9cc9e800000L    # -1.620626822E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/HostInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "652c28"

    const/16 v4, -0x2e0d

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
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onCacheHost(Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/Connection;->close(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x72t
        0xdt
        0x16t
        0x42t
        0x55t
        0x11t
        0x47t
        0x7t
        0x11t
        0x7t
        0x40t
        0xat
        0x15t
        0x9t
        0xbt
        0xet
        0x58t
        0x58t
        0x5bt
        0x5t
        0x42t
        0x1t
        0x5bt
        0x5ft
        0x5bt
        0x7t
        0x1t
        0x16t
        0x5dt
        0x5et
        0x5bt
        0x42t
        0x16t
        0xdt
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0x15t
        0x67t
        0x13t
        0x56t
        0x59t
        0x42t
        0x5ct
        0x5ct
        0x4t
        0x12t
        0x51t
        0x58t
        0x41t
        0x57t
        0x11t
        0x5ct
        0x59t
        0x5at
        0x7dt
        0x5dt
        0x10t
        0x46t
        0x18t
        0x42t
        0x5at
        0x12t
    .end array-data
.end method

.method private sendData(Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v1, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "edc877"

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "5a800b"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection;->send(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "09e243"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x31t
        0x16t
        0xat
        0x5dt
        0x53t
        0x17t
        0x11t
        0xbt
        0x43t
        0x4bt
        0x52t
        0x59t
        0x1t
        0x44t
        0xct
        0x56t
        0x17t
        0x56t
        0xbt
        0x44t
        0x16t
        0x56t
        0x54t
        0x58t
        0xbt
        0xat
        0x6t
        0x5bt
        0x43t
        0x52t
        0x1t
        0x44t
        0x0t
        0x57t
        0x59t
        0x59t
        0x0t
        0x7t
        0x17t
        0x51t
        0x58t
        0x59t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x66t
        0x4t
        0x56t
        0x54t
        0x59t
        0xct
        0x52t
        0x41t
        0x5ct
        0x51t
        0x44t
        0x3t
        0x15t
        0x49t
        0x5bt
        0x5ft
        0x5et
        0x16t
        0x50t
        0xft
        0x4ct
        0x43t
        0x10t
        0xat
        0x5ct
        0x5t
        0x5ct
        0x55t
        0x5et
        0x4bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x63t
        0x5ct
        0xbt
        0x56t
        0x5dt
        0x5dt
        0x57t
        0x19t
        0x1t
        0x53t
        0x40t
        0x52t
        0xat
        0x19t
        0x40t
        0x41t
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->OTHER:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/Connection;->close(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V

    return-void
.end method

.method public close(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v1, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_DISCONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b9c18c"

    const-wide/32 v4, -0x3029dc20

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_DISCONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onDisconnect(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V

    :cond_2
    return-void

    :array_0
    .array-data 1
        0x1t
        0x55t
        0xct
        0x42t
        0x51t
        0xdt
        0x5t
        0x19t
        0x11t
        0x54t
        0x59t
        0xft
        0x16t
        0x50t
        0xet
        0x54t
        0x18t
        0x0t
        0xdt
        0x57t
        0xdt
        0x54t
        0x5bt
        0x17t
        0xbt
        0x56t
        0xdt
    .end array-data
.end method

.method public injectConnectionFailure()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    return-void
.end method

.method public onDisconnect(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v1, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8fd585"

    const/16 v3, -0x6676

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c67ef8"

    const-wide/32 v4, -0x7039bea7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x6at
        0x3t
        0x5t
        0x59t
        0x4ct
        0x5ct
        0x55t
        0x3t
        0x44t
        0x56t
        0x57t
        0x5bt
        0x56t
        0x3t
        0x7t
        0x41t
        0x51t
        0x5at
        0x56t
        0x46t
        0x2t
        0x54t
        0x51t
        0x59t
        0x5dt
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x31t
        0x53t
        0x56t
        0x9t
        0x12t
        0x51t
        0xet
        0x53t
        0x17t
        0x6t
        0x9t
        0x56t
        0xdt
        0x53t
        0x54t
        0x11t
        0xft
        0x57t
        0xdt
        0x16t
        0x5bt
        0xat
        0x15t
        0x4ct
    .end array-data
.end method

.method public onMessage(Ljava/util/Map;)V
    .locals 8
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

    const/4 v7, 0x0

    const/4 v6, 0x1

    :try_start_0
    sget-object v0, Lcom/google/firebase/database/connection/Connection;->REQUEST_TYPE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/google/firebase/database/connection/Connection;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/firebase/database/connection/Connection;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/Connection;->onDataMessage(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/google/firebase/database/connection/Connection;->SERVER_CONTROL_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/firebase/database/connection/Connection;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/Connection;->onControlMessage(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x20

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "7597bb"

    invoke-static {v3, v4, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x26

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "659356"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "eda949"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x71t
        0x54t
        0x50t
        0x5bt
        0x7t
        0x6t
        0x17t
        0x41t
        0x56t
        0x17t
        0x12t
        0x3t
        0x45t
        0x46t
        0x5ct
        0x17t
        0x11t
        0x7t
        0x45t
        0x43t
        0x5ct
        0x45t
        0x42t
        0xft
        0x52t
        0x46t
        0x4at
        0x56t
        0x5t
        0x7t
        0xdt
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x7ft
        0x52t
        0x57t
        0x5ct
        0x47t
        0x5ft
        0x58t
        0x52t
        0x19t
        0x46t
        0x5bt
        0x5dt
        0x58t
        0x5at
        0x4et
        0x5dt
        0x15t
        0x45t
        0x53t
        0x47t
        0x4ft
        0x56t
        0x47t
        0x16t
        0x5bt
        0x50t
        0x4at
        0x40t
        0x54t
        0x51t
        0x53t
        0x15t
        0x4dt
        0x4at
        0x45t
        0x53t
        0xct
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x23t
        0x5t
        0x8t
        0x55t
        0x51t
        0x5dt
        0x45t
        0x10t
        0xet
        0x19t
        0x44t
        0x58t
        0x17t
        0x17t
        0x4t
        0x19t
        0x47t
        0x5ct
        0x17t
        0x12t
        0x4t
        0x4bt
        0x14t
        0x54t
        0x0t
        0x17t
        0x12t
        0x58t
        0x53t
        0x5ct
        0x5ft
        0x44t
        0xct
        0x50t
        0x47t
        0x4at
        0xct
        0xat
        0x6t
        0x19t
        0x59t
        0x5ct
        0x16t
        0x17t
        0x0t
        0x5et
        0x51t
        0x19t
        0x11t
        0x1dt
        0x11t
        0x5ct
        0xet
    .end array-data
.end method

.method public open()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6e3689"

    const v3, 0x4ee0ceb7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->open()V

    return-void

    :array_0
    .array-data 1
        0x79t
        0x15t
        0x56t
        0x58t
        0x51t
        0x57t
        0x51t
        0x45t
        0x52t
        0x16t
        0x5bt
        0x56t
        0x58t
        0xbt
        0x56t
        0x55t
        0x4ct
        0x50t
        0x59t
        0xbt
    .end array-data
.end method

.method public sendRequest(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/firebase/database/connection/Connection;->REQUEST_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/database/connection/Connection;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/database/connection/Connection;->REQUEST_PAYLOAD:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/connection/Connection;->sendData(Ljava/util/Map;Z)V

    return-void
.end method
