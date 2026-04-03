.class public Landroidx/constraintlayout/core/motion/utils/Schlick;
.super Landroidx/constraintlayout/core/motion/utils/Easing;


# static fields
.field private static final DEBUG:Z


# instance fields
.field eps:D

.field mS:D

.field mT:D


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x2c

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->str:Ljava/lang/String;

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

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    return-void
.end method

.method private dfunc(D)D
    .locals 13

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    mul-double v4, v2, v0

    mul-double/2addr v4, v0

    sub-double v6, v0, p1

    mul-double/2addr v6, v2

    add-double/2addr v6, p1

    sub-double/2addr v0, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    mul-double/2addr v0, v6

    div-double v0, v4, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    sub-double v4, v0, v10

    mul-double/2addr v4, v2

    sub-double v6, v0, v10

    mul-double/2addr v4, v6

    neg-double v6, v2

    sub-double v8, v0, p1

    mul-double/2addr v6, v8

    sub-double/2addr v6, p1

    add-double/2addr v6, v10

    neg-double v2, v2

    sub-double/2addr v0, p1

    mul-double/2addr v0, v2

    sub-double/2addr v0, p1

    add-double/2addr v0, v10

    mul-double/2addr v0, v6

    div-double v0, v4, v0

    goto :goto_0
.end method

.method private func(D)D
    .locals 9

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    mul-double v2, v0, p1

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    sub-double/2addr v0, p1

    mul-double/2addr v0, v4

    add-double/2addr v0, p1

    div-double v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    sub-double v2, v6, v0

    sub-double v4, p1, v6

    mul-double/2addr v2, v4

    sub-double v4, v6, p1

    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    sub-double/2addr v0, p1

    mul-double/2addr v0, v6

    sub-double v0, v4, v0

    div-double v0, v2, v0

    goto :goto_0
.end method


# virtual methods
.method public get(D)D
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Schlick;->func(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDiff(D)D
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Schlick;->dfunc(D)D

    move-result-wide v0

    return-wide v0
.end method
