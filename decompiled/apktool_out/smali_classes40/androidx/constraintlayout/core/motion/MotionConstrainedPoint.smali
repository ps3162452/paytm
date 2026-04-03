.class Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;",
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

.field private elevation:F

.field private height:F

.field private mAnimateRelativeTo:I

.field mCustomVariable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "885dbe"

    invoke-static {v0, v1, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->TAG:Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "36493a"

    const-wide/32 v4, -0x30cc7496

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v6, [B

    const/16 v2, 0x1e

    aput-byte v2, v1, v7

    const-string v2, "fcf0bb"

    const v3, 0x4e4fd017    # 8.716303E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v6, [B

    const/16 v3, 0x1a

    aput-byte v3, v2, v7

    const-string v3, "c79b8b"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v8, [B

    fill-array-data v2, :array_2

    const-string v3, "ef2502"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v9, [B

    fill-array-data v2, :array_3

    const-string v3, "601ac5"

    const v4, 0x4e756926

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "7988cc"

    const/16 v3, 0x16d0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->names:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x75t
        0x57t
        0x41t
        0xdt
        0xdt
        0xbt
        0x68t
        0x59t
        0x41t
        0xct
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x59t
        0x47t
        0x50t
        0x47t
        0x8t
        0x5ct
        0x58t
    .end array-data

    :array_2
    .array-data 1
        0x12t
        0xft
        0x56t
        0x41t
        0x58t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5et
        0x55t
        0x58t
        0x6t
        0xbt
        0x41t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x47t
        0x58t
        0x4ct
        0x50t
        0x31t
        0xct
        0x43t
        0x58t
        0x4ct
        0x5dt
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

    iput v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    iput-boolean v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyElevation:Z

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    iput v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    iput v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mDrawPath:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mAnimateRelativeTo:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mMode:I

    new-array v0, v4, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mTempValue:[D

    new-array v0, v4, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mTempDelta:[D

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
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v15, v4

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

    const/4 v4, 0x0

    packed-switch v15, :pswitch_data_0

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "044623"

    const-wide/32 v6, -0x1a047cdd

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/16 v6, 0x18

    aput-byte v6, v4, v5

    const-string v5, "41df25"

    const v6, 0x4ea72903

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/CustomVariable;

    instance-of v5, v3, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    if-eqz v5, :cond_f

    check-cast v3, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    goto :goto_0

    :sswitch_0
    const/16 v5, 0xa

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "24a818"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x6

    move v15, v4

    goto :goto_1

    :sswitch_1
    const/4 v5, 0x5

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "166312"

    const/16 v7, 0x4c1d

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    move v15, v4

    goto/16 :goto_1

    :sswitch_2
    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "71b85e"

    const v7, -0x321b0f82

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x9

    move v15, v4

    goto/16 :goto_1

    :sswitch_3
    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "38ba26"

    const-wide v8, -0x3e4cebf474000000L    # -3.2008078E8

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x8

    move v15, v4

    goto/16 :goto_1

    :sswitch_4
    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_5

    const-string v6, "9433e5"

    const-wide/32 v8, -0x5ec97ef8

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x5

    move v15, v4

    goto/16 :goto_1

    :sswitch_5
    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_6

    const-string v6, "fba6d4"

    const-wide/32 v8, -0x51114f21

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x4

    move v15, v4

    goto/16 :goto_1

    :sswitch_6
    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_7

    const-string v6, "451247"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x7

    move v15, v4

    goto/16 :goto_1

    :sswitch_7
    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_8

    const-string v6, "8587a3"

    const v7, -0x3258b636

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xc

    move v15, v4

    goto/16 :goto_1

    :sswitch_8
    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_9

    const-string v6, "372004"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xb

    move v15, v4

    goto/16 :goto_1

    :sswitch_9
    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_a

    const-string v6, "23b0bd"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xa

    move v15, v4

    goto/16 :goto_1

    :sswitch_a
    const/16 v5, 0x9

    new-array v5, v5, [B

    fill-array-data v5, :array_b

    const-string v6, "fb141b"

    const v7, -0x316cf58a

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    move v15, v4

    goto/16 :goto_1

    :sswitch_b
    const/16 v5, 0x9

    new-array v5, v5, [B

    fill-array-data v5, :array_c

    const-string v6, "d9522b"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x3

    move v15, v4

    goto/16 :goto_1

    :sswitch_c
    const/16 v5, 0x9

    new-array v5, v5, [B

    fill-array-data v5, :array_d

    const-string v6, "b9461f"

    const-wide v8, 0x41d0e28a14400000L    # 1.133127761E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    move v15, v4

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    :goto_3
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    :goto_4
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v7

    :goto_5
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    goto :goto_5

    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_6
    move/from16 v0, p2

    invoke-virtual {v3, v0, v7}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    goto :goto_6

    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v8

    :goto_7
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    goto :goto_7

    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v9

    :goto_8
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    goto :goto_8

    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v10

    :goto_9
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    goto :goto_9

    :pswitch_8
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v11

    :goto_a
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    goto :goto_a

    :pswitch_9
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v12

    :goto_b
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    goto :goto_b

    :pswitch_a
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v13

    :goto_c
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    goto :goto_c

    :pswitch_b
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v14

    :goto_d
    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    goto :goto_d

    :pswitch_c
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_e

    :goto_e
    move/from16 v0, p2

    invoke-virtual {v3, v0, v7}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v7, v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    goto :goto_e

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_e

    const-string v6, "08ecd6"

    const-wide/32 v8, -0x6307d26b

    invoke-static {v2, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_f

    const-string v6, "e06318"

    const-wide/32 v8, 0x7e680bb9

    invoke-static {v2, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xf

    new-array v4, v4, [B

    fill-array-data v4, :array_10

    const-string v5, "0cc075"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_c
        -0x4a771f65 -> :sswitch_b
        -0x4a771f64 -> :sswitch_a
        -0x490b9c39 -> :sswitch_9
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3ae243aa -> :sswitch_5
        -0x3ae243a9 -> :sswitch_4
        -0x3621dfb2 -> :sswitch_3
        -0x3621dfb1 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x2fdfbde0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        0x73t
        0x61t
        0x67t
        0x62t
        0x7dt
        0x7et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x42t
        0x55t
        0x15t
        0x50t
        0x63t
        0x57t
        0x46t
        0x55t
        0x15t
        0x5dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x50t
        0x5at
        0x46t
        0x5bt
        0x50t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x44t
        0x52t
        0x3t
        0x54t
        0x50t
        0x3ct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x40t
        0x5bt
        0x3t
        0xdt
        0x57t
        0x6et
    .end array-data

    nop

    :array_5
    .array-data 1
        0x49t
        0x5dt
        0x45t
        0x5ct
        0x11t
        0x6ct
    .end array-data

    nop

    :array_6
    .array-data 1
        0x16t
        0xbt
        0x17t
        0x59t
        0x10t
        0x6ct
    .end array-data

    nop

    :array_7
    .array-data 1
        0x44t
        0x47t
        0x5et
        0x55t
        0x46t
        0x52t
        0x47t
        0x46t
    .end array-data

    :array_8
    .array-data 1
        0x4ct
        0x47t
        0x59t
        0x59t
        0x12t
        0x5ft
        0x59t
        0x41t
        0x51t
        0x58t
        0xft
        0x69t
    .end array-data

    :array_9
    .array-data 1
        0x47t
        0x45t
        0x53t
        0x5et
        0x43t
        0x58t
        0x52t
        0x43t
        0x5bt
        0x5ft
        0x5et
        0x6dt
    .end array-data

    :array_a
    .array-data 1
        0x46t
        0x41t
        0x3t
        0x5et
        0x11t
        0x8t
        0x53t
        0x47t
        0xbt
        0x5ft
        0xct
        0x3ct
    .end array-data

    :array_b
    .array-data 1
        0x14t
        0xdt
        0x45t
        0x55t
        0x45t
        0xbt
        0x9t
        0xct
        0x6bt
    .end array-data

    nop

    :array_c
    .array-data 1
        0x16t
        0x56t
        0x41t
        0x53t
        0x46t
        0xbt
        0xbt
        0x57t
        0x6ct
    .end array-data

    nop

    :array_d
    .array-data 1
        0x10t
        0x56t
        0x40t
        0x57t
        0x45t
        0xft
        0xdt
        0x57t
        0x6ct
    .end array-data

    nop

    :array_e
    .array-data 1
        0x10t
        0x6et
        0xct
        0x6t
        0x13t
        0x65t
        0x40t
        0x54t
        0xct
        0xdt
        0x1t
        0x16t
        0x5et
        0x57t
        0x11t
        0x43t
        0x5t
        0x16t
        0x73t
        0x4dt
        0x16t
        0x17t
        0xbt
        0x5bt
        0x63t
        0x5dt
        0x11t
        0x43t
        0x2t
        0x44t
        0x51t
        0x55t
        0x0t
        0x43t
        0x59t
        0x16t
    .end array-data

    :array_f
    .array-data 1
        0x49t
        0x10t
        0x40t
        0x52t
        0x5dt
        0x4dt
        0x0t
    .end array-data

    :array_10
    .array-data 1
        0x65t
        0x2dt
        0x28t
        0x7et
        0x78t
        0x62t
        0x7et
        0x43t
        0x10t
        0x40t
        0x5bt
        0x5ct
        0x5et
        0x6t
        0x43t
    .end array-data
.end method

.method public applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getVisibility()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyElevation:Z

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationZ()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getScaleX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getScaleY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getPivotX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getPivotY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationZ()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttributeNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->isContinuous()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getAlpha()F

    move-result v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;)I
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->compareTo(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;)I

    move-result v0

    return v0
.end method

.method different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/16 v7, 0xc

    const/16 v6, 0x9

    const/4 v5, 0x6

    const/4 v4, 0x0

    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8542ff"

    const/16 v2, 0x41a7

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v7, [B

    fill-array-data v0, :array_1

    const-string v1, "81b52e"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    if-eq v0, v1, :cond_3

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "3b3772"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v6, [B

    fill-array-data v0, :array_3

    const-string v1, "e933c7"

    const-wide/32 v2, -0x530ee4e5

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "511fb4"

    invoke-static {v0, v1, v8, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "bae3af"

    const/16 v2, -0x7101

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    new-array v0, v6, [B

    fill-array-data v0, :array_6

    const-string v1, "77ce36"

    const-wide v2, 0x41a316cc6c000000L    # 1.60130614E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    new-array v0, v6, [B

    fill-array-data v0, :array_7

    const-string v1, "d5f77d"

    const-wide/32 v2, -0x40166f5a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    new-array v0, v5, [B

    fill-array-data v0, :array_8

    const-string v1, "d64aed"

    const v2, -0x315154ad

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    new-array v0, v5, [B

    fill-array-data v0, :array_9

    const-string v1, "8baf42"

    const/16 v2, 0x5a03

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    new-array v0, v5, [B

    fill-array-data v0, :array_a

    const-string v1, "3753a1"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    new-array v0, v5, [B

    fill-array-data v0, :array_b

    const-string v1, "517773"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    new-array v0, v7, [B

    fill-array-data v0, :array_c

    const-string v1, "67aedf"

    const/16 v2, 0x156

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    new-array v0, v7, [B

    fill-array-data v0, :array_d

    const-string v1, "e36b1e"

    invoke-static {v0, v1, v8, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    new-array v0, v7, [B

    fill-array-data v0, :array_e

    const-string v1, "bb7f53"

    const-wide/32 v2, 0x280df96

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_12

    new-array v0, v6, [B

    fill-array-data v0, :array_f

    const-string v1, "f03a36"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0x59t
        0x44t
        0x5at
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4ct
        0x43t
        0x3t
        0x5bt
        0x41t
        0x9t
        0x59t
        0x45t
        0xbt
        0x5at
        0x5ct
        0x3ft
    .end array-data

    :array_2
    .array-data 1
        0x52t
        0xet
        0x43t
        0x5ft
        0x56t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x17t
        0x56t
        0x47t
        0x52t
        0x17t
        0x5et
        0xat
        0x57t
        0x69t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x45t
        0x50t
        0x45t
        0xet
        0x30t
        0x5bt
        0x41t
        0x50t
        0x45t
        0x3t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x12t
        0x13t
        0xat
        0x54t
        0x13t
        0x3t
        0x11t
        0x12t
    .end array-data

    :array_6
    .array-data 1
        0x45t
        0x58t
        0x17t
        0x4t
        0x47t
        0x5ft
        0x58t
        0x59t
        0x3bt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x16t
        0x5at
        0x12t
        0x56t
        0x43t
        0xdt
        0xbt
        0x5bt
        0x3ft
    .end array-data

    nop

    :array_8
    .array-data 1
        0x14t
        0x5ft
        0x42t
        0xet
        0x11t
        0x3ct
    .end array-data

    nop

    :array_9
    .array-data 1
        0x48t
        0xbt
        0x17t
        0x9t
        0x40t
        0x6bt
    .end array-data

    nop

    :array_a
    .array-data 1
        0x40t
        0x54t
        0x54t
        0x5ft
        0x4t
        0x69t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x46t
        0x52t
        0x56t
        0x5bt
        0x52t
        0x6at
    .end array-data

    nop

    :array_c
    .array-data 1
        0x42t
        0x45t
        0x0t
        0xbt
        0x17t
        0xat
        0x57t
        0x43t
        0x8t
        0xat
        0xat
        0x3et
    .end array-data

    :array_d
    .array-data 1
        0x11t
        0x41t
        0x57t
        0xct
        0x42t
        0x9t
        0x4t
        0x47t
        0x5ft
        0xdt
        0x5ft
        0x3ct
    .end array-data

    :array_e
    .array-data 1
        0x16t
        0x10t
        0x56t
        0x8t
        0x46t
        0x5ft
        0x3t
        0x16t
        0x5et
        0x9t
        0x5bt
        0x69t
    .end array-data

    :array_f
    .array-data 1
        0x3t
        0x5ct
        0x56t
        0x17t
        0x52t
        0x42t
        0xft
        0x5ft
        0x5dt
    .end array-data
.end method

.method different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;[Z[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    aget-boolean v1, p2, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p2, v4

    const/4 v1, 0x2

    aget-boolean v2, p2, v0

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    iget v4, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    const/4 v0, 0x3

    aget-boolean v2, p2, v1

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    iget v4, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v1

    const/4 v1, 0x4

    aget-boolean v2, p2, v0

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    iget v4, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    aget-boolean v0, p2, v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

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

    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    aput v1, v2, v0

    const/4 v1, 0x1

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    aput v3, v2, v1

    const/4 v1, 0x2

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    aput v3, v2, v1

    const/4 v1, 0x3

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    aput v3, v2, v1

    const/4 v1, 0x4

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    aput v3, v2, v1

    const/4 v1, 0x5

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    aput v3, v2, v1

    const/4 v1, 0x6

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    aput v3, v2, v1

    const/4 v1, 0x7

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    aput v3, v2, v1

    const/16 v1, 0x8

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    aput v3, v2, v1

    const/16 v1, 0x9

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    aput v3, v2, v1

    const/16 v1, 0xa

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    aput v3, v2, v1

    const/16 v1, 0xb

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    aput v3, v2, v1

    const/16 v1, 0xc

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    aput v3, v2, v1

    const/16 v1, 0xd

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    aput v3, v2, v1

    const/16 v1, 0xe

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    aput v3, v2, v1

    const/16 v1, 0xf

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    aput v3, v2, v1

    const/16 v1, 0x10

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    aput v3, v2, v1

    const/16 v1, 0x11

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

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

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v0

    float-to-double v2, v0

    aput-wide v2, p2, p3

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v1

    new-array v2, v1, [F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

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

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v0

    return v0
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setBounds(FFFF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    iput p3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    return-void
.end method

.method public setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    return-void
.end method

.method public setState(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/MotionWidget;IF)V
    .locals 6

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x42b40000    # 90.0f

    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    iput v5, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    iput v5, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    add-float v0, v4, p4

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    goto :goto_0

    :pswitch_1
    sub-float v0, p4, v4

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
