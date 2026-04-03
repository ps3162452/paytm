.class public Lcom/google/firebase/database/connection/util/RetryHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/connection/util/RetryHelper$Builder;
    }
.end annotation


# instance fields
.field private currentRetryDelay:J

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final jitterFactor:D

.field private lastWasSuccess:Z

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private final maxRetryDelay:J

.field private final minRetryDelayAfterFailure:J

.field private final random:Ljava/util/Random;

.field private final retryExponent:D

.field private scheduledRetry:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/logging/LogWrapper;JJDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->random:Ljava/util/Random;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->lastWasSuccess:Z

    iput-object p1, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    iput-wide p3, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->minRetryDelayAfterFailure:J

    iput-wide p5, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->maxRetryDelay:J

    iput-wide p7, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->retryExponent:D

    iput-wide p9, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->jitterFactor:D

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/logging/LogWrapper;JJDDLcom/google/firebase/database/connection/util/RetryHelper$1;)V
    .locals 1

    invoke-direct/range {p0 .. p10}, Lcom/google/firebase/database/connection/util/RetryHelper;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/logging/LogWrapper;JJDD)V

    return-void
.end method

.method static synthetic access$002(Lcom/google/firebase/database/connection/util/RetryHelper;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1203c6"

    const-wide v4, -0x3e2c452945c00000L    # -1.324047081E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->currentRetryDelay:J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "781999"

    const-wide v4, 0x41c489d4a6800000L    # 6.89154381E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x72t
        0x53t
        0x5et
        0x50t
        0x6t
        0x5at
        0x5dt
        0x5bt
        0x5et
        0x54t
        0x43t
        0x53t
        0x49t
        0x5bt
        0x43t
        0x47t
        0xat
        0x58t
        0x56t
        0x12t
        0x42t
        0x56t
        0x17t
        0x44t
        0x48t
        0x12t
        0x51t
        0x47t
        0x17t
        0x53t
        0x5ct
        0x42t
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x79t
        0x57t
        0x11t
        0x5ct
        0x41t
        0x50t
        0x44t
        0x4ct
        0x58t
        0x57t
        0x5et
        0x19t
        0x45t
        0x5dt
        0x45t
        0x4bt
        0x40t
        0x19t
        0x56t
        0x4ct
        0x45t
        0x5ct
        0x54t
        0x49t
        0x43t
        0x18t
        0x45t
        0x56t
        0x19t
        0x5at
        0x56t
        0x56t
        0x52t
        0x5ct
        0x55t
    .end array-data
.end method

.method public retry(Ljava/lang/Runnable;)V
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v2, Lcom/google/firebase/database/connection/util/RetryHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/database/connection/util/RetryHelper$1;-><init>(Lcom/google/firebase/database/connection/util/RetryHelper;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v4, 0x23

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "8739bb"

    const-wide v6, 0x41abe18550000000L    # 2.3388228E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v10}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-boolean v3, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->lastWasSuccess:Z

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v10, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->lastWasSuccess:Z

    iget-object v3, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v4, 0x18

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "a49574"

    invoke-static {v4, v5, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v2, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_1
    iget-wide v4, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->currentRetryDelay:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->minRetryDelayAfterFailure:J

    iput-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->currentRetryDelay:J

    :goto_1
    iget-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->jitterFactor:D

    iget-wide v4, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->currentRetryDelay:J

    long-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v0

    mul-double/2addr v6, v8

    mul-double/2addr v0, v4

    iget-object v3, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v6

    double-to-long v0, v0

    goto :goto_0

    :cond_2
    long-to-double v0, v4

    iget-wide v4, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->retryExponent:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v4

    double-to-long v0, v0

    iget-wide v4, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->maxRetryDelay:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->currentRetryDelay:J

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x7bt
        0x56t
        0x5dt
        0x5at
        0x7t
        0xet
        0x54t
        0x5et
        0x5dt
        0x5et
        0x42t
        0x12t
        0x4at
        0x52t
        0x45t
        0x50t
        0xdt
        0x17t
        0x4bt
        0x17t
        0x40t
        0x5at
        0xat
        0x7t
        0x5ct
        0x42t
        0x5ft
        0x5ct
        0x6t
        0x42t
        0x4at
        0x52t
        0x47t
        0x4bt
        0x1bt
    .end array-data

    :array_1
    .array-data 1
        0x32t
        0x57t
        0x51t
        0x50t
        0x53t
        0x41t
        0xdt
        0x5dt
        0x57t
        0x52t
        0x17t
        0x46t
        0x4t
        0x40t
        0x4bt
        0x4ct
        0x17t
        0x5dt
        0xft
        0x14t
        0x1ct
        0x51t
        0x5at
        0x47t
    .end array-data
.end method

.method public setMaxDelay()V
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->maxRetryDelay:J

    iput-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->currentRetryDelay:J

    return-void
.end method

.method public signalSuccess()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->lastWasSuccess:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper;->currentRetryDelay:J

    return-void
.end method
