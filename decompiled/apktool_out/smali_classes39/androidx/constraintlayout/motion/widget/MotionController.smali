.class public Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;


# static fields
.field static final BOUNCE:I = 0x4

.field private static final DEBUG:Z = false

.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final FAVOR_FIXED_SIZE_VIEWS:Z = false

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field private static final INTERPOLATOR_UNDEFINED:I = -0x3

.field static final LINEAR:I = 0x3

.field static final OVERSHOOT:I = 0x5

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field public static final ROTATION_LEFT:I = 0x2

.field public static final ROTATION_RIGHT:I = 0x1

.field private static final SPLINE_STRING:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field private MAX_DIMENSION:I

.field attributeTable:[Ljava/lang/String;

.field private mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field private mAttributeInterpolatorCount:[I

.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;"
        }
    .end annotation
.end field

.field mConstraintTag:Ljava/lang/String;

.field mCurrentCenterX:F

.field mCurrentCenterY:F

.field private mCurveFitType:I

.field private mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mForceMeasure:Z

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/motion/widget/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mTempRect:Landroid/graphics/Rect;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroid/view/View;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a7d057"

    const v2, 0x4e8bf051    # 1.1738912E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionController;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x2ct
        0x58t
        0x10t
        0x59t
        0x5at
        0x59t
        0x22t
        0x58t
        0xat
        0x44t
        0x47t
        0x58t
        0xdt
        0x5bt
        0x1t
        0x42t
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->MAX_DIMENSION:I

    new-array v0, v3, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->setView(Landroid/view/View;)V

    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    aput v4, p2, v10

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    const/high16 v2, 0x7fc00000    # Float.NaN

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    move v2, v1

    move-object v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v6, :cond_7

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v6, v6, p1

    if-gez v6, :cond_3

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move-object v0, v1

    move v1, v2

    move v2, v3

    :goto_2
    move v3, v2

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    float-to-double v2, v0

    cmpl-double v2, v2, v8

    if-eqz v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_2

    move p1, v1

    :cond_2
    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    float-to-double v6, p1

    cmpg-double v3, v6, v8

    if-gez v3, :cond_0

    sub-float v2, p1, v2

    mul-float/2addr v0, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move-object v0, v1

    move v1, v2

    move v2, v3

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v4

    :cond_5
    sub-float v0, p1, v2

    sub-float v4, v3, v2

    div-float/2addr v0, v4

    sub-float/2addr v3, v2

    float-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float p1, v3, v2

    if-eqz p2, :cond_6

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, v10

    :cond_6
    return p1

    :cond_7
    move-object v0, v1

    move v1, v2

    move v2, v3

    goto :goto_2
.end method

.method private static getInterpolator(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionController$1;

    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionController$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getPreCycleDistance()F
    .locals 20

    const/16 v16, 0x64

    const/4 v2, 0x2

    new-array v8, v2, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x63

    int-to-float v3, v3

    div-float v17, v2, v3

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move v11, v2

    move-wide v12, v4

    move-wide v14, v6

    :goto_0
    move/from16 v0, v16

    if-ge v11, v0, :cond_3

    int-to-float v2, v11

    mul-float v9, v2, v17

    float-to-double v6, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v3, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    move-object v5, v4

    move v4, v3

    move v3, v2

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v0, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    iget v0, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move/from16 v19, v0

    cmpg-float v19, v19, v9

    if-gez v19, :cond_0

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v2, v3

    move v3, v4

    move-object v4, v5

    :goto_2
    move-object v5, v4

    move v4, v3

    move v3, v2

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-eqz v19, :cond_6

    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v2, v3

    move v3, v4

    move-object v4, v5

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_5

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    sub-float v2, v3, v4

    sub-float v6, v9, v4

    sub-float/2addr v3, v4

    div-float v3, v6, v3

    float-to-double v6, v3

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-double v4, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    if-lez v11, :cond_4

    float-to-double v2, v10

    const/4 v4, 0x1

    aget v4, v8, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v6, 0x0

    aget v6, v8, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v12, v4

    sub-double v6, v14, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-float v2, v2

    :goto_4
    const/4 v3, 0x0

    aget v3, v8, v3

    float-to-double v6, v3

    const/4 v3, 0x1

    aget v3, v8, v3

    float-to-double v4, v3

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move-wide v12, v4

    move-wide v14, v6

    move v10, v2

    goto/16 :goto_0

    :cond_3
    return v10

    :cond_4
    move v2, v10

    goto :goto_4

    :cond_5
    move-wide v4, v6

    goto :goto_3

    :cond_6
    move v2, v3

    move v3, v4

    move-object v4, v5

    goto :goto_2
.end method

.method private insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "4b34ff"

    const v5, 0x4d283792    # 1.7638838E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "a46ec9"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionController;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x14t
        0x29t
        0x56t
        0x4dt
        0x36t
        0x7t
        0x40t
        0xat
        0x13t
        0x44t
        0x9t
        0x15t
        0x5dt
        0x16t
        0x5at
        0x5bt
        0x8t
        0x46t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x14t
        0x59t
        0x10t
        0x17t
        0x4at
        0x8t
        0x50t
        0x53t
        0x45t
        0xct
        0x5ft
        0x41t
        0x46t
        0x57t
        0xbt
        0x4t
        0x5ct
    .end array-data
.end method

.method private readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    return-void
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addKeys(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method buildBounds([FI)V
    .locals 12

    const/high16 v0, 0x3f800000    # 1.0f

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    div-float v8, v0, v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v0, :cond_4

    :goto_3
    const/4 v0, 0x0

    move v5, v0

    :goto_4
    if-ge v5, p2, :cond_9

    int-to-float v0, v5

    mul-float/2addr v0, v8

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_c

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    cmpl-float v3, v0, v2

    if-lez v3, :cond_c

    float-to-double v6, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v6, v10

    if-gez v3, :cond_c

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v0

    :goto_5
    float-to-double v6, v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    const/4 v2, 0x0

    const/high16 v0, 0x7fc00000    # Float.NaN

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v3

    move v3, v2

    move v2, v0

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v10, :cond_b

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v10, v10, v1

    if-gez v10, :cond_5

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v0, v2

    move v2, v3

    move-object v3, v4

    :goto_7
    move-object v4, v3

    move v3, v2

    move v2, v0

    goto :goto_6

    :cond_1
    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "562333"

    const-wide v4, -0x3e3d0dc88a800000L    # -6.35727595E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "7c1a13"

    const/16 v3, -0x7523

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "c20d10"

    const v3, -0x31f1ac2b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "b00564"

    const-wide/32 v4, -0x316af623

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    goto/16 :goto_3

    :cond_5
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_b

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v0, v2

    move v2, v3

    move-object v3, v4

    goto :goto_7

    :cond_6
    if-eqz v4, :cond_a

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_7
    sub-float v0, v2, v3

    sub-float/2addr v1, v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-double v0, v0

    :goto_8
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v2, v0, v1, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v2, :cond_8

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v4, v3

    if-lez v4, :cond_8

    invoke-virtual {v2, v0, v1, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v3, v5, 0x2

    invoke-virtual {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_4

    :cond_9
    return-void

    :cond_a
    move-wide v0, v6

    goto :goto_8

    :cond_b
    move v0, v2

    move v2, v3

    move-object v3, v4

    goto/16 :goto_7

    :cond_c
    move v1, v0

    goto/16 :goto_5

    nop

    :array_0
    .array-data 1
        0x41t
        0x44t
        0x53t
        0x5dt
        0x40t
        0x5ft
        0x54t
        0x42t
        0x5bt
        0x5ct
        0x5dt
        0x6bt
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x11t
        0x50t
        0xft
        0x42t
        0x5ft
        0x56t
        0x17t
        0x58t
        0xet
        0x5ft
        0x6at
    .end array-data

    :array_2
    .array-data 1
        0x17t
        0x40t
        0x51t
        0xat
        0x42t
        0x5ct
        0x2t
        0x46t
        0x59t
        0xbt
        0x5ft
        0x68t
    .end array-data

    :array_3
    .array-data 1
        0x16t
        0x42t
        0x51t
        0x5bt
        0x45t
        0x58t
        0x3t
        0x44t
        0x59t
        0x5at
        0x58t
        0x6dt
    .end array-data
.end method

.method buildKeyBounds([F[I)I
    .locals 8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v3

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    aput v0, p2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    move v1, v2

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v4, v4, v2

    aget-wide v6, v3, v1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v6, v7, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    div-int/lit8 v2, v0, 0x2

    :cond_2
    return v2
.end method

.method buildKeyFrames([F[I)I
    .locals 10

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v9

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v8

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    aput v0, p2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v7, v8

    move v0, v8

    :goto_1
    array-length v1, v9

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v8

    aget-wide v2, v9, v0

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aget-wide v2, v9, v0

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    div-int/lit8 v8, v7, 0x2

    :cond_2
    return v8
.end method

.method buildPath([FI)V
    .locals 18

    const/high16 v2, 0x3f800000    # 1.0f

    add-int/lit8 v3, p2, -0x1

    int-to-float v3, v3

    div-float v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object v10, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object v11, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move-object v12, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v2, :cond_4

    move-object v13, v3

    :goto_3
    const/4 v2, 0x0

    move v15, v2

    :goto_4
    move/from16 v0, p2

    if-ge v15, v0, :cond_f

    int-to-float v2, v15

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v5, v2, v4

    if-gez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    cmpl-float v5, v2, v4

    if-lez v5, :cond_5

    float-to-double v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_5

    sub-float/2addr v2, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v14, v2

    :goto_5
    float-to-double v6, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v3, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v9, :cond_11

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v9, v9, v14

    if-gez v9, :cond_7

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move/from16 v17, v4

    move-object v4, v3

    move/from16 v3, v17

    :goto_7
    move-object v5, v4

    move v4, v3

    move v3, v2

    goto :goto_6

    :cond_1
    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "1a12f8"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-object v10, v2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "4e5bc1"

    const-wide/32 v6, 0x2aaa9db1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-object v11, v2

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "78cf60"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-object v12, v2

    goto/16 :goto_2

    :cond_4
    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "1d0a96"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-object v13, v2

    goto/16 :goto_3

    :cond_5
    move v14, v2

    goto/16 :goto_5

    :cond_6
    move v14, v2

    goto/16 :goto_5

    :cond_7
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_11

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move-object v4, v5

    move/from16 v17, v2

    move v2, v3

    move/from16 v3, v17

    goto :goto_7

    :cond_8
    if-eqz v5, :cond_10

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_9
    sub-float v2, v4, v3

    sub-float v6, v14, v3

    sub-float/2addr v4, v3

    div-float v4, v6, v4

    float-to-double v6, v4

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-double v4, v2

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v6, v3

    if-lez v6, :cond_a

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v9, v15, 0x2

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    if-eqz v12, :cond_d

    mul-int/lit8 v2, v15, 0x2

    aget v3, p1, v2

    invoke-virtual {v12, v14}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    move-result v4

    add-float/2addr v3, v4

    aput v3, p1, v2

    :cond_b
    :goto_9
    if-eqz v13, :cond_e

    mul-int/lit8 v2, v15, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v3, p1, v2

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    move-result v4

    add-float/2addr v3, v4

    aput v3, p1, v2

    :cond_c
    :goto_a
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto/16 :goto_4

    :cond_d
    if-eqz v10, :cond_b

    mul-int/lit8 v2, v15, 0x2

    aget v3, p1, v2

    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v4

    add-float/2addr v3, v4

    aput v3, p1, v2

    goto :goto_9

    :cond_e
    if-eqz v11, :cond_c

    mul-int/lit8 v2, v15, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v3, p1, v2

    invoke-virtual {v11, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v4

    add-float/2addr v3, v4

    aput v3, p1, v2

    goto :goto_a

    :cond_f
    return-void

    :cond_10
    move-wide v4, v6

    goto :goto_8

    :cond_11
    move v2, v3

    move v3, v4

    move-object v4, v5

    goto/16 :goto_7

    nop

    :array_0
    .array-data 1
        0x45t
        0x13t
        0x50t
        0x5ct
        0x15t
        0x54t
        0x50t
        0x15t
        0x58t
        0x5dt
        0x8t
        0x60t
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x17t
        0x54t
        0xct
        0x10t
        0x5dt
        0x55t
        0x11t
        0x5ct
        0xdt
        0xdt
        0x68t
    .end array-data

    :array_2
    .array-data 1
        0x43t
        0x4at
        0x2t
        0x8t
        0x45t
        0x5ct
        0x56t
        0x4ct
        0xat
        0x9t
        0x58t
        0x68t
    .end array-data

    :array_3
    .array-data 1
        0x45t
        0x16t
        0x51t
        0xft
        0x4at
        0x5at
        0x50t
        0x10t
        0x59t
        0xet
        0x57t
        0x6ft
    .end array-data
.end method

.method buildRect(F[FI)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    float-to-double v2, v0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0, v1, v2, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    return-void
.end method

.method buildRectangles([FI)V
    .locals 8

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    add-int/lit8 v2, p2, -0x1

    int-to-float v2, v2

    div-float v2, v0, v2

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    int-to-float v3, v0

    mul-float/2addr v3, v2

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v4, v4, v1

    float-to-double v6, v3

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v6, v7, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v6, v0, 0x8

    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method endTrigger(Z)V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "534646"

    const-wide/32 v2, -0x142b059a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-eqz p1, :cond_0

    const/high16 v1, -0x3d380000    # -100.0f

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x46t
        0x40t
        0x42t
        0x5bt
        0x58t
    .end array-data
.end method

.method public getAnimateRelativeTo()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    return v0
.end method

.method getAttributeValues(Ljava/lang/String;[FI)I
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    div-int v2, v1, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    array-length v0, p2

    goto :goto_0
.end method

.method public getCenter(D[F[F)V
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v5, v0, [D

    new-array v7, v0, [D

    new-array v0, v0, [I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    const/4 v0, 0x0

    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    move-wide v2, p1

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[F[D[F)V

    return-void
.end method

.method public getCenterX()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurrentCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurrentCenterY:F

    return v0
.end method

.method getDpDt(FFF[F)V
    .locals 10

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v2, :cond_3

    aget-object v2, v2, v0

    float-to-double v4, v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v2, v2, v0

    float-to-double v4, v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    aget v2, v2, v0

    :goto_0
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v3, v5

    if-ge v0, v3, :cond_0

    aget-wide v6, v5, v0

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v6, v8

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_1

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v2, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move v1, p2

    move v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move v1, p2

    move v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v7, v8, p2

    mul-float/2addr v7, v1

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    mul-float/2addr v1, p2

    add-float/2addr v1, v7

    aput v1, p4, v0

    const/4 v0, 0x1

    sub-float v1, v8, p3

    mul-float/2addr v1, v2

    sub-float v3, v5, v6

    add-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    aput v1, p4, v0

    goto :goto_1
.end method

.method public getDrawPath()I
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getFinalHeight()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    return v0
.end method

.method public getFinalWidth()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    return v0
.end method

.method public getFinalX()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    return v0
.end method

.method public getFinalY()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    return v0
.end method

.method getKeyFrame(I)Landroidx/constraintlayout/motion/widget/MotionPaths;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    return-object v0
.end method

.method public getKeyFrameInfo(I[I)I
    .locals 12

    const/4 v7, 0x0

    const/4 v0, 0x2

    new-array v6, v0, [F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v7

    move v9, v7

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/Key;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    if-eq v1, p1, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    :cond_1
    aput v7, p2, v8

    add-int/lit8 v1, v8, 0x1

    iget v2, v0, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    aput v2, p2, v1

    add-int/lit8 v11, v1, 0x1

    iget v1, v0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    aput v1, p2, v11

    iget v1, v0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v1, v2

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v7

    float-to-double v4, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v4, v5, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    float-to-double v2, v2

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    add-int/lit8 v1, v11, 0x1

    aget v2, v6, v7

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    aget v2, v6, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    aput v2, p2, v1

    instance-of v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v2, :cond_2

    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyPosition;

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    iget v0, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    aput v0, p2, v1

    :cond_2
    move v0, v1

    add-int/lit8 v0, v0, 0x1

    sub-int v1, v0, v8

    aput v1, p2, v8

    add-int/lit8 v1, v9, 0x1

    move v8, v0

    move v9, v1

    goto :goto_0

    :cond_3
    return v9
.end method

.method getKeyFrameParameter(IFF)F
    .locals 12

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    div-float/2addr v4, v7

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr v6, v7

    float-to-double v8, v1

    float-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v7, v8

    float-to-double v8, v7

    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    const/high16 v0, 0x7fc00000    # Float.NaN

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-float/2addr v3, v4

    sub-float v3, p2, v3

    add-float v4, v5, v6

    sub-float v4, p3, v4

    float-to-double v8, v3

    float-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v5, v8

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_0

    mul-float v5, v3, v1

    mul-float v6, v4, v2

    add-float/2addr v5, v6

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    div-float v0, v5, v7

    goto :goto_0

    :pswitch_1
    div-float v0, v4, v2

    goto :goto_0

    :pswitch_2
    div-float v0, v3, v2

    goto :goto_0

    :pswitch_3
    div-float v0, v4, v1

    goto :goto_0

    :pswitch_4
    div-float v0, v3, v1

    goto :goto_0

    :pswitch_5
    mul-float v0, v7, v7

    mul-float v1, v5, v5

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getKeyFramePositions([I[F)I
    .locals 11

    const/4 v8, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v8

    move v9, v8

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/Key;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    aput v1, p1, v9

    iget v0, v0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v8

    float-to-double v2, v0

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    float-to-double v2, v0

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    return v9
.end method

.method getPos(D)[D
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v2, v1

    if-lez v2, :cond_0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    return-object v0
.end method

.method getPositionKeyframe(IIFF)Landroidx/constraintlayout/motion/widget/KeyPositionBase;
    .locals 9

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v0, v3, Landroid/graphics/RectF;->top:F

    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->right:F

    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v0, v4, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v0, v4, Landroid/graphics/RectF;->top:F

    iget v0, v4, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/RectF;->right:F

    iget v0, v4, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v0, v7, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method getPostLayoutDvDp(FIIFF[F)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/4 v12, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object v4, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move-object v5, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    move-object v6, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    move-object v7, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    move-object v8, v2

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    move-object v9, v2

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    move-object v10, v2

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v2, :cond_9

    const/4 v2, 0x0

    move-object v11, v2

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v2, :cond_a

    move-object v2, v12

    :goto_9
    new-instance v12, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    invoke-direct {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;-><init>()V

    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    invoke-virtual {v12, v5, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    invoke-virtual {v12, v3, v4, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    invoke-virtual {v12, v6, v7, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    invoke-virtual {v12, v10, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    invoke-virtual {v12, v8, v9, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    invoke-virtual {v12, v11, v2, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_0

    float-to-double v4, v13

    invoke-virtual {v14, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v4, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    :cond_0
    move-object v2, v12

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    :goto_a
    return-void

    :cond_1
    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "22e864"

    const-wide v6, 0x41ccd09ea5000000L    # 9.66868298E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-object v3, v2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "72a2ec"

    const-wide v6, 0x41dffe6956400000L    # 2.147067225E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-object v4, v2

    goto/16 :goto_1

    :cond_3
    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "e42e8e"

    const v7, -0x31879aeb

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-object v5, v2

    goto/16 :goto_2

    :cond_4
    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_3

    const-string v7, "84a009"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-object v6, v2

    goto/16 :goto_3

    :cond_5
    const/4 v7, 0x6

    new-array v7, v7, [B

    fill-array-data v7, :array_4

    const-string v8, "357dbc"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-object v7, v2

    goto/16 :goto_4

    :cond_6
    const/16 v8, 0xc

    new-array v8, v8, [B

    fill-array-data v8, :array_5

    const-string v9, "4c340d"

    const/16 v10, 0x7d00

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-object v8, v2

    goto/16 :goto_5

    :cond_7
    const/16 v9, 0xc

    new-array v9, v9, [B

    fill-array-data v9, :array_6

    const-string v10, "4921b2"

    const-wide v14, 0x41d3a3cd9c800000L    # 1.318008434E9

    invoke-static {v9, v10, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-object v9, v2

    goto/16 :goto_6

    :cond_8
    const/16 v10, 0x8

    new-array v10, v10, [B

    fill-array-data v10, :array_7

    const-string v11, "80b4d6"

    const/16 v14, 0x4e27

    invoke-static {v10, v11, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-object v10, v2

    goto/16 :goto_7

    :cond_9
    const/4 v11, 0x6

    new-array v11, v11, [B

    fill-array-data v11, :array_8

    const-string v14, "f9bb24"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v11, v14, v15, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-object v11, v2

    goto/16 :goto_8

    :cond_a
    const/4 v12, 0x6

    new-array v12, v12, [B

    fill-array-data v12, :array_9

    const-string v14, "c3dd0b"

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    goto/16 :goto_9

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    float-to-double v4, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    float-to-double v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v2, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v4, v7

    if-ge v2, v4, :cond_c

    aget-wide v4, v7, v2

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v4, v8

    aput-wide v4, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    move-object v2, v12

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    goto/16 :goto_a

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v21, v21, p4

    mul-float v21, v21, v14

    sub-float v16, v16, v17

    add-float v14, v14, v16

    mul-float v14, v14, p4

    add-float v14, v14, v21

    aput v14, p6, v20

    const/4 v14, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, p5

    mul-float v16, v16, v15

    sub-float v17, v18, v19

    add-float v15, v15, v17

    mul-float v15, v15, p5

    add-float v15, v15, v16

    aput v15, p6, v14

    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    invoke-virtual {v12, v5, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    invoke-virtual {v12, v3, v4, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    invoke-virtual {v12, v6, v7, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    invoke-virtual {v12, v10, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    invoke-virtual {v12, v8, v9, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    invoke-virtual {v12, v11, v2, v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    move-object v2, v12

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    goto/16 :goto_a

    :array_0
    .array-data 1
        0x46t
        0x40t
        0x4t
        0x56t
        0x45t
        0x58t
        0x53t
        0x46t
        0xct
        0x57t
        0x58t
        0x6ct
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x40t
        0x0t
        0x5ct
        0x16t
        0xft
        0x56t
        0x46t
        0x8t
        0x5dt
        0xbt
        0x3at
    .end array-data

    :array_2
    .array-data 1
        0x17t
        0x5bt
        0x46t
        0x4t
        0x4ct
        0xct
        0xat
        0x5at
    .end array-data

    :array_3
    .array-data 1
        0x4bt
        0x57t
        0x0t
        0x5ct
        0x55t
        0x61t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x40t
        0x56t
        0x56t
        0x8t
        0x7t
        0x3at
    .end array-data

    nop

    :array_5
    .array-data 1
        0x40t
        0x11t
        0x52t
        0x5at
        0x43t
        0x8t
        0x55t
        0x17t
        0x5at
        0x5bt
        0x5et
        0x3ct
    .end array-data

    :array_6
    .array-data 1
        0x40t
        0x4bt
        0x53t
        0x5ft
        0x11t
        0x5et
        0x55t
        0x4dt
        0x5bt
        0x5et
        0xct
        0x6bt
    .end array-data

    :array_7
    .array-data 1
        0x4at
        0x5ft
        0x16t
        0x55t
        0x10t
        0x5ft
        0x57t
        0x5et
    .end array-data

    :array_8
    .array-data 1
        0x15t
        0x5at
        0x3t
        0xet
        0x57t
        0x6ct
    .end array-data

    nop

    :array_9
    .array-data 1
        0x10t
        0x50t
        0x5t
        0x8t
        0x55t
        0x3bt
    .end array-data
.end method

.method public getStartHeight()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    return v0
.end method

.method public getStartWidth()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    return v0
.end method

.method public getStartX()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    return v0
.end method

.method public getStartY()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    return v0
.end method

.method public getTransformPivotTarget()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    return-object v0
.end method

.method interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 13

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v0, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    int-to-float v1, v1

    div-float v1, v0, v1

    div-float v0, v3, v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v2, v4

    rem-float v0, v3, v1

    div-float/2addr v0, v1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    rem-float/2addr v0, v3

    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_2

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :goto_0
    mul-float/2addr v0, v1

    mul-float/2addr v1, v2

    add-float v3, v0, v1

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/utils/ViewSpline;

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setProperty(Landroid/view/View;F)V

    goto :goto_1

    :cond_2
    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v4, v6

    if-lez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v7, v1

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    if-eqz v2, :cond_5

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    move-object v7, v1

    goto :goto_2

    :cond_5
    move-object v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_2

    :cond_6
    move v10, v0

    move-object v0, v7

    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v1, :cond_13

    const/4 v2, 0x0

    aget-object v1, v1, v2

    float-to-double v4, v3

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    float-to-double v4, v3

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v1, :cond_7

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v4, v2

    if-lez v4, :cond_7

    float-to-double v4, v3

    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v4, v3

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    :cond_7
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    if-nez v1, :cond_8

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v8, 0x0

    iget-boolean v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setView(FLandroid/view/View;[I[D[D[DZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    :cond_8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    if-nez v1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    :cond_9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    sub-float/2addr v1, v5

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_b

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    const/4 v6, 0x1

    aget-wide v6, v2, v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;->setPathRotate(Landroid/view/View;FDD)V

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    const/4 v7, 0x0

    move v10, v0

    move-object v0, v7

    goto/16 :goto_3

    :cond_d
    if-eqz v0, :cond_e

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v2, 0x0

    aget-wide v6, v1, v2

    const/4 v2, 0x1

    aget-wide v8, v1, v2

    move-object v1, p1

    move-object/from16 v2, p5

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v9}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;->setPathRotate(Landroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;FJDD)Z

    move-result v0

    or-int/2addr v10, v0

    :cond_e
    const/4 v0, 0x1

    move v1, v0

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    array-length v2, v0

    if-ge v1, v2, :cond_f

    aget-object v0, v0, v1

    float-to-double v4, v3

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    invoke-virtual {v0, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v0, :cond_10

    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_11

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, p1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_12

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eq v0, v1, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v9, v0

    float-to-int v9, v9

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v11, v1

    float-to-int v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v0, v12

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    sub-float v2, v7, v8

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_14

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_14

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    if-eqz v2, :cond_15

    :cond_14
    sub-int v2, v0, v9

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v4, v1, v11

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    :cond_15
    invoke-virtual {p1, v9, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    instance-of v2, v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    if-eqz v2, :cond_17

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    const/4 v6, 0x1

    aget-wide v6, v2, v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;->setPathRotate(Landroid/view/View;FDD)V

    goto :goto_8

    :cond_17
    invoke-virtual {v1, p1, v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setProperty(Landroid/view/View;F)V

    goto :goto_8

    :cond_18
    return v10
.end method

.method name()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method positionKeyframe(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyPositionBase;FF[Ljava/lang/String;[F)V
    .locals 8

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v0, v2, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v0, v2, Landroid/graphics/RectF;->top:F

    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v0, v3, Landroid/graphics/RectF;->top:F

    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->right:F

    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p2

    move-object v1, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    return-void
.end method

.method public remeasure()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    return-void
.end method

.method rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 5

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    iput v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p5, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    iput v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p5, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setBothStates(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    return-void
.end method

.method public setDrawPath(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    return-void
.end method

.method setEndState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget v3, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {v0, p1, p2, v3, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    return-void
.end method

.method public setPathMotionArc(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    return-void
.end method

.method setStartCurrentState(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    return-void
.end method

.method setStartState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 7

    const/4 v6, 0x0

    iget v3, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {v1, p1, p2, v3, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    invoke-static {v1, v2, v3, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getInterpolator(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setStartState(Landroidx/constraintlayout/motion/utils/ViewState;Landroid/view/View;III)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    packed-switch p3, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v2, p1, Landroidx/constraintlayout/motion/utils/ViewState;->rotation:F

    invoke-virtual {v1, v0, p2, p3, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroid/view/View;IF)V

    return-void

    :pswitch_0
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    iget v2, p1, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    iget v3, p1, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    iget v4, p1, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result v5

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    iget v2, p1, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    iget v3, p1, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    iget v4, p1, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result v3

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p4, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTransformPivotTarget(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mConstraintTag:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setup(IIFJ)V
    .locals 16

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    sget v4, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v3, v4, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v3, :cond_2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/motion/widget/KeyPosition;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    sget v3, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v2, v3, :cond_1

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    :cond_1
    move-object v2, v8

    :goto_1
    move-object v8, v2

    goto :goto_0

    :cond_2
    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v3, :cond_3

    invoke-virtual {v2, v11}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    move-object v2, v8

    goto :goto_1

    :cond_3
    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v3, :cond_4

    invoke-virtual {v2, v9}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    move-object v2, v8

    goto :goto_1

    :cond_4
    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v3, :cond_5

    if-nez v8, :cond_3a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    invoke-virtual {v2, v10}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    move-object v2, v8

    goto :goto_1

    :cond_6
    move-object v8, v2

    :cond_7
    if-eqz v8, :cond_8

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    :cond_8
    invoke-virtual {v10}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "367001"

    const/16 v6, -0x25d8

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v7, 0x1d

    aput-byte v7, v3, v4

    const-string v4, "16110a"

    const/16 v7, 0x490a

    invoke-static {v3, v4, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v7, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-eqz v4, :cond_a

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v4, :cond_a

    iget v3, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v6, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_4

    :cond_b
    invoke-static {v2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    move-result-object v3

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v4, v2, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-eqz v2, :cond_10

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    goto :goto_7

    :cond_11
    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v2, :cond_12

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    :cond_12
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "e641e4"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v7, 0x18

    aput-byte v7, v3, v4

    const-string v4, "4e553d"

    const-wide v8, -0x3e533696bc000000L    # -2.41480866E8

    invoke-static {v3, v4, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v7, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_14
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-eqz v4, :cond_14

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v4, :cond_14

    iget v3, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v6, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_a

    :cond_15
    invoke-static {v2, v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    move-result-object v3

    :goto_b
    if-eqz v3, :cond_13

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_16
    move-wide/from16 v0, p4

    invoke-static {v2, v0, v1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    move-result-object v3

    goto :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v4, v2, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v4, :cond_18

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    goto :goto_c

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setup(I)V

    goto :goto_d

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-array v8, v2, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v4, v8, v3

    array-length v3, v8

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v4, v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v2, v8, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e

    :cond_1d
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x7

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    const-string v7, "4d5052"

    const-wide/32 v12, -0x572be286

    invoke-static {v6, v7, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_10
    invoke-virtual {v10, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1f
    new-instance v3, Ljava/lang/String;

    const/4 v6, 0x7

    new-array v6, v6, [B

    fill-array-data v6, :array_3

    const-string v7, "374795"

    const-wide v12, -0x3e23a519edc00000L    # -1.902876745E9

    invoke-static {v6, v7, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_20
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    const/4 v2, 0x0

    move v4, v2

    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v4, v3, :cond_23

    aget-object v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    const/4 v3, 0x0

    aput v3, v2, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    array-length v2, v8

    if-ge v3, v2, :cond_21

    aget-object v2, v8, v3

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    aget-object v2, v8, v3

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    aget v5, v3, v4

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v2

    add-int/2addr v2, v5

    aput v2, v3, v4

    :cond_21
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_11

    :cond_22
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_12

    :cond_23
    const/4 v2, 0x0

    aget-object v2, v8, v2

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    sget v3, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v2, v3, :cond_24

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x12

    new-array v4, v3, [Z

    const/4 v3, 0x1

    :goto_14
    array-length v5, v8

    if-ge v3, v5, :cond_25

    aget-object v5, v8, v3

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v8, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    invoke-virtual {v5, v6, v4, v7, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_24
    const/4 v2, 0x0

    goto :goto_13

    :cond_25
    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_15
    array-length v5, v4

    if-ge v3, v5, :cond_27

    aget-boolean v5, v4, v3

    if-eqz v5, :cond_26

    add-int/lit8 v2, v2, 0x1

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_27
    new-array v3, v2, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v2, [D

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_16
    array-length v5, v4

    if-ge v2, v5, :cond_29

    aget-boolean v5, v4, v2

    if-eqz v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    aput v2, v5, v3

    add-int/lit8 v3, v3, 0x1

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_29
    array-length v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v3, v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    array-length v3, v8

    new-array v9, v3, [D

    const/4 v3, 0x0

    :goto_17
    array-length v4, v8

    if-ge v3, v4, :cond_2a

    aget-object v4, v8, v3

    aget-object v5, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->fillStandard([D[I)V

    aget-object v4, v8, v3

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v4, v4

    aput-wide v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2a
    const/4 v3, 0x0

    move v5, v3

    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v4, v3

    if-ge v5, v4, :cond_2c

    aget v3, v3, v5

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2b

    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    aget v4, v4, v5

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v6, "96c669"

    const-wide v12, 0x41d5daeeeec00000L    # 1.466678203E9

    invoke-static {v4, v6, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    :goto_19
    array-length v6, v8

    if-ge v3, v6, :cond_2b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aget-object v6, v2, v3

    aget-wide v6, v6, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x18

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2b
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_18

    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v3, 0x0

    move v7, v3

    :goto_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v3, v6

    if-ge v7, v3, :cond_2f

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v10, v6, v7

    const/4 v6, 0x0

    :goto_1b
    array-length v12, v8

    if-ge v6, v12, :cond_2e

    aget-object v12, v8, v6

    invoke-virtual {v12, v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_38

    if-nez v3, :cond_2d

    array-length v3, v8

    new-array v4, v3, [D

    array-length v3, v8

    aget-object v12, v8, v6

    invoke-virtual {v12, v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    move-result v12

    filled-new-array {v3, v12}, [I

    move-result-object v3

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    :cond_2d
    aget-object v12, v8, v6

    iget v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v12, v12

    aput-wide v12, v4, v5

    aget-object v12, v8, v6

    aget-object v13, v3, v5

    const/4 v14, 0x0

    invoke-virtual {v12, v10, v13, v14}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    add-int/lit8 v5, v5, 0x1

    move v15, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v15

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    move v15, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v15

    goto :goto_1b

    :cond_2e
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v4

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v10, v4, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v3

    aput-object v3, v5, v6

    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_1a

    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v5, v9, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x0

    aget-object v2, v8, v2

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    sget v3, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v2, v3, :cond_31

    array-length v4, v8

    new-array v5, v4, [I

    new-array v6, v4, [D

    const/4 v2, 0x2

    filled-new-array {v4, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v4, :cond_30

    aget-object v7, v8, v3

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    aput v7, v5, v3

    aget-object v7, v8, v3

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v12, v7

    aput-wide v12, v6, v3

    aget-object v7, v2, v3

    const/4 v9, 0x0

    aget-object v10, v8, v3

    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    float-to-double v12, v10

    aput-wide v12, v7, v9

    aget-object v7, v2, v3

    const/4 v9, 0x1

    aget-object v10, v8, v3

    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    float-to-double v12, v10

    aput-wide v12, v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_30
    invoke-static {v5, v6, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    :cond_31
    const/high16 v2, 0x7fc00000    # Float.NaN

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_37

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :cond_32
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-result-object v5

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->variesByPath()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionController;->getPreCycleDistance()F

    move-result v3

    :cond_33
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v5, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v5, :cond_35

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/motion/widget/KeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    goto :goto_1f

    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setup(F)V

    goto :goto_20

    :cond_37
    return-void

    :cond_38
    move v15, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v15

    goto/16 :goto_1c

    :cond_39
    move v3, v4

    goto/16 :goto_8

    :cond_3a
    move-object v3, v8

    goto/16 :goto_2

    nop

    :array_0
    .array-data 1
        0x70t
        0x63t
        0x64t
        0x64t
        0x7ft
        0x7ct
        0x1ft
    .end array-data

    :array_1
    .array-data 1
        0x26t
        0x63t
        0x67t
        0x65t
        0x2at
        0x79t
        0x49t
    .end array-data

    :array_2
    .array-data 1
        0x77t
        0x31t
        0x66t
        0x64t
        0x7at
        0x7ft
        0x18t
    .end array-data

    :array_3
    .array-data 1
        0x70t
        0x62t
        0x67t
        0x63t
        0x76t
        0x78t
        0x1ft
    .end array-data

    :array_4
    .array-data 1
        0x19t
        0x6dt
    .end array-data
.end method

.method public setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x58

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "d462f6"

    const-wide/32 v8, 0x34068de0

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-array v0, v10, [B

    fill-array-data v0, :array_1

    const-string v5, "642a1e"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v0, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "5dab2b"

    const v5, 0x4eb951d0

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-array v0, v10, [B

    fill-array-data v0, :array_3

    const-string v1, "9b85db"

    const v2, -0x31b23d65

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x44t
        0x47t
        0x42t
        0x53t
        0x14t
        0x42t
        0x5et
        0x14t
        0x4et
        0x8t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x4dt
        0x8t
        0x41t
    .end array-data

    :array_2
    .array-data 1
        0x15t
        0x1t
        0xft
        0x6t
        0x8t
        0x42t
        0x4dt
        0x5et
        0x41t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x19t
        0x1bt
        0x2t
        0x15t
    .end array-data
.end method
