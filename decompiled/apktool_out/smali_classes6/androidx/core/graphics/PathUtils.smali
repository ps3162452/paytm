.class public final Landroidx/core/graphics/PathUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flatten(Landroid/graphics/Path;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Landroidx/core/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p0, v0}, Landroidx/core/graphics/PathUtils;->flatten(Landroid/graphics/Path;F)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static flatten(Landroid/graphics/Path;F)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "F)",
            "Ljava/util/Collection",
            "<",
            "Landroidx/core/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v1

    array-length v0, v1

    div-int/lit8 v2, v0, 0x3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v2, :cond_2

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x3

    aget v6, v1, v4

    add-int/lit8 v7, v4, 0x1

    aget v7, v1, v7

    add-int/lit8 v4, v4, 0x2

    aget v4, v1, v4

    aget v8, v1, v5

    add-int/lit8 v9, v5, 0x1

    aget v9, v1, v9

    add-int/lit8 v5, v5, 0x2

    aget v5, v1, v5

    cmpl-float v10, v6, v8

    if-eqz v10, :cond_1

    cmpl-float v10, v7, v9

    if-nez v10, :cond_0

    cmpl-float v10, v4, v5

    if-eqz v10, :cond_1

    :cond_0
    new-instance v10, Landroidx/core/graphics/PathSegment;

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v9, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v7, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v10, v11, v8, v5, v6}, Landroidx/core/graphics/PathSegment;-><init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method
