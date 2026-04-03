.class Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool",
            "<",
            "Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    invoke-direct {v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;-><init>()V

    sput-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    sget-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->start()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    .locals 1

    sget-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x27

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "94161f"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x7ft
        0x55t
        0x58t
        0x5at
        0x54t
        0x2t
        0x19t
        0x40t
        0x5et
        0x16t
        0x54t
        0x8t
        0x48t
        0x41t
        0x54t
        0x43t
        0x54t
        0x46t
        0x58t
        0x47t
        0x48t
        0x58t
        0x52t
        0x46t
        0x50t
        0x5at
        0x57t
        0x5at
        0x50t
        0x12t
        0x5ct
        0x14t
        0x43t
        0x53t
        0x40t
        0x13t
        0x5ct
        0x47t
        0x45t
    .end array-data
.end method

.method public obtainRequest()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    .locals 1

    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    invoke-direct {v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;-><init>()V

    :cond_0
    return-object v0
.end method

.method public releaseRequest(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->callback:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    iput-object v1, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iput-object v1, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iput-object v1, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 0

    :goto_0
    invoke-virtual {p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->runInner()V

    goto :goto_0
.end method

.method public runInner()V
    .locals 7

    const/16 v5, 0x13

    const/4 v3, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v1, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v3, v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v1, v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v1, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-array v1, v5, [B

    fill-array-data v1, :array_0

    const-string v2, "52f1a9"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    const-string v3, "29053c"

    const v4, -0x315921fb

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x47

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "19454f"

    const v5, -0x312c54ec

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x74t
        0x41t
        0x1ft
        0x5ft
        0x2t
        0x75t
        0x54t
        0x4bt
        0x9t
        0x44t
        0x15t
        0x70t
        0x5bt
        0x54t
        0xat
        0x50t
        0x15t
        0x5ct
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x73t
        0x4at
        0x49t
        0x5bt
        0x50t
        0x2ft
        0x53t
        0x40t
        0x5ft
        0x40t
        0x47t
        0x2at
        0x5ct
        0x5ft
        0x5ct
        0x54t
        0x47t
        0x6t
        0x40t
    .end array-data

    :array_2
    .array-data 1
        0x77t
        0x58t
        0x5dt
        0x59t
        0x51t
        0x2t
        0x11t
        0x4dt
        0x5bt
        0x15t
        0x5dt
        0x8t
        0x57t
        0x55t
        0x55t
        0x41t
        0x51t
        0x46t
        0x43t
        0x5ct
        0x47t
        0x5at
        0x41t
        0x14t
        0x52t
        0x5ct
        0x14t
        0x5ct
        0x5at
        0x46t
        0x45t
        0x51t
        0x51t
        0x15t
        0x56t
        0x7t
        0x52t
        0x52t
        0x53t
        0x47t
        0x5bt
        0x13t
        0x5ft
        0x5dt
        0x15t
        0x15t
        0x66t
        0x3t
        0x45t
        0x4bt
        0x4dt
        0x5ct
        0x5at
        0x1t
        0x11t
        0x56t
        0x5at
        0x15t
        0x40t
        0xet
        0x54t
        0x19t
        0x61t
        0x7ct
        0x14t
        0x12t
        0x59t
        0x4bt
        0x51t
        0x54t
        0x50t
    .end array-data
.end method
