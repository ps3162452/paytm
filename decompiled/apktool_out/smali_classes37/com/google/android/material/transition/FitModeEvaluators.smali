.class Lcom/google/android/material/transition/FitModeEvaluators;
.super Ljava/lang/Object;


# static fields
.field private static final HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

.field private static final WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/transition/FitModeEvaluators$1;

    invoke-direct {v0}, Lcom/google/android/material/transition/FitModeEvaluators$1;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    new-instance v0, Lcom/google/android/material/transition/FitModeEvaluators$2;

    invoke-direct {v0}, Lcom/google/android/material/transition/FitModeEvaluators$2;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/FitModeEvaluator;
    .locals 6

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b5a809"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/FitModeEvaluators;->shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x2bt
        0x5bt
        0x17t
        0x59t
        0x5ct
        0x50t
        0x6t
        0x15t
        0x7t
        0x51t
        0x44t
        0x19t
        0xft
        0x5at
        0x5t
        0x5dt
        0xat
        0x19t
    .end array-data
.end method

.method private static shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v4, v3, v0

    div-float/2addr v4, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v1, v2, v3

    if-gez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
