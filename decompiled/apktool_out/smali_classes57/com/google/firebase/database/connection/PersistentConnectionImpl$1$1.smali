.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

.field final val$thisGetTokenAttempt:J


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iput-wide p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->val$thisGetTokenAttempt:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->val$thisGetTokenAttempt:J

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v2, v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$502(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "58841f"

    const v4, -0x31587e61

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/16 v1, 0x41

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "827bcf"

    const-wide v4, 0x41d228b89a400000L    # 1.218634345E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x70t
        0x4at
        0x4at
        0x5bt
        0x43t
        0x46t
        0x53t
        0x5dt
        0x4ct
        0x57t
        0x59t
        0xft
        0x5bt
        0x5ft
        0x18t
        0x40t
        0x5et
        0xdt
        0x50t
        0x56t
        0x2t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x71t
        0x55t
        0x59t
        0xdt
        0x11t
        0xft
        0x56t
        0x55t
        0x17t
        0x5t
        0x6t
        0x12t
        0x6ct
        0x5dt
        0x5ct
        0x7t
        0xdt
        0x46t
        0x5dt
        0x40t
        0x45t
        0xdt
        0x11t
        0x4at
        0x18t
        0x50t
        0x52t
        0x1t
        0x2t
        0x13t
        0x4bt
        0x57t
        0x17t
        0x16t
        0xbt
        0xft
        0x4bt
        0x12t
        0x40t
        0x3t
        0x10t
        0x46t
        0x56t
        0x5dt
        0x43t
        0x42t
        0x17t
        0xet
        0x5dt
        0x12t
        0x5bt
        0x3t
        0x17t
        0x3t
        0x4bt
        0x46t
        0x17t
        0x3t
        0x17t
        0x12t
        0x5dt
        0x5ft
        0x47t
        0x16t
        0x4dt
    .end array-data
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->val$thisGetTokenAttempt:J

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object v0

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "1dd6a9"

    invoke-static {v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->openNetworkConnection(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object v0

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    const/16 v3, 0x32

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "b90a88"

    const-wide v6, -0x3e4bee074f000000L    # -3.36722097E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v4, v4, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/16 v1, 0x56

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v3, "a27bef"

    invoke-static {v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v3, "e580ae"

    const/16 v4, 0x5ee5

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x62t
        0x11t
        0x7t
        0x55t
        0x4t
        0x4at
        0x42t
        0x2t
        0x11t
        0x5at
        0xdt
        0x40t
        0x11t
        0x2t
        0x1t
        0x42t
        0x2t
        0x51t
        0x54t
        0x0t
        0x44t
        0x42t
        0xet
        0x52t
        0x54t
        0xat
        0x48t
        0x16t
        0xet
        0x49t
        0x54t
        0xat
        0xdt
        0x58t
        0x6t
        0x19t
        0x52t
        0xbt
        0xat
        0x58t
        0x4t
        0x5at
        0x45t
        0xdt
        0xbt
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x27t
        0x41t
        0x40t
        0x4t
        0x5bt
        0x4ct
        0x7t
        0x5dt
        0x10t
        0x2t
        0x57t
        0x56t
        0xct
        0x5ct
        0x53t
        0x15t
        0x51t
        0x57t
        0xct
        0x19t
        0x43t
        0x15t
        0x59t
        0x4ct
        0x7t
        0x19t
        0x54t
        0x8t
        0x4bt
        0x5bt
        0xdt
        0x57t
        0x5et
        0x4t
        0x5bt
        0x4ct
        0x7t
        0x5dt
        0x1ct
        0x41t
        0x5at
        0x4dt
        0x16t
        0x19t
        0x47t
        0x0t
        0x4bt
        0x18t
        0x47t
        0x4at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2ft
        0x5dt
        0x43t
        0x42t
        0xat
        0x16t
        0x4t
        0x5ct
        0x5et
        0xct
        0x2t
        0x46t
        0x2t
        0x5dt
        0x59t
        0xct
        0x0t
        0x5t
        0x15t
        0x5bt
        0x58t
        0xct
        0x45t
        0x7t
        0x7t
        0x46t
        0x52t
        0x10t
        0x45t
        0x12t
        0xet
        0x59t
        0x52t
        0xct
        0x45t
        0x14t
        0x4t
        0x54t
        0x45t
        0x7t
        0x16t
        0xet
        0x4dt
        0x12t
        0x55t
        0x7t
        0x6t
        0x7t
        0x14t
        0x41t
        0x52t
        0x42t
        0x6t
        0x9t
        0xft
        0x5ct
        0x52t
        0x1t
        0x11t
        0xft
        0xet
        0x5ct
        0x17t
        0x15t
        0x4t
        0x15t
        0x41t
        0x41t
        0x52t
        0x16t
        0x45t
        0x12t
        0xet
        0x12t
        0x53t
        0xbt
        0x16t
        0x5t
        0xet
        0x5ct
        0x59t
        0x7t
        0x6t
        0x12t
        0x4t
        0x56t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2ct
        0x52t
        0x56t
        0x5ft
        0x13t
        0xct
        0xbt
        0x52t
        0x18t
        0x57t
        0x4t
        0x11t
        0x31t
        0x5at
        0x53t
        0x55t
        0xft
        0x45t
        0x17t
        0x50t
        0x4bt
        0x45t
        0xdt
        0x11t
        0x49t
        0x15t
        0x5at
        0x55t
        0x2t
        0x4t
        0x10t
        0x46t
        0x5dt
        0x10t
        0x15t
        0xdt
        0xct
        0x46t
        0x18t
        0x47t
        0x0t
        0x16t
        0x45t
        0x5bt
        0x57t
        0x44t
        0x41t
        0x11t
        0xdt
        0x50t
        0x18t
        0x5ct
        0x0t
        0x11t
        0x0t
        0x46t
        0x4ct
        0x10t
        0x0t
        0x11t
        0x11t
        0x50t
        0x55t
        0x40t
        0x15t
        0x4bt
    .end array-data
.end method
