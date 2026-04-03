.class final Landroidx/viewpager2/widget/PageTransformerAdapter;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# instance fields
.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method getPageTransformer()Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    neg-float v2, p2

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v4, p1

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    add-float/2addr v4, v2

    invoke-interface {v5, v3, v4}, Landroidx/viewpager2/widget/ViewPager2$PageTransformer;->transformPage(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v4, 0x49

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "097f47"

    invoke-static {v4, v5, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :array_0
    .array-data 1
        0x7ct
        0x58t
        0x4et
        0x9t
        0x41t
        0x43t
        0x7dt
        0x58t
        0x59t
        0x7t
        0x53t
        0x52t
        0x42t
        0x19t
        0x45t
        0x3t
        0x40t
        0x42t
        0x42t
        0x57t
        0x52t
        0x2t
        0x14t
        0x56t
        0x10t
        0x57t
        0x42t
        0xat
        0x58t
        0x17t
        0x53t
        0x51t
        0x5et
        0xat
        0x50t
        0x17t
        0x51t
        0x4dt
        0x17t
        0x16t
        0x5bt
        0x44t
        0x10t
        0x1ct
        0x53t
        0x49t
        0x11t
        0x53t
        0x10t
        0x4et
        0x5ft
        0xft
        0x58t
        0x52t
        0x10t
        0x4dt
        0x45t
        0x7t
        0x5at
        0x44t
        0x56t
        0x56t
        0x45t
        0xbt
        0x5dt
        0x59t
        0x57t
        0x19t
        0x47t
        0x7t
        0x53t
        0x52t
        0x43t
    .end array-data
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    return-void
.end method
