.class public Landroidx/constraintlayout/core/motion/MotionPaths;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroidx/constraintlayout/core/motion/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field public static final CARTESIAN:I = 0x0

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field public static final PERPENDICULAR:I = 0x1

.field public static final SCREEN:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field static names:[Ljava/lang/String;


# instance fields
.field customAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field height:F

.field mAnimateCircleAngleTo:I

.field mAnimateRelativeTo:I

.field mDrawPath:I

.field mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mProgress:F

.field mRelativeAngle:F

.field mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

.field mTempDelta:[D

.field mTempValue:[D

.field position:F

.field time:F

.field width:F

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "180d6c"

    const v2, 0x4e4ea988    # 8.668042E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/MotionPaths;->TAG:Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "5caf4f"

    const/16 v3, 0x5e4c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v7, [B

    const/16 v2, 0x19

    aput-byte v2, v1, v6

    const-string v2, "acfe38"

    const-wide v4, -0x3e22a7caa9000000L    # -1.969280348E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-array v2, v7, [B

    const/16 v3, 0x40

    aput-byte v3, v2, v6

    const-string v3, "96f399"

    const-wide/32 v4, -0x2f7a2e96

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v8, [B

    fill-array-data v2, :array_2

    const-string v3, "dd6b1b"

    const v4, 0x4e4ee39a    # 8.6775565E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v9, [B

    fill-array-data v2, :array_3

    const-string v3, "3ac70d"

    const v4, 0x4e4c2ccb    # 8.563719E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "c28a18"

    const-wide/32 v4, 0x4e26e76d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7ct
        0x57t
        0x44t
        0xdt
        0x59t
        0xdt
        0x61t
        0x59t
        0x44t
        0xct
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x45t
        0xct
        0x12t
        0xft
        0x40t
        0xft
        0x5at
        0xdt
    .end array-data

    :array_2
    .array-data 1
        0x13t
        0xdt
        0x52t
        0x16t
        0x59t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5bt
        0x4t
        0xat
        0x50t
        0x58t
        0x10t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x13t
        0x53t
        0x4ct
        0x9t
        0x63t
        0x57t
        0x17t
        0x53t
        0x4ct
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x12

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    new-array v0, v3, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    new-array v0, v3, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 4

    const/16 v3, 0x12

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    new-array v0, v3, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    new-array v0, v3, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    iget v0, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initPolar(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initCartesian(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initScreen(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initPath(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method private static final xRotate(FFFFFF)F
    .locals 2

    sub-float v0, p4, p2

    mul-float/2addr v0, p1

    sub-float v1, p5, p3

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method private static final yRotate(FFFFFF)F
    .locals 2

    sub-float v0, p4, p2

    mul-float/2addr v0, p0

    sub-float v1, p5, p3

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 4

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iget-object v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathMotionArc:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateRelativeTo:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateCircleAngleTo:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateCircleAngleTo:I

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttributeNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->isContinuous()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/core/motion/MotionPaths;)I
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->compareTo(Landroidx/constraintlayout/core/motion/MotionPaths;)I

    move-result v0

    return v0
.end method

.method public configureRelativeTo(Landroidx/constraintlayout/core/motion/Motion;)V
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->getPos(D)[D

    return-void
.end method

.method different(Landroidx/constraintlayout/core/motion/MotionPaths;[Z[Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->diff(FF)Z

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionPaths;->diff(FF)Z

    move-result v1

    const/4 v2, 0x1

    aget-boolean v3, p2, v6

    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    iget v5, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    invoke-direct {p0, v4, v5}, Landroidx/constraintlayout/core/motion/MotionPaths;->diff(FF)Z

    move-result v4

    or-int/2addr v3, v4

    aput-boolean v3, p2, v6

    const/4 v3, 0x2

    aget-boolean v4, p2, v2

    or-int v5, v0, v1

    or-int/2addr v5, p4

    or-int/2addr v4, v5

    aput-boolean v4, p2, v2

    const/4 v2, 0x3

    aget-boolean v4, p2, v3

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    or-int/2addr v0, v4

    aput-boolean v0, p2, v3

    const/4 v0, 0x4

    aget-boolean v1, p2, v2

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iget v4, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v1, v3

    aput-boolean v1, p2, v2

    aget-boolean v1, p2, v0

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->diff(FF)Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p2, v0

    return-void
.end method

.method fillStandard([D[I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x6

    new-array v2, v1, [F

    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    aput v1, v2, v0

    const/4 v1, 0x1

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    aput v3, v2, v1

    const/4 v1, 0x2

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    aput v3, v2, v1

    const/4 v1, 0x3

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    aput v3, v2, v1

    const/4 v1, 0x4

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    aput v3, v2, v1

    const/4 v1, 0x5

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

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

.method getBounds([I[D[FI)V
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-wide v4, p2, v0

    double-to-float v3, v4

    aget v4, p1, v0

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    move v2, v3

    goto :goto_1

    :pswitch_2
    move v1, v3

    goto :goto_1

    :cond_0
    aput v1, p3, p4

    add-int/lit8 v0, p4, 0x1

    aput v2, p3, v0

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method getCenter(D[I[D[FI)V
    .locals 17

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v7, v0

    if-ge v2, v7, :cond_0

    aget-wide v8, p4, v2

    double-to-float v7, v8

    aget v8, p3, v2

    packed-switch v8, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    move v3, v7

    goto :goto_1

    :pswitch_1
    move v4, v7

    goto :goto_1

    :pswitch_2
    move v5, v7

    goto :goto_1

    :pswitch_3
    move v6, v7

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    if-eqz v2, :cond_1

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x2

    new-array v8, v8, [F

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v7, v8}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    float-to-double v8, v2

    float-to-double v10, v6

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v4, v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    sub-double/2addr v8, v14

    double-to-float v2, v8

    float-to-double v8, v7

    float-to-double v6, v6

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v6, v10

    sub-double v6, v8, v6

    sub-double/2addr v6, v12

    double-to-float v5, v6

    move v6, v2

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v4, v2

    add-float/2addr v2, v6

    const/4 v4, 0x0

    add-float/2addr v2, v4

    aput v2, p5, p6

    add-int/lit8 v2, p6, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    const/4 v4, 0x0

    add-float/2addr v3, v4

    aput v3, p5, v2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCenter(D[I[D[F[D[F)V
    .locals 23

    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    move-object/from16 v0, p0

    iget v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    move-object/from16 v0, p0

    iget v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v2, v11, :cond_0

    aget-wide v12, p4, v2

    double-to-float v12, v12

    aget-wide v14, p6, v2

    double-to-float v11, v14

    aget v13, p3, v2

    packed-switch v13, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    move v3, v11

    move v7, v12

    goto :goto_1

    :pswitch_1
    move v4, v11

    move v8, v12

    goto :goto_1

    :pswitch_2
    move v5, v11

    move v9, v12

    goto :goto_1

    :pswitch_3
    move v6, v11

    move v10, v12

    goto :goto_1

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v4, v2

    add-float v4, v2, v6

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v3, v2

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v4, 0x2

    new-array v4, v4, [F

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1, v2, v4}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v11, 0x1

    aget v2, v2, v11

    const/4 v11, 0x0

    aget v12, v4, v11

    const/4 v11, 0x1

    aget v13, v4, v11

    float-to-double v14, v3

    float-to-double v0, v10

    move-wide/from16 v16, v0

    float-to-double v0, v9

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v8, v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v18

    add-double v14, v14, v16

    sub-double v14, v14, v20

    double-to-float v11, v14

    float-to-double v2, v2

    float-to-double v14, v10

    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v7, v4

    float-to-double v0, v4

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    sub-double/2addr v2, v14

    sub-double v2, v2, v18

    double-to-float v4, v2

    float-to-double v2, v12

    float-to-double v14, v6

    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    float-to-double v0, v9

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    float-to-double v0, v5

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    add-double/2addr v2, v14

    mul-double v14, v18, v20

    add-double/2addr v2, v14

    double-to-float v3, v2

    float-to-double v12, v13

    float-to-double v14, v6

    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    float-to-double v0, v9

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    float-to-double v0, v5

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    mul-double v14, v18, v20

    add-double/2addr v12, v14

    double-to-float v2, v12

    move v9, v4

    move v10, v11

    :goto_2
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v8, v5

    add-float/2addr v5, v10

    const/4 v6, 0x0

    add-float/2addr v5, v6

    aput v5, p5, v4

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v7, v5

    add-float/2addr v5, v9

    const/4 v6, 0x0

    add-float/2addr v5, v6

    aput v5, p5, v4

    const/4 v4, 0x0

    aput v3, p7, v4

    const/4 v3, 0x1

    aput v2, p7, v3

    return-void

    :cond_1
    move v3, v4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCenterVelocity(D[I[D[FI)V
    .locals 17

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v7, v0

    if-ge v2, v7, :cond_0

    aget-wide v8, p4, v2

    double-to-float v7, v8

    aget v8, p3, v2

    packed-switch v8, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    move v3, v7

    goto :goto_1

    :pswitch_1
    move v4, v7

    goto :goto_1

    :pswitch_2
    move v5, v7

    goto :goto_1

    :pswitch_3
    move v6, v7

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    if-eqz v2, :cond_1

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x2

    new-array v8, v8, [F

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v7, v8}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    float-to-double v8, v2

    float-to-double v10, v6

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v4, v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    sub-double/2addr v8, v14

    double-to-float v2, v8

    float-to-double v8, v7

    float-to-double v6, v6

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v6, v10

    sub-double v6, v8, v6

    sub-double/2addr v6, v12

    double-to-float v5, v6

    move v6, v2

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v4, v2

    add-float/2addr v2, v6

    const/4 v4, 0x0

    add-float/2addr v2, v4

    aput v2, p5, p6

    add-int/lit8 v2, p6, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    const/4 v4, 0x0

    add-float/2addr v3, v4

    aput v3, p5, v2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v0

    float-to-double v0, v0

    aput-wide v0, p2, p3

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v2

    new-array v3, v2, [F

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    :goto_1
    if-ge v1, v2, :cond_2

    aget v0, v3, v1

    float-to-double v4, v0

    aput-wide v4, p2, p3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v0

    goto :goto_0
.end method

.method getRect([I[D[FI)V
    .locals 18

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v7, v0

    if-ge v2, v7, :cond_0

    aget-wide v8, p2, v2

    double-to-float v7, v8

    aget v8, p1, v2

    packed-switch v8, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    move v3, v7

    goto :goto_1

    :pswitch_2
    move v4, v7

    goto :goto_1

    :pswitch_3
    move v5, v7

    goto :goto_1

    :pswitch_4
    move v6, v7

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/Motion;->getCenterX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/Motion;->getCenterY()F

    move-result v7

    float-to-double v8, v2

    float-to-double v10, v6

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v4, v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    sub-double/2addr v8, v14

    double-to-float v2, v8

    float-to-double v8, v7

    float-to-double v6, v6

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v6, v10

    sub-double v6, v8, v6

    sub-double/2addr v6, v12

    double-to-float v5, v6

    move v6, v2

    move v2, v5

    :goto_2
    add-float v9, v6, v4

    add-float v12, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float v5, v2, v3

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    sub-float v3, v9, v6

    const/high16 v4, 0x7fc00000    # Float.NaN

    mul-float/2addr v3, v4

    add-float v4, v6, v3

    :cond_1
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    sub-float v3, v12, v2

    const/high16 v5, 0x7fc00000    # Float.NaN

    mul-float/2addr v3, v5

    add-float v5, v2, v3

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_5

    add-float v3, v6, v9

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v3, v7

    sub-float v3, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v3, v8

    add-float/2addr v3, v7

    sub-float v8, v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v8, v10

    add-float v11, v8, v7

    sub-float v8, v9, v7

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    add-float v9, v8, v7

    sub-float/2addr v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v6, v8

    add-float v13, v6, v7

    move v6, v3

    :goto_3
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_4

    add-float v3, v2, v12

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    sub-float v7, v2, v3

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    add-float/2addr v7, v3

    sub-float/2addr v2, v3

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v2, v8

    add-float v8, v2, v3

    sub-float v2, v12, v3

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v2, v10

    add-float v15, v2, v3

    sub-float v2, v12, v3

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v2, v10

    add-float v12, v2, v3

    :goto_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v3, v0

    invoke-static/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->xRotate(FFFFFF)F

    move-result v14

    invoke-static/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->yRotate(FFFFFF)F

    move-result v10

    move v6, v11

    move v7, v8

    invoke-static/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->xRotate(FFFFFF)F

    move-result v16

    move v6, v11

    move v7, v8

    invoke-static/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->yRotate(FFFFFF)F

    move-result v11

    move v6, v9

    move v7, v15

    invoke-static/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->xRotate(FFFFFF)F

    move-result v8

    move v6, v9

    move v7, v15

    invoke-static/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->yRotate(FFFFFF)F

    move-result v15

    move v6, v13

    move v7, v12

    invoke-static/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->xRotate(FFFFFF)F

    move-result v9

    move v6, v13

    move v7, v12

    invoke-static/range {v2 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->yRotate(FFFFFF)F

    move-result v2

    move v7, v10

    move v3, v11

    move v4, v2

    move v5, v9

    move v6, v14

    move v2, v8

    move/from16 v9, v16

    move v8, v15

    :goto_5
    add-int/lit8 v10, p4, 0x1

    const/4 v11, 0x0

    add-float/2addr v6, v11

    aput v6, p3, p4

    add-int/lit8 v6, v10, 0x1

    const/4 v11, 0x0

    add-float/2addr v7, v11

    aput v7, p3, v10

    add-int/lit8 v7, v6, 0x1

    const/4 v10, 0x0

    add-float/2addr v9, v10

    aput v9, p3, v6

    add-int/lit8 v6, v7, 0x1

    const/4 v9, 0x0

    add-float/2addr v3, v9

    aput v3, p3, v7

    add-int/lit8 v3, v6, 0x1

    const/4 v7, 0x0

    add-float/2addr v2, v7

    aput v2, p3, v6

    add-int/lit8 v2, v3, 0x1

    const/4 v6, 0x0

    add-float/2addr v6, v8

    aput v6, p3, v3

    add-int/lit8 v3, v2, 0x1

    const/4 v6, 0x0

    add-float/2addr v5, v6

    aput v5, p3, v2

    const/4 v2, 0x0

    add-float/2addr v2, v4

    aput v2, p3, v3

    return-void

    :cond_3
    move v2, v9

    move v3, v8

    move v4, v12

    move v5, v13

    move v8, v15

    move v9, v11

    goto :goto_5

    :cond_4
    move v7, v2

    move v8, v2

    move v15, v12

    goto/16 :goto_4

    :cond_5
    move v13, v6

    move v11, v9

    goto/16 :goto_3

    :cond_6
    move v2, v5

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method initCartesian(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 17

    move-object/from16 v0, p1

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mFramePosition:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v1, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move-object/from16 v0, p1

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    move-object/from16 v0, p1

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    move-object/from16 v0, p1

    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    :goto_1
    move-object/from16 v0, p3

    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    move-object/from16 v0, p2

    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    sub-float v7, v4, v5

    move-object/from16 v0, p3

    iget v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    move-object/from16 v0, p2

    iget v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    sub-float v9, v6, v8

    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move-object/from16 v0, p0

    iput v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    move-object/from16 v0, p2

    iget v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v5, v11

    move-object/from16 v0, p2

    iget v12, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v8, v13

    move-object/from16 v0, p3

    iget v14, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    move-object/from16 v0, p3

    iget v15, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v6, v6, v16

    add-float/2addr v4, v14

    add-float/2addr v11, v10

    sub-float v11, v4, v11

    add-float v4, v15, v6

    add-float v6, v12, v13

    sub-float v13, v4, v6

    mul-float v4, v11, v2

    add-float/2addr v4, v10

    mul-float v6, v7, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    mul-float v4, v13, v2

    add-float/2addr v4, v12

    mul-float v6, v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    mul-float v4, v7, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    mul-float v4, v9, v3

    add-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    move-object/from16 v0, p1

    iget v4, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    :goto_2
    move-object/from16 v0, p1

    iget v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p1

    iget v6, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_4
    move-object/from16 v0, p1

    iget v6, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    :goto_5
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    move-object/from16 v0, p2

    iget v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    mul-float/2addr v4, v11

    add-float/2addr v4, v8

    mul-float/2addr v6, v13

    add-float/2addr v4, v6

    mul-float/2addr v1, v7

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    sub-float v1, v4, v1

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    move-object/from16 v0, p2

    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    mul-float v4, v11, v5

    add-float/2addr v1, v4

    mul-float/2addr v2, v13

    add-float/2addr v1, v2

    mul-float v2, v9, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    move-object/from16 v0, p1

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    move-object/from16 v0, p1

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p1

    iget v4, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    goto :goto_2

    :cond_3
    move-object/from16 v0, p1

    iget v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    goto :goto_3

    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    goto :goto_4

    :cond_5
    move-object/from16 v0, p1

    iget v6, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    goto :goto_5
.end method

.method initPath(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 17

    move-object/from16 v0, p1

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mFramePosition:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v1, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move-object/from16 v0, p1

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    move-object/from16 v0, p1

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    move-object/from16 v0, p1

    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    :goto_1
    move-object/from16 v0, p3

    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    move-object/from16 v0, p2

    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    sub-float v5, v4, v5

    move-object/from16 v0, p3

    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    move-object/from16 v0, p2

    iget v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    sub-float v6, v4, v6

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    move-object/from16 v0, p1

    iget v4, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move-object/from16 v0, p2

    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    move-object/from16 v0, p2

    iget v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    move-object/from16 v0, p2

    iget v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    move-object/from16 v0, p2

    iget v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v10, v11

    move-object/from16 v0, p3

    iget v12, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    move-object/from16 v0, p3

    iget v13, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p3

    iget v14, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    move-object/from16 v0, p3

    iget v15, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v12, v13

    add-float/2addr v8, v4

    sub-float v8, v12, v8

    add-float v12, v14, v15

    add-float/2addr v11, v9

    sub-float v11, v12, v11

    mul-float v12, v8, v2

    add-float/2addr v4, v12

    mul-float v12, v5, v1

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v4, v12

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    mul-float v4, v11, v2

    add-float/2addr v4, v9

    mul-float v9, v6, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v9, v12

    sub-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    mul-float v4, v5, v1

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    mul-float v4, v6, v3

    add-float/2addr v4, v10

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    move-object/from16 v0, p1

    iget v4, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_3
    neg-float v7, v11

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    move-object/from16 v0, p2

    iget v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    mul-float v10, v8, v2

    add-float/2addr v9, v10

    mul-float/2addr v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float v1, v9, v1

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    move-object/from16 v0, p2

    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    mul-float/2addr v2, v11

    add-float/2addr v2, v5

    mul-float/2addr v3, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    mul-float v3, v7, v4

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    mul-float v1, v8, v4

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    move-object/from16 v0, p1

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p1

    iget v4, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    goto :goto_3
.end method

.method initPolar(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 8

    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mFramePosition:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v0, v1

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_1
    iget v3, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iget v4, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iget v5, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    iget v6, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    iput v7, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    sub-float v3, v5, v6

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    iget v3, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    packed-switch v3, :pswitch_data_0

    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iget v2, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget v3, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    iget v0, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget v2, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    :goto_4
    iget v0, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    iget-object v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_0
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    goto :goto_0

    :cond_1
    iget v2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    goto :goto_1

    :pswitch_0
    iget v3, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget v2, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget v2, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    goto :goto_4

    :cond_2
    iget v3, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v3

    goto :goto_5

    :cond_3
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    goto :goto_6

    :pswitch_1
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_7
    iget v2, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget v3, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_8
    iget v0, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget v2, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    goto :goto_4

    :cond_4
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    goto :goto_7

    :cond_5
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    goto :goto_8

    :cond_6
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    goto/16 :goto_2

    :cond_7
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method initScreen(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 17

    move-object/from16 v0, p3

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mFramePosition:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v1, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move-object/from16 v0, p3

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    move-object/from16 v0, p3

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    move-object/from16 v0, p3

    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    :goto_1
    move-object/from16 v0, p5

    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    move-object/from16 v0, p4

    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    sub-float v6, v4, v5

    move-object/from16 v0, p5

    iget v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    move-object/from16 v0, p4

    iget v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    sub-float v9, v7, v8

    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move-object/from16 v0, p0

    iput v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    move-object/from16 v0, p4

    iget v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v5, v11

    move-object/from16 v0, p4

    iget v12, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v8, v13

    move-object/from16 v0, p5

    iget v14, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    move-object/from16 v0, p5

    iget v15, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v7, v16

    add-float/2addr v4, v14

    add-float/2addr v11, v10

    sub-float/2addr v4, v11

    mul-float/2addr v4, v2

    add-float/2addr v4, v10

    mul-float v10, v6, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v4, v10

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    add-float v4, v15, v7

    add-float v7, v12, v13

    sub-float/2addr v4, v7

    mul-float/2addr v2, v4

    add-float/2addr v2, v12

    mul-float v4, v9, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    sub-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    mul-float v1, v9, v3

    add-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    move-object/from16 v0, p3

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    move/from16 v0, p1

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p3

    iget v2, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    :cond_0
    move-object/from16 v0, p3

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    move/from16 v0, p2

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p3

    iget v2, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    move-object/from16 v0, p3

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    move-object/from16 v0, p3

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_2
    move-object/from16 v0, p3

    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    goto/16 :goto_1
.end method

.method setBounds(FFFF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iput p3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    return-void
.end method

.method setDpDt(FF[F[I[D[D)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, p4

    if-ge v0, v5, :cond_0

    aget-wide v6, p5, v0

    double-to-float v5, v6

    aget-wide v6, p6, v0

    double-to-float v6, v6

    aget v6, p4, v0

    packed-switch v6, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    move v1, v5

    goto :goto_1

    :pswitch_2
    move v2, v5

    goto :goto_1

    :pswitch_3
    move v3, v5

    goto :goto_1

    :pswitch_4
    move v4, v5

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    mul-float/2addr v0, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    sub-float v0, v4, v0

    const/4 v4, 0x0

    mul-float/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    mul-float/2addr v5, v0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v5

    const/4 v2, 0x0

    add-float/2addr v0, v2

    aput v0, p3, v4

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v2, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    add-float/2addr v1, v2

    aput v1, p3, v0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method setView(FLandroidx/constraintlayout/core/motion/MotionWidget;[I[D[D[D)V
    .locals 27

    move-object/from16 v0, p0

    iget v12, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    move-object/from16 v0, p0

    iget v11, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    move-object/from16 v0, p0

    iget v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    move-object/from16 v0, p3

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    array-length v2, v2

    move-object/from16 v0, p3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p3, v3

    if-gt v2, v3, :cond_0

    move-object/from16 v0, p3

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, p3, v2

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [D

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v2, v14, v15}, Ljava/util/Arrays;->fill([DD)V

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    aget v13, p3, v2

    aget-wide v14, p4, v2

    aput-wide v14, v3, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    aget v13, p3, v2

    aget-wide v14, p5, v2

    aput-wide v14, v3, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v13, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    array-length v3, v2

    if-ge v13, v3, :cond_6

    aget-wide v2, v2, v13

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    const-wide/16 v2, 0x0

    if-eqz v14, :cond_3

    if-eqz p6, :cond_2

    aget-wide v14, p6, v13

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_3

    :cond_2
    :goto_2
    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    :goto_3
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    move v12, v10

    move v10, v8

    move v11, v9

    move v8, v6

    move v9, v7

    move v7, v5

    move v6, v4

    move v4, v2

    move v5, v3

    goto :goto_1

    :cond_3
    if-eqz p6, :cond_4

    aget-wide v2, p6, v13

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    aget-wide v14, v14, v13

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-eqz v14, :cond_5

    :goto_4
    double-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    aget-wide v14, v2, v13

    double-to-float v2, v14

    packed-switch v13, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    aget-wide v14, v14, v13

    add-double/2addr v2, v14

    goto :goto_4

    :pswitch_1
    move v2, v4

    move v5, v7

    move v4, v6

    move v7, v9

    move v6, v8

    move v9, v11

    move v8, v10

    move v10, v12

    goto :goto_3

    :pswitch_2
    move v4, v6

    move v9, v11

    move v6, v8

    move v8, v10

    move v10, v12

    move/from16 v26, v7

    move v7, v3

    move v3, v5

    move/from16 v5, v26

    goto :goto_3

    :pswitch_3
    move v6, v8

    move v10, v12

    move v8, v3

    move v3, v5

    move v5, v7

    move v7, v9

    move v9, v11

    move/from16 v26, v2

    move v2, v4

    move/from16 v4, v26

    goto :goto_3

    :pswitch_4
    move v7, v9

    move v9, v3

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v6

    move v6, v8

    move v8, v10

    move v10, v12

    goto :goto_3

    :pswitch_5
    move v8, v10

    move v10, v3

    move v3, v5

    move v5, v7

    move v7, v9

    move v9, v11

    move/from16 v26, v4

    move v4, v6

    move v6, v2

    move/from16 v2, v26

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    if-eqz v2, :cond_a

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x2

    new-array v4, v4, [F

    move/from16 v0, p1

    float-to-double v14, v0

    invoke-virtual {v2, v14, v15, v3, v4}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v3, 0x0

    aget v13, v4, v3

    const/4 v3, 0x1

    aget v4, v4, v3

    float-to-double v2, v2

    float-to-double v14, v12

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v10, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    add-double/2addr v2, v14

    sub-double v2, v2, v18

    double-to-float v3, v2

    float-to-double v14, v6

    float-to-double v0, v12

    move-wide/from16 v16, v0

    float-to-double v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    float-to-double v0, v2

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    sub-double v14, v14, v20

    double-to-float v2, v14

    float-to-double v14, v13

    float-to-double v0, v8

    move-wide/from16 v16, v0

    float-to-double v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    float-to-double v0, v12

    move-wide/from16 v20, v0

    float-to-double v0, v11

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    float-to-double v0, v7

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double v16, v20, v22

    mul-double v16, v16, v24

    add-double v14, v14, v16

    double-to-float v6, v14

    float-to-double v14, v4

    float-to-double v0, v8

    move-wide/from16 v16, v0

    float-to-double v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    float-to-double v12, v12

    float-to-double v0, v11

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    mul-double v12, v12, v20

    mul-double v12, v12, v22

    add-double/2addr v12, v14

    double-to-float v4, v12

    move-object/from16 v0, p5

    array-length v7, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_7

    const/4 v7, 0x0

    float-to-double v12, v6

    aput-wide v12, p5, v7

    const/4 v7, 0x1

    float-to-double v12, v4

    aput-wide v12, p5, v7

    :cond_7
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_8

    float-to-double v12, v5

    float-to-double v4, v4

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v12

    double-to-float v4, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->setRotationZ(F)V

    :cond_8
    move v11, v2

    move v12, v3

    :cond_9
    :goto_5
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v12

    float-to-int v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v11

    float-to-int v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v4, v12

    add-float/2addr v4, v10

    float-to-int v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v11

    add-float/2addr v5, v9

    float-to-int v5, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/MotionWidget;->layout(IIII)V

    return-void

    :cond_a
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_9

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v6, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v4, v3

    const/4 v4, 0x0

    float-to-double v14, v4

    float-to-double v4, v5

    add-float/2addr v3, v7

    float-to-double v6, v3

    add-float/2addr v2, v8

    float-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    add-double/2addr v2, v14

    double-to-float v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setRotationZ(F)V

    goto :goto_5

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

.method public setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 6

    const/high16 v4, 0x40000000    # 2.0f

    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    sub-float/2addr v2, v3

    iget v3, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    goto :goto_0
.end method
