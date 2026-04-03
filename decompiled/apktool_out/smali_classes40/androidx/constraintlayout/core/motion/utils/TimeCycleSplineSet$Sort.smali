.class public Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Sort"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doubleQuickSort([I[[FII)V
    .locals 7

    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v0, 0x0

    aput p3, v1, v0

    const/4 v0, 0x2

    aput p2, v1, v2

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    aget v3, v1, v0

    if-ge v2, v3, :cond_0

    invoke-static {p0, p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->partition([I[[FII)I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v4, -0x1

    aput v6, v1, v0

    add-int/lit8 v0, v5, 0x1

    aput v2, v1, v5

    add-int/lit8 v2, v0, 0x1

    aput v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v3, v4, 0x1

    aput v3, v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static partition([I[[FII)I
    .locals 3

    aget v1, p0, p3

    move v0, p2

    :goto_0
    if-ge p2, p3, :cond_1

    aget v2, p0, p2

    if-gt v2, v1, :cond_0

    invoke-static {p0, p1, v0, p2}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->swap([I[[FII)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v0, p3}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->swap([I[[FII)V

    return v0
.end method

.method private static swap([I[[FII)V
    .locals 2

    aget v0, p0, p2

    aget v1, p0, p3

    aput v1, p0, p2

    aput v0, p0, p3

    aget-object v0, p1, p2

    aget-object v1, p1, p3

    aput-object v1, p1, p2

    aput-object v0, p1, p3

    return-void
.end method
