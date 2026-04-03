.class final Lcom/google/android/material/color/Hct;
.super Ljava/lang/Object;


# static fields
.field private static final CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final DE_MAX:F = 1.0f

.field private static final DE_MAX_ERROR:F = 1.0E-9f

.field private static final DL_MAX:F = 0.2f

.field private static final LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private chroma:F

.field private hue:F

.field private tone:F


# direct methods
.method private constructor <init>(FFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/google/android/material/color/Hct;->gamutMap(FFF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/Hct;->setInternalState(I)V

    return-void
.end method

.method private static findCamByJ(FFF)Lcom/google/android/material/color/Cam16;
    .locals 12

    const/high16 v1, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    move v3, v2

    move v4, v5

    move v2, v1

    :goto_0
    sub-float v6, v4, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    sub-float v6, v3, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v4

    invoke-static {v6, p1, p0}, Lcom/google/android/material/color/Cam16;->fromJch(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/material/color/Cam16;->getInt()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result v10

    sub-float v8, p2, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3e4ccccd    # 0.2f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    invoke-static {v7}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/material/color/Cam16;->getJ()F

    move-result v7

    invoke-virtual {v9}, Lcom/google/android/material/color/Cam16;->getChroma()F

    move-result v11

    invoke-static {v7, v11, p0}, Lcom/google/android/material/color/Cam16;->fromJch(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/google/android/material/color/Cam16;->distance(Lcom/google/android/material/color/Cam16;)F

    move-result v7

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v7, v11

    if-gtz v11, :cond_0

    cmpg-float v11, v7, v1

    if-gtz v11, :cond_0

    move v1, v7

    move v2, v8

    move-object v0, v9

    :cond_0
    cmpl-float v7, v2, v5

    if-nez v7, :cond_2

    const v7, 0x3089705f    # 1.0E-9f

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    :cond_1
    return-object v0

    :cond_2
    cmpg-float v7, v10, p2

    if-gez v7, :cond_3

    move v4, v6

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_0
.end method

.method public static from(FFF)Lcom/google/android/material/color/Hct;
    .locals 1

    new-instance v0, Lcom/google/android/material/color/Hct;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/color/Hct;-><init>(FFF)V

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/android/material/color/Hct;
    .locals 4

    invoke-static {p0}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/color/Hct;

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getHue()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getChroma()F

    move-result v0

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/material/color/Hct;-><init>(FFF)V

    return-object v1
.end method

.method private static gamutMap(FFF)I
    .locals 1

    sget-object v0, Lcom/google/android/material/color/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/Hct;->gamutMapInViewingConditions(FFFLcom/google/android/material/color/ViewingConditions;)I

    move-result v0

    return v0
.end method

.method static gamutMapInViewingConditions(FFFLcom/google/android/material/color/ViewingConditions;)I
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/google/android/material/color/ColorUtils;->intFromLstar(F)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/material/color/MathUtils;->sanitizeDegrees(F)F

    move-result v6

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v5, v1

    move v3, p1

    move v2, p1

    :goto_1
    sub-float v1, v4, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v7, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_5

    invoke-static {v6, v2, p2}, Lcom/google/android/material/color/Hct;->findCamByJ(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v1

    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Lcom/google/android/material/color/Cam16;->viewed(Lcom/google/android/material/color/ViewingConditions;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    sub-float v2, v3, v4

    div-float/2addr v2, v8

    add-float/2addr v2, v4

    move v5, v1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    move v1, v2

    move v2, v4

    :goto_2
    sub-float v3, v1, v2

    div-float/2addr v3, v8

    add-float p1, v2, v3

    move v3, v1

    move v4, v2

    move v2, p1

    goto :goto_1

    :cond_4
    move-object v0, v1

    move v1, v3

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    invoke-static {p2}, Lcom/google/android/material/color/ColorUtils;->intFromLstar(F)I

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p3}, Lcom/google/android/material/color/Cam16;->viewed(Lcom/google/android/material/color/ViewingConditions;)I

    move-result v0

    goto :goto_0
.end method

.method private setInternalState(I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getHue()F

    move-result v2

    iput v2, p0, Lcom/google/android/material/color/Hct;->hue:F

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getChroma()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/Hct;->chroma:F

    iput v1, p0, Lcom/google/android/material/color/Hct;->tone:F

    return-void
.end method


# virtual methods
.method public getChroma()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/Hct;->chroma:F

    return v0
.end method

.method public getHue()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/Hct;->hue:F

    return v0
.end method

.method public getTone()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/Hct;->tone:F

    return v0
.end method

.method public setChroma(F)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/color/Hct;->hue:F

    iget v1, p0, Lcom/google/android/material/color/Hct;->tone:F

    invoke-static {v0, p1, v1}, Lcom/google/android/material/color/Hct;->gamutMap(FFF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/Hct;->setInternalState(I)V

    return-void
.end method

.method public setHue(F)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/material/color/MathUtils;->sanitizeDegrees(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/color/Hct;->chroma:F

    iget v2, p0, Lcom/google/android/material/color/Hct;->tone:F

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/Hct;->gamutMap(FFF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/Hct;->setInternalState(I)V

    return-void
.end method

.method public setTone(F)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/color/Hct;->hue:F

    iget v1, p0, Lcom/google/android/material/color/Hct;->chroma:F

    invoke-static {v0, v1, p1}, Lcom/google/android/material/color/Hct;->gamutMap(FFF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/Hct;->setInternalState(I)V

    return-void
.end method

.method public toInt()I
    .locals 3

    iget v0, p0, Lcom/google/android/material/color/Hct;->hue:F

    iget v1, p0, Lcom/google/android/material/color/Hct;->chroma:F

    iget v2, p0, Lcom/google/android/material/color/Hct;->tone:F

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/Hct;->gamutMap(FFF)I

    move-result v0

    return v0
.end method
