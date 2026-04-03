.class Landroidx/loader/content/ModernAsyncTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/loader/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroidx/loader/content/ModernAsyncTask;)V
    .locals 0

    iput-object p1, p0, Landroidx/loader/content/ModernAsyncTask$1;->this$0:Landroidx/loader/content/ModernAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask$1;->this$0:Landroidx/loader/content/ModernAsyncTask;

    iget-object v0, v0, Landroidx/loader/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask$1;->this$0:Landroidx/loader/content/ModernAsyncTask;

    invoke-virtual {v0}, Landroidx/loader/content/ModernAsyncTask;->doInBackground()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask$1;->this$0:Landroidx/loader/content/ModernAsyncTask;

    invoke-virtual {v0, v1}, Landroidx/loader/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Landroidx/loader/content/ModernAsyncTask$1;->this$0:Landroidx/loader/content/ModernAsyncTask;

    iget-object v2, v2, Landroidx/loader/content/ModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Landroidx/loader/content/ModernAsyncTask$1;->this$0:Landroidx/loader/content/ModernAsyncTask;

    invoke-virtual {v2, v1}, Landroidx/loader/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)V

    throw v0
.end method
