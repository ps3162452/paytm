.class Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/ThreadPoolEventTarget;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/firebase/database/core/ThreadInitializer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/core/ThreadPoolEventTarget;

.field final val$threadInitializer:Lcom/google/firebase/database/core/ThreadInitializer;

.field final val$wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/ThreadPoolEventTarget;Ljava/util/concurrent/ThreadFactory;Lcom/google/firebase/database/core/ThreadInitializer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->this$0:Lcom/google/firebase/database/core/ThreadPoolEventTarget;

    iput-object p2, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->val$wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object p3, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->val$threadInitializer:Lcom/google/firebase/database/core/ThreadInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->val$wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->val$threadInitializer:Lcom/google/firebase/database/core/ThreadInitializer;

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "02f6a4"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/firebase/database/core/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->val$threadInitializer:Lcom/google/firebase/database/core/ThreadInitializer;

    invoke-interface {v1, v0, v4}, Lcom/google/firebase/database/core/ThreadInitializer;->setDaemon(Ljava/lang/Thread;Z)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x76t
        0x5bt
        0x14t
        0x53t
        0x3t
        0x55t
        0x43t
        0x57t
        0x22t
        0x57t
        0x15t
        0x55t
        0x52t
        0x53t
        0x15t
        0x53t
        0x24t
        0x42t
        0x55t
        0x5ct
        0x12t
        0x62t
        0x0t
        0x46t
        0x57t
        0x57t
        0x12t
    .end array-data
.end method
