.class Landroidx/recyclerview/widget/NestedAdapterWrapper$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/NestedAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v1, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onChanged(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onItemRangeChanged(Landroidx/recyclerview/widget/NestedAdapterWrapper;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onItemRangeChanged(Landroidx/recyclerview/widget/NestedAdapterWrapper;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget v1, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    add-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onItemRangeInserted(Landroidx/recyclerview/widget/NestedAdapterWrapper;II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    :goto_0
    const/16 v2, 0x38

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "034ef7"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onItemRangeMoved(Landroidx/recyclerview/widget/NestedAdapterWrapper;II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x5dt
        0x5ct
        0x42t
        0xct
        0x8t
        0x50t
        0x10t
        0x5et
        0x5bt
        0x17t
        0x3t
        0x17t
        0x44t
        0x5bt
        0x55t
        0xbt
        0x46t
        0x6t
        0x10t
        0x5at
        0x40t
        0x0t
        0xbt
        0x17t
        0x59t
        0x40t
        0x14t
        0xbt
        0x9t
        0x43t
        0x10t
        0x40t
        0x41t
        0x15t
        0x16t
        0x58t
        0x42t
        0x47t
        0x51t
        0x1t
        0x46t
        0x5et
        0x5et
        0x13t
        0x66t
        0x0t
        0x5t
        0x4et
        0x53t
        0x5ft
        0x51t
        0x17t
        0x30t
        0x5et
        0x55t
        0x44t
    .end array-data
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget v1, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onItemRangeRemoved(Landroidx/recyclerview/widget/NestedAdapterWrapper;II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    :cond_0
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    return-void
.end method
