.class Landroidx/transition/MatrixUtils$1;
.super Landroid/graphics/Matrix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/MatrixUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method oops()V
    .locals 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4015cc"

    const-wide v4, 0x41d397febd400000L    # 1.314913013E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x79t
        0x51t
        0x45t
        0x47t
        0xat
        0x1bt
        0x14t
        0x53t
        0x50t
        0x5bt
        0x43t
        0xdt
        0x5bt
        0x44t
        0x11t
        0x57t
        0x6t
        0x43t
        0x59t
        0x5ft
        0x55t
        0x5ct
        0x5t
        0xat
        0x51t
        0x54t
    .end array-data
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(F)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(FFF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FFFF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FFFF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postTranslate(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(F)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(FFF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FFFF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FFFF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preTranslate(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public setRotate(F)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setRotate(FFF)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setScale(FFFF)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSinCos(FF)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSkew(FF)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSkew(FFFF)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setTranslate(FF)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setValues([F)V
    .locals 0

    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method
