.class public final Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/CallbackToFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Completer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private attemptedSetting:Z

.field private cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture",
            "<TT;>;"
        }
    .end annotation
.end field

.field tag:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    return-void
.end method

.method private setCompletedNormally()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    return-void
.end method


# virtual methods
.method public addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 5

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x66

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "82ea82"

    const v4, 0x4dcaf18b    # 4.2560342E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$FutureGarbageCollectedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$FutureGarbageCollectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->setException(Ljava/lang/Throwable;)Z

    :cond_0
    iget-boolean v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->attemptedSetting:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x6ct
        0x5at
        0x0t
        0x41t
        0x5bt
        0x5dt
        0x55t
        0x42t
        0x9t
        0x4t
        0x4ct
        0x57t
        0x4at
        0x12t
        0xat
        0x3t
        0x52t
        0x57t
        0x5bt
        0x46t
        0x45t
        0x16t
        0x59t
        0x41t
        0x18t
        0x55t
        0x4t
        0x13t
        0x5at
        0x53t
        0x5ft
        0x57t
        0x45t
        0x2t
        0x57t
        0x5et
        0x54t
        0x57t
        0x6t
        0x15t
        0x5dt
        0x56t
        0x18t
        0x1ft
        0x45t
        0x15t
        0x50t
        0x5bt
        0x4bt
        0x12t
        0x3t
        0x14t
        0x4ct
        0x47t
        0x4at
        0x57t
        0x45t
        0x16t
        0x57t
        0x47t
        0x54t
        0x56t
        0x45t
        0xet
        0x4ct
        0x5at
        0x5dt
        0x40t
        0x12t
        0x8t
        0x4bt
        0x57t
        0x18t
        0x5ct
        0x0t
        0x17t
        0x5dt
        0x40t
        0x18t
        0x51t
        0xat
        0xct
        0x48t
        0x5et
        0x5dt
        0x46t
        0x0t
        0x4ft
        0x18t
        0x66t
        0x50t
        0x57t
        0x45t
        0x15t
        0x59t
        0x55t
        0x18t
        0x45t
        0x4t
        0x12t
        0x2t
        0x12t
    .end array-data
.end method

.method fireCancellationListeners()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->attemptedSetting:Z

    iget-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->set(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCompletedNormally()V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCancelled()Z
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->attemptedSetting:Z

    iget-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->cancelWithoutNotifyingCompleter(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCompletedNormally()V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->attemptedSetting:Z

    iget-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCompletedNormally()V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
