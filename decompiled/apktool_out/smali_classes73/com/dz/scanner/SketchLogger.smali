.class public Lcom/dz/scanner/SketchLogger;
.super Ljava/lang/Object;


# static fields
.field private static volatile isRunning:Z

.field private static loggerThread:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic -$$Nest$sfgetisRunning()Z
    .locals 1

    sget-boolean v0, Lcom/dz/scanner/SketchLogger;->isRunning:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputisRunning(Z)V
    .locals 0

    sput-boolean p0, Lcom/dz/scanner/SketchLogger;->isRunning:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dz/scanner/SketchLogger$1;

    invoke-direct {v0}, Lcom/dz/scanner/SketchLogger$1;-><init>()V

    sput-object v0, Lcom/dz/scanner/SketchLogger;->loggerThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastLog(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/dz/scanner/SketchApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "pro.sketchware.ACTION_NEW_DEBUG_LOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "log"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "packageName"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static startLogging()V
    .locals 2

    const-class v0, Lcom/dz/scanner/SketchLogger;

    monitor-enter v0

    :try_start_0
    sget-boolean v0, Lcom/dz/scanner/SketchLogger;->isRunning:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/dz/scanner/SketchLogger;->loggerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-class v0, Lcom/dz/scanner/SketchLogger;

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Logger already running"

    invoke-static {v0}, Lcom/dz/scanner/SketchLogger;->broadcastLog(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/dz/scanner/SketchLogger;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static stopLogging()V
    .locals 2

    const-class v0, Lcom/dz/scanner/SketchLogger;

    monitor-enter v0

    :try_start_0
    sget-boolean v0, Lcom/dz/scanner/SketchLogger;->isRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/dz/scanner/SketchLogger;->isRunning:Z

    const-string v0, "Stopping logger by user request."

    invoke-static {v0}, Lcom/dz/scanner/SketchLogger;->broadcastLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-class v0, Lcom/dz/scanner/SketchLogger;

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Logger not running"

    invoke-static {v0}, Lcom/dz/scanner/SketchLogger;->broadcastLog(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/dz/scanner/SketchLogger;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
