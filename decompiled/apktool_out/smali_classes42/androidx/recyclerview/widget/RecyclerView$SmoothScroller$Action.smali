.class public Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private validate()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "92049b"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "bd4e88"

    const v3, -0x317b144d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x70t
        0x54t
        0x10t
        0x4dt
        0x56t
        0x17t
        0x19t
        0x42t
        0x42t
        0x5bt
        0x4ft
        0xbt
        0x5dt
        0x57t
        0x10t
        0x55t
        0x57t
        0x42t
        0x50t
        0x5ct
        0x44t
        0x51t
        0x4bt
        0x12t
        0x56t
        0x5et
        0x51t
        0x40t
        0x56t
        0x10t
        0x15t
        0x12t
        0x49t
        0x5bt
        0x4ct
        0x42t
        0x54t
        0x47t
        0x43t
        0x40t
        0x19t
        0x11t
        0x5ct
        0x46t
        0x10t
        0x55t
        0x19t
        0x12t
        0x56t
        0x41t
        0x59t
        0x40t
        0x50t
        0x14t
        0x5ct
        0x12t
        0x54t
        0x41t
        0x4bt
        0x3t
        0x4dt
        0x5bt
        0x5ft
        0x5at
    .end array-data

    :array_1
    .array-data 1
        0x31t
        0x7t
        0x46t
        0xat
        0x54t
        0x54t
        0x42t
        0x0t
        0x41t
        0x17t
        0x59t
        0x4ct
        0xbt
        0xbt
        0x5at
        0x45t
        0x55t
        0x4dt
        0x11t
        0x10t
        0x14t
        0x7t
        0x5dt
        0x18t
        0x3t
        0x44t
        0x44t
        0xat
        0x4bt
        0x51t
        0x16t
        0xdt
        0x42t
        0x0t
        0x18t
        0x56t
        0x17t
        0x9t
        0x56t
        0x0t
        0x4at
    .end array-data
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpTo(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    return-void
.end method

.method runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    iput-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->validate()V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9a7155"

    const-wide v2, -0x3e24c0aae6400000L    # -1.828541543E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x68

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "829893"

    invoke-static {v1, v2, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_0

    :cond_2
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    goto :goto_0

    :array_0
    .array-data 1
        0x6bt
        0x4t
        0x54t
        0x48t
        0x56t
        0x59t
        0x5ct
        0x13t
        0x61t
        0x58t
        0x50t
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x6bt
        0x5ft
        0x56t
        0x57t
        0x4dt
        0x5bt
        0x18t
        0x61t
        0x5at
        0x4at
        0x56t
        0x5ft
        0x54t
        0x12t
        0x58t
        0x5bt
        0x4dt
        0x5at
        0x57t
        0x5ct
        0x19t
        0x51t
        0x4at
        0x13t
        0x5at
        0x57t
        0x50t
        0x56t
        0x5et
        0x13t
        0x4dt
        0x42t
        0x5dt
        0x59t
        0x4dt
        0x56t
        0x5ct
        0x12t
        0x4dt
        0x57t
        0x56t
        0x13t
        0x5et
        0x40t
        0x5ct
        0x49t
        0x4ct
        0x56t
        0x56t
        0x46t
        0x55t
        0x41t
        0x17t
        0x13t
        0x75t
        0x53t
        0x52t
        0x5dt
        0x19t
        0x40t
        0x4dt
        0x40t
        0x5ct
        0x18t
        0x40t
        0x5ct
        0x4dt
        0x12t
        0x58t
        0x4at
        0x5ct
        0x13t
        0x56t
        0x5dt
        0x4dt
        0x18t
        0x5at
        0x5bt
        0x59t
        0x5ct
        0x5et
        0x51t
        0x57t
        0x54t
        0x18t
        0x5bt
        0x4dt
        0x18t
        0x4ct
        0x5dt
        0x54t
        0x57t
        0x4at
        0x4bt
        0x19t
        0x5dt
        0x5dt
        0x51t
        0x5ct
        0x4bt
        0x4at
        0x52t
        0x4at
        0x4bt
    .end array-data
.end method

.method public setDuration(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void
.end method
