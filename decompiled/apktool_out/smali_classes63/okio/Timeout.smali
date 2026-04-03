.class public Lokio/Timeout;
.super Ljava/lang/Object;


# static fields
.field public static final NONE:Lokio/Timeout;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokio/Timeout$1;

    invoke-direct {v0}, Lokio/Timeout$1;-><init>()V

    sput-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static minTimeout(JJ)J
    .locals 4

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    cmp-long v0, p2, v2

    if-nez v0, :cond_2

    move-wide p2, p0

    goto :goto_0

    :cond_2
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide p2, p0

    goto :goto_0
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    return-object p0
.end method

.method public clearTimeout()Lokio/Timeout;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    return-object p0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2a85f0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "d76b94"

    const-wide v4, -0x3e2211c4e3000000L    # -2.00860786E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x56t
        0x14t
        0x4at
        0x54t
        0x12t
        0x59t
        0x5dt
        0xft
        0x18t
        0x9t
        0x5bt
        0x10t
        0x2t
        0x5bt
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x11t
        0x59t
        0x5ft
        0x16t
        0x19t
        0x9t
        0x59t
        0x17t
        0x58t
        0x17t
        0x55t
        0x58t
    .end array-data
.end method

.method public deadlineNanoTime()J
    .locals 4

    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "57d78d"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    return-wide v0

    nop

    :array_0
    .array-data 1
        0x7bt
        0x58t
        0x44t
        0x53t
        0x5dt
        0x5t
        0x51t
        0x5bt
        0xdt
        0x59t
        0x5dt
    .end array-data
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    iput-wide p1, p0, Lokio/Timeout;->deadlineNanoTime:J

    return-object p0
.end method

.method public hasDeadline()Z
    .locals 1

    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    return v0
.end method

.method public throwIfReached()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "60adf8"

    const-wide v4, -0x3e8745c230000000L    # -2.5928669E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/io/InterruptedIOException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "5a6ae6"

    const-wide v4, -0x3e33bddb1e000000L    # -9.48193732E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x5ft
        0x5et
        0x15t
        0x1t
        0x14t
        0x4at
        0x43t
        0x40t
        0x15t
        0x1t
        0x2t
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0x4t
        0x57t
        0x5t
        0x9t
        0x5ft
        0x5bt
        0x4t
        0x16t
        0x13t
        0x0t
        0x57t
        0x56t
        0x9t
        0x53t
        0x5t
    .end array-data
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "80bbf8"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "178f6d"

    const-wide/32 v4, 0x404f3229

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    return-object p0

    nop

    :array_0
    .array-data 1
        0x4ct
        0x59t
        0xft
        0x7t
        0x9t
        0x4dt
        0x4ct
        0x10t
        0x5et
        0x42t
        0x56t
        0x2t
        0x18t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x44t
        0x59t
        0x51t
        0x12t
        0x16t
        0x59t
        0xct
        0x17t
        0x56t
        0x13t
        0x5at
        0x8t
    .end array-data
.end method

.method public timeoutNanos()J
    .locals 2

    iget-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    return-wide v0
.end method

.method public final waitUntilNotified(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const-wide/32 v8, 0xf4240

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    if-nez v4, :cond_1

    cmp-long v5, v2, v0

    if-nez v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    if-eqz v4, :cond_4

    cmp-long v5, v2, v0

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_2
    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    const-wide/32 v0, 0xf4240

    div-long v0, v2, v0

    mul-long v4, v8, v0

    sub-long v4, v2, v4

    long-to-int v4, v4

    invoke-virtual {p1, v0, v1, v4}, Ljava/lang/Object;->wait(JI)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    :cond_3
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "89170e"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "dce304"

    const-wide/32 v4, -0x4f9c575f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    sub-long/2addr v2, v6

    goto :goto_0

    :array_0
    .array-data 1
        0x4ct
        0x50t
        0x5ct
        0x52t
        0x5ft
        0x10t
        0x4ct
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0xdt
        0x11t
        0x56t
        0x42t
        0x46t
        0x11t
        0x13t
        0x11t
        0x56t
        0x54t
    .end array-data
.end method
