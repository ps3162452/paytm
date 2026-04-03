.class Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Landroidx/customview/widget/ViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final this$0:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 1

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;

    invoke-direct {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;)V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    return-void
.end method

.method private closeOtherDrawer()V
    .locals 2

    const/4 v0, 0x3

    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    :cond_0
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEdgeDragStarted(II)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, v0, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onEdgeLock(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 4

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(ILandroid/view/View;)V

    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    cmpl-float v0, p2, v4

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v4

    if-nez v0, :cond_2

    cmpl-float v0, v1, v5

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_2
    neg-int v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v0

    cmpg-float v3, p2, v4

    if-ltz v3, :cond_4

    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    :cond_4
    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method peekDrawer()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v2

    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-ne v1, v5, :cond_4

    move v3, v4

    :goto_0
    if-eqz v3, :cond_5

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :cond_0
    add-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v1, :cond_2

    :cond_1
    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3, v2, v1, v5}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    iput-boolean v4, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->cancelChildViewTouch()V

    :cond_3
    return-void

    :cond_4
    move v3, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    goto :goto_1
.end method

.method public removeCallbacks()V
    .locals 2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDragger(Landroidx/customview/widget/ViewDragHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {v0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
