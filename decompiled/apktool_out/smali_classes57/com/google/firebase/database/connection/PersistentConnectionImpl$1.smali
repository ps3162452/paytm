.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final val$forceRefresh:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-boolean p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->val$forceRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/16 v3, 0x1a

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "1cbde3"

    const-wide/32 v6, -0x3c7ddd1f

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object v0

    sget-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const/16 v3, 0x1d

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "32eaaf"

    const v5, -0x3206a584

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$502(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$608(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$800(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->val$forceRefresh:Z

    new-instance v4, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;J)V

    invoke-interface {v2, v3, v4}, Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;->getToken(ZLcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :array_0
    .array-data 1
        0x65t
        0x11t
        0x1bt
        0xdt
        0xbt
        0x54t
        0x11t
        0x17t
        0xdt
        0x44t
        0x3t
        0x56t
        0x45t
        0x0t
        0xat
        0x44t
        0x4t
        0x46t
        0x45t
        0xbt
        0x42t
        0x10t
        0xat
        0x58t
        0x54t
        0xdt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7dt
        0x5dt
        0x11t
        0x41t
        0x8t
        0x8t
        0x13t
        0x56t
        0xct
        0x12t
        0x2t
        0x9t
        0x5dt
        0x5ct
        0x0t
        0x2t
        0x15t
        0x3t
        0x57t
        0x12t
        0x16t
        0x15t
        0x0t
        0x12t
        0x56t
        0x8t
        0x45t
        0x44t
        0x12t
    .end array-data
.end method
