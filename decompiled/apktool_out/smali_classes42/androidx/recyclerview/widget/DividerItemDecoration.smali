.class public Landroidx/recyclerview/widget/DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b92a84"

    const-wide/32 v2, -0x299927da

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/DividerItemDecoration;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Landroidx/recyclerview/widget/DividerItemDecoration;->ATTRS:[I

    return-void

    :array_0
    .array-data 1
        0x26t
        0x50t
        0x44t
        0x8t
        0x5ct
        0x51t
        0x10t
        0x70t
        0x46t
        0x4t
        0x55t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    sget-object v0, Landroidx/recyclerview/widget/DividerItemDecoration;->ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1b42cc"

    const v3, 0x4e73753d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x88

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "453150"

    const-wide v4, 0x41ddca6dee800000L    # 1.999222714E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/DividerItemDecoration;->setOrientation(I)V

    return-void

    nop

    :array_0
    .array-data 1
        0x75t
        0xbt
        0x42t
        0x5bt
        0x7t
        0x6t
        0x43t
        0x2bt
        0x40t
        0x57t
        0xet
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x54t
        0x5dt
        0x55t
        0x47t
        0x5ft
        0x5dt
        0x51t
        0x9t
        0x50t
        0x41t
        0x44t
        0x46t
        0x1at
        0x5ft
        0x58t
        0x46t
        0x44t
        0x70t
        0x5ct
        0x45t
        0x58t
        0x51t
        0x55t
        0x46t
        0x15t
        0x44t
        0x50t
        0x46t
        0x10t
        0x5at
        0x5at
        0x47t
        0x11t
        0x46t
        0x55t
        0x40t
        0x15t
        0x5at
        0x5ft
        0x15t
        0x44t
        0x5ct
        0x50t
        0x13t
        0x45t
        0x5dt
        0x55t
        0x59t
        0x50t
        0x13t
        0x44t
        0x46t
        0x55t
        0x50t
        0x15t
        0x55t
        0x5et
        0x47t
        0x10t
        0x40t
        0x5dt
        0x5at
        0x42t
        0x15t
        0x74t
        0x5dt
        0x43t
        0x5at
        0x55t
        0x50t
        0x42t
        0x7dt
        0x41t
        0x56t
        0x5ct
        0x71t
        0x55t
        0x57t
        0x5at
        0x41t
        0x50t
        0x41t
        0x59t
        0x5bt
        0x5bt
        0x1dt
        0x11t
        0x65t
        0x5ct
        0x51t
        0x54t
        0x40t
        0x54t
        0x15t
        0x43t
        0x51t
        0x41t
        0x13t
        0x45t
        0x5dt
        0x51t
        0x40t
        0x15t
        0x52t
        0x45t
        0x41t
        0x42t
        0x5dt
        0x57t
        0x46t
        0x45t
        0x50t
        0x10t
        0x55t
        0x59t
        0x5ft
        0x11t
        0x56t
        0x51t
        0x58t
        0x59t
        0x13t
        0x42t
        0x50t
        0x44t
        0x70t
        0x47t
        0x52t
        0x46t
        0x54t
        0x52t
        0x58t
        0x50t
        0x1bt
        0x18t
    .end array-data
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v3, v1, v4, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v5

    iget-object v5, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    sub-int v5, v4, v5

    invoke-virtual {v6, v5, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v5

    iget-object v5, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    sub-int v5, v4, v5

    invoke-virtual {v6, v1, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "017b0a"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x43t
        0x56t
        0x15t
        0x51t
        0x3t
        0x5ct
        0x54t
        0x17t
        0x1t
        0x51t
        0xft
        0x5et
        0x5et
        0x43t
        0x42t
        0x52t
        0x4t
        0x10t
        0x5ft
        0x42t
        0xet
        0x5ct
        0x4ft
    .end array-data
.end method

.method public setOrientation(I)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d9dc35"

    const v3, -0x313de2ad

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    return-void

    :array_0
    .array-data 1
        0x2dt
        0x57t
        0x12t
        0x2t
        0x5ft
        0x5ct
        0x0t
        0x19t
        0xbt
        0x11t
        0x5at
        0x50t
        0xat
        0x4dt
        0x5t
        0x17t
        0x5at
        0x5at
        0xat
        0x17t
        0x44t
        0x2at
        0x47t
        0x15t
        0x17t
        0x51t
        0xbt
        0x16t
        0x5ft
        0x51t
        0x44t
        0x5bt
        0x1t
        0x43t
        0x56t
        0x5ct
        0x10t
        0x51t
        0x1t
        0x11t
        0x13t
        0x7dt
        0x2bt
        0x6bt
        0x2dt
        0x39t
        0x7ct
        0x7bt
        0x30t
        0x78t
        0x28t
        0x43t
        0x5ct
        0x47t
        0x44t
        0x6ft
        0x21t
        0x31t
        0x67t
        0x7ct
        0x27t
        0x78t
        0x28t
    .end array-data
.end method
