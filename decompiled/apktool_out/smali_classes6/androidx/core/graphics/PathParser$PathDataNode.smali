.class public Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F

.field public mType:C


# direct methods
.method constructor <init>(C[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-char v0, p1

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-object p2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    int-to-char v0, v0

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iget-object v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 18

    const/4 v1, 0x0

    aget v7, p1, v1

    const/4 v1, 0x1

    aget v6, p1, v1

    const/4 v1, 0x2

    aget v4, p1, v1

    const/4 v1, 0x3

    aget v2, p1, v1

    const/4 v1, 0x4

    aget v5, p1, v1

    const/4 v1, 0x5

    aget v3, p1, v1

    sparse-switch p3, :sswitch_data_0

    const/4 v1, 0x2

    move v11, v1

    move v1, v2

    move v2, v4

    move v4, v6

    move v6, v7

    :goto_0
    const/4 v7, 0x0

    move v12, v6

    move v13, v4

    move v14, v5

    move v15, v3

    move-object/from16 v16, p0

    move/from16 v17, v7

    :goto_1
    move-object/from16 v0, p4

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_d

    sparse-switch p3, :sswitch_data_1

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    :goto_2
    add-int v8, v17, v11

    move/from16 p2, p3

    move v12, v6

    move v13, v4

    move v14, v5

    move v15, v3

    move-object/from16 v16, v7

    move/from16 v17, v8

    goto :goto_1

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x2

    move v11, v1

    move v2, v5

    move v4, v3

    move v6, v5

    move v1, v3

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x4

    move v11, v1

    move v1, v2

    move v2, v4

    move v4, v6

    move v6, v7

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x2

    move v11, v1

    move v1, v2

    move v2, v4

    move v4, v6

    move v6, v7

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x1

    move v11, v1

    move v1, v2

    move v2, v4

    move v4, v6

    move v6, v7

    goto :goto_0

    :sswitch_4
    const/4 v1, 0x6

    move v11, v1

    move v1, v2

    move v2, v4

    move v4, v6

    move v6, v7

    goto :goto_0

    :sswitch_5
    const/4 v1, 0x7

    move v11, v1

    move v1, v2

    move v2, v4

    move v4, v6

    move v6, v7

    goto :goto_0

    :sswitch_6
    const/4 v3, 0x0

    add-int/lit8 v4, v17, 0x0

    aget v4, p4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-float/2addr v13, v3

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto :goto_2

    :sswitch_7
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x71

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    const/16 v5, 0x74

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    const/16 v5, 0x51

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    const/16 v5, 0x54

    move/from16 v0, p2

    if-ne v0, v5, :cond_e

    :cond_0
    sub-float v2, v12, v2

    sub-float v1, v13, v1

    :goto_3
    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v17, 0x1

    aget v4, p4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-float v6, v12, v3

    add-int/lit8 v3, v17, 0x1

    aget v3, p4, v3

    add-float v4, v13, v3

    add-float/2addr v2, v12

    add-float/2addr v1, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_8
    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_1

    const/16 v3, 0x73

    move/from16 v0, p2

    if-eq v0, v3, :cond_1

    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_1

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    :cond_1
    sub-float v2, v12, v2

    sub-float v3, v13, v1

    :goto_4
    add-int/lit8 v1, v17, 0x0

    aget v4, p4, v1

    add-int/lit8 v1, v17, 0x1

    aget v5, p4, v1

    add-int/lit8 v1, v17, 0x2

    aget v6, p4, v1

    add-int/lit8 v1, v17, 0x3

    aget v7, p4, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    add-int/lit8 v1, v17, 0x0

    aget v1, p4, v1

    add-int/lit8 v2, v17, 0x1

    aget v3, p4, v2

    add-int/lit8 v2, v17, 0x2

    aget v2, p4, v2

    add-float v6, v12, v2

    add-int/lit8 v2, v17, 0x3

    aget v4, p4, v2

    add-float v2, v1, v12

    add-float v1, v13, v3

    add-float/2addr v13, v4

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :sswitch_9
    add-int/lit8 v1, v17, 0x0

    aget v1, p4, v1

    add-int/lit8 v2, v17, 0x1

    aget v2, p4, v2

    add-int/lit8 v3, v17, 0x2

    aget v3, p4, v3

    add-int/lit8 v4, v17, 0x3

    aget v4, p4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-int/lit8 v1, v17, 0x0

    aget v1, p4, v1

    add-int/lit8 v2, v17, 0x1

    aget v3, p4, v2

    add-int/lit8 v2, v17, 0x2

    aget v2, p4, v2

    add-float v6, v12, v2

    add-int/lit8 v2, v17, 0x3

    aget v4, p4, v2

    add-float v2, v1, v12

    add-float v1, v13, v3

    add-float/2addr v13, v4

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_a
    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-float/2addr v12, v3

    add-int/lit8 v3, v17, 0x1

    aget v3, p4, v3

    add-float/2addr v13, v3

    if-lez v17, :cond_3

    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v17, 0x1

    aget v4, p4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v17, 0x1

    aget v4, p4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rMoveTo(FF)V

    move v6, v12

    move v4, v13

    move v5, v12

    move v3, v13

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_b
    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v17, 0x1

    aget v4, p4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-float/2addr v12, v3

    add-int/lit8 v3, v17, 0x1

    aget v3, p4, v3

    add-float/2addr v13, v3

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_c
    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-float/2addr v12, v3

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_d
    add-int/lit8 v1, v17, 0x0

    aget v2, p4, v1

    add-int/lit8 v1, v17, 0x1

    aget v3, p4, v1

    add-int/lit8 v1, v17, 0x2

    aget v4, p4, v1

    add-int/lit8 v1, v17, 0x3

    aget v5, p4, v1

    add-int/lit8 v1, v17, 0x4

    aget v6, p4, v1

    add-int/lit8 v1, v17, 0x5

    aget v7, p4, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    add-int/lit8 v1, v17, 0x2

    aget v1, p4, v1

    add-int/lit8 v2, v17, 0x3

    aget v3, p4, v2

    add-int/lit8 v2, v17, 0x4

    aget v2, p4, v2

    add-float v6, v12, v2

    add-int/lit8 v2, v17, 0x5

    aget v4, p4, v2

    add-float v2, v1, v12

    add-float v1, v13, v3

    add-float/2addr v13, v4

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_e
    add-int/lit8 v1, v17, 0x5

    aget v1, p4, v1

    add-int/lit8 v2, v17, 0x6

    aget v2, p4, v2

    add-int/lit8 v3, v17, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v17, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v17, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v17, 0x3

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    const/4 v9, 0x1

    :goto_5
    add-int/lit8 v3, v17, 0x4

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    const/4 v10, 0x1

    :goto_6
    add-float v4, v1, v12

    add-float v5, v2, v13

    move-object/from16 v1, p0

    move v2, v12

    move v3, v13

    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    add-int/lit8 v1, v17, 0x5

    aget v1, p4, v1

    add-float/2addr v12, v1

    add-int/lit8 v1, v17, 0x6

    aget v1, p4, v1

    add-float/2addr v13, v1

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move v2, v12

    move v1, v13

    move-object/from16 v7, p0

    goto/16 :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    :sswitch_f
    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v17, 0x0

    aget v13, p4, v3

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, p0

    goto/16 :goto_2

    :sswitch_10
    const/16 v3, 0x71

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    const/16 v3, 0x74

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    const/16 v3, 0x51

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    const/16 v3, 0x54

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    :cond_6
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v12

    sub-float v12, v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v13

    sub-float v13, v2, v1

    :cond_7
    add-int/lit8 v1, v17, 0x0

    aget v1, p4, v1

    add-int/lit8 v2, v17, 0x1

    aget v2, p4, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v1, v17, 0x0

    aget v6, p4, v1

    add-int/lit8 v1, v17, 0x1

    aget v4, p4, v1

    move v5, v14

    move v3, v15

    move v2, v12

    move v1, v13

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_11
    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    const/16 v3, 0x73

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    :cond_8
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v12

    sub-float v2, v3, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v13

    sub-float/2addr v3, v1

    :goto_7
    add-int/lit8 v1, v17, 0x0

    aget v4, p4, v1

    add-int/lit8 v1, v17, 0x1

    aget v5, p4, v1

    add-int/lit8 v1, v17, 0x2

    aget v6, p4, v1

    add-int/lit8 v1, v17, 0x3

    aget v7, p4, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v1, v17, 0x0

    aget v2, p4, v1

    add-int/lit8 v1, v17, 0x1

    aget v1, p4, v1

    add-int/lit8 v3, v17, 0x2

    aget v12, p4, v3

    add-int/lit8 v3, v17, 0x3

    aget v13, p4, v3

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :cond_9
    move v2, v12

    move v3, v13

    goto :goto_7

    :sswitch_12
    add-int/lit8 v1, v17, 0x0

    aget v1, p4, v1

    add-int/lit8 v2, v17, 0x1

    aget v2, p4, v2

    add-int/lit8 v3, v17, 0x2

    aget v3, p4, v3

    add-int/lit8 v4, v17, 0x3

    aget v4, p4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v1, v17, 0x0

    aget v2, p4, v1

    add-int/lit8 v1, v17, 0x1

    aget v1, p4, v1

    add-int/lit8 v3, v17, 0x2

    aget v12, p4, v3

    add-int/lit8 v3, v17, 0x3

    aget v13, p4, v3

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_13
    add-int/lit8 v3, v17, 0x0

    aget v12, p4, v3

    add-int/lit8 v3, v17, 0x1

    aget v13, p4, v3

    if-lez v17, :cond_a

    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v17, 0x1

    aget v4, p4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v17, 0x1

    aget v4, p4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v6, v12

    move v4, v13

    move v5, v12

    move v3, v13

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_14
    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v17, 0x1

    aget v4, p4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v17, 0x0

    aget v12, p4, v3

    add-int/lit8 v3, v17, 0x1

    aget v13, p4, v3

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_15
    add-int/lit8 v3, v17, 0x0

    aget v3, p4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v13}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v17, 0x0

    aget v12, p4, v3

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_16
    add-int/lit8 v1, v17, 0x0

    aget v2, p4, v1

    add-int/lit8 v1, v17, 0x1

    aget v3, p4, v1

    add-int/lit8 v1, v17, 0x2

    aget v4, p4, v1

    add-int/lit8 v1, v17, 0x3

    aget v5, p4, v1

    add-int/lit8 v1, v17, 0x4

    aget v6, p4, v1

    add-int/lit8 v1, v17, 0x5

    aget v7, p4, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v1, v17, 0x4

    aget v12, p4, v1

    add-int/lit8 v1, v17, 0x5

    aget v13, p4, v1

    add-int/lit8 v1, v17, 0x2

    aget v2, p4, v1

    add-int/lit8 v1, v17, 0x3

    aget v1, p4, v1

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move-object/from16 v7, v16

    goto/16 :goto_2

    :sswitch_17
    add-int/lit8 v1, v17, 0x5

    aget v4, p4, v1

    add-int/lit8 v1, v17, 0x6

    aget v5, p4, v1

    add-int/lit8 v1, v17, 0x0

    aget v6, p4, v1

    add-int/lit8 v1, v17, 0x1

    aget v7, p4, v1

    add-int/lit8 v1, v17, 0x2

    aget v8, p4, v1

    add-int/lit8 v1, v17, 0x3

    aget v1, p4, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_b

    const/4 v9, 0x1

    :goto_8
    add-int/lit8 v1, v17, 0x4

    aget v1, p4, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_c

    const/4 v10, 0x1

    :goto_9
    move-object/from16 v1, p0

    move v2, v12

    move v3, v13

    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    add-int/lit8 v1, v17, 0x5

    aget v12, p4, v1

    add-int/lit8 v1, v17, 0x6

    aget v13, p4, v1

    move v6, v12

    move v4, v13

    move v5, v14

    move v3, v15

    move v2, v12

    move v1, v13

    move-object/from16 v7, v16

    goto/16 :goto_2

    :cond_b
    const/4 v9, 0x0

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    aput v12, p1, v3

    const/4 v3, 0x1

    aput v13, p1, v3

    const/4 v3, 0x2

    aput v2, p1, v3

    const/4 v2, 0x3

    aput v1, p1, v2

    const/4 v1, 0x4

    aput v14, p1, v1

    const/4 v1, 0x5

    aput v15, p1, v1

    return-void

    :cond_e
    move v1, v3

    move v2, v4

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_2
        0x56 -> :sswitch_3
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
        0x76 -> :sswitch_3
        0x7a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_16
        0x48 -> :sswitch_15
        0x4c -> :sswitch_14
        0x4d -> :sswitch_13
        0x51 -> :sswitch_12
        0x53 -> :sswitch_11
        0x54 -> :sswitch_10
        0x56 -> :sswitch_f
        0x61 -> :sswitch_e
        0x63 -> :sswitch_d
        0x68 -> :sswitch_c
        0x6c -> :sswitch_b
        0x6d -> :sswitch_a
        0x71 -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 33

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v20, v0

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move-wide/from16 v0, p5

    neg-double v10, v0

    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v24

    mul-double/2addr v2, v8

    mul-double v4, p7, v22

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    move/from16 v0, v20

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v26, p17, v2

    const/4 v2, 0x0

    mul-double v10, v10, v22

    mul-double/2addr v8, v10

    mul-double v10, p7, v24

    mul-double/2addr v6, v10

    sub-double v6, v8, v6

    move v9, v2

    move-wide v2, v6

    :goto_0
    move/from16 v0, v20

    if-ge v9, v0, :cond_0

    add-double v10, p15, v26

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v14, p5, v22

    mul-double/2addr v14, v12

    add-double v14, v14, p1

    mul-double v16, p7, v24

    mul-double v16, v16, v6

    sub-double v16, v14, v16

    mul-double v14, p5, v24

    mul-double/2addr v14, v12

    add-double v14, v14, p3

    mul-double v18, p7, v22

    mul-double v18, v18, v6

    add-double v18, v18, v14

    move-wide/from16 v0, p5

    neg-double v14, v0

    mul-double v14, v14, v22

    mul-double/2addr v14, v6

    mul-double v28, p7, v24

    mul-double v28, v28, v12

    sub-double v14, v14, v28

    move-wide/from16 v0, p5

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v24

    mul-double v6, v6, v28

    mul-double v28, p7, v22

    mul-double v12, v12, v28

    add-double/2addr v12, v6

    sub-double v6, v10, p15

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v6, v6, v28

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    sub-double v28, v10, p15

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x4008000000000000L    # 3.0

    mul-double v30, v30, v6

    mul-double v6, v6, v30

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    add-double v6, v6, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v30

    mul-double v6, v6, v28

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    div-double v6, v6, v28

    const/4 v8, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    mul-double/2addr v2, v6

    add-double v2, v2, p9

    double-to-float v3, v2

    mul-double/2addr v4, v6

    add-double v4, v4, p11

    double-to-float v4, v4

    mul-double v28, v6, v14

    sub-double v28, v16, v28

    move-wide/from16 v0, v28

    double-to-float v5, v0

    mul-double/2addr v6, v12

    sub-double v6, v18, v6

    double-to-float v6, v6

    move-wide/from16 v0, v16

    double-to-float v7, v0

    move-wide/from16 v0, v18

    double-to-float v8, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v2, v9, 0x1

    move-wide/from16 p15, v10

    move v9, v2

    move-wide v4, v12

    move-wide/from16 p9, v16

    move-wide/from16 p11, v18

    move-wide v2, v14

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 30

    move/from16 v0, p7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move/from16 v0, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v8

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    div-double v6, v2, v6

    move/from16 v0, p1

    neg-float v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p6

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v10

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    div-double v12, v2, v12

    move/from16 v0, p3

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p5

    float-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v8

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    div-double v14, v2, v14

    move/from16 v0, p3

    neg-float v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v10

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    div-double v20, v2, v18

    sub-double v2, v6, v14

    sub-double v4, v12, v20

    add-double v18, v6, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v18, v18, v22

    add-double v22, v12, v20

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    mul-double v24, v2, v2

    mul-double v26, v4, v4

    add-double v24, v24, v26

    const-wide/16 v26, 0x0

    cmpl-double v26, v24, v26

    if-nez v26, :cond_0

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "e0bb15"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "a57707"

    const-wide v6, 0x419b125e44000000L    # 1.13547153E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v26, v26, v24

    const-wide/high16 v28, 0x3fd0000000000000L    # 0.25

    sub-double v26, v26, v28

    const-wide/16 v28, 0x0

    cmpg-double v28, v26, v28

    if-gez v28, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x19

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "99e94d"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "4d1bd4"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v2, v4

    double-to-float v2, v2

    mul-float v7, p5, v2

    mul-float v8, p6, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    goto :goto_0

    :cond_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    mul-double v2, v2, v24

    mul-double v4, v4, v24

    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_3

    sub-double v4, v18, v4

    add-double v2, v2, v22

    :goto_1
    sub-double/2addr v12, v2

    sub-double/2addr v6, v4

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    sub-double v6, v20, v2

    sub-double v12, v14, v4

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v20, v6, v18

    const-wide/16 v6, 0x0

    cmpl-double v6, v20, v6

    if-ltz v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    move/from16 v0, p9

    if-eq v0, v6, :cond_2

    const-wide/16 v6, 0x0

    cmpl-double v6, v20, v6

    if-lez v6, :cond_5

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v6

    :cond_2
    :goto_3
    move/from16 v0, p5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v6, v4

    move/from16 v0, p6

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v4

    mul-double v4, v6, v8

    mul-double v12, v2, v10

    sub-double/2addr v4, v12

    mul-double/2addr v6, v10

    mul-double/2addr v2, v8

    add-double/2addr v6, v2

    move/from16 v0, p5

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v21}, Landroidx/core/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    goto/16 :goto_0

    :cond_3
    add-double v4, v4, v18

    sub-double v2, v22, v2

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v6

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0x35t
        0x51t
        0x16t
        0xat
        0x61t
        0x54t
        0x17t
        0x43t
        0x7t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x65t
        0x58t
        0x5et
        0x5et
        0x43t
        0x12t
        0x15t
        0x56t
        0x45t
        0x55t
        0x17t
        0x2t
        0x5at
        0x5et
        0x59t
        0x53t
        0x5et
        0x5t
        0x50t
        0x59t
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x69t
        0x56t
        0xct
        0x57t
        0x40t
        0x17t
        0x19t
        0x58t
        0x17t
        0x5ct
        0x14t
        0x10t
        0x56t
        0x56t
        0x45t
        0x5ft
        0x55t
        0x16t
        0x19t
        0x58t
        0x15t
        0x58t
        0x46t
        0x10t
        0x19t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x64t
        0x5t
        0x45t
        0xat
        0x34t
        0x55t
        0x46t
        0x17t
        0x54t
        0x10t
    .end array-data
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 5

    const/4 v0, 0x6

    new-array v2, v0, [F

    const/16 v0, 0x6d

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v3, p0, v1

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v1

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v2, v0, v3, v4}, Landroidx/core/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    aget-object v0, p0, v1

    iget-char v0, v0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V
    .locals 4

    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    int-to-char v0, v0

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v1, v3

    iget-object v3, p2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
