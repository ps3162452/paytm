.class Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;
.super Landroidx/constraintlayout/core/motion/utils/Easing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/Easing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CubicEasing"
.end annotation


# static fields
.field private static d_error:D

.field private static error:D


# instance fields
.field x1:D

.field x2:D

.field y1:D

.field y2:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    sput-wide v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->error:D

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    sput-wide v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->d_error:D

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    invoke-virtual/range {p0 .. p8}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->setup(DDDD)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x2c

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->str:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x29

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    return-void
.end method

.method private getDiffX(D)D
    .locals 11

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v0

    mul-double/2addr v6, v0

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v8

    mul-double/2addr v0, p1

    sub-double v2, v4, v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private getDiffY(D)D
    .locals 11

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v0

    mul-double/2addr v6, v0

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v8

    mul-double/2addr v0, p1

    sub-double v2, v4, v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private getX(D)D
    .locals 9

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

    mul-double v4, v0, v6

    mul-double/2addr v4, v0

    mul-double/2addr v4, p1

    mul-double/2addr v2, v4

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    mul-double/2addr v0, v6

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    mul-double v2, p1, p1

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private getY(D)D
    .locals 9

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

    mul-double v4, v0, v6

    mul-double/2addr v4, v0

    mul-double/2addr v4, p1

    mul-double/2addr v2, v4

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    mul-double/2addr v0, v6

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    mul-double v2, p1, p1

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public get(D)D
    .locals 11

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, p1, v0

    if-gtz v6, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    cmpl-double v0, p1, v4

    if-ltz v0, :cond_1

    move-wide v0, v4

    goto :goto_0

    :cond_1
    move-wide v0, v2

    move-wide v4, v2

    :goto_1
    sget-wide v6, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->error:D

    cmpl-double v6, v0, v6

    if-lez v6, :cond_3

    invoke-direct {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v6

    mul-double/2addr v0, v2

    cmpg-double v6, v6, p1

    if-gez v6, :cond_2

    add-double/2addr v4, v0

    goto :goto_1

    :cond_2
    sub-double/2addr v4, v0

    goto :goto_1

    :cond_3
    sub-double v2, v4, v0

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v2

    add-double v6, v4, v0

    invoke-direct {p0, v6, v7}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v6

    sub-double v8, v4, v0

    invoke-direct {p0, v8, v9}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getY(D)D

    move-result-wide v8

    add-double/2addr v0, v4

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getY(D)D

    move-result-wide v0

    sub-double/2addr v0, v8

    sub-double v4, p1, v2

    mul-double/2addr v0, v4

    sub-double v2, v6, v2

    div-double/2addr v0, v2

    add-double/2addr v0, v8

    goto :goto_0
.end method

.method public getDiff(D)D
    .locals 11

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    move-wide v0, v2

    move-wide v4, v2

    :goto_0
    sget-wide v6, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->d_error:D

    cmpl-double v6, v0, v6

    if-lez v6, :cond_1

    invoke-direct {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v6

    mul-double/2addr v0, v2

    cmpg-double v6, v6, p1

    if-gez v6, :cond_0

    add-double/2addr v4, v0

    goto :goto_0

    :cond_0
    sub-double/2addr v4, v0

    goto :goto_0

    :cond_1
    sub-double v2, v4, v0

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v2

    add-double v6, v4, v0

    invoke-direct {p0, v6, v7}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v6

    sub-double v8, v4, v0

    invoke-direct {p0, v8, v9}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getY(D)D

    move-result-wide v8

    add-double/2addr v0, v4

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->getY(D)D

    move-result-wide v0

    sub-double/2addr v0, v8

    sub-double v2, v6, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method setup(DDDD)V
    .locals 1

    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x1:D

    iput-wide p3, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y1:D

    iput-wide p5, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->x2:D

    iput-wide p7, p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->y2:D

    return-void
.end method
