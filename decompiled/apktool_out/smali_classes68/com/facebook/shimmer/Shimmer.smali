.class public Lcom/facebook/shimmer/Shimmer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;,
        Lcom/facebook/shimmer/Shimmer$Builder;,
        Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;,
        Lcom/facebook/shimmer/Shimmer$Direction;,
        Lcom/facebook/shimmer/Shimmer$Shape;
    }
.end annotation


# static fields
.field private static final COMPONENT_COUNT:I = 0x4


# instance fields
.field alphaShimmer:Z

.field animationDuration:J

.field autoStart:Z

.field baseColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field final bounds:Landroid/graphics/RectF;

.field clipToChildren:Z

.field final colors:[I

.field direction:I

.field dropoff:F

.field fixedHeight:I

.field fixedWidth:I

.field heightRatio:F

.field highlightColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field intensity:F

.field final positions:[F

.field repeatCount:I

.field repeatDelay:J

.field repeatMode:I

.field shape:I

.field tilt:F

.field widthRatio:F


# direct methods
.method constructor <init>()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/facebook/shimmer/Shimmer;->positions:[F

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/facebook/shimmer/Shimmer;->colors:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/shimmer/Shimmer;->bounds:Landroid/graphics/RectF;

    iput v1, p0, Lcom/facebook/shimmer/Shimmer;->direction:I

    iput v4, p0, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    const v0, 0x4cffffff    # 1.3421772E8f

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    iput v1, p0, Lcom/facebook/shimmer/Shimmer;->shape:I

    iput v1, p0, Lcom/facebook/shimmer/Shimmer;->fixedWidth:I

    iput v1, p0, Lcom/facebook/shimmer/Shimmer;->fixedHeight:I

    iput v3, p0, Lcom/facebook/shimmer/Shimmer;->widthRatio:F

    iput v3, p0, Lcom/facebook/shimmer/Shimmer;->heightRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->tilt:F

    iput-boolean v2, p0, Lcom/facebook/shimmer/Shimmer;->clipToChildren:Z

    iput-boolean v2, p0, Lcom/facebook/shimmer/Shimmer;->autoStart:Z

    iput-boolean v2, p0, Lcom/facebook/shimmer/Shimmer;->alphaShimmer:Z

    iput v4, p0, Lcom/facebook/shimmer/Shimmer;->repeatCount:I

    iput v2, p0, Lcom/facebook/shimmer/Shimmer;->repeatMode:I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/facebook/shimmer/Shimmer;->animationDuration:J

    return-void
.end method


# virtual methods
.method height(I)I
    .locals 2

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->fixedHeight:I

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->heightRatio:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method updateBounds(II)V
    .locals 6

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/facebook/shimmer/Shimmer;->tilt:F

    const/high16 v2, 0x42b40000    # 90.0f

    rem-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    int-to-double v0, v0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, v2, v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/facebook/shimmer/Shimmer;->bounds:Landroid/graphics/RectF;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Lcom/facebook/shimmer/Shimmer;->width(I)I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p0, p2}, Lcom/facebook/shimmer/Shimmer;->height(I)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method updateColors()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->shape:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer;->colors:[I

    iget v1, p0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    aput v1, v0, v2

    iget v2, p0, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    aput v2, v0, v3

    aput v2, v0, v4

    aput v1, v0, v5

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer;->colors:[I

    iget v1, p0, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    aput v1, v0, v2

    aput v1, v0, v3

    iget v1, p0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    aput v1, v0, v4

    aput v1, v0, v5

    goto :goto_0
.end method

.method updatePositions()V
    .locals 9

    const v8, 0x3a83126f    # 0.001f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->shape:I

    if-eq v0, v7, :cond_0

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer;->positions:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    sub-float v2, v4, v2

    iget v3, p0, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer;->positions:[F

    iget v1, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    sub-float v1, v4, v1

    sub-float/2addr v1, v8

    div-float/2addr v1, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v7

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer;->positions:[F

    const/4 v1, 0x2

    iget v2, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    add-float/2addr v2, v4

    add-float/2addr v2, v8

    div-float/2addr v2, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer;->positions:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer;->positions:[F

    const/4 v1, 0x0

    aput v6, v0, v1

    iget v1, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v7

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer;->positions:[F

    const/4 v1, 0x2

    iget v2, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    iget v3, p0, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    add-float/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/facebook/shimmer/Shimmer;->positions:[F

    const/4 v1, 0x3

    aput v4, v0, v1

    goto :goto_0
.end method

.method width(I)I
    .locals 2

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->fixedWidth:I

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->widthRatio:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method
