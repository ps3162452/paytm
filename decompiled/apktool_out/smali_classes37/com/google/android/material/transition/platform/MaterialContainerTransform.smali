.class public final Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.super Landroid/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDirection;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

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

.field private fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private fitMode:I

.field private holdAtEndEnabled:Z

.field private pathMotionCustom:Z

.field private scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private scrimColor:I

.field private shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private startContainerColor:I

.field private startElevation:F

.field private startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private startView:Landroid/view/View;

.field private startViewId:I

.field private transitionDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v5, 0x0

    const v11, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3f800000    # 1.0f

    const v9, 0x3f666666    # 0.9f

    const/4 v8, 0x0

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a39cf4"

    const-wide v2, -0x3e3f3e7914000000L    # -5.62236888E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->PROP_BOUNDS:Ljava/lang/String;

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "da5ccb"

    const v2, -0x32ac406f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->PROP_SHAPE_APPEARANCE:Ljava/lang/String;

    const-class v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "44505d"

    const-wide v6, 0x41cd4c2f68800000L    # 9.83064273E8

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "8df21e"

    const v4, -0x37d68b40    # -173523.0f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v1, v8, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v8, v10}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v8, v10}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v4, v8, v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v8, v10}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v8, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v4, v6, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v11, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v11, v10}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v11, v10}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v4, v11, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v2, v8, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-direct {v3, v8, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v6, v9}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    return-void

    nop

    :array_0
    .array-data 1
        0xct
        0x52t
        0x4dt
        0x6t
        0x14t
        0x5dt
        0x0t
        0x5ft
        0x7at
        0xct
        0x8t
        0x40t
        0x0t
        0x5at
        0x57t
        0x6t
        0x14t
        0x60t
        0x13t
        0x52t
        0x57t
        0x10t
        0xft
        0x40t
        0x8t
        0x5ct
        0x57t
        0x59t
        0x4t
        0x5bt
        0x14t
        0x5dt
        0x5dt
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x9t
        0x0t
        0x41t
        0x6t
        0x11t
        0xbt
        0x5t
        0xdt
        0x76t
        0xct
        0xdt
        0x16t
        0x5t
        0x8t
        0x5bt
        0x6t
        0x11t
        0x36t
        0x16t
        0x0t
        0x5bt
        0x10t
        0xat
        0x16t
        0xdt
        0xet
        0x5bt
        0x59t
        0x10t
        0xat
        0x5t
        0x11t
        0x50t
        0x22t
        0x13t
        0x12t
        0x1t
        0x0t
        0x47t
        0x2t
        0xdt
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x59t
        0x55t
        0x41t
        0x55t
        0x47t
        0xdt
        0x55t
        0x58t
        0x76t
        0x5ft
        0x5bt
        0x10t
        0x55t
        0x5dt
        0x5bt
        0x55t
        0x47t
        0x30t
        0x46t
        0x55t
        0x5bt
        0x43t
        0x5ct
        0x10t
        0x5dt
        0x5bt
        0x5bt
        0xat
        0x57t
        0xbt
        0x41t
        0x5at
        0x51t
        0x43t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x55t
        0x5t
        0x12t
        0x57t
        0x43t
        0xct
        0x59t
        0x8t
        0x25t
        0x5dt
        0x5ft
        0x11t
        0x59t
        0xdt
        0x8t
        0x57t
        0x43t
        0x31t
        0x4at
        0x5t
        0x8t
        0x41t
        0x58t
        0x11t
        0x51t
        0xbt
        0x8t
        0x8t
        0x42t
        0xdt
        0x59t
        0x14t
        0x3t
        0x73t
        0x41t
        0x15t
        0x5dt
        0x5t
        0x14t
        0x53t
        0x5ft
        0x6t
        0x5dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    const v1, 0x1020002

    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    iput v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    iput v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    const/high16 v1, 0x52000000

    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    iput v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    iput v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    const v2, 0x1020002

    iput v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    iput v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    iput v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    const/high16 v2, 0x52000000

    iput v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    iput v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    iput v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    iput-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/transition/platform/MaterialContainerTransform;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    return v0
.end method

.method private buildThresholdsGroup(Z)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    instance-of v1, v0, Landroid/transition/ArcMotion;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/google/android/material/transition/platform/MaterialArcMotion;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v0

    goto :goto_0
.end method

.method private static calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

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

    invoke-static {p0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method private static captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->findDescendantOrAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

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

    invoke-static {v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getRelativeBounds(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->PROP_BOUNDS:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->PROP_SHAPE_APPEARANCE:Ljava/lang/String;

    invoke-static {v1, v0, p3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget v2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iput-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

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

    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getTransitionShapeAppearanceResId(Landroid/content/Context;)I

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

.method private getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .locals 6

    if-eqz p1, :cond_0

    :goto_0
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

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
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "0e0179"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

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
    invoke-static {p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    move-result v2

    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

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
        0x79t
        0xbt
        0x46t
        0x50t
        0x5bt
        0x50t
        0x54t
        0x45t
        0x44t
        0x43t
        0x56t
        0x57t
        0x43t
        0xct
        0x44t
        0x58t
        0x58t
        0x57t
        0x10t
        0x1t
        0x59t
        0x43t
        0x52t
        0x5at
        0x44t
        0xct
        0x5ft
        0x5ft
        0xdt
        0x19t
    .end array-data
.end method

.method private maybeApplyThemeValues(Landroid/content/Context;Z)V
    .locals 2

    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemeInterpolator(Landroid/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z

    if-eqz p2, :cond_1

    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemeDuration(Landroid/transition/Transition;Landroid/content/Context;I)Z

    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/material/R$attr;->motionPath:I

    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemePath(Landroid/transition/Transition;Landroid/content/Context;I)Z

    :cond_0
    return-void

    :cond_1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 24

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->PROP_BOUNDS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->PROP_SHAPE_APPEARANCE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    :cond_2
    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    const/16 v2, 0x4e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "6fc6ba"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->PROP_BOUNDS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->PROP_SHAPE_APPEARANCE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v8, :cond_4

    if-nez v9, :cond_5

    :cond_4
    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    const/16 v2, 0x4a

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "70dc7a"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object v2, v7

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v1, v6, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v22, v1

    move-object v1, v2

    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v6

    iget v10, v6, Landroid/graphics/RectF;->left:F

    neg-float v10, v10

    iget v6, v6, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    move-object/from16 v0, v22

    invoke-static {v0, v1, v10, v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    move-result-object v23

    invoke-virtual {v4, v10, v6}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v8, v10, v6}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    if-nez v1, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v15}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    :cond_6
    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    invoke-static {v6, v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    move-result v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    invoke-static {v10, v7}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v15}, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->get(IZ)Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v15, v4, v8}, Lcom/google/android/material/transition/platform/FitModeEvaluators;->get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/platform/FitModeEvaluator;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->buildThresholdsGroup(Z)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;ZLcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->setBounds(IIII)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;

    move-object/from16 v9, p0

    move-object/from16 v10, v22

    move-object v11, v1

    move-object v12, v3

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-object v1, v2

    goto/16 :goto_0

    :cond_7
    move-object v2, v3

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    invoke-static {v2, v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    const/4 v1, 0x0

    move-object/from16 v22, v6

    goto/16 :goto_2

    nop

    :array_0
    .array-data 1
        0x65t
        0xdt
        0xat
        0x46t
        0x12t
        0x8t
        0x58t
        0x1t
        0x43t
        0x52t
        0x17t
        0x4t
        0x16t
        0x12t
        0xct
        0x16t
        0xct
        0x14t
        0x5at
        0xat
        0x43t
        0x45t
        0x16t
        0x0t
        0x44t
        0x12t
        0x43t
        0x54t
        0xdt
        0x14t
        0x58t
        0x2t
        0x10t
        0x18t
        0x42t
        0x24t
        0x58t
        0x15t
        0x16t
        0x44t
        0x7t
        0x41t
        0x45t
        0x12t
        0x2t
        0x44t
        0x16t
        0x41t
        0x40t
        0xft
        0x6t
        0x41t
        0x42t
        0x8t
        0x45t
        0x46t
        0xft
        0x57t
        0xbt
        0x5t
        0x16t
        0x9t
        0x16t
        0x42t
        0x42t
        0x0t
        0x58t
        0x2t
        0x43t
        0x5bt
        0x7t
        0x0t
        0x45t
        0x13t
        0x11t
        0x53t
        0x6t
        0x4ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x64t
        0x5bt
        0xdt
        0x13t
        0x47t
        0x8t
        0x59t
        0x57t
        0x44t
        0x7t
        0x42t
        0x4t
        0x17t
        0x44t
        0xbt
        0x43t
        0x59t
        0x14t
        0x5bt
        0x5ct
        0x44t
        0x6t
        0x59t
        0x5t
        0x17t
        0x52t
        0xbt
        0x16t
        0x59t
        0x5t
        0x44t
        0x1et
        0x44t
        0x26t
        0x59t
        0x12t
        0x42t
        0x42t
        0x1t
        0x43t
        0x52t
        0xft
        0x53t
        0x10t
        0x12t
        0xat
        0x52t
        0x16t
        0x17t
        0x59t
        0x17t
        0x43t
        0x5bt
        0x0t
        0x5et
        0x54t
        0x44t
        0xct
        0x42t
        0x15t
        0x17t
        0x51t
        0xat
        0x7t
        0x17t
        0xct
        0x52t
        0x51t
        0x17t
        0x16t
        0x45t
        0x4t
        0x53t
        0x1et
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

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    return v0
.end method

.method public getDrawingViewId()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    return v0
.end method

.method public getEndContainerColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    return v0
.end method

.method public getEndElevation()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    return v0
.end method

.method public getEndShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    return-object v0
.end method

.method public getEndViewId()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    return v0
.end method

.method public getFadeMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    return v0
.end method

.method public getFadeProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getFitMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    return v0
.end method

.method public getScaleMaskProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScaleProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getScrimColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    return v0
.end method

.method public getShapeMaskProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method public getStartContainerColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    return v0
.end method

.method public getStartElevation()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    return v0
.end method

.method public getStartShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    return-object v0
.end method

.method public getStartViewId()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    return v0
.end method

.method public getTransitionDirection()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    return-object v0
.end method

.method public isDrawDebugEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    return v0
.end method

.method public isElevationShadowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    return v0
.end method

.method public isHoldAtEndEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    return v0
.end method

.method public setAllContainerColors(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    return-void
.end method

.method public setContainerColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    return-void
.end method

.method public setDrawDebugEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    return-void
.end method

.method public setDrawingViewId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    return-void
.end method

.method public setElevationShadowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    return-void
.end method

.method public setEndContainerColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    return-void
.end method

.method public setEndElevation(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    return-void
.end method

.method public setEndShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    return-void
.end method

.method public setEndViewId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    return-void
.end method

.method public setFadeMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    return-void
.end method

.method public setFadeProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setFitMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    return-void
.end method

.method public setHoldAtEndEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    return-void
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    return-void
.end method

.method public setScaleMaskProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setScaleProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    return-void
.end method

.method public setShapeMaskProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-void
.end method

.method public setStartContainerColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    return-void
.end method

.method public setStartElevation(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    return-void
.end method

.method public setStartShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    return-void
.end method

.method public setStartViewId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    return-void
.end method

.method public setTransitionDirection(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    return-void
.end method
