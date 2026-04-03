.class final Lcom/budiyev/android/codescanner/ViewFinderView;
.super Landroid/view/View;


# instance fields
.field private mFrameCornersRadius:I

.field private mFrameCornersSize:I

.field private final mFramePaint:Landroid/graphics/Paint;

.field private mFrameRatioHeight:F

.field private mFrameRatioWidth:F

.field private mFrameRect:Lcom/budiyev/android/codescanner/Rect;

.field private mFrameSize:F

.field private mFrameVerticalBias:F

.field private mFrameVisible:Z

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private mMaskVisible:Z

.field private final mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameCornersSize:I

    iput v1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameCornersRadius:I

    iput v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRatioWidth:F

    iput v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRatioHeight:F

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameSize:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameVerticalBias:F

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mMaskVisible:Z

    iput-boolean v2, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameVisible:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mMaskPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iput-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method private invalidateFrameRect()V
    .locals 2

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidateFrameRect(II)V

    return-void
.end method

.method private invalidateFrameRect(II)V
    .locals 5

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    int-to-float v0, p1

    int-to-float v1, p2

    div-float v2, v0, v1

    iget v3, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRatioWidth:F

    iget v4, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRatioHeight:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameSize:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v1

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    sub-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v3, p2, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameVerticalBias:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v4, Lcom/budiyev/android/codescanner/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/budiyev/android/codescanner/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRect:Lcom/budiyev/android/codescanner/Rect;

    :cond_0
    return-void

    :cond_1
    mul-float v0, v1, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method getFrameAspectRatioHeight()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        fromInclusive = false
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRatioHeight:F

    return v0
.end method

.method getFrameAspectRatioWidth()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        fromInclusive = false
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRatioWidth:F

    return v0
.end method

.method getFrameColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method getFrameCornersRadius()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameCornersRadius:I

    return v0
.end method

.method getFrameCornersSize()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameCornersSize:I

    return v0
.end method

.method getFrameRect()Lcom/budiyev/android/codescanner/Rect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRect:Lcom/budiyev/android/codescanner/Rect;

    return-object v0
.end method

.method public getFrameSize()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.1
        to = 1.0
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameSize:F

    return v0
.end method

.method getFrameThickness()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getFrameVerticalBias()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameVerticalBias:F

    return v0
.end method

.method getMaskColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method isFrameCornersCapRounded()Z
    .locals 2

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFrameVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameVisible:Z

    return v0
.end method

.method isMaskVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mMaskVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRect:Lcom/budiyev/android/codescanner/Rect;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/Rect;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/Rect;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/Rect;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/Rect;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget v6, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameCornersSize:I

    int-to-float v6, v6

    iget v7, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameCornersRadius:I

    int-to-float v7, v7

    iget-boolean v8, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mMaskVisible:Z

    iget-boolean v9, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameVisible:Z

    iget-object v10, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mPath:Landroid/graphics/Path;

    const/4 v11, 0x0

    cmpl-float v11, v7, v11

    if-lez v11, :cond_3

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v6, v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    if-eqz v8, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    add-float v8, v3, v7

    invoke-virtual {v10, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v11, v4, v7

    invoke-virtual {v10, v4, v3, v11, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float v12, v5, v7

    invoke-virtual {v10, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v5, v3, v5, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float v13, v0, v7

    invoke-virtual {v10, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v5, v0, v12, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v10, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v4, v0, v4, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v10, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v1, v1

    const/4 v8, 0x0

    invoke-virtual {v10, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    if-eqz v9, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    add-float v1, v3, v6

    invoke-virtual {v10, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v2, v3, v7

    invoke-virtual {v10, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v8, v4, v7

    invoke-virtual {v10, v4, v3, v8, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-float v9, v4, v6

    invoke-virtual {v10, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v11, v5, v6

    invoke-virtual {v10, v11, v3}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v12, v5, v7

    invoke-virtual {v10, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v5, v3, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v10, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v1, v0, v6

    invoke-virtual {v10, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v2, v0, v7

    invoke-virtual {v10, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v5, v0, v12, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v10, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v9, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v4, v0, v4, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v10, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v10, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v1, v1

    const/4 v7, 0x0

    invoke-virtual {v10, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    if-eqz v9, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    add-float v1, v3, v6

    invoke-virtual {v10, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v2, v4, v6

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v7, v5, v6

    invoke-virtual {v10, v7, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v1, v0, v6

    invoke-virtual {v10, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidateFrameRect(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidateFrameRect(II)V

    return-void
.end method

.method setFrameAspectRatio(FF)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    iput p1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRatioWidth:F

    iput p2, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRatioHeight:F

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidateFrameRect()V

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method

.method setFrameAspectRatioHeight(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    iput p1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRatioHeight:F

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidateFrameRect()V

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method

.method setFrameAspectRatioWidth(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    iput p1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameRatioWidth:F

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidateFrameRect()V

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method

.method setFrameColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method

.method setFrameCornersCapRounded(Z)V
    .locals 2

    iget-object v1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFramePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0
.end method

.method setFrameCornersRadius(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameCornersRadius:I

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method

.method setFrameCornersSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameCornersSize:I

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method

.method setFrameSize(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.1
            to = 1.0
        .end annotation
    .end param

    iput p1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameSize:F

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidateFrameRect()V

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method

.method setFrameThickness(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFramePaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFrameVerticalBias(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iput p1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameVerticalBias:F

    invoke-direct {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidateFrameRect()V

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method

.method setFrameVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mFrameVisible:Z

    return-void
.end method

.method setMaskColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method

.method setMaskVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/budiyev/android/codescanner/ViewFinderView;->mMaskVisible:Z

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/ViewFinderView;->invalidate()V

    :cond_0
    return-void
.end method
