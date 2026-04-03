.class public abstract Landroidx/core/app/SharedElementCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String;

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String;

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String;

.field private static final MAX_IMAGE_SIZE:I = 0x100000


# instance fields
.field private mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1b1075"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/SharedElementCallback;->BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String;

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "91ed6b"

    const v2, 0x4e4b26a6    # 8.520769E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/SharedElementCallback;->BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String;

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "136b66"

    const-wide v2, -0x3e2993dd85000000L    # -1.504741868E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/SharedElementCallback;->BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0xat
        0x50t
        0x42t
        0x52t
        0x51t
        0x74t
        0xet
        0x54t
        0x5dt
        0x52t
        0x5bt
        0x45t
        0x58t
        0x42t
        0x5et
        0x56t
        0x45t
        0x42t
        0xat
        0x5et
        0x44t
        0xdt
        0x57t
        0x58t
        0x16t
        0x5ct
        0x51t
        0x47t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4at
        0x59t
        0x4t
        0x16t
        0x53t
        0x6t
        0x7ct
        0x5dt
        0x0t
        0x9t
        0x53t
        0xct
        0x4dt
        0xbt
        0x16t
        0xat
        0x57t
        0x12t
        0x4at
        0x59t
        0xat
        0x10t
        0xct
        0xbt
        0x54t
        0x50t
        0x2t
        0x1t
        0x7bt
        0x3t
        0x4dt
        0x43t
        0xct
        0x1ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x42t
        0x5bt
        0x57t
        0x10t
        0x53t
        0x52t
        0x74t
        0x5ft
        0x53t
        0xft
        0x53t
        0x58t
        0x45t
        0x9t
        0x45t
        0xct
        0x57t
        0x46t
        0x42t
        0x5bt
        0x59t
        0x16t
        0xct
        0x5ft
        0x5ct
        0x52t
        0x51t
        0x7t
        0x65t
        0x55t
        0x50t
        0x5ft
        0x53t
        0x36t
        0x4ft
        0x46t
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/high16 v2, 0x49800000    # 1048576.0f

    mul-int v3, v0, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    cmpl-float v3, v2, v4

    if-nez v3, :cond_2

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v3, v0

    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v1, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v8, v8, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 6

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroidx/core/app/SharedElementCallback;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Landroidx/core/app/SharedElementCallback;->BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v2, Landroidx/core/app/SharedElementCallback;->BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/16 v2, 0x9

    new-array v2, v2, [F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    sget-object v0, Landroidx/core/app/SharedElementCallback;->BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v0, 0x0

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, 0x49800000    # 1048576.0f

    mul-int v4, v1, v2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_3

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    :cond_3
    iget-object v3, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    iget v4, p3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v5, p3, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Landroidx/core/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/os/Bundle;

    sget-object v0, Landroidx/core/app/SharedElementCallback;->BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroidx/core/app/SharedElementCallback;->BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v2, :cond_3

    sget-object v0, Landroidx/core/app/SharedElementCallback;->BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/graphics/Bitmap;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method
