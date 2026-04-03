.class Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/CircleImageView;I)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    iput p2, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowRadius:I

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->rect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    return-void
.end method

.method private updateRadialGradient(I)V
    .locals 8

    iget-object v7, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    div-int/lit8 v0, p1, 0x2

    int-to-float v1, v0

    div-int/lit8 v0, p1, 0x2

    int-to-float v2, v0

    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowRadius:I

    int-to-float v3, v0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v0

    int-to-float v3, v1

    int-to-float v4, v0

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v2, v0

    int-to-float v1, v1

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowRadius:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onResize(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int v0, p1

    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    return-void
.end method
