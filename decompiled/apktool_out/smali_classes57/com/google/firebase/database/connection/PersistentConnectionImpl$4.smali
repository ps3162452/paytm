.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendPut(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final val$action:Ljava/lang/String;

.field final val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

.field final val$put:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

.field final val$putId:J


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;JLcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$action:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$putId:J

    iput-object p5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$put:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    iput-object p6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 7
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

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a36d11"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$putId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$put:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$putId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    if-eqz v0, :cond_1

    new-array v0, v4, [B

    const/16 v1, 0x11

    aput-byte v1, v0, v5

    const-string v1, "b0e87d"

    const-wide v2, 0x41d9cde562800000L    # 1.73169601E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "746aaf"

    const/16 v3, 0x3cc3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    invoke-interface {v0, v6, v6}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    return-void

    :cond_2
    new-array v1, v4, [B

    aput-byte v4, v1, v5

    const-string v2, "e74a9d"

    const-wide v4, -0x3ebe23fd80000000L    # -2340869.0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    invoke-interface {v2, v0, v1}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "3db677"

    const/16 v4, -0x5999

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$putId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "523870"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x41t
        0x41t
        0x53t
        0x17t
        0x41t
        0x5et
        0xft
        0x40t
        0x53t
        0x5et
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x5ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7at
        0x3t
        0xct
        0x59t
        0x45t
        0x5et
        0x5dt
        0x3t
        0x42t
        0x59t
        0x59t
        0x17t
        0x50t
        0xbt
        0xft
        0x46t
        0x5bt
        0x52t
        0x47t
        0x1t
        0x42t
        0x50t
        0x58t
        0x45t
        0x13t
        0x14t
        0x17t
        0x42t
        0x17t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x15t
        0x50t
        0x56t
        0x5bt
        0x56t
        0x45t
        0x46t
        0x57t
        0x13t
        0x51t
        0x43t
        0x10t
        0x42t
        0x53t
        0x40t
        0x18t
        0x45t
        0x55t
        0x58t
        0x5dt
        0x45t
        0x5dt
        0x53t
        0x10t
        0x54t
        0x5et
        0x41t
        0x5dt
        0x56t
        0x54t
        0x4ct
        0x1ct
    .end array-data
.end method
