.class final Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    return-void
.end method

.method private throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V
    .locals 5

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x4b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7b4ca4"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x76t
        0x6t
        0x50t
        0xat
        0xft
        0x53t
        0x17t
        0x3t
        0x5at
        0x7t
        0x41t
        0x46t
        0x52t
        0xft
        0x5bt
        0x15t
        0x8t
        0x5at
        0x50t
        0x42t
        0x57t
        0x2t
        0xdt
        0x58t
        0x55t
        0x3t
        0x57t
        0x8t
        0x12t
        0x14t
        0x53t
        0x17t
        0x46t
        0xat
        0xft
        0x53t
        0x17t
        0x6t
        0x5dt
        0x10t
        0x11t
        0x55t
        0x43t
        0x1t
        0x5ct
        0x43t
        0x15t
        0x5bt
        0x17t
        0x1t
        0x55t
        0xft
        0xdt
        0x56t
        0x56t
        0x1t
        0x5ft
        0x10t
        0x41t
        0x5dt
        0x44t
        0x42t
        0x5at
        0xct
        0x15t
        0x14t
        0x44t
        0x17t
        0x44t
        0x13t
        0xet
        0x46t
        0x43t
        0x7t
        0x50t
    .end array-data
.end method


# virtual methods
.method addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V

    :cond_0
    return-void
.end method

.method removeOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
