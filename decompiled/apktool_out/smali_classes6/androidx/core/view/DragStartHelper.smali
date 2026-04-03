.class public Landroidx/core/view/DragStartHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/DragStartHelper$OnDragStartListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/DragStartHelper$1;

    invoke-direct {v0, p0}, Landroidx/core/view/DragStartHelper$1;-><init>(Landroidx/core/view/DragStartHelper;)V

    iput-object v0, p0, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Landroidx/core/view/DragStartHelper$2;

    invoke-direct {v0, p0}, Landroidx/core/view/DragStartHelper$2;-><init>(Landroidx/core/view/DragStartHelper;)V

    iput-object v0, p0, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    iput-object p2, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public detach()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getTouchPosition(Landroid/graphics/Point;)V
    .locals 2

    iget v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    iget v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v0, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/16 v3, 0x2002

    invoke-static {p2, v3}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    if-nez v3, :cond_0

    iget v3, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    if-ne v3, v1, :cond_1

    iget v3, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    if-eq v3, v2, :cond_0

    :cond_1
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    iput v2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v0, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v0, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    goto :goto_0

    :pswitch_2
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    iput v2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
