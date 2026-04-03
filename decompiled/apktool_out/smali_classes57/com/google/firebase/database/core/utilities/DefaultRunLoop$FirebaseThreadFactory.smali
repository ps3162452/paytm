.class Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/utilities/DefaultRunLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirebaseThreadFactory"
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop;Lcom/google/firebase/database/core/utilities/DefaultRunLoop$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;-><init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->getThreadInitializer()Lcom/google/firebase/database/core/ThreadInitializer;

    move-result-object v1

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "34f1b2"

    const/16 v4, 0x103f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/firebase/database/core/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/firebase/database/core/ThreadInitializer;->setDaemon(Ljava/lang/Thread;Z)V

    new-instance v2, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory$1;

    invoke-direct {v2, p0}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory$1;-><init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;)V

    invoke-interface {v1, v0, v2}, Lcom/google/firebase/database/core/ThreadInitializer;->setUncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x5dt
        0x14t
        0x54t
        0x0t
        0x53t
        0x40t
        0x51t
        0x22t
        0x50t
        0x16t
        0x53t
        0x51t
        0x55t
        0x15t
        0x54t
        0x35t
        0x5dt
        0x41t
        0x5ft
        0x3t
        0x43t
    .end array-data
.end method
