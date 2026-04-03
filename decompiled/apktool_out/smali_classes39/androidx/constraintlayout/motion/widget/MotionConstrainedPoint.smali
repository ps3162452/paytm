.class Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field static final PERPENDICULAR:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field static names:[Ljava/lang/String;


# instance fields
.field private alpha:F

.field private applyElevation:Z

.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private elevation:F

.field private height:F

.field private mAnimateRelativeTo:I

.field private mDrawPath:I

.field private mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field private mPathRotate:F

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field mTempDelta:[D

.field mTempValue:[D

.field mVisibilityMode:I

.field private position:F

.field private rotation:F

.field private rotationX:F

.field public rotationY:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F

.field private translationZ:F

.field visibility:I

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "986197"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->TAG:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "f1b0bd"

    const v3, 0x4ea7cb20

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v5, [B

    const/16 v2, 0x4e

    aput-byte v2, v1, v4

    const-string v2, "64e040"

    invoke-static {v1, v2, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v2, v5, [B

    const/16 v3, 0x49

    aput-byte v3, v2, v4

    const-string v3, "03dd3b"

    const v4, -0x3115fa1d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v6, [B

    fill-array-data v2, :array_2

    const-string v3, "5ee231"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [B

    fill-array-data v2, :array_3

    const-string v3, "458096"

    const-wide/32 v4, 0x698b9e7c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "d95418"

    const v3, -0x3158761f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->names:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x57t
        0x42t
        0x58t
        0x56t
        0x59t
        0x69t
        0x59t
        0x42t
        0x59t
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x5et
        0x11t
        0x59t
        0x16t
        0xdt
        0x9t
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        0x42t
        0xct
        0x1t
        0x46t
        0x5bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5ct
        0x50t
        0x51t
        0x57t
        0x51t
        0x42t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x14t
        0x58t
        0x41t
        0x5ct
        0x63t
        0x57t
        0x10t
        0x58t
        0x41t
        0x51t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x12

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyElevation:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mDrawPath:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAnimateRelativeTo:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mMode:I

    new-array v0, v4, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTempValue:[D

    new-array v0, v4, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTempDelta:[D

    return-void
.end method

.method private diff(FF)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eq v2, v3, :cond_3

    :cond_1
    :goto_0
    return v0

    :cond_2
    sub-float v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x358637bd    # 1.0E-6f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewSpline;

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move/from16 v16, v4

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x0

    packed-switch v16, :pswitch_data_0

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "3881c9"

    const-wide v6, 0x41b2140250000000L    # 3.033012E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/16 v6, 0x14

    aput-byte v6, v4, v5

    const-string v5, "86b299"

    const/16 v6, -0x946

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    instance-of v5, v3, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    if-eqz v5, :cond_10

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V

    goto :goto_0

    :sswitch_0
    const/4 v5, 0x5

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "7a236f"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_1

    :sswitch_1
    const/16 v5, 0x14

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "969e58"

    const/16 v7, 0x20ee

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x7

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_2
    const/16 v5, 0x9

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "f872dc"

    const v7, -0x31c1a9b2

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_3
    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "c2e870"

    const-wide/32 v8, 0x511ac510

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_4
    const/16 v5, 0xf

    new-array v5, v5, [B

    fill-array-data v5, :array_5

    const-string v6, "b96406"

    const-wide/32 v8, -0x46a37fdf

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x6

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_5
    const/16 v5, 0xf

    new-array v5, v5, [B

    fill-array-data v5, :array_6

    const-string v6, "b49529"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x5

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_6
    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_7

    const-string v6, "3b185b"

    const-wide v8, -0x3e4d067151000000L    # -3.18344879E8

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xa

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_7
    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_8

    const-string v6, "397470"

    const-wide v8, -0x3e4051e659000000L    # -5.31503527E8

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x9

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_8
    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_9

    const-string v6, "8f8a4b"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x8

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_9
    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_a

    const-string v6, "4a1ba9"

    const v7, 0x4d65a1a8    # 2.4078605E8f

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xd

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_a
    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_b

    const-string v6, "b93633"

    const v7, 0x4eff387a

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xc

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_b
    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_c

    const-string v6, "3cb569"

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xb

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_c
    const/16 v5, 0x9

    new-array v5, v5, [B

    fill-array-data v5, :array_d

    const-string v6, "c32726"

    const/16 v7, 0x61fb

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x4

    move/from16 v16, v4

    goto/16 :goto_1

    :sswitch_d
    const/16 v5, 0x9

    new-array v5, v5, [B

    fill-array-data v5, :array_e

    const-string v6, "18f55e"

    const v7, -0x31cf2f51

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x3

    move/from16 v16, v4

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    :goto_3
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    :goto_4
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v7

    :goto_5
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    goto :goto_5

    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_6
    move/from16 v0, p2

    invoke-virtual {v3, v0, v7}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    goto :goto_6

    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v8

    :goto_7
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    goto :goto_7

    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v9

    :goto_8
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    goto :goto_8

    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v10

    :goto_9
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    goto :goto_9

    :pswitch_8
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v11

    :goto_a
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    goto :goto_a

    :pswitch_9
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v12

    :goto_b
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    goto :goto_b

    :pswitch_a
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v13

    :goto_c
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    goto :goto_c

    :pswitch_b
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v14

    :goto_d
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    goto :goto_d

    :pswitch_c
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v15

    :goto_e
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    goto :goto_e

    :pswitch_d
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_f
    move/from16 v0, p2

    invoke-virtual {v3, v0, v7}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    goto :goto_f

    :cond_10
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_f

    const-string v6, "e27ec5"

    const-wide v8, 0x41dede7269400000L    # 2.071579045E9

    invoke-static {v2, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_10

    const-string v6, "b354b4"

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_11

    const-string v4, "08592d"

    const v5, 0x4e8dbed5

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_10
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_12

    const-string v4, "c6b20c"

    const-wide/32 v6, 0xe58bc3a

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_13
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x70t
        0x6dt
        0x6bt
        0x65t
        0x2ct
        0x74t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x56t
        0xdt
        0x42t
        0x5bt
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4dt
        0x44t
        0x58t
        0xbt
        0x46t
        0x51t
        0x4dt
        0x5ft
        0x56t
        0xbt
        0x65t
        0x59t
        0x4dt
        0x5et
        0x6bt
        0xat
        0x41t
        0x59t
        0x4dt
        0x53t
    .end array-data

    :array_3
    .array-data 1
        0x3t
        0x54t
        0x52t
        0x44t
        0x5t
        0x17t
        0xft
        0x57t
        0x59t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x11t
        0x5dt
        0x11t
        0x59t
        0x43t
        0x59t
        0xct
        0x5ct
    .end array-data

    :array_5
    .array-data 1
        0x16t
        0x4bt
        0x57t
        0x5at
        0x43t
        0x50t
        0xdt
        0x4bt
        0x5bt
        0x64t
        0x59t
        0x40t
        0xdt
        0x4dt
        0x6ft
    .end array-data

    :array_6
    .array-data 1
        0x16t
        0x46t
        0x58t
        0x5bt
        0x41t
        0x5ft
        0xdt
        0x46t
        0x54t
        0x65t
        0x5bt
        0x4ft
        0xdt
        0x40t
        0x61t
    .end array-data

    :array_7
    .array-data 1
        0x40t
        0x1t
        0x50t
        0x54t
        0x50t
        0x3bt
    .end array-data

    nop

    :array_8
    .array-data 1
        0x40t
        0x5at
        0x56t
        0x58t
        0x52t
        0x68t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x48t
        0x14t
        0x57t
        0x6t
        0x46t
        0x7t
        0x4bt
        0x15t
    .end array-data

    :array_a
    .array-data 1
        0x40t
        0x13t
        0x50t
        0xct
        0x12t
        0x55t
        0x55t
        0x15t
        0x58t
        0xdt
        0xft
        0x63t
    .end array-data

    :array_b
    .array-data 1
        0x16t
        0x4bt
        0x52t
        0x58t
        0x40t
        0x5ft
        0x3t
        0x4dt
        0x5at
        0x59t
        0x5dt
        0x6at
    .end array-data

    :array_c
    .array-data 1
        0x47t
        0x11t
        0x3t
        0x5bt
        0x45t
        0x55t
        0x52t
        0x17t
        0xbt
        0x5at
        0x58t
        0x61t
    .end array-data

    :array_d
    .array-data 1
        0x11t
        0x5ct
        0x46t
        0x56t
        0x46t
        0x5ft
        0xct
        0x5dt
        0x6bt
    .end array-data

    nop

    :array_e
    .array-data 1
        0x43t
        0x57t
        0x12t
        0x54t
        0x41t
        0xct
        0x5et
        0x56t
        0x3et
    .end array-data

    nop

    :array_f
    .array-data 1
        0x45t
        0x64t
        0x5et
        0x0t
        0x14t
        0x66t
        0x15t
        0x5et
        0x5et
        0xbt
        0x6t
        0x15t
        0xbt
        0x5dt
        0x43t
        0x45t
        0x2t
        0x15t
        0x26t
        0x47t
        0x44t
        0x11t
        0xct
        0x58t
        0x36t
        0x57t
        0x43t
        0x45t
        0x5t
        0x47t
        0x4t
        0x5ft
        0x52t
        0x45t
        0x5et
        0x15t
    .end array-data

    :array_10
    .array-data 1
        0x4et
        0x13t
        0x43t
        0x55t
        0xet
        0x41t
        0x7t
    .end array-data

    :array_11
    .array-data 1
        0x65t
        0x76t
        0x7et
        0x77t
        0x7dt
        0x33t
        0x7et
        0x18t
        0x46t
        0x49t
        0x5et
        0xdt
        0x5et
        0x5dt
        0x15t
    .end array-data

    :array_12
    .array-data 1
        0x36t
        0x78t
        0x29t
        0x7ct
        0x7ft
        0x34t
        0x2dt
        0x16t
        0x11t
        0x42t
        0x5ct
        0xat
        0xdt
        0x53t
        0x42t
    .end array-data
.end method

.method public applyParameters(Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x15

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyElevation:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0
.end method

.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 4

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyElevation:Z

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mDrawPath:I

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAnimateRelativeTo:I

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->isContinuous()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;)I
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->compareTo(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;)I

    move-result v0

    return v0
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x5

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    const-string v1, "970f30"

    const v2, 0x4ee41c30

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    const-string v1, "1b09c6"

    invoke-static {v0, v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eq v0, v1, :cond_3

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "d0ef58"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "a9999c"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "52d9a3"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "34c7a5"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    new-array v0, v5, [B

    fill-array-data v0, :array_6

    const-string v1, "f25ea6"

    const/16 v2, -0x77ea

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    new-array v0, v5, [B

    fill-array-data v0, :array_7

    const-string v1, "b5eeac"

    const/16 v2, -0x24f9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "787603"

    const v2, 0x4df2d3bd    # 5.0924534E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "0c0465"

    invoke-static {v0, v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "e2e528"

    invoke-static {v0, v1, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "646905"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    new-array v0, v6, [B

    fill-array-data v0, :array_c

    const-string v1, "df279b"

    const-wide v2, 0x41bfc4dfe3000000L    # 5.32996067E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    new-array v0, v6, [B

    fill-array-data v0, :array_d

    const-string v1, "7e9e96"

    const v2, 0x4ef8c5f6

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    new-array v0, v6, [B

    fill-array-data v0, :array_e

    const-string v1, "01ab1a"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void

    :array_0
    .array-data 1
        0x58t
        0x5bt
        0x40t
        0xet
        0x52t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x54t
        0xet
        0x55t
        0x4ft
        0x2t
        0x42t
        0x58t
        0xdt
        0x5et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5t
        0x5ct
        0x15t
        0xet
        0x54t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x13t
        0x56t
        0x4dt
        0x58t
        0x4dt
        0xat
        0xet
        0x57t
    .end array-data

    :array_4
    .array-data 1
        0x41t
        0x40t
        0x5t
        0x57t
        0x12t
        0x5at
        0x41t
        0x5bt
        0xbt
        0x57t
        0x31t
        0x52t
        0x41t
        0x5at
        0x36t
        0x56t
        0x15t
        0x52t
        0x41t
        0x57t
    .end array-data

    :array_5
    .array-data 1
        0x43t
        0x46t
        0xct
        0x50t
        0x13t
        0x50t
        0x40t
        0x47t
    .end array-data

    :array_6
    .array-data 1
        0x14t
        0x5dt
        0x41t
        0x4t
        0x15t
        0x5ft
        0x9t
        0x5ct
        0x6dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x10t
        0x5at
        0x11t
        0x4t
        0x15t
        0xat
        0xdt
        0x5bt
        0x3ct
    .end array-data

    nop

    :array_8
    .array-data 1
        0x43t
        0x4at
        0x56t
        0x58t
        0x43t
        0x55t
        0x58t
        0x4at
        0x5at
        0x66t
        0x59t
        0x45t
        0x58t
        0x4ct
        0x6ft
    .end array-data

    :array_9
    .array-data 1
        0x44t
        0x11t
        0x51t
        0x5at
        0x45t
        0x53t
        0x5ft
        0x11t
        0x5dt
        0x64t
        0x5ft
        0x43t
        0x5ft
        0x17t
        0x69t
    .end array-data

    :array_a
    .array-data 1
        0x16t
        0x51t
        0x4t
        0x59t
        0x57t
        0x60t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x45t
        0x57t
        0x57t
        0x55t
        0x55t
        0x6ct
    .end array-data

    nop

    :array_c
    .array-data 1
        0x10t
        0x14t
        0x53t
        0x59t
        0x4at
        0xet
        0x5t
        0x12t
        0x5bt
        0x58t
        0x57t
        0x3at
    .end array-data

    :array_d
    .array-data 1
        0x43t
        0x17t
        0x58t
        0xbt
        0x4at
        0x5at
        0x56t
        0x11t
        0x50t
        0xat
        0x57t
        0x6ft
    .end array-data

    :array_e
    .array-data 1
        0x44t
        0x43t
        0x0t
        0xct
        0x42t
        0xdt
        0x51t
        0x45t
        0x8t
        0xdt
        0x5ft
        0x3bt
    .end array-data
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;[Z[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    aget-boolean v1, p2, v4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    iget v3, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p2, v4

    const/4 v1, 0x2

    aget-boolean v2, p2, v0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    const/4 v0, 0x3

    aget-boolean v2, p2, v1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v1

    const/4 v1, 0x4

    aget-boolean v2, p2, v0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    aget-boolean v0, p2, v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    iget v3, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v2

    or-int/2addr v0, v2

    aput-boolean v0, p2, v1

    return-void
.end method

.method fillStandard([D[I)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x12

    new-array v2, v1, [F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    aput v1, v2, v0

    const/4 v1, 0x1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    aput v3, v2, v1

    const/4 v1, 0x2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    aput v3, v2, v1

    const/4 v1, 0x3

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

    aput v3, v2, v1

    const/4 v1, 0x4

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    aput v3, v2, v1

    const/4 v1, 0x5

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    aput v3, v2, v1

    const/4 v1, 0x6

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    aput v3, v2, v1

    const/4 v1, 0x7

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    aput v3, v2, v1

    const/16 v1, 0x8

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    aput v3, v2, v1

    const/16 v1, 0x9

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    aput v3, v2, v1

    const/16 v1, 0xa

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    aput v3, v2, v1

    const/16 v1, 0xb

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    aput v3, v2, v1

    const/16 v1, 0xc

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    aput v3, v2, v1

    const/16 v1, 0xd

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    aput v3, v2, v1

    const/16 v1, 0xe

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    aput v3, v2, v1

    const/16 v1, 0xf

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    aput v3, v2, v1

    const/16 v1, 0x10

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    aput v3, v2, v1

    const/16 v1, 0x11

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    aput v3, v2, v1

    move v1, v0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    aget v3, p2, v0

    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget v3, p2, v0

    aget v3, v2, v3

    float-to-double v4, v3

    aput-wide v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v0

    float-to-double v2, v0

    aput-wide v2, p2, p3

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v1

    new-array v2, v1, [F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    aget v3, v2, v0

    float-to-double v4, v3

    aput-wide v4, p2, p3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v0

    return v0
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setBounds(FFFF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    return-void
.end method

.method public setState(Landroid/graphics/Rect;Landroid/view/View;IF)V
    .locals 6

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x42b40000    # 90.0f

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroid/view/View;)V

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    add-float v0, v4, p4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    goto :goto_0

    :pswitch_1
    sub-float v0, p4, v4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 5

    const/high16 v4, 0x42b40000    # 90.0f

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    add-float/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    sub-float/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setState(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroid/view/View;)V

    return-void
.end method
