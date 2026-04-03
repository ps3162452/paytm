.class public final Landroidx/viewpager2/widget/MarginPageTransformer;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# instance fields
.field private final mMarginPx:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ca7556"

    const-wide/32 v2, 0x74254db3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    iput p1, p0, Landroidx/viewpager2/widget/MarginPageTransformer;->mMarginPx:I

    return-void

    nop

    :array_0
    .array-data 1
        0x2et
        0x0t
        0x45t
        0x52t
        0x5ct
        0x58t
        0x43t
        0xct
        0x42t
        0x46t
        0x41t
        0x16t
        0x1t
        0x4t
        0x17t
        0x5bt
        0x5at
        0x58t
        0x4et
        0xft
        0x52t
        0x52t
        0x54t
        0x42t
        0xat
        0x17t
        0x52t
    .end array-data
.end method

.method private requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "656bb2"

    const/16 v3, -0x5ba4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x73t
        0x4dt
        0x46t
        0x7t
        0x1t
        0x46t
        0x53t
        0x51t
        0x16t
        0x16t
        0xat
        0x57t
        0x16t
        0x45t
        0x57t
        0x5t
        0x7t
        0x12t
        0x40t
        0x5ct
        0x53t
        0x15t
        0x42t
        0x46t
        0x59t
        0x15t
        0x54t
        0x7t
        0x42t
        0x5ft
        0x57t
        0x5bt
        0x57t
        0x5t
        0x7t
        0x56t
        0x16t
        0x57t
        0x4ft
        0x42t
        0x3t
        0x12t
        0x60t
        0x5ct
        0x53t
        0x15t
        0x32t
        0x53t
        0x51t
        0x50t
        0x44t
        0x50t
        0x42t
        0x5bt
        0x58t
        0x46t
        0x42t
        0x3t
        0xct
        0x51t
        0x53t
        0x1bt
    .end array-data
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/MarginPageTransformer;->requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    iget v0, p0, Landroidx/viewpager2/widget/MarginPageTransformer;->mMarginPx:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method
