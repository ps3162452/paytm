.class Landroidx/recyclerview/widget/MessageThreadUtil$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/MessageThreadUtil$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    iget v0, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "aa36e0"

    const v3, -0x310f4ce5

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1a

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "688b79"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v0, v2, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    goto :goto_1

    :pswitch_1
    iget-object v0, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/TileList$Tile;

    iget-object v2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v2, v1, v0}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v0, v2, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x35t
        0x9t
        0x41t
        0x53t
        0x4t
        0x54t
        0x34t
        0x15t
        0x5at
        0x5at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x63t
        0x56t
        0x4bt
        0x17t
        0x47t
        0x49t
        0x59t
        0x4at
        0x4ct
        0x7t
        0x53t
        0x19t
        0x5bt
        0x5dt
        0x4bt
        0x11t
        0x56t
        0x5et
        0x53t
        0x14t
        0x18t
        0x15t
        0x5ft
        0x58t
        0x42t
        0x5t
    .end array-data
.end method
