.class Lcom/google/firebase/database/core/view/EventRaiser$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/view/EventRaiser;->raiseEvents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/core/view/EventRaiser;

.field final val$eventsClone:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/view/EventRaiser;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/view/EventRaiser$1;->this$0:Lcom/google/firebase/database/core/view/EventRaiser;

    iput-object p2, p0, Lcom/google/firebase/database/core/view/EventRaiser$1;->val$eventsClone:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/google/firebase/database/core/view/EventRaiser$1;->val$eventsClone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/Event;

    iget-object v2, p0, Lcom/google/firebase/database/core/view/EventRaiser$1;->this$0:Lcom/google/firebase/database/core/view/EventRaiser;

    invoke-static {v2}, Lcom/google/firebase/database/core/view/EventRaiser;->access$000(Lcom/google/firebase/database/core/view/EventRaiser;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/database/core/view/EventRaiser$1;->this$0:Lcom/google/firebase/database/core/view/EventRaiser;

    invoke-static {v2}, Lcom/google/firebase/database/core/view/EventRaiser;->access$000(Lcom/google/firebase/database/core/view/EventRaiser;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "3ec33c"

    const-wide v6, 0x41d13d8fb0c00000L    # 1.156988611E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/firebase/database/core/view/Event;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Lcom/google/firebase/database/core/view/Event;->fire()V

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x61t
        0x4t
        0xat
        0x40t
        0x5at
        0xdt
        0x54t
        0x45t
    .end array-data
.end method
