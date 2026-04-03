.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;
.super Landroidx/customview/widget/ViewDragHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private viewCapturedMillis:J


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private releasedLow(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    :goto_0
    invoke-static {p2, v1, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1300(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x6

    const/4 v0, 0x3

    const/4 v1, 0x4

    cmpg-float v3, p3, v4

    if-gez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipSmoothAnimation()Z

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$100(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;IZ)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->viewCapturedMillis:J

    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result v8

    if-eqz v8, :cond_4

    int-to-float v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldExpandOnUpwardDrag(JF)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-le v3, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v3, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_6

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpl-float v1, p3, v1

    if-gtz v1, :cond_7

    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->releasedLow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v1, v3, :cond_a

    move v1, v0

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto/16 :goto_0

    :cond_b
    cmpl-float v3, p3, v4

    if-eqz v3, :cond_c

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    move v1, v0

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_e
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v3, v4, :cond_10

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_f

    move v1, v0

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_2

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->viewCapturedMillis:J

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method
