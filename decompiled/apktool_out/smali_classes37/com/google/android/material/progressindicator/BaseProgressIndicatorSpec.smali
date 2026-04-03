.class public abstract Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.super Ljava/lang/Object;


# instance fields
.field public hideAnimationBehavior:I

.field public indicatorColors:[I

.field public showAnimationBehavior:I

.field public trackColor:I

.field public trackCornerRadius:I

.field public trackThickness:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_progress_track_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget-object v2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackThickness:I

    invoke-static {p1, v0, v1, v6}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    sget v1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackCornerRadius:I

    invoke-static {p1, v0, v1, v7}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    sget v1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_showAnimationBehavior:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    sget v1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_hideAnimationBehavior:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->loadIndicatorColors(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->loadTrackColor(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private loadIndicatorColors(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [I

    sget v1, Lcom/google/android/material/R$attr;->colorPrimary:I

    invoke-static {p1, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v3

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->type:I

    if-eq v0, v1, :cond_2

    new-array v0, v1, [I

    sget v1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    aput v1, v0, v3

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f7bca6"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0xft
        0x59t
        0x6t
        0xat
        0x2t
        0x57t
        0x12t
        0x58t
        0x10t
        0x20t
        0xet
        0x5at
        0x9t
        0x45t
        0x11t
        0x43t
        0x2t
        0x57t
        0x8t
        0x59t
        0xdt
        0x17t
        0x41t
        0x54t
        0x3t
        0x17t
        0x7t
        0xet
        0x11t
        0x42t
        0x1ft
        0x17t
        0x15t
        0xbt
        0x4t
        0x58t
        0x46t
        0x5et
        0xct
        0x7t
        0x8t
        0x55t
        0x7t
        0x43t
        0xdt
        0x11t
        0x22t
        0x59t
        0xat
        0x58t
        0x10t
        0x43t
        0x8t
        0x45t
        0x46t
        0x59t
        0xdt
        0x17t
        0x41t
        0x43t
        0x15t
        0x52t
        0x6t
        0x4dt
    .end array-data
.end method

.method private loadTrackColor(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v3, 0x0

    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010033

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    invoke-static {v1, v0}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    goto :goto_0
.end method


# virtual methods
.method public isHideAnimationEnabled()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowAnimationEnabled()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract validateSpec()V
.end method
