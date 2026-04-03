.class final Lcom/google/android/material/color/Blend;
.super Ljava/lang/Object;


# static fields
.field private static final HARMONIZE_MAX_DEGREES:F = 15.0f

.field private static final HARMONIZE_PERCENTAGE:F = 0.5f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blendCam16Ucs(IIF)I
    .locals 5

    invoke-static {p0}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getJStar()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getAStar()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getBStar()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/material/color/Cam16;->getJStar()F

    move-result v4

    sub-float/2addr v4, v2

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/android/material/color/Cam16;->getAStar()F

    move-result v4

    sub-float/2addr v4, v3

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/android/material/color/Cam16;->getBStar()F

    move-result v1

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-static {v2, v3, v0}, Lcom/google/android/material/color/Cam16;->fromUcs(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getInt()I

    move-result v0

    return v0
.end method

.method public static blendHctHue(IIF)I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/google/android/material/color/Blend;->blendCam16Ucs(IIF)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getHue()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/material/color/Cam16;->getChroma()F

    move-result v1

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/Hct;->from(FFF)Lcom/google/android/material/color/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->toInt()I

    move-result v0

    return v0
.end method

.method public static harmonize(II)I
    .locals 5

    invoke-static {p0}, Lcom/google/android/material/color/Hct;->fromInt(I)Lcom/google/android/material/color/Hct;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/material/color/Hct;->fromInt(I)Lcom/google/android/material/color/Hct;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->getHue()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/material/color/Hct;->getHue()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/material/color/MathUtils;->differenceDegrees(FF)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->getHue()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->getHue()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/material/color/Hct;->getHue()F

    move-result v1

    invoke-static {v4, v1}, Lcom/google/android/material/color/Blend;->rotationDirection(FF)F

    move-result v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    invoke-static {v1}, Lcom/google/android/material/color/MathUtils;->sanitizeDegrees(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->getChroma()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->getTone()F

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/android/material/color/Hct;->from(FFF)Lcom/google/android/material/color/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->toInt()I

    move-result v0

    return v0
.end method

.method private static rotationDirection(FF)F
    .locals 12

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v1, -0x40800000    # -1.0f

    const-wide/16 v10, 0x0

    sub-float v2, p1, p0

    sub-float v0, p1, p0

    add-float v3, v0, v4

    sub-float v0, p1, p0

    sub-float v4, v0, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v8, v5, v6

    if-gtz v8, :cond_2

    cmpg-float v8, v5, v7

    if-gtz v8, :cond_2

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    cmpg-float v2, v6, v5

    if-gtz v2, :cond_3

    cmpg-float v2, v6, v7

    if-gtz v2, :cond_3

    float-to-double v2, v3

    cmpl-double v2, v2, v10

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    float-to-double v2, v4

    cmpl-double v2, v2, v10

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
