.class Landroidx/transition/GhostViewHolder;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mParent:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/transition/GhostViewHolder;->setClipChildren(Z)V

    iput-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    sget v1, Landroidx/transition/R$id;->ghost_view_holder:I

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    return-void
.end method

.method static getHolder(Landroid/view/ViewGroup;)Landroidx/transition/GhostViewHolder;
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroidx/transition/R$id;->ghost_view_holder:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/GhostViewHolder;

    return-object v0
.end method

.method private getInsertIndex(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-gt v2, v1, :cond_1

    add-int v0, v2, v1

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Landroidx/transition/GhostViewHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/transition/GhostViewPort;

    iget-object v0, v0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v0, v3}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-static {p1, v3}, Landroidx/transition/GhostViewHolder;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v4, -0x1

    move v1, v2

    goto :goto_1

    :cond_1
    return v2
.end method

.method private static getParents(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static isOnTop(Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v5

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    invoke-static {v0, v3}, Landroidx/transition/ViewGroupUtils;->getChildDrawingOrder(Landroid/view/ViewGroup;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-ne v5, p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eq v0, v1, :cond_1

    invoke-static {v0, v1}, Landroidx/transition/GhostViewHolder;->isOnTop(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v5, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method addGhostView(Landroidx/transition/GhostViewPort;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Landroidx/transition/GhostViewHolder;->getInsertIndex(Ljava/util/ArrayList;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/transition/GhostViewHolder;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/transition/GhostViewHolder;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "77f5a1"

    const-wide/32 v4, 0x6bf115dc

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 1
        0x63t
        0x5ft
        0xft
        0x46t
        0x41t
        0x76t
        0x5ft
        0x58t
        0x15t
        0x41t
        0x37t
        0x58t
        0x52t
        0x40t
        0x2et
        0x5at
        0xdt
        0x55t
        0x52t
        0x45t
        0x46t
        0x5ct
        0x12t
        0x11t
        0x53t
        0x52t
        0x12t
        0x54t
        0x2t
        0x59t
        0x52t
        0x53t
        0x47t
    .end array-data
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Landroidx/transition/GhostViewHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    sget v1, Landroidx/transition/R$id;->ghost_view_holder:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    iput-boolean v3, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    :cond_2
    return-void
.end method

.method popToOverlayTop()V
    .locals 5

    iget-boolean v0, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bd0447"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 1
        0x36t
        0xct
        0x59t
        0x47t
        0x14t
        0x70t
        0xat
        0xbt
        0x43t
        0x40t
        0x62t
        0x5et
        0x7t
        0x13t
        0x78t
        0x5bt
        0x58t
        0x53t
        0x7t
        0x16t
        0x10t
        0x5dt
        0x47t
        0x17t
        0x6t
        0x1t
        0x44t
        0x55t
        0x57t
        0x5ft
        0x7t
        0x0t
        0x11t
    .end array-data
.end method
