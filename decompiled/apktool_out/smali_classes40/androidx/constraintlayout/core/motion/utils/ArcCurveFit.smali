.class public Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
    }
.end annotation


# static fields
.field public static final ARC_START_FLIP:I = 0x3

.field public static final ARC_START_HORIZONTAL:I = 0x2

.field public static final ARC_START_LINEAR:I = 0x0

.field public static final ARC_START_VERTICAL:I = 0x1

.field private static final START_HORIZONTAL:I = 0x2

.field private static final START_LINEAR:I = 0x3

.field private static final START_VERTICAL:I = 0x1


# instance fields
.field mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

.field private mExtrapolate:Z

.field private final mTime:[D


# direct methods
.method public constructor <init>([I[D[[D)V
    .locals 19

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    move-object/from16 v0, p2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v4, 0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move v3, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_1

    aget v5, p1, v16

    const/4 v4, 0x2

    packed-switch v5, :pswitch_data_0

    move/from16 v17, v2

    :goto_1
    new-instance v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-wide v4, p2, v16

    add-int/lit8 v6, v16, 0x1

    aget-wide v6, p2, v6

    aget-object v8, p3, v16

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    aget-object v10, p3, v16

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-int/lit8 v12, v16, 0x1

    aget-object v12, p3, v12

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    add-int/lit8 v14, v16, 0x1

    aget-object v14, p3, v14

    const/4 v15, 0x1

    aget-wide v14, v14, v15

    invoke-direct/range {v2 .. v15}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;-><init>(IDDDDDD)V

    aput-object v2, v18, v16

    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    move/from16 v2, v17

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    :goto_2
    move/from16 v17, v2

    move v3, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_2

    :pswitch_1
    const/4 v3, 0x2

    const/4 v2, 0x2

    move/from16 v17, v2

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x1

    const/4 v2, 0x1

    move/from16 v17, v2

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x3

    move/from16 v17, v2

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPos(DI)D
    .locals 9

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v1, p1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide v4, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v4, p1, v4

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v6

    :goto_0
    return-wide v0

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v6

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    if-nez p3, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v1, p1, v2

    if-lez v1, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double v2, p1, v0

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-nez p3, :cond_4

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v6

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    goto :goto_0

    :cond_4
    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v6

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v1, p1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide p1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    :cond_6
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    if-ge v0, v2, :cond_c

    aget-object v1, v1, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v1, p1, v2

    if-gtz v1, :cond_b

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_9

    if-nez p3, :cond_8

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v0

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v1, p1, v2

    if-lez v1, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-wide p1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    goto :goto_1

    :cond_8
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v0

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    if-nez p3, :cond_a

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v0

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v0

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_0
.end method

.method public getPos(D[D)V
    .locals 11

    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v2, p1, v2

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-boolean v4, v4, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v6

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    aput-wide v6, p3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v6

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    aput-wide v0, p3, v4

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v4

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v6

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v0

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v4

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v6

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    aput-wide v2, p3, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double v2, p1, v0

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iget-boolean v4, v4, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v6, v6, v5

    invoke-virtual {v6, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v6

    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v8, v8, v5

    invoke-virtual {v8, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    aput-wide v6, p3, v4

    const/4 v4, 0x1

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v6, v6, v5

    invoke-virtual {v6, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v6

    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v5, v8, v5

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    aput-wide v0, p3, v4

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v5

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v8

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    aput-wide v6, p3, v0

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    aput-wide v2, p3, v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_6
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v1, p1, v2

    if-gtz v1, :cond_8

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v2

    aput-wide v2, p3, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v2, v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v2

    aput-wide v2, p3, v1

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v2

    aput-wide v2, p3, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v2

    aput-wide v2, p3, v1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getPos(D[F)V
    .locals 11

    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v2, p1, v2

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-boolean v4, v4, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v6

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v6

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    double-to-float v0, v0

    aput v0, p3, v4

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v4

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v6

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float v1, v4

    aput v1, p3, v0

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v4

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v6

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    aput v1, p3, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double v2, p1, v0

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iget-boolean v4, v4, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v6, v6, v5

    invoke-virtual {v6, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v6

    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v8, v8, v5

    invoke-virtual {v8, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p3, v4

    const/4 v4, 0x1

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v6, v6, v5

    invoke-virtual {v6, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v6

    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v5, v8, v5

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    double-to-float v0, v0

    aput v0, p3, v4

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v5

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p3, v0

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p3, v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v1, p1, v2

    if-gtz v1, :cond_8

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p3, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v2, v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p3, v1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p3, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p3, v1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getSlope(DI)D
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v1, p1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide p1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v1, p1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget-wide p1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    if-ge v0, v2, :cond_6

    aget-object v1, v1, v0

    iget-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v1, p1, v2

    if-gtz v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_3

    if-nez p3, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    if-nez p3, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v0

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1
.end method

.method public getSlope(D[D)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v2

    aput-wide v2, p3, v1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v0

    aput-wide v0, p3, v4

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v2

    aput-wide v2, p3, v1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v0

    aput-wide v0, p3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getTimePoints()[D
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    return-object v0
.end method
