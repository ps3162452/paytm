.class final Lcom/google/android/material/color/ColorUtils;
.super Ljava/lang/Object;


# static fields
.field private static final WHITE_POINT_D65:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blueFromInt(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static delinearized(F)F
    .locals 4

    const v0, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    mul-float/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3f870a3d    # 1.055f

    mul-float/2addr v0, v1

    const v1, 0x3d6147ae    # 0.055f

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public static greenFromInt(I)I
    .locals 1

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static hexFromInt(I)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->redFromInt(I)I

    move-result v0

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->blueFromInt(I)I

    move-result v1

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "878ba3"

    const/16 v4, 0x66c4

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->greenFromInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x1bt
        0x12t
        0x8t
        0x50t
        0x19t
        0x16t
        0x8t
        0x5t
        0x40t
        0x47t
        0x51t
        0x1t
        0x40t
    .end array-data
.end method

.method public static intFromLab(DDD)I
    .locals 12

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr v0, p0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double v2, v0, v2

    const-wide v0, 0x407f400000000000L    # 500.0

    div-double v0, p2, v0

    add-double v4, v0, v2

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    div-double v0, p4, v0

    sub-double v6, v2, v0

    mul-double v0, v4, v4

    mul-double/2addr v0, v4

    const-wide v8, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v8, v0, v8

    if-lez v8, :cond_0

    move-wide v4, v0

    :goto_0
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    mul-double v0, v2, v2

    mul-double/2addr v0, v2

    move-wide v2, v0

    :goto_1
    mul-double v0, v6, v6

    mul-double/2addr v0, v6

    const-wide v8, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v8, v0, v8

    if-lez v8, :cond_2

    :goto_2
    sget-object v6, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    const/4 v7, 0x0

    aget v7, v6, v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v7, 0x1

    aget v7, v6, v7

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v7, 0x2

    aget v6, v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v4, v8

    double-to-float v4, v4

    mul-double/2addr v2, v10

    double-to-float v2, v2

    mul-double/2addr v0, v6

    double-to-float v0, v0

    invoke-static {v4, v2, v0}, Lcom/google/android/material/color/ColorUtils;->intFromXyzComponents(FFF)I

    move-result v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    sub-double/2addr v0, v4

    const-wide v4, 0x408c3a5ed097b426L    # 903.2962962962963

    div-double/2addr v0, v4

    move-wide v4, v0

    goto :goto_0

    :cond_1
    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    div-double v0, p0, v0

    move-wide v2, v0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    sub-double/2addr v0, v6

    const-wide v6, 0x408c3a5ed097b426L    # 903.2962962962963

    div-double/2addr v0, v6

    goto :goto_2
.end method

.method public static intFromLstar(F)I
    .locals 10

    const v9, 0x4461d2f7

    const/high16 v8, 0x42e80000    # 116.0f

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    add-float v0, p0, v7

    div-float v6, v0, v8

    mul-float v0, v6, v6

    mul-float/2addr v0, v6

    const v1, 0x3c111aa7

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v5, v3

    :goto_0
    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    mul-float v0, v6, v6

    mul-float/2addr v0, v6

    move v2, v0

    :goto_2
    if-eqz v5, :cond_3

    mul-float v0, v6, v6

    mul-float/2addr v0, v6

    move v1, v0

    :goto_3
    if-eqz v5, :cond_4

    mul-float v0, v6, v6

    mul-float/2addr v0, v6

    :goto_4
    sget-object v5, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    const/4 v6, 0x3

    new-array v6, v6, [F

    aget v7, v5, v4

    mul-float/2addr v1, v7

    aput v1, v6, v4

    aget v1, v5, v3

    mul-float/2addr v1, v2

    aput v1, v6, v3

    const/4 v1, 0x2

    const/4 v2, 0x2

    aget v2, v5, v2

    mul-float/2addr v0, v2

    aput v0, v6, v1

    invoke-static {v6}, Lcom/google/android/material/color/ColorUtils;->intFromXyz([F)I

    move-result v0

    return v0

    :cond_0
    move v5, v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    div-float v0, p0, v9

    move v2, v0

    goto :goto_2

    :cond_3
    mul-float v0, v6, v8

    sub-float/2addr v0, v7

    div-float/2addr v0, v9

    move v1, v0

    goto :goto_3

    :cond_4
    mul-float v0, v8, v6

    sub-float/2addr v0, v7

    div-float/2addr v0, v9

    goto :goto_4
.end method

.method public static intFromRgb(III)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static intFromXyz([F)I
    .locals 3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/ColorUtils;->intFromXyzComponents(FFF)I

    move-result v0

    return v0
.end method

.method public static intFromXyzComponents(FFF)I
    .locals 9

    const/16 v8, 0xff

    const/4 v7, 0x0

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v0, p0, v2

    div-float v1, p1, v2

    div-float v2, p2, v2

    const v3, 0x404f65fe

    mul-float/2addr v3, v0

    const v4, -0x403b3d08    # -1.5372f

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const v4, -0x4100b780    # -0.4986f

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/material/color/ColorUtils;->delinearized(F)F

    move-result v3

    const v4, -0x4087f62b    # -0.9689f

    mul-float/2addr v4, v0

    const v5, 0x3ff01a37    # 1.8758f

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    const v5, 0x3d29fbe7    # 0.0415f

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/material/color/ColorUtils;->delinearized(F)F

    move-result v4

    const v5, 0x3d6425af    # 0.0557f

    mul-float/2addr v0, v5

    const v5, -0x41af1aa0    # -0.204f

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    const v1, 0x3f874bc7    # 1.057f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/material/color/ColorUtils;->delinearized(F)F

    move-result v0

    mul-float v1, v3, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-float v2, v4, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/android/material/color/ColorUtils;->intFromRgb(III)I

    move-result v0

    return v0
.end method

.method public static labFromInt(I)[D
    .locals 12

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->xyzFromInt(I)[F

    move-result-object v4

    const/4 v0, 0x1

    aget v0, v4, v0

    sget-object v5, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    const/4 v1, 0x1

    aget v1, v5, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    :goto_0
    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x0

    aget v3, v5, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v6, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v6, v2, v6

    if-lez v6, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    :goto_1
    const/4 v6, 0x2

    aget v4, v4, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v4

    :goto_2
    const/4 v6, 0x3

    new-array v6, v6, [D

    const/4 v7, 0x0

    const-wide/high16 v8, 0x405d000000000000L    # 116.0

    mul-double/2addr v8, v0

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    sub-double/2addr v2, v0

    const-wide v8, 0x407f400000000000L    # 500.0

    mul-double/2addr v2, v8

    aput-wide v2, v6, v7

    const/4 v2, 0x2

    sub-double/2addr v0, v4

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    mul-double/2addr v0, v4

    aput-wide v0, v6, v2

    return-object v6

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v2, 0x408c3a5ed097b426L    # 903.2962962962963

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x408c3a5ed097b426L    # 903.2962962962963

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v6

    goto :goto_1

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x408c3a5ed097b426L    # 903.2962962962963

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    div-double/2addr v4, v6

    goto :goto_2
.end method

.method public static linearized(F)F
    .locals 4

    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    div-float v0, p0, v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr v0, p0

    const v1, 0x3f870a3d    # 1.055f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public static lstarFromInt(I)F
    .locals 2

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->labFromInt(I)[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    double-to-float v0, v0

    return v0
.end method

.method public static redFromInt(I)I
    .locals 1

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static final whitePointD65()[F
    .locals 2

    sget-object v0, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public static xyzFromInt(I)[F
    .locals 7

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->redFromInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v0}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v0

    mul-float/2addr v0, v3

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->greenFromInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->blueFromInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v2

    mul-float/2addr v2, v3

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3ed31e17

    mul-float/2addr v5, v0

    const v6, 0x3eb71a0d

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    const v6, 0x3e38d7b9

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v5, v0

    const v6, 0x3f371759    # 0.7152f

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    const v6, 0x3d93dd98    # 0.0722f

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x3c9e47ef

    mul-float/2addr v0, v5

    const v5, 0x3df40c29

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    const v1, 0x3f7349cc

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, v3, v4

    return-object v3
.end method

.method public static yFromLstar(F)F
    .locals 5

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    :goto_0
    return v0

    :cond_0
    const v0, 0x4461d2f7

    div-float v0, p0, v0

    mul-float/2addr v0, v4

    goto :goto_0
.end method
