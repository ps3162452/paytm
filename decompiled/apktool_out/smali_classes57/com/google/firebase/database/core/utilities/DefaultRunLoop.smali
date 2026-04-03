.class public abstract Lcom/google/firebase/database/core/utilities/DefaultRunLoop;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/RunLoop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$1;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;-><init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop;Lcom/google/firebase/database/core/utilities/DefaultRunLoop$1;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$1;-><init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop;ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static messageForException(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    const/16 v0, 0x162

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "19e705"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/NoClassDefFoundError;

    if-eqz v0, :cond_1

    const/16 v0, 0x146

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "2d1557"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/google/firebase/database/DatabaseException;

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "025246"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xcb

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "2e2424"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x77t
        0x50t
        0x17t
        0x52t
        0x52t
        0x54t
        0x42t
        0x5ct
        0x45t
        0x73t
        0x51t
        0x41t
        0x50t
        0x5bt
        0x4t
        0x44t
        0x55t
        0x15t
        0x54t
        0x57t
        0x6t
        0x58t
        0x45t
        0x5bt
        0x45t
        0x5ct
        0x17t
        0x52t
        0x54t
        0x15t
        0x50t
        0x57t
        0x45t
        0x78t
        0x45t
        0x41t
        0x7et
        0x5ft
        0x28t
        0x52t
        0x5dt
        0x5at
        0x43t
        0x40t
        0x20t
        0x45t
        0x42t
        0x5at
        0x43t
        0x17t
        0x45t
        0x6et
        0x5ft
        0x40t
        0x11t
        0x54t
        0x4t
        0x4et
        0x10t
        0x5bt
        0x54t
        0x5ct
        0x1t
        0x17t
        0x44t
        0x5at
        0x11t
        0x4bt
        0x0t
        0x53t
        0x45t
        0x56t
        0x54t
        0x19t
        0x11t
        0x5ft
        0x55t
        0x15t
        0x50t
        0x54t
        0xat
        0x42t
        0x5et
        0x41t
        0x11t
        0x56t
        0x3t
        0x17t
        0x54t
        0x54t
        0x45t
        0x58t
        0x45t
        0x4et
        0x5ft
        0x40t
        0x11t
        0x58t
        0x17t
        0x52t
        0x10t
        0x46t
        0x48t
        0x57t
        0x6t
        0x5et
        0x5et
        0x52t
        0x11t
        0x4dt
        0xat
        0x17t
        0x44t
        0x5dt
        0x54t
        0x19t
        0x6t
        0x5bt
        0x59t
        0x50t
        0x5ft
        0x4dt
        0x45t
        0x1ft
        0x55t
        0x1bt
        0x56t
        0x17t
        0x45t
        0x55t
        0x49t
        0x15t
        0x44t
        0x4at
        0xct
        0x59t
        0x57t
        0x15t
        0x40t
        0x4ct
        0x0t
        0x45t
        0x59t
        0x50t
        0x42t
        0x19t
        0xat
        0x45t
        0x10t
        0x46t
        0x48t
        0x57t
        0x6t
        0x5et
        0x5et
        0x52t
        0x11t
        0x58t
        0x45t
        0x53t
        0x55t
        0x50t
        0x41t
        0x5ct
        0x17t
        0x17t
        0x40t
        0x54t
        0x45t
        0x51t
        0x4ct
        0x19t
        0x10t
        0x66t
        0x54t
        0x5ct
        0x45t
        0x5ft
        0x44t
        0x41t
        0x41t
        0x4at
        0x5ft
        0x18t
        0x1ft
        0x53t
        0x58t
        0x4bt
        0x0t
        0x55t
        0x51t
        0x46t
        0x54t
        0x17t
        0x2t
        0x58t
        0x5ft
        0x52t
        0x5dt
        0x5ct
        0x4bt
        0x54t
        0x5ft
        0x58t
        0x1et
        0x5dt
        0xat
        0x54t
        0x43t
        0x1at
        0x55t
        0x58t
        0x11t
        0x56t
        0x52t
        0x54t
        0x42t
        0x5ct
        0x4at
        0x5et
        0x5ft
        0x46t
        0x1et
        0x4at
        0x11t
        0x45t
        0x45t
        0x56t
        0x45t
        0x4ct
        0x17t
        0x52t
        0x1dt
        0x51t
        0x50t
        0x4dt
        0x4t
        0x14t
        0x52t
        0x50t
        0x42t
        0x4dt
        0x3at
        0x47t
        0x42t
        0x54t
        0x52t
        0x4dt
        0xct
        0x54t
        0x55t
        0x46t
        0x6et
        0x5ft
        0xat
        0x45t
        0x6ft
        0x51t
        0x50t
        0x4dt
        0x4t
        0x68t
        0x43t
        0x41t
        0x43t
        0x4ct
        0x6t
        0x43t
        0x45t
        0x47t
        0x54t
        0x19t
        0x4t
        0x59t
        0x54t
        0x15t
        0x59t
        0x4dt
        0x11t
        0x47t
        0x43t
        0xft
        0x1et
        0x16t
        0x3t
        0x5et
        0x42t
        0x50t
        0x53t
        0x58t
        0x16t
        0x52t
        0x1et
        0x52t
        0x5et
        0x56t
        0x2t
        0x5bt
        0x55t
        0x1bt
        0x52t
        0x56t
        0x8t
        0x18t
        0x54t
        0x5at
        0x52t
        0x4at
        0x4at
        0x53t
        0x51t
        0x41t
        0x50t
        0x5bt
        0x4t
        0x44t
        0x55t
        0x1at
        0x50t
        0x57t
        0x1t
        0x45t
        0x5ft
        0x5ct
        0x55t
        0x16t
        0x17t
        0x52t
        0x44t
        0x47t
        0x58t
        0x5ct
        0x13t
        0x52t
        0x1dt
        0x51t
        0x50t
        0x4dt
        0x4t
        0x14t
        0x56t
        0x5ct
        0x5dt
        0x4dt
        0x0t
        0x45t
        0x59t
        0x5bt
        0x56t
        0x66t
        0x1t
        0x56t
        0x44t
        0x54t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x73t
        0x44t
        0x42t
        0x4ct
        0x58t
        0x55t
        0x5dt
        0x8t
        0x11t
        0x41t
        0x5dt
        0x56t
        0x46t
        0x44t
        0x45t
        0x5dt
        0x50t
        0x17t
        0x74t
        0xdt
        0x43t
        0x50t
        0x57t
        0x56t
        0x41t
        0x1t
        0x11t
        0x71t
        0x54t
        0x43t
        0x53t
        0x6t
        0x50t
        0x46t
        0x50t
        0x17t
        0x61t
        0x20t
        0x7at
        0x15t
        0x51t
        0x52t
        0x42t
        0x1t
        0x5ft
        0x51t
        0x46t
        0x17t
        0x5dt
        0xat
        0x11t
        0x53t
        0x54t
        0x5et
        0x5et
        0x1t
        0x55t
        0x15t
        0x41t
        0x58t
        0x12t
        0x8t
        0x5et
        0x54t
        0x51t
        0x19t
        0x12t
        0x30t
        0x59t
        0x5ct
        0x46t
        0x17t
        0x47t
        0x17t
        0x44t
        0x54t
        0x59t
        0x5bt
        0x4bt
        0x44t
        0x58t
        0x5bt
        0x51t
        0x5et
        0x51t
        0x5t
        0x45t
        0x50t
        0x46t
        0x17t
        0x46t
        0xct
        0x50t
        0x41t
        0x15t
        0x4et
        0x5dt
        0x11t
        0x43t
        0x15t
        0x45t
        0x45t
        0x5dt
        0xet
        0x54t
        0x56t
        0x41t
        0x17t
        0x5bt
        0xat
        0x52t
        0x59t
        0x40t
        0x53t
        0x57t
        0x17t
        0x11t
        0x54t
        0x5bt
        0x17t
        0x5bt
        0xat
        0x52t
        0x5at
        0x58t
        0x47t
        0x53t
        0x10t
        0x58t
        0x57t
        0x59t
        0x52t
        0x12t
        0x12t
        0x54t
        0x47t
        0x46t
        0x5et
        0x5dt
        0xat
        0x11t
        0x5at
        0x53t
        0x17t
        0x53t
        0xat
        0x5et
        0x41t
        0x5dt
        0x52t
        0x40t
        0x44t
        0x77t
        0x5ct
        0x47t
        0x52t
        0x50t
        0x5t
        0x42t
        0x50t
        0x15t
        0x53t
        0x57t
        0x14t
        0x54t
        0x5bt
        0x51t
        0x52t
        0x5ct
        0x7t
        0x48t
        0x1bt
        0x15t
        0x7et
        0x54t
        0x44t
        0x44t
        0x45t
        0x51t
        0x56t
        0x46t
        0xdt
        0x5ft
        0x52t
        0x15t
        0x4et
        0x5dt
        0x11t
        0x43t
        0x15t
        0x51t
        0x52t
        0x42t
        0x1t
        0x5ft
        0x51t
        0x50t
        0x59t
        0x51t
        0xdt
        0x54t
        0x46t
        0x15t
        0x43t
        0x5dt
        0x44t
        0x45t
        0x5dt
        0x50t
        0x17t
        0x5et
        0x5t
        0x45t
        0x50t
        0x46t
        0x43t
        0x12t
        0x12t
        0x54t
        0x47t
        0x46t
        0x5et
        0x5dt
        0xat
        0x11t
        0x51t
        0x5at
        0x52t
        0x41t
        0x44t
        0x5ft
        0x5at
        0x41t
        0x17t
        0x40t
        0x1t
        0x42t
        0x5at
        0x59t
        0x41t
        0x57t
        0x44t
        0x45t
        0x5dt
        0x5ct
        0x44t
        0x12t
        0xdt
        0x42t
        0x46t
        0x40t
        0x52t
        0x1et
        0x44t
        0x41t
        0x59t
        0x50t
        0x56t
        0x41t
        0x1t
        0x11t
        0x53t
        0x5ct
        0x5bt
        0x57t
        0x44t
        0x50t
        0x15t
        0x47t
        0x52t
        0x42t
        0xbt
        0x43t
        0x41t
        0x15t
        0x56t
        0x46t
        0x44t
        0x59t
        0x41t
        0x41t
        0x47t
        0x41t
        0x5et
        0x1et
        0x1at
        0x52t
        0x5et
        0x46t
        0xct
        0x44t
        0x57t
        0x1bt
        0x54t
        0x5dt
        0x9t
        0x1et
        0x53t
        0x5ct
        0x45t
        0x57t
        0x6t
        0x50t
        0x46t
        0x50t
        0x18t
        0x54t
        0xdt
        0x43t
        0x50t
        0x57t
        0x56t
        0x41t
        0x1t
        0x1ct
        0x54t
        0x5bt
        0x53t
        0x40t
        0xbt
        0x58t
        0x51t
        0x18t
        0x44t
        0x56t
        0xft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x65t
        0x5ct
        0x56t
        0x53t
        0x41t
        0x51t
        0x58t
        0x46t
        0x15t
        0x57t
        0x4ct
        0x55t
        0x55t
        0x42t
        0x41t
        0x5bt
        0x5bt
        0x58t
        0x10t
        0x5bt
        0x5bt
        0x12t
        0x72t
        0x5ft
        0x42t
        0x57t
        0x57t
        0x53t
        0x47t
        0x53t
        0x10t
        0x76t
        0x54t
        0x46t
        0x55t
        0x54t
        0x51t
        0x41t
        0x50t
        0x12t
        0x46t
        0x43t
        0x5et
        0x5et
        0x5at
        0x5dt
        0x44t
        0x16t
        0x18t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1bt
        0x4bt
        0x12t
        0x7dt
        0x54t
        0x14t
        0x4bt
        0xat
        0x47t
        0x14t
        0x53t
        0x46t
        0x57t
        0x45t
        0x5ct
        0x5bt
        0x46t
        0x14t
        0x53t
        0x9t
        0x40t
        0x51t
        0x53t
        0x50t
        0x4bt
        0x45t
        0x5dt
        0x5at
        0x12t
        0x40t
        0x5at
        0x0t
        0x12t
        0x58t
        0x53t
        0x40t
        0x57t
        0x16t
        0x46t
        0x14t
        0x44t
        0x51t
        0x40t
        0x16t
        0x5bt
        0x5bt
        0x5ct
        0x14t
        0x5dt
        0x3t
        0x12t
        0x40t
        0x5at
        0x51t
        0x12t
        0x23t
        0x5bt
        0x46t
        0x57t
        0x56t
        0x53t
        0x16t
        0x57t
        0x14t
        0x61t
        0x70t
        0x79t
        0x16t
        0x1et
        0x14t
        0x46t
        0x46t
        0x4bt
        0x45t
        0x47t
        0x44t
        0x56t
        0x55t
        0x46t
        0xct
        0x5ct
        0x53t
        0x12t
        0x4dt
        0x5dt
        0x10t
        0x40t
        0x14t
        0x56t
        0x51t
        0x42t
        0x0t
        0x5ct
        0x50t
        0x57t
        0x5at
        0x51t
        0xct
        0x57t
        0x47t
        0x1ct
        0x14t
        0x61t
        0xdt
        0x5dt
        0x41t
        0x5et
        0x50t
        0x12t
        0x11t
        0x5at
        0x5dt
        0x41t
        0x14t
        0x42t
        0x17t
        0x5dt
        0x56t
        0x5et
        0x51t
        0x5ft
        0x45t
        0x42t
        0x51t
        0x40t
        0x47t
        0x5bt
        0x16t
        0x46t
        0x18t
        0x12t
        0x44t
        0x5et
        0x0t
        0x53t
        0x47t
        0x57t
        0x14t
        0x54t
        0xct
        0x5et
        0x51t
        0x12t
        0x55t
        0x12t
        0x17t
        0x57t
        0x44t
        0x5dt
        0x46t
        0x46t
        0x45t
        0x53t
        0x40t
        0x12t
        0x5ct
        0x46t
        0x11t
        0x42t
        0x47t
        0x8t
        0x1bt
        0x1dt
        0x2t
        0x5bt
        0x40t
        0x5at
        0x41t
        0x50t
        0x4bt
        0x51t
        0x5bt
        0x5ft
        0x1bt
        0x54t
        0xct
        0x40t
        0x51t
        0x50t
        0x55t
        0x41t
        0x0t
        0x1dt
        0x52t
        0x5bt
        0x46t
        0x57t
        0x7t
        0x53t
        0x47t
        0x57t
        0x19t
        0x53t
        0xbt
        0x56t
        0x46t
        0x5dt
        0x5dt
        0x56t
        0x48t
        0x41t
        0x50t
        0x59t
    .end array-data
.end method


# virtual methods
.method public getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method protected getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getThreadInitializer()Lcom/google/firebase/database/core/ThreadInitializer;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/core/ThreadInitializer;->defaultInstance:Lcom/google/firebase/database/core/ThreadInitializer;

    return-object v0
.end method

.method public abstract handleException(Ljava/lang/Throwable;)V
.end method

.method public restart()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setCorePoolSize(I)V

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleNow(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setCorePoolSize(I)V

    return-void
.end method
