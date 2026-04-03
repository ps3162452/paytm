.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthHelper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final val$restoreStateAfterComplete:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-boolean p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->val$restoreStateAfterComplete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 10
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

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$502(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    new-array v0, v8, [B

    const/16 v1, 0x16

    aput-byte v1, v0, v7

    const-string v1, "e3678c"

    const-wide v2, -0x3e6897385c000000L    # -9.8185705E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v1, v9, [B

    fill-array-data v1, :array_0

    const-string v2, "ae0bfc"

    const-wide v4, -0x3e399f876b800000L    # -7.50842153E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0, v7}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1302(Lcom/google/firebase/database/connection/PersistentConnectionImpl;I)I

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onAuthStatus(Z)V

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->val$restoreStateAfterComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1602(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v1, v8}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1702(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)Z

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    move-result-object v1

    invoke-interface {v1, v7}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onAuthStatus(Z)V

    new-array v1, v8, [B

    const/4 v2, 0x5

    aput-byte v2, v1, v7

    const-string v2, "a82c9d"

    const/16 v3, 0x52a9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x17

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "5af722"

    const v6, -0x317f7859

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v9, [B

    fill-array-data v4, :array_2

    const-string v5, "ffbb1a"

    const/16 v6, 0x6332

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v8, [B

    const/16 v4, 0x1d

    aput-byte v4, v3, v7

    const-string v4, "448ce6"

    const v5, -0x313ed17d

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1800(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/Connection;->close()V

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "ada5c2"

    const/16 v3, 0x2c81

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1308(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1900(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/util/RetryHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/util/RetryHelper;->setMaxDelay()V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/16 v1, 0x127

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "4f05c7"

    const-wide/32 v4, -0x36fc2fd2

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    :array_0
    .array-data 1
        0xet
        0xet
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x14t
        0x12t
        0x5ft
        0x57t
        0x5ct
        0x41t
        0x8t
        0x5t
        0x56t
        0x46t
        0x5bt
        0x5at
        0xft
        0x46t
        0x51t
        0x53t
        0x5bt
        0x59t
        0x4t
        0x2t
        0xdt
        0x12t
    .end array-data

    :array_2
    .array-data 1
        0x46t
        0x4et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x8t
        0xat
        0x17t
        0x54t
        0xft
        0x5bt
        0x5t
        0x3bt
        0x15t
        0x5at
        0x8t
        0x57t
        0xft
    .end array-data

    nop

    :array_4
    .array-data 1
        0x64t
        0x14t
        0x5ft
        0x43t
        0xat
        0x53t
        0x51t
        0x2t
        0x10t
        0x54t
        0x16t
        0x43t
        0x5ct
        0x3t
        0x5et
        0x41t
        0xat
        0x54t
        0x55t
        0x12t
        0x59t
        0x5at
        0xdt
        0x17t
        0x57t
        0x14t
        0x55t
        0x51t
        0x6t
        0x59t
        0x40t
        0xft
        0x51t
        0x59t
        0x10t
        0x17t
        0x55t
        0x14t
        0x55t
        0x15t
        0xat
        0x59t
        0x42t
        0x7t
        0x5ct
        0x5ct
        0x7t
        0x19t
        0x14t
        0x32t
        0x58t
        0x5ct
        0x10t
        0x17t
        0x41t
        0x15t
        0x45t
        0x54t
        0xft
        0x5bt
        0x4dt
        0x46t
        0x59t
        0x5bt
        0x7t
        0x5et
        0x57t
        0x7t
        0x44t
        0x50t
        0x10t
        0x17t
        0x4dt
        0x9t
        0x45t
        0x47t
        0x43t
        0x71t
        0x5dt
        0x14t
        0x55t
        0x57t
        0x2t
        0x44t
        0x51t
        0x27t
        0x40t
        0x45t
        0x43t
        0x5et
        0x5at
        0x15t
        0x44t
        0x54t
        0xdt
        0x54t
        0x51t
        0x46t
        0x47t
        0x54t
        0x10t
        0x17t
        0x5at
        0x9t
        0x44t
        0x15t
        0xat
        0x59t
        0x5dt
        0x12t
        0x59t
        0x54t
        0xft
        0x5et
        0x4et
        0x3t
        0x54t
        0x15t
        0x0t
        0x58t
        0x46t
        0x14t
        0x55t
        0x56t
        0x17t
        0x5bt
        0x4dt
        0x48t
        0x10t
        0x78t
        0x2t
        0x5ct
        0x51t
        0x46t
        0x43t
        0x40t
        0x11t
        0x52t
        0x14t
        0x1ft
        0x5ft
        0x40t
        0x11t
        0x17t
        0x53t
        0x9t
        0x5ft
        0x52t
        0xft
        0x52t
        0x19t
        0x15t
        0x55t
        0x47t
        0x15t
        0x5et
        0x57t
        0x3t
        0x43t
        0x1bt
        0x9t
        0x44t
        0x5bt
        0x8t
        0x10t
        0x53t
        0xat
        0x5bt
        0x51t
        0x46t
        0x58t
        0x54t
        0x10t
        0x17t
        0x40t
        0xet
        0x55t
        0x15t
        0x0t
        0x58t
        0x46t
        0x14t
        0x55t
        0x56t
        0x17t
        0x17t
        0x52t
        0xft
        0x42t
        0x50t
        0x1t
        0x56t
        0x47t
        0x3t
        0x6ft
        0x40t
        0x11t
        0x5bt
        0x14t
        0x7t
        0x5et
        0x51t
        0x43t
        0x56t
        0x44t
        0xft
        0x6ft
        0x5et
        0x6t
        0x4et
        0x1at
        0x46t
        0x69t
        0x5at
        0x16t
        0x17t
        0x57t
        0x7t
        0x5et
        0x15t
        0x11t
        0x52t
        0x19t
        0x2t
        0x5ft
        0x42t
        0xdt
        0x5bt
        0x5bt
        0x7t
        0x54t
        0x15t
        0x4t
        0x58t
        0x5bt
        0x1t
        0x5ct
        0x50t
        0x4et
        0x44t
        0x51t
        0x14t
        0x46t
        0x5ct
        0x0t
        0x52t
        0x47t
        0x48t
        0x5at
        0x46t
        0xct
        0x59t
        0x14t
        0x0t
        0x42t
        0x5at
        0xet
        0x17t
        0x5ct
        0x12t
        0x44t
        0x45t
        0x10t
        0xdt
        0x1bt
        0x49t
        0x53t
        0x5at
        0xdt
        0x44t
        0x5bt
        0xat
        0x55t
        0x1bt
        0x5t
        0x5et
        0x46t
        0x3t
        0x52t
        0x54t
        0x10t
        0x52t
        0x1at
        0x1t
        0x5ft
        0x5at
        0x4t
        0x5bt
        0x51t
        0x48t
        0x53t
        0x5at
        0xet
        0x18t
        0x1at
    .end array-data
.end method
