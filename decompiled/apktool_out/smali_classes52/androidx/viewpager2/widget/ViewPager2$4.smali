.class Landroidx/viewpager2/widget/ViewPager2$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/widget/ViewPager2;->enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$4;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x37

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d160a5"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x34t
        0x50t
        0x51t
        0x55t
        0x12t
        0x15t
        0x9t
        0x44t
        0x45t
        0x44t
        0x41t
        0x53t
        0xdt
        0x5dt
        0x5at
        0x10t
        0x15t
        0x5dt
        0x1t
        0x11t
        0x41t
        0x58t
        0xet
        0x59t
        0x1t
        0x11t
        0x60t
        0x59t
        0x4t
        0x42t
        0x34t
        0x50t
        0x51t
        0x55t
        0x13t
        0x7t
        0x44t
        0x19t
        0x43t
        0x43t
        0x4t
        0x15t
        0x9t
        0x50t
        0x42t
        0x53t
        0x9t
        0x6at
        0x14t
        0x50t
        0x44t
        0x55t
        0xft
        0x41t
        0x4dt
    .end array-data
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
