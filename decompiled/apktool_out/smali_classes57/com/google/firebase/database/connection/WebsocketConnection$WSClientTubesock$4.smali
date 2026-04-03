.class Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

.field final val$e:Lcom/google/firebase/database/tubesock/WebSocketException;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iput-object p2, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/google/firebase/database/tubesock/WebSocketException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/google/firebase/database/tubesock/WebSocketException;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/google/firebase/database/tubesock/WebSocketException;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8db2c0"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$600(Lcom/google/firebase/database/connection/WebsocketConnection;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e6df86"

    const v3, 0x4e0db9e6    # 5.944426E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/google/firebase/database/tubesock/WebSocketException;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x6ft
        0x1t
        0x0t
        0x61t
        0xct
        0x53t
        0x53t
        0x1t
        0x16t
        0x12t
        0x11t
        0x55t
        0x59t
        0x7t
        0xat
        0x57t
        0x7t
        0x10t
        0x7dt
        0x2bt
        0x24t
        0x1ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x32t
        0x53t
        0x6t
        0x35t
        0x57t
        0x55t
        0xet
        0x53t
        0x10t
        0x46t
        0x5dt
        0x44t
        0x17t
        0x59t
        0x16t
        0x48t
    .end array-data
.end method
