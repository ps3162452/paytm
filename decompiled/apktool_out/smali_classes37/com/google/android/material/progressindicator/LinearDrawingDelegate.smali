.class final Lcom/google/android/material/progressindicator/LinearDrawingDelegate;
.super Lcom/google/android/material/progressindicator/DrawingDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/DrawingDelegate",
        "<",
        "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private displayedCornerRadius:F

.field private displayedTrackThickness:F

.field private trackLength:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    return-void
.end method


# virtual methods
.method public adjustCanvas(Landroid/graphics/Canvas;F)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float v2, v0

    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v3, v0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    sub-int v0, v1, v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v4

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-boolean v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->showAnimationBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hideAnimationBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float v0, v0

    sub-float v1, p2, v6

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_5
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v1, v0

    div-float/2addr v1, v5

    neg-float v3, v2

    div-float/2addr v3, v5

    div-float/2addr v0, v5

    div-float/2addr v2, v5

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackCornerRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    return-void
.end method

.method public fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v1, v0

    div-float/2addr v1, v8

    iget v2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    neg-float v3, v0

    div-float/2addr v3, v8

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    new-instance v5, Landroid/graphics/RectF;

    mul-float v6, v2, v8

    sub-float v6, v0, v6

    mul-float/2addr v6, p3

    add-float/2addr v1, v6

    neg-float v6, v4

    div-float/2addr v6, v8

    mul-float v7, v2, v8

    sub-float/2addr v0, v7

    mul-float/2addr v0, p4

    add-float/2addr v0, v3

    mul-float/2addr v2, v8

    add-float/2addr v0, v2

    div-float v2, v4, v8

    invoke-direct {v5, v1, v6, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    invoke-virtual {p1, v5, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackColor:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v1, v0

    div-float/2addr v1, v5

    iget v2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    new-instance v3, Landroid/graphics/RectF;

    neg-float v4, v2

    div-float/2addr v4, v5

    div-float/2addr v0, v5

    div-float/2addr v2, v5

    invoke-direct {v3, v1, v4, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    invoke-virtual {p1, v3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getPreferredHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    return v0
.end method

.method public getPreferredWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
