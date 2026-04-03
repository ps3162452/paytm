.class Lcom/dz/scanner/SketchApplication$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/SketchApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/SketchApplication;


# direct methods
.method constructor <init>(Lcom/dz/scanner/SketchApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/SketchApplication$1;->this$0:Lcom/dz/scanner/SketchApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dz/scanner/SketchApplication$1;->this$0:Lcom/dz/scanner/SketchApplication;

    invoke-virtual {v1}, Lcom/dz/scanner/SketchApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/DebugActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "error"

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/dz/scanner/SketchApplication$1;->this$0:Lcom/dz/scanner/SketchApplication;

    invoke-virtual {v1, v0}, Lcom/dz/scanner/SketchApplication;->startActivity(Landroid/content/Intent;)V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/SketchLogger;->broadcastLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
