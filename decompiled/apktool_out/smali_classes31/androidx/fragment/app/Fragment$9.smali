.class Landroidx/fragment/app/Fragment$9;
.super Landroidx/activity/result/ActivityResultLauncher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/ActivityResultLauncher",
        "<TI;>;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/fragment/app/Fragment;

.field final val$contract:Landroidx/activity/result/contract/ActivityResultContract;

.field final val$ref:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$9;->this$0:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$9;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Landroidx/fragment/app/Fragment$9;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    invoke-direct {p0}, Landroidx/activity/result/ActivityResultLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public getContract()Landroidx/activity/result/contract/ActivityResultContract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/contract/ActivityResultContract",
            "<TI;*>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment$9;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    return-object v0
.end method

.method public launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment$9;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "edd4a3"

    const-wide/32 v4, 0x16b0dc77

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2at
        0x14t
        0x1t
        0x46t
        0x0t
        0x47t
        0xct
        0xbt
        0xat
        0x14t
        0x2t
        0x52t
        0xbt
        0xat
        0xbt
        0x40t
        0x41t
        0x51t
        0x0t
        0x44t
        0x17t
        0x40t
        0x0t
        0x41t
        0x11t
        0x1t
        0x0t
        0x14t
        0x3t
        0x56t
        0x3t
        0xbt
        0x16t
        0x51t
        0x41t
        0x55t
        0x17t
        0x5t
        0x3t
        0x59t
        0x4t
        0x5dt
        0x11t
        0x44t
        0xdt
        0x47t
        0x41t
        0x5at
        0xbt
        0x44t
        0x7t
        0x46t
        0x4t
        0x52t
        0x11t
        0x1t
        0x0t
        0x14t
        0x12t
        0x47t
        0x4t
        0x10t
        0x1t
    .end array-data
.end method

.method public unregister()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment$9;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_0
    return-void
.end method
