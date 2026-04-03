.class public abstract Landroidx/concurrent/futures/AbstractResolvableFuture;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field volatile listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

.field volatile value:Ljava/lang/Object;

.field volatile waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v4, 0x5

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f830b5"

    const-wide v2, -0x3e3d552125000000L    # -6.26376118E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "eec1e6"

    const/16 v3, -0x2e9d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    const-class v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;

    const-class v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const-class v2, Ljava/lang/Thread;

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "b292b7"

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const-class v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "ed9ea0"

    const v7, -0x31375887

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Landroidx/concurrent/futures/AbstractResolvableFuture;

    const-class v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v7, "e9e44f"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v4, Landroidx/concurrent/futures/AbstractResolvableFuture;

    const-class v5, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    const/16 v7, 0x9

    new-array v7, v7, [B

    fill-array-data v7, :array_5

    const-string v8, "1f746f"

    const v9, -0x339337c1    # -6.2071036E7f

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v5, Landroidx/concurrent/futures/AbstractResolvableFuture;

    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x5

    new-array v8, v8, [B

    fill-array-data v8, :array_6

    const-string v9, "a3bb8e"

    const v10, -0x3134b812

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v6

    :goto_0
    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    if-eqz v1, :cond_0

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/16 v3, 0x1b

    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const-string v4, "4758a4"

    invoke-static {v3, v4, v11, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;

    invoke-direct {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;-><init>()V

    goto :goto_0

    :array_0
    .array-data 1
        0x1t
        0x4dt
        0x52t
        0x46t
        0x3t
        0x1bt
        0x5t
        0x57t
        0x5dt
        0x53t
        0x17t
        0x47t
        0x14t
        0x5dt
        0x5dt
        0x44t
        0x4ct
        0x52t
        0x3t
        0x56t
        0x56t
        0x42t
        0x3t
        0x41t
        0x3t
        0x67t
        0x50t
        0x51t
        0xct
        0x56t
        0x3t
        0x54t
        0x5ft
        0x51t
        0x16t
        0x5ct
        0x9t
        0x56t
        0x6ct
        0x53t
        0x3t
        0x40t
        0x15t
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x4t
        0xft
        0x42t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x16t
        0x5at
        0x4bt
        0x57t
        0x3t
        0x53t
    .end array-data

    nop

    :array_3
    .array-data 1
        0xbt
        0x1t
        0x41t
        0x11t
    .end array-data

    :array_4
    .array-data 1
        0x12t
        0x58t
        0xct
        0x40t
        0x51t
        0x14t
        0x16t
    .end array-data

    :array_5
    .array-data 1
        0x5dt
        0xft
        0x44t
        0x40t
        0x53t
        0x8t
        0x54t
        0x14t
        0x44t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x17t
        0x52t
        0xet
        0x17t
        0x5dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x67t
        0x56t
        0x53t
        0x5dt
        0x20t
        0x40t
        0x5bt
        0x5at
        0x5ct
        0x5bt
        0x29t
        0x51t
        0x58t
        0x47t
        0x50t
        0x4at
        0x41t
        0x5dt
        0x47t
        0x17t
        0x57t
        0x4at
        0xet
        0x5ft
        0x51t
        0x59t
        0x14t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .locals 8

    const/16 v7, 0x10

    const/4 v6, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5e0a3a"

    const-wide v4, 0x41d3d440b4c00000L    # 1.330709203E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const-string v1, "d5d788"

    const/16 v2, 0x3103

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    const-string v2, "e2d68a"

    const-wide v4, 0x41d0efa063400000L    # 1.136558477E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "70ce2a"

    const v2, -0x31013647

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "4a3400"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_2
    move-exception v0

    new-array v1, v7, [B

    fill-array-data v1, :array_4

    const-string v2, "4ca031"

    const-wide v4, -0x3e3ae78111800000L    # -7.07853789E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v0, v3, [B

    const/16 v1, 0x69

    aput-byte v1, v0, v6

    const-string v1, "4a4a27"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :array_0
    .array-data 1
        0x66t
        0x30t
        0x73t
        0x22t
        0x76t
        0x32t
        0x66t
        0x49t
        0x10t
        0x13t
        0x56t
        0x12t
        0x40t
        0x9t
        0x44t
        0x5ct
        0x68t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        0x7ct
        0x2ft
        0x78t
        0x77t
        0x36t
        0x2bt
        0x1et
        0x44t
        0x55t
        0x59t
        0x14t
        0x16t
        0x57t
        0x59t
        0x6dt
    .end array-data

    :array_2
    .array-data 1
        0x17t
        0x44t
        0xbt
        0x17t
        0x5dt
        0x16t
        0x59t
        0x10t
        0x5t
        0x17t
        0x5dt
        0xct
        0x17t
        0x57t
        0x6t
        0x11t
        0x1at
        0x48t
        0x6at
    .end array-data

    :array_3
    .array-data 1
        0x77t
        0x20t
        0x7dt
        0x77t
        0x75t
        0x7ct
        0x78t
        0x24t
        0x77t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x72t
        0x22t
        0x28t
        0x7ct
        0x66t
        0x63t
        0x71t
        0x4ft
        0x41t
        0x53t
        0x52t
        0x44t
        0x47t
        0x6t
        0x5ct
        0x6bt
    .end array-data
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearListeners(Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    .locals 3

    :cond_0
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    iput-object p1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    move-object p1, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method static complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->releaseWaiters()V

    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->afterDone()V

    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->clearListeners(Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object v1, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    iget-object v0, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->task:Ljava/lang/Runnable;

    instance-of v3, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    iget-object p0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/concurrent/futures/AbstractResolvableFuture;

    iget-object v2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-ne v2, v0, :cond_1

    iget-object v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v3, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    move-object v2, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2a

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "69e4d4"

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0xf

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "571370"

    const/4 v6, 0x0

    invoke-static {v4, v5, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x64t
        0x4ct
        0xbt
        0x40t
        0xdt
        0x59t
        0x53t
        0x7ct
        0x1dt
        0x57t
        0x1t
        0x44t
        0x42t
        0x50t
        0xat
        0x5at
        0x44t
        0x43t
        0x5et
        0x50t
        0x9t
        0x51t
        0x44t
        0x51t
        0x4et
        0x5ct
        0x6t
        0x41t
        0x10t
        0x5dt
        0x58t
        0x5et
        0x45t
        0x46t
        0x11t
        0x5at
        0x58t
        0x58t
        0x7t
        0x58t
        0x1t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x40t
        0x58t
        0x47t
        0x5ft
        0x10t
        0x50t
        0x4ft
        0x54t
        0x50t
        0x42t
        0x44t
        0x5at
        0x45t
        0x11t
    .end array-data
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    instance-of v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    if-nez v0, :cond_1

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    iget-object v1, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "5be7da"

    const-wide/32 v2, -0x26b75c77

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-object v1, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x3t
        0x16t
        0x5ct
        0x44t
        0x16t
        0x54t
        0x11t
        0x45t
        0x54t
        0x5t
        0xft
        0x56t
        0x7t
        0x9t
        0x5bt
        0x1t
        0x5t
        0x1bt
    .end array-data
.end method

.method static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v3, 0x0

    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    if-eqz v0, :cond_2

    check-cast p0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    instance-of v0, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-boolean v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    if-eqz v2, :cond_0

    iget-object v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {v1, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v1

    sget-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-direct {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "abaa15"

    const v4, 0x4e939080

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    invoke-direct {v1, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x6t
        0x7t
        0x15t
        0x49t
        0x18t
        0x15t
        0x15t
        0xat
        0x13t
        0x4t
        0x46t
        0x15t
        0x22t
        0x3t
        0xft
        0x2t
        0x54t
        0x59t
        0xdt
        0x3t
        0x15t
        0x8t
        0x5et
        0x5bt
        0x24t
        0x1at
        0x2t
        0x4t
        0x41t
        0x41t
        0x8t
        0xdt
        0xft
        0x4dt
        0x11t
        0x51t
        0x4t
        0x11t
        0x11t
        0x8t
        0x45t
        0x50t
        0x41t
        0x10t
        0x4t
        0x11t
        0x5et
        0x47t
        0x15t
        0xbt
        0xft
        0x6t
        0x11t
        0x5ct
        0x12t
        0x21t
        0x0t
        0xft
        0x52t
        0x50t
        0xdt
        0xet
        0x4t
        0x5t
        0x19t
        0x1ct
        0x41t
        0x5ft
        0x5ct
        0x41t
        0x57t
        0x54t
        0xdt
        0x11t
        0x4t
        0x5bt
        0x11t
    .end array-data
.end method

.method static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v1

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private releaseWaiters()V
    .locals 3

    :cond_0
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->unpark()V

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V
    .locals 5

    const/4 v2, 0x0

    iput-object v2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-ne v0, v1, :cond_5

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    iget-object v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_2

    :goto_2
    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    iput-object v3, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    iget-object v0, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v4, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method private userObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-ne p1, p0, :cond_0

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "368fae"

    const-wide v2, -0x3e23e3cc1c400000L    # -1.886441359E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x47t
        0x5et
        0x51t
        0x15t
        0x41t
        0x3t
        0x46t
        0x42t
        0x4dt
        0x14t
        0x4t
    .end array-data
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    if-eq v0, v1, :cond_2

    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    invoke-direct {v1, p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v0, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    if-ne v0, v2, :cond_0

    :cond_2
    invoke-static {p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method protected afterDone()V
    .locals 0

    return-void
.end method

.method public final cancel(Z)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-nez v4, :cond_2

    move v0, v1

    :goto_0
    instance-of v3, v4, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    or-int/2addr v0, v3

    if-eqz v0, :cond_9

    sget-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    const/16 v5, 0x1b

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "651a4a"

    const-wide v8, 0x41d345d75a000000L    # 1.293376872E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    move-object v3, v0

    :goto_1
    move-object v0, v4

    move v4, v2

    :cond_0
    :goto_2
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->interruptTask()V

    :cond_1
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v4, :cond_7

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    if-eqz v4, :cond_6

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    iget-object v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-nez v4, :cond_5

    move v5, v1

    :goto_3
    instance-of v6, v4, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    or-int/2addr v5, v6

    if-eqz v5, :cond_7

    move-object p0, v0

    move-object v0, v4

    move v4, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    move-object v3, v0

    goto :goto_1

    :cond_4
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    move-object v3, v0

    goto :goto_1

    :cond_5
    move v5, v2

    goto :goto_3

    :cond_6
    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_7
    :goto_4
    return v1

    :cond_8
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    instance-of v5, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-nez v5, :cond_0

    move v1, v4

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_4

    nop

    :array_0
    .array-data 1
        0x70t
        0x40t
        0x45t
        0x14t
        0x46t
        0x4t
        0x18t
        0x56t
        0x50t
        0xft
        0x57t
        0x4t
        0x5at
        0x1dt
        0x18t
        0x41t
        0x43t
        0x0t
        0x45t
        0x15t
        0x52t
        0x0t
        0x58t
        0xdt
        0x53t
        0x51t
        0x1ft
    .end array-data
.end method

.method public final get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v3, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    instance-of v4, v3, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-eq v0, v3, :cond_7

    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    invoke-direct {v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;-><init>()V

    :cond_2
    invoke-virtual {v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v4, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v4, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eqz v4, :cond_4

    move v0, v1

    :goto_2
    instance-of v5, v4, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/lit8 v5, v5, 0x1

    and-int/2addr v0, v5

    if-eqz v0, :cond_3

    invoke-direct {p0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-direct {p0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_6
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-ne v0, v4, :cond_2

    :cond_7
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    instance-of v4, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v4, v0

    :goto_2
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-eq v0, v1, :cond_a

    new-instance v6, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    invoke-direct {v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;-><init>()V

    :cond_2
    invoke-virtual {v6, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v1, p0, v0, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-wide v0, v2

    :cond_3
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :goto_3
    instance-of v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    invoke-direct {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    invoke-direct {p0, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    move-wide v2, v0

    :cond_7
    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_e

    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :goto_5
    instance-of v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    invoke-direct {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-direct {p0, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_9
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-ne v0, v1, :cond_2

    :cond_a
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    move-wide v2, v0

    goto :goto_4

    :cond_d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_e
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v6, "1090cc"

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v6, "aeacd8"

    const-wide/32 v8, -0x6a346785

    invoke-static {v0, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    neg-long v2, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-virtual {p3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_f

    const-wide/16 v8, 0x3e8

    cmp-long v1, v2, v8

    if-lez v1, :cond_14

    :cond_f
    const/4 v1, 0x1

    :goto_6
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput-byte v7, v0, v6

    const-string v6, "6ee3b3"

    const-wide v8, -0x3e28607af2000000L    # -1.585321016E9

    invoke-static {v0, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_11
    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "e7809e"

    const/16 v3, -0x4899

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v2, "4f0ee6"

    const v3, -0x32a611c5

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_13
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v2, "c3918e"

    const-wide v4, 0x41dd451c72800000L    # 1.964274122E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v2, "e109c1"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x66t
        0x51t
        0x50t
        0x44t
        0x6t
        0x7t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x4dt
        0x11t
        0xft
        0x11t
        0x4bt
        0x41t
    .end array-data

    :array_2
    .array-data 1
        0x45t
        0x59t
        0x59t
        0x5et
        0x56t
        0x16t
        0x0t
        0x54t
        0x57t
        0x5et
        0x5dt
        0x16t
        0x45t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x50t
        0x3t
        0x5ct
        0x4t
        0x1ct
        0x1ft
    .end array-data

    nop

    :array_4
    .array-data 1
        0x43t
        0x51t
        0x4ct
        0x45t
        0x18t
        0x3t
        0x16t
        0x47t
        0x4ct
        0x43t
        0x5dt
        0x45t
        0x0t
        0x5ct
        0x54t
        0x41t
        0x54t
        0x0t
        0x17t
        0x56t
        0x5dt
        0x11t
        0x59t
        0x16t
        0x43t
        0x47t
        0x50t
        0x5ct
        0x5dt
        0xat
        0x16t
        0x47t
        0x19t
        0x54t
        0x40t
        0x15t
        0xat
        0x41t
        0x5ct
        0x55t
    .end array-data

    :array_5
    .array-data 1
        0x45t
        0x57t
        0x5ft
        0x4bt
        0x43t
    .end array-data
.end method

.method protected interruptTask()V
    .locals 0

    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    return v0
.end method

.method public final isDone()Z
    .locals 2

    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    instance-of v1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "57b0e2"

    const-wide/32 v4, -0x77bb7df8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const-string v2, "b1e8fb"

    const/16 v3, -0x15b7

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c4afeb"

    const v3, -0x311310ee

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "60aa25"

    const/16 v3, -0x135c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x46t
        0x52t
        0x16t
        0x76t
        0x10t
        0x46t
        0x40t
        0x45t
        0x7t
        0xdt
        0x3et
    .end array-data

    :array_1
    .array-data 1
        0x11t
        0x51t
        0xct
        0x7t
        0xct
        0xct
        0xat
        0x5at
        0x6t
        0x46t
        0x1t
        0x7t
        0xft
        0x55t
        0x18t
        0x5bt
        0x3et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x16t
        0x5dt
        0x12t
        0x3ct
    .end array-data
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    :cond_0
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 3

    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v3, p0, v4, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    invoke-direct {v3, p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;-><init>(Landroidx/concurrent/futures/AbstractResolvableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v0, p0, v4, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Landroidx/concurrent/futures/DirectExecutor;->INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

    invoke-interface {p1, v3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-direct {v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v2, p0, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->FALLBACK_INSTANCE:Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    :cond_3
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v1, :cond_4

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-boolean v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2b5f18"

    const/16 v3, 0x170d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "db391c"

    const-wide/32 v4, -0x331f30d2

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-array v0, v8, [B

    const/16 v2, 0x6d

    aput-byte v2, v0, v9

    const-string v2, "02f9ed"

    const/16 v3, 0x87f

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->pendingToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "619d3e"

    invoke-static {v2, v3, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v8, [B

    const/16 v2, 0x6e

    aput-byte v2, v0, v9

    const-string v2, "346060"

    invoke-static {v0, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x26

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "3772b0"

    const-wide/32 v6, 0x2e032758

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v2, "9f101b"

    invoke-static {v0, v2, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x69t
        0x11t
        0x41t
        0x7t
        0x45t
        0x4dt
        0x41t
        0x5ft
    .end array-data

    :array_1
    .array-data 1
        0x27t
        0x23t
        0x7dt
        0x7at
        0x74t
        0x2ft
        0x28t
        0x27t
        0x77t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x66t
        0x74t
        0x77t
        0x20t
        0x7at
        0x2bt
        0x71t
        0x1dt
        0x19t
        0xdt
        0x5dt
        0x3t
        0x59t
        0xct
        0x62t
    .end array-data

    :array_3
    .array-data 1
        0x76t
        0x4ft
        0x54t
        0x57t
        0x12t
        0x44t
        0x5at
        0x58t
        0x59t
        0x12t
        0x16t
        0x58t
        0x41t
        0x58t
        0x40t
        0x5ct
        0x42t
        0x56t
        0x41t
        0x58t
        0x5at
        0x12t
        0xbt
        0x5dt
        0x43t
        0x5bt
        0x52t
        0x5ft
        0x7t
        0x5et
        0x47t
        0x56t
        0x43t
        0x5bt
        0xdt
        0x5et
        0x9t
        0x17t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x69t
        0x23t
        0x7ft
        0x74t
        0x78t
        0x2ct
        0x7et
    .end array-data
.end method

.method protected final wasInterrupted()Z
    .locals 2

    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-boolean v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
