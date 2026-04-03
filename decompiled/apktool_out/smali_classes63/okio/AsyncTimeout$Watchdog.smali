.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "99adb4"

    const-wide/32 v2, -0x2f94218c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    return-void

    :array_0
    .array-data 1
        0x76t
        0x52t
        0x8t
        0xbt
        0x42t
        0x63t
        0x58t
        0x4dt
        0x2t
        0xct
        0x6t
        0x5bt
        0x5et
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    :try_start_0
    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Lokio/AsyncTimeout;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lokio/AsyncTimeout;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    const-class v0, Lokio/AsyncTimeout;

    monitor-exit v0

    return-void

    :cond_1
    const-class v1, Lokio/AsyncTimeout;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->timedOut()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
