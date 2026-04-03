.class public Lcom/google/android/material/motion/MotionUtils;
.super Ljava/lang/Object;


# static fields
.field private static final EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String;

.field private static final EASING_TYPE_FORMAT_END:Ljava/lang/String;

.field private static final EASING_TYPE_FORMAT_START:Ljava/lang/String;

.field private static final EASING_TYPE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x18

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8ae808"

    const/16 v2, -0x2c78

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String;

    new-array v0, v4, [B

    aput-byte v6, v0, v5

    const-string v1, "196c26"

    const-wide/32 v2, 0x30e300b0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_FORMAT_END:Ljava/lang/String;

    new-array v0, v4, [B

    aput-byte v6, v0, v5

    const-string v1, "0ef515"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_FORMAT_START:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "2c6c35"

    const-wide/32 v2, 0x526da991

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_PATH:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x5bt
        0x14t
        0x7t
        0x51t
        0x53t
        0x15t
        0x5at
        0x4t
        0x1ft
        0x51t
        0x55t
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x2t
        0x42t
        0xbt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getControlPoint([Ljava/lang/String;I)F
    .locals 6

    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x48

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "e61bb9"

    const/16 v5, 0x126a

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x28t
        0x59t
        0x45t
        0xbt
        0xdt
        0x57t
        0x45t
        0x53t
        0x50t
        0x11t
        0xbt
        0x57t
        0x2t
        0x16t
        0x52t
        0xdt
        0xct
        0x4dt
        0x17t
        0x59t
        0x5dt
        0x42t
        0x12t
        0x56t
        0xct
        0x58t
        0x45t
        0x42t
        0x14t
        0x58t
        0x9t
        0x43t
        0x54t
        0x42t
        0xft
        0x4ct
        0x16t
        0x42t
        0x11t
        0x0t
        0x7t
        0x19t
        0x7t
        0x53t
        0x45t
        0x15t
        0x7t
        0x5ct
        0xbt
        0x16t
        0x1t
        0x42t
        0x3t
        0x57t
        0x1t
        0x16t
        0x0t
        0x59t
        0x42t
        0x50t
        0xbt
        0x45t
        0x45t
        0x7t
        0x3t
        0x5dt
        0x45t
        0x51t
        0x5et
        0x16t
        0x58t
        0x19t
    .end array-data
.end method

.method private static getEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_FORMAT_START:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_FORMAT_END:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isEasingType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_FORMAT_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_FORMAT_END:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveThemeDuration(Landroid/content/Context;II)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveInteger(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    if-ne v1, v6, :cond_4

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/material/motion/MotionUtils;->isEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/material/motion/MotionUtils;->getEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [B

    const/16 v2, 0x14

    aput-byte v2, v1, v5

    const-string v2, "8ee996"

    const/16 v3, 0x6f1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-static {v0, v5}, Lcom/google/android/material/motion/MotionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v1

    invoke-static {v0, v4}, Lcom/google/android/material/motion/MotionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v2

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/google/android/material/motion/MotionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v3

    invoke-static {v0, v6}, Lcom/google/android/material/motion/MotionUtils;->getControlPoint([Ljava/lang/String;I)F

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x64

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "03905f"

    const/16 v5, -0x5f82

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    sget-object v1, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/material/motion/MotionUtils;->isEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/material/motion/MotionUtils;->EASING_TYPE_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/material/motion/MotionUtils;->getEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object p2

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1c

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "88736f"

    const/16 v5, 0x62c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "94b9be"

    const-wide v4, -0x3e2ef51e31000000L    # -1.143703356E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7dt
        0x5ct
        0x4dt
        0x59t
        0x5at
        0x8t
        0x10t
        0x56t
        0x58t
        0x43t
        0x5ct
        0x8t
        0x57t
        0x13t
        0x4dt
        0x58t
        0x50t
        0xbt
        0x55t
        0x13t
        0x58t
        0x44t
        0x41t
        0x14t
        0x59t
        0x51t
        0x4ct
        0x44t
        0x50t
        0x46t
        0x5dt
        0x46t
        0x4at
        0x44t
        0x15t
        0xet
        0x51t
        0x45t
        0x5ct
        0x10t
        0x1t
        0x46t
        0x53t
        0x5ct
        0x57t
        0x44t
        0x47t
        0x9t
        0x5ct
        0x13t
        0x49t
        0x5ft
        0x5ct
        0x8t
        0x44t
        0x40t
        0x19t
        0x59t
        0x53t
        0x46t
        0x45t
        0x40t
        0x50t
        0x5et
        0x52t
        0x46t
        0x52t
        0x56t
        0x43t
        0x59t
        0x50t
        0x14t
        0x10t
        0x50t
        0x4ct
        0x42t
        0x43t
        0x3t
        0x10t
        0x55t
        0x56t
        0x42t
        0x58t
        0x7t
        0x44t
        0x8t
        0x19t
        0x59t
        0x5bt
        0x15t
        0x44t
        0x56t
        0x58t
        0x54t
        0x15t
        0x1t
        0x5ft
        0x47t
        0x3t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x71t
        0x56t
        0x41t
        0x52t
        0x5at
        0xft
        0x5ct
        0x18t
        0x5at
        0x5ct
        0x42t
        0xft
        0x57t
        0x56t
        0x17t
        0x56t
        0x57t
        0x15t
        0x51t
        0x56t
        0x50t
        0x13t
        0x42t
        0x1ft
        0x48t
        0x5dt
        0xdt
        0x13t
    .end array-data

    :array_2
    .array-data 1
        0x74t
        0x5bt
        0x16t
        0x50t
        0xdt
        0xbt
        0x19t
        0x51t
        0x3t
        0x4at
        0xbt
        0xbt
        0x5et
        0x14t
        0x16t
        0x51t
        0x7t
        0x8t
        0x5ct
        0x14t
        0x3t
        0x4dt
        0x16t
        0x17t
        0x50t
        0x56t
        0x17t
        0x4dt
        0x7t
        0x45t
        0x54t
        0x41t
        0x11t
        0x4dt
        0x42t
        0x7t
        0x5ct
        0x14t
        0x3t
        0x19t
        0x11t
        0x11t
        0x4bt
        0x5dt
        0xct
        0x5et
    .end array-data
.end method
