.class Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->onClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$3;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$3;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$3;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f3e2bd"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$3;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$600(Lcom/google/firebase/database/connection/WebsocketConnection;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x5ft
        0xat
        0x41t
        0x7t
        0x0t
    .end array-data
.end method
