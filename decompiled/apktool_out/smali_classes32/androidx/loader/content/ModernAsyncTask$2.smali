.class Landroidx/loader/content/ModernAsyncTask$2;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/loader/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/loader/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroidx/loader/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/ModernAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 5

    const/16 v2, 0x32

    :try_start_0
    invoke-virtual {p0}, Landroidx/loader/content/ModernAsyncTask$2;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/ModernAsyncTask;

    invoke-virtual {v1, v0}, Landroidx/loader/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "48fdb6"

    const v4, 0x4d9d7762    # 3.3023085E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Landroidx/loader/content/ModernAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/loader/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "5c1a34"

    const v4, 0x4e7aa120

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "ad038b"

    const/16 v3, 0x259e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x75t
        0x56t
        0x46t
        0x1t
        0x10t
        0x44t
        0x5bt
        0x4at
        0x46t
        0xbt
        0x1t
        0x55t
        0x41t
        0x4at
        0x14t
        0x1t
        0x6t
        0x16t
        0x43t
        0x50t
        0xft
        0x8t
        0x7t
        0x16t
        0x51t
        0x40t
        0x3t
        0x7t
        0x17t
        0x42t
        0x5dt
        0x56t
        0x1t
        0x44t
        0x6t
        0x59t
        0x7dt
        0x56t
        0x24t
        0x5t
        0x1t
        0x5dt
        0x53t
        0x4at
        0x9t
        0x11t
        0xct
        0x52t
        0x1ct
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0xdt
        0x11t
        0x4t
        0x41t
        0x46t
        0x5at
        0x11t
        0x11t
        0xet
        0x50t
        0x57t
        0x40t
        0x11t
        0x43t
        0x4t
        0x57t
        0x14t
        0x42t
        0xbt
        0x58t
        0xdt
        0x56t
        0x14t
        0x50t
        0x1bt
        0x54t
        0x2t
        0x46t
        0x40t
        0x5ct
        0xdt
        0x56t
        0x41t
        0x57t
        0x5bt
        0x7ct
        0xdt
        0x73t
        0x0t
        0x50t
        0x5ft
        0x52t
        0x11t
        0x5et
        0x14t
        0x5dt
        0x50t
        0x1dt
        0x4at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x20t
        0x17t
        0x49t
        0x5dt
        0x5bt
        0x36t
        0x0t
        0x17t
        0x5bt
    .end array-data
.end method
