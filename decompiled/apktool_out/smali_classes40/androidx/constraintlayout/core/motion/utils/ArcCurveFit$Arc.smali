.class Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Arc"
.end annotation


# static fields
.field private static final EPSILON:D = 0.001

.field private static final TAG:Ljava/lang/String;

.field private static ourPercent:[D


# instance fields
.field linear:Z

.field mArcDistance:D

.field mArcVelocity:D

.field mEllipseA:D

.field mEllipseB:D

.field mEllipseCenterX:D

.field mEllipseCenterY:D

.field mLut:[D

.field mOneOverDeltaTime:D

.field mTime1:D

.field mTime2:D

.field mTmpCosAngle:D

.field mTmpSinAngle:D

.field mVertical:Z

.field mX1:D

.field mX2:D

.field mY1:D

.field mY2:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "aa60fc"

    const/16 v2, 0x11e0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->TAG:Ljava/lang/String;

    const/16 v0, 0x5b

    new-array v0, v0, [D

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    return-void

    nop

    :array_0
    .array-data 1
        0x20t
        0x13t
        0x55t
    .end array-data
.end method

.method constructor <init>(IDDDDDD)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    iput-wide p2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    move-wide/from16 v0, p4

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, p4, p2

    div-double/2addr v4, v6

    iput-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    const/4 v2, 0x3

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    :cond_1
    sub-double v4, p10, p6

    sub-double v6, p12, p8

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-nez v2, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, v8, v10

    if-ltz v2, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, v8, v10

    if-gez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    move-wide/from16 v0, p6

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    move-wide/from16 v0, p10

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    move-wide/from16 v0, p8

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    move-wide/from16 v0, p12

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    iget-wide v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v2, v8

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    iget-wide v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v10, v2, v8

    div-double/2addr v4, v10

    iput-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    sub-double/2addr v2, v8

    div-double v2, v6, v2

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    :goto_0
    return-void

    :cond_3
    const/16 v2, 0x65

    new-array v2, v2, [D

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    iget-boolean v8, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v8, :cond_7

    const/4 v2, -0x1

    :goto_1
    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v4

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    if-eqz v8, :cond_4

    const/4 v2, 0x1

    :goto_2
    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v6

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    if-eqz v8, :cond_5

    move-wide/from16 v2, p10

    :goto_3
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    if-eqz v8, :cond_6

    move-wide/from16 v2, p8

    :goto_4
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    move-object v3, p0

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-wide/from16 v10, p12

    invoke-direct/range {v3 .. v11}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->buildTable(DDDD)V

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    goto :goto_2

    :cond_5
    move-wide/from16 v2, p6

    goto :goto_3

    :cond_6
    move-wide/from16 v2, p12

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method private buildTable(DDDD)V
    .locals 21

    sub-double v14, p5, p1

    sub-double v16, p3, p7

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    move-wide v12, v8

    move-wide v8, v6

    :goto_0
    sget-object v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v6, v3

    if-ge v2, v6, :cond_0

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v18, 0x4056800000000000L    # 90.0

    mul-double v6, v6, v18

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v10, v14

    mul-double v6, v6, v16

    if-lez v2, :cond_5

    sub-double v8, v10, v8

    sub-double v4, v6, v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v4, v12

    sget-object v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    aput-wide v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-wide v8, v10

    move-wide v12, v4

    move-wide v4, v6

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iput-wide v12, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    const/4 v2, 0x0

    :goto_2
    sget-object v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-wide v4, v3, v2

    div-double/2addr v4, v12

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v4, v3

    if-ge v2, v4, :cond_4

    int-to-double v4, v2

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-double v6, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    sget-object v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v3

    if-ltz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    int-to-double v6, v3

    sget-object v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-double v8, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    aput-wide v6, v4, v2

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    goto :goto_4

    :cond_3
    neg-int v6, v3

    add-int/lit8 v6, v6, -0x2

    neg-int v3, v3

    int-to-double v8, v6

    sget-object v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    aget-wide v10, v7, v6

    sub-double/2addr v4, v10

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, v7, v3

    aget-wide v12, v7, v6

    sub-double/2addr v10, v12

    div-double/2addr v4, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v8

    div-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    aput-wide v4, v3, v2

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    move-wide v4, v12

    goto :goto_1
.end method


# virtual methods
.method getDX()D
    .locals 8

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    div-double v2, v6, v2

    iget-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v4, :cond_0

    neg-double v0, v0

    mul-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method getDY()D
    .locals 8

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    neg-double v4, v4

    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    div-double v0, v6, v0

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v2, :cond_0

    neg-double v2, v4

    mul-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    mul-double/2addr v0, v4

    goto :goto_0
.end method

.method public getLinearDX(D)D
    .locals 2

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    return-wide v0
.end method

.method public getLinearDY(D)D
    .locals 2

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    return-wide v0
.end method

.method public getLinearX(D)D
    .locals 9

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    sub-double/2addr v6, v4

    sub-double v0, p1, v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public getLinearY(D)D
    .locals 9

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    sub-double/2addr v6, v4

    sub-double v0, p1, v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    return-wide v0
.end method

.method getX()D
    .locals 6

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method getY()D
    .locals 6

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method lookup(D)D
    .locals 11

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    cmpg-double v4, p1, v0

    if-gtz v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, p1

    double-to-int v1, v2

    double-to-int v4, v2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    aget-wide v6, v0, v1

    add-int/lit8 v8, v1, 0x1

    aget-wide v8, v0, v8

    aget-wide v0, v0, v1

    sub-double v0, v8, v0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    goto :goto_0
.end method

.method setPoint(D)V
    .locals 5

    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double/2addr v0, p1

    :goto_0
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->lookup(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v0, p1, v0

    goto :goto_0
.end method
