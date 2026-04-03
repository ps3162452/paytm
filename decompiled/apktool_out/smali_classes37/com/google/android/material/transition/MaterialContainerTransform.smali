.class public final Lcom/google/android/material/transition/MaterialContainerTransform;
.super Landroidx/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;,
        Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;,
        Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDirection;,
        Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final ELEVATION_NOT_SET:F = -1.0f

.field public static final FADE_MODE_CROSS:I = 0x2

.field public static final FADE_MODE_IN:I = 0x0

.field public static final FADE_MODE_OUT:I = 0x1

.field public static final FADE_MODE_THROUGH:I = 0x3

.field public static final FIT_MODE_AUTO:I = 0x0

.field public static final FIT_MODE_HEIGHT:I = 0x2

.field public static final FIT_MODE_WIDTH:I = 0x1

.field private static final PROP_BOUNDS:Ljava/lang/String;

.field private static final PROP_SHAPE_APPEARANCE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSITION_DIRECTION_AUTO:I = 0x0

.field public static final TRANSITION_DIRECTION_ENTER:I = 0x1

.field public static final TRANSITION_DIRECTION_RETURN:I = 0x2

.field private static final TRANSITION_PROPS:[Ljava/lang/String;


# instance fields
.field private appliedThemeValues:Z

.field private containerColor:I

.field private drawDebugEnabled:Z

.field private drawingViewId:I

.field private elevationShadowEnabled:Z

.field private endContainerColor:I

.field private endElevation:F

.field private endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private endView:Landroid/view/View;

.field private endViewId:I

.field private fadeMode:I

.field private fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

.field private fitMode:I

.field private holdAtEndEnabled:Z

.field private pathMotionCustom:Z

.field private scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

.field private scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

.field private scrimColor:I

.field private shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

.field private startContainerColor:I

.field private startElevation:F

.field private startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private startView:Landroid/view/View;

.field private startViewId:I

.field private transitionDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v5, 0x0

    const v10, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3f666666    # 0.9f

    const/4 v7, 0x0

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b58353"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->PROP_BOUNDS:Ljava/lang/String;

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "388680"

    const-wide/32 v2, 0x187c42b3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->PROP_SHAPE_APPEARANCE:Ljava/lang/String;

    const-class v0, Lcom/google/android/material/transition/MaterialContainerTransform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "855a60"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "8b2ddd"

    const/16 v4, 0x60a7

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v1, v7, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v7, v9}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v7, v9}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v4, v7, v6}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v7, v9}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v4, v6, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v10, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v10, v9}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v10, v9}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v4, v10, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v6, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    return-void

    :array_0
    .array-data 1
        0xft
        0x54t
        0x4ct
        0x56t
        0x47t
        0x5at
        0x3t
        0x59t
        0x7bt
        0x5ct
        0x5bt
        0x47t
        0x3t
        0x5ct
        0x56t
        0x56t
        0x47t
        0x67t
        0x10t
        0x54t
        0x56t
        0x40t
        0x5ct
        0x47t
        0xbt
        0x5at
        0x56t
        0x9t
        0x57t
        0x5ct
        0x17t
        0x5bt
        0x5ct
        0x40t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5et
        0x59t
        0x4ct
        0x53t
        0x4at
        0x59t
        0x52t
        0x54t
        0x7bt
        0x59t
        0x56t
        0x44t
        0x52t
        0x51t
        0x56t
        0x53t
        0x4at
        0x64t
        0x41t
        0x59t
        0x56t
        0x45t
        0x51t
        0x44t
        0x5at
        0x57t
        0x56t
        0xct
        0x4bt
        0x58t
        0x52t
        0x48t
        0x5dt
        0x77t
        0x48t
        0x40t
        0x56t
        0x59t
        0x4at
        0x57t
        0x56t
        0x53t
        0x56t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x54t
        0x41t
        0x4t
        0x44t
        0x59t
        0x59t
        0x59t
        0x76t
        0xet
        0x58t
        0x44t
        0x59t
        0x5ct
        0x5bt
        0x4t
        0x44t
        0x64t
        0x4at
        0x54t
        0x5bt
        0x12t
        0x5ft
        0x44t
        0x51t
        0x5at
        0x5bt
        0x5bt
        0x54t
        0x5ft
        0x4dt
        0x5bt
        0x51t
        0x12t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x55t
        0x3t
        0x46t
        0x1t
        0x16t
        0xdt
        0x59t
        0xet
        0x71t
        0xbt
        0xat
        0x10t
        0x59t
        0xbt
        0x5ct
        0x1t
        0x16t
        0x30t
        0x4at
        0x3t
        0x5ct
        0x17t
        0xdt
        0x10t
        0x51t
        0xdt
        0x5ct
        0x5et
        0x17t
        0xct
        0x59t
        0x12t
        0x57t
        0x25t
        0x14t
        0x14t
        0x5dt
        0x3t
        0x40t
        0x5t
        0xat
        0x7t
        0x5dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->pathMotionCustom:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->appliedThemeValues:Z

    const v1, 0x1020002

    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    iput v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    iput v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    const/high16 v1, 0x52000000

    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->elevationShadowEnabled:Z

    iput v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startElevation:F

    iput v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endElevation:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->pathMotionCustom:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->appliedThemeValues:Z

    const v2, 0x1020002

    iput v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    iput v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    iput v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    const/high16 v2, 0x52000000

    iput v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->elevationShadowEnabled:Z

    iput v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startElevation:F

    iput v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endElevation:F

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transition/MaterialContainerTransform;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    iput-boolean v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->appliedThemeValues:Z

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/transition/MaterialContainerTransform;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    return v0
.end method

.method private buildThresholdsGroup(Z)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialContainerTransform;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v0

    instance-of v1, v0, Landroidx/transition/ArcMotion;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/google/android/material/transition/MaterialArcMotion;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    sget-object v1, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    sget-object v1, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v0

    goto :goto_0
.end method

.method private static calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/material/transition/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method private static captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    invoke-static {p0, p2}, Lcom/google/android/material/transition/MaterialContainerTransform;->getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/transition/TransitionUtils;->convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method private static captureValues(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/google/android/material/transition/TransitionUtils;->findDescendantOrAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v1}, Lcom/google/android/material/transition/TransitionUtils;->getRelativeBounds(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Lcom/google/android/material/transition/MaterialContainerTransform;->PROP_BOUNDS:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Lcom/google/android/material/transition/MaterialContainerTransform;->PROP_SHAPE_APPEARANCE:Ljava/lang/String;

    invoke-static {v1, v0, p3}, Lcom/google/android/material/transition/MaterialContainerTransform;->captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    iput-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/google/android/material/transition/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_1
.end method

.method private static getElevationOrDefault(FLandroid/view/View;)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    :goto_0
    return p0

    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p0

    goto :goto_0
.end method

.method private static getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 3

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    sget v0, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform;->getTransitionShapeAppearanceResId(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/google/android/material/shape/Shapeable;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/android/material/shape/Shapeable;

    invoke-interface {p0}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    goto :goto_0
.end method

.method private getThresholdsOrDefault(ZLcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;
    .locals 6

    if-eqz p1, :cond_0

    :goto_0
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$1;)V

    return-object v0

    :cond_0
    move-object p2, p3

    goto :goto_0
.end method

.method private static getTransitionShapeAppearanceResId(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method private isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "60d2b1"

    const-wide/32 v4, -0x63f0fea7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    invoke-static {p2}, Lcom/google/android/material/transition/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    move-result v2

    invoke-static {p1}, Lcom/google/android/material/transition/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x7ft
        0x5et
        0x12t
        0x53t
        0xet
        0x58t
        0x52t
        0x10t
        0x10t
        0x40t
        0x3t
        0x5ft
        0x45t
        0x59t
        0x10t
        0x5bt
        0xdt
        0x5ft
        0x16t
        0x54t
        0xdt
        0x40t
        0x7t
        0x52t
        0x42t
        0x59t
        0xbt
        0x5ct
        0x58t
        0x11t
    .end array-data
.end method

.method private maybeApplyThemeValues(Landroid/content/Context;Z)V
    .locals 2

    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/transition/TransitionUtils;->maybeApplyThemeInterpolator(Landroidx/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z

    if-eqz p2, :cond_1

    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/TransitionUtils;->maybeApplyThemeDuration(Landroidx/transition/Transition;Landroid/content/Context;I)Z

    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->pathMotionCustom:Z

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/material/R$attr;->motionPath:I

    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/TransitionUtils;->maybeApplyThemePath(Landroidx/transition/Transition;Landroid/content/Context;I)Z

    :cond_0
    return-void

    :cond_1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->captureValues(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->captureValues(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 25

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Lcom/google/android/material/transition/MaterialContainerTransform;->PROP_BOUNDS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Lcom/google/android/material/transition/MaterialContainerTransform;->PROP_SHAPE_APPEARANCE:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v5, :cond_2

    if-nez v6, :cond_3

    :cond_2
    sget-object v2, Lcom/google/android/material/transition/MaterialContainerTransform;->TAG:Ljava/lang/String;

    const/16 v3, 0x4e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "dff69f"

    const-wide/32 v6, -0x72ffd388

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Lcom/google/android/material/transition/MaterialContainerTransform;->PROP_BOUNDS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Lcom/google/android/material/transition/MaterialContainerTransform;->PROP_SHAPE_APPEARANCE:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v9, :cond_4

    if-nez v10, :cond_5

    :cond_4
    sget-object v2, Lcom/google/android/material/transition/MaterialContainerTransform;->TAG:Ljava/lang/String;

    const/16 v3, 0x4a

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "15c1b3"

    const v5, 0x4ece545a    # 1.7308173E9f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p2

    iget-object v4, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v8, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object v3, v8

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v2, v7, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v23, v2

    move-object v2, v3

    :goto_2
    invoke-static/range {v23 .. v23}, Lcom/google/android/material/transition/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v7

    iget v11, v7, Landroid/graphics/RectF;->left:F

    neg-float v11, v11

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    move-object/from16 v0, v23

    invoke-static {v0, v2, v11, v7}, Lcom/google/android/material/transition/MaterialContainerTransform;->calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    move-result-object v24

    invoke-virtual {v5, v11, v7}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v9, v11, v7}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Lcom/google/android/material/transition/MaterialContainerTransform;->isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->appliedThemeValues:Z

    if-nez v2, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/transition/MaterialContainerTransform;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    :cond_6
    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/transition/MaterialContainerTransform;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->startElevation:F

    invoke-static {v7, v4}, Lcom/google/android/material/transition/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    move-result v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->endElevation:F

    invoke-static {v11, v8}, Lcom/google/android/material/transition/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->elevationShadowEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/material/transition/FadeModeEvaluators;->get(IZ)Lcom/google/android/material/transition/FadeModeEvaluator;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1, v5, v9}, Lcom/google/android/material/transition/FitModeEvaluators;->get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/FitModeEvaluator;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform;->buildThresholdsGroup(Z)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v22}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;-><init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/FadeModeEvaluator;Lcom/google/android/material/transition/FitModeEvaluator;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;ZLcom/google/android/material/transition/MaterialContainerTransform$1;)V

    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v0, v24

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->setBounds(IIII)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v5, Lcom/google/android/material/transition/MaterialContainerTransform$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$1;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform;Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Lcom/google/android/material/transition/MaterialContainerTransform$2;

    move-object/from16 v10, p0

    move-object/from16 v11, v23

    move-object v12, v2

    move-object v13, v4

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/MaterialContainerTransform$2;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/material/transition/MaterialContainerTransform;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-object v2, v3

    goto/16 :goto_0

    :cond_7
    move-object v3, v4

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    invoke-static {v3, v2}, Lcom/google/android/material/transition/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    const/4 v2, 0x0

    move-object/from16 v23, v7

    goto/16 :goto_2

    nop

    :array_0
    .array-data 1
        0x37t
        0xdt
        0xft
        0x46t
        0x49t
        0xft
        0xat
        0x1t
        0x46t
        0x52t
        0x4ct
        0x3t
        0x44t
        0x12t
        0x9t
        0x16t
        0x57t
        0x13t
        0x8t
        0xat
        0x46t
        0x45t
        0x4dt
        0x7t
        0x16t
        0x12t
        0x46t
        0x54t
        0x56t
        0x13t
        0xat
        0x2t
        0x15t
        0x18t
        0x19t
        0x23t
        0xat
        0x15t
        0x13t
        0x44t
        0x5ct
        0x46t
        0x17t
        0x12t
        0x7t
        0x44t
        0x4dt
        0x46t
        0x12t
        0xft
        0x3t
        0x41t
        0x19t
        0xft
        0x17t
        0x46t
        0xat
        0x57t
        0x50t
        0x2t
        0x44t
        0x9t
        0x13t
        0x42t
        0x19t
        0x7t
        0xat
        0x2t
        0x46t
        0x5bt
        0x5ct
        0x7t
        0x17t
        0x13t
        0x14t
        0x53t
        0x5dt
        0x48t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x62t
        0x5et
        0xat
        0x41t
        0x12t
        0x5at
        0x5ft
        0x52t
        0x43t
        0x55t
        0x17t
        0x56t
        0x11t
        0x41t
        0xct
        0x11t
        0xct
        0x46t
        0x5dt
        0x59t
        0x43t
        0x54t
        0xct
        0x57t
        0x11t
        0x57t
        0xct
        0x44t
        0xct
        0x57t
        0x42t
        0x1bt
        0x43t
        0x74t
        0xct
        0x40t
        0x44t
        0x47t
        0x6t
        0x11t
        0x7t
        0x5dt
        0x55t
        0x15t
        0x15t
        0x58t
        0x7t
        0x44t
        0x11t
        0x5ct
        0x10t
        0x11t
        0xet
        0x52t
        0x58t
        0x51t
        0x43t
        0x5et
        0x17t
        0x47t
        0x11t
        0x54t
        0xdt
        0x55t
        0x42t
        0x5et
        0x54t
        0x54t
        0x10t
        0x44t
        0x10t
        0x56t
        0x55t
        0x1bt
    .end array-data

    nop

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getContainerColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    return v0
.end method

.method public getDrawingViewId()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    return v0
.end method

.method public getEndContainerColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    return v0
.end method

.method public getEndElevation()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endElevation:F

    return v0
.end method

.method public getEndShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endView:Landroid/view/View;

    return-object v0
.end method

.method public getEndViewId()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    return v0
.end method

.method public getFadeMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    return v0
.end method

.method public getFadeProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getFitMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    return v0
.end method

.method public getScaleMaskProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScaleProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScrimColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    return v0
.end method

.method public getShapeMaskProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getStartContainerColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    return v0
.end method

.method public getStartElevation()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startElevation:F

    return v0
.end method

.method public getStartShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startView:Landroid/view/View;

    return-object v0
.end method

.method public getStartViewId()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    return v0
.end method

.method public getTransitionDirection()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    return-object v0
.end method

.method public isDrawDebugEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    return v0
.end method

.method public isElevationShadowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->elevationShadowEnabled:Z

    return v0
.end method

.method public isHoldAtEndEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    return v0
.end method

.method public setAllContainerColors(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    return-void
.end method

.method public setContainerColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    return-void
.end method

.method public setDrawDebugEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    return-void
.end method

.method public setDrawingViewId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    return-void
.end method

.method public setElevationShadowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->elevationShadowEnabled:Z

    return-void
.end method

.method public setEndContainerColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endContainerColor:I

    return-void
.end method

.method public setEndElevation(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endElevation:F

    return-void
.end method

.method public setEndShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endView:Landroid/view/View;

    return-void
.end method

.method public setEndViewId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    return-void
.end method

.method public setFadeMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    return-void
.end method

.method public setFadeProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setFitMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    return-void
.end method

.method public setHoldAtEndEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    return-void
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->pathMotionCustom:Z

    return-void
.end method

.method public setScaleMaskProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setScaleProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    return-void
.end method

.method public setShapeMaskProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setStartContainerColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startContainerColor:I

    return-void
.end method

.method public setStartElevation(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startElevation:F

    return-void
.end method

.method public setStartShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startView:Landroid/view/View;

    return-void
.end method

.method public setStartViewId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    return-void
.end method

.method public setTransitionDirection(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    return-void
.end method
