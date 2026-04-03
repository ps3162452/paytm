.class final Lcom/google/android/material/color/MathUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clamp(FFF)F
    .locals 1

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static differenceDegrees(FF)F
    .locals 2

    const/high16 v1, 0x43340000    # 180.0f

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method

.method public static lerp(FFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static sanitizeDegrees(F)F
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    rem-float v0, p0, v1

    add-float p0, v0, v1

    :cond_0
    :goto_0
    return p0

    :cond_1
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_0

    rem-float/2addr p0, v1

    goto :goto_0
.end method

.method public static sanitizeDegrees(I)I
    .locals 1

    if-gez p0, :cond_1

    rem-int/lit16 v0, p0, 0x168

    add-int/lit16 p0, v0, 0x168

    :cond_0
    :goto_0
    return p0

    :cond_1
    const/16 v0, 0x168

    if-lt p0, v0, :cond_0

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0
.end method

.method static toDegrees(F)F
    .locals 2

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p0

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    return v0
.end method

.method static toRadians(F)F
    .locals 2

    const/high16 v0, 0x43340000    # 180.0f

    div-float v0, p0, v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    return v0
.end method
