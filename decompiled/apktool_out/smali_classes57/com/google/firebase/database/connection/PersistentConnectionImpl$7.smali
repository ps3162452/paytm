.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2602(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d44a6a"

    const-wide/32 v4, 0x1382b97d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x7t
        0x5bt
        0x5at
        0xft
        0x53t
        0x2t
        0x10t
        0x5dt
        0x5bt
        0xft
        0x69t
        0x8t
        0x0t
        0x58t
        0x51t
    .end array-data
.end method
