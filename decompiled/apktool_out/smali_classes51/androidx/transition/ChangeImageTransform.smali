.class public Landroidx/transition/ChangeImageTransform;
.super Landroidx/transition/Transition;


# static fields
.field private static final ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String;

.field private static final PROPNAME_MATRIX:Ljava/lang/String;

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x23

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "261662"

    const-wide/32 v2, -0x356ad5d7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeImageTransform;->PROPNAME_BOUNDS:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "29b1c1"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeImageTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v4, [B

    fill-array-data v1, :array_2

    const-string v2, "888285"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v4, [B

    fill-array-data v1, :array_3

    const-string v2, "4ac2db"

    const v3, 0x4e2a90c1    # 7.154033E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Landroidx/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    new-instance v0, Landroidx/transition/ChangeImageTransform$1;

    invoke-direct {v0}, Landroidx/transition/ChangeImageTransform$1;-><init>()V

    sput-object v0, Landroidx/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    new-instance v0, Landroidx/transition/ChangeImageTransform$2;

    const-class v1, Landroid/graphics/Matrix;

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "dba1c9"

    const-wide/32 v4, 0x4eb21986

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    return-void

    :array_0
    .array-data 1
        0x53t
        0x58t
        0x55t
        0x44t
        0x59t
        0x5bt
        0x56t
        0xct
        0x52t
        0x5et
        0x57t
        0x5ct
        0x55t
        0x53t
        0x78t
        0x5bt
        0x57t
        0x55t
        0x57t
        0x62t
        0x43t
        0x57t
        0x58t
        0x41t
        0x54t
        0x59t
        0x43t
        0x5bt
        0xct
        0x50t
        0x5dt
        0x43t
        0x5ft
        0x52t
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x57t
        0x6t
        0x43t
        0xct
        0x58t
        0x56t
        0x3t
        0x1t
        0x59t
        0x2t
        0x5ft
        0x55t
        0x5ct
        0x2bt
        0x5ct
        0x2t
        0x56t
        0x57t
        0x6dt
        0x10t
        0x50t
        0xdt
        0x42t
        0x54t
        0x56t
        0x10t
        0x5ct
        0x59t
        0x5ct
        0x53t
        0x4dt
        0x10t
        0x58t
        0x1bt
    .end array-data

    :array_2
    .array-data 1
        0x59t
        0x56t
        0x5ct
        0x40t
        0x57t
        0x5ct
        0x5ct
        0x2t
        0x5bt
        0x5at
        0x59t
        0x5bt
        0x5ft
        0x5dt
        0x71t
        0x5ft
        0x59t
        0x52t
        0x5dt
        0x6ct
        0x4at
        0x53t
        0x56t
        0x46t
        0x5et
        0x57t
        0x4at
        0x5ft
        0x2t
        0x58t
        0x59t
        0x4ct
        0x4at
        0x5bt
        0x40t
    .end array-data

    :array_3
    .array-data 1
        0x55t
        0xft
        0x7t
        0x40t
        0xbt
        0xbt
        0x50t
        0x5bt
        0x0t
        0x5at
        0x5t
        0xct
        0x53t
        0x4t
        0x2at
        0x5ft
        0x5t
        0x5t
        0x51t
        0x35t
        0x11t
        0x53t
        0xat
        0x11t
        0x52t
        0xet
        0x11t
        0x5ft
        0x5et
        0x0t
        0x5bt
        0x14t
        0xdt
        0x56t
        0x17t
    .end array-data

    :array_4
    .array-data 1
        0x5t
        0xct
        0x8t
        0x5ct
        0x2t
        0x4dt
        0x1t
        0x6t
        0x35t
        0x43t
        0x2t
        0x57t
        0x17t
        0x4t
        0xet
        0x43t
        0xet
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 8

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeImageTransform;->PROPNAME_BOUNDS:Ljava/lang/String;

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {v4, v5, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/transition/ChangeImageTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    invoke-static {v0}, Landroidx/transition/ChangeImageTransform;->copyImageMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static centerCropMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float v2, v2

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    div-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, v4

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v2
.end method

.method private static copyImageMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 2
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroidx/transition/ChangeImageTransform$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0}, Landroidx/transition/ChangeImageTransform;->fitXYMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Landroidx/transition/ChangeImageTransform;->centerCropMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;
    .locals 4

    sget-object v0, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    new-instance v1, Landroidx/transition/TransitionUtils$MatrixEvaluator;

    invoke-direct {v1}, Landroidx/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    sget-object v1, Landroidx/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    sget-object v4, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    aput-object v4, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static fitXYMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object v1
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/ChangeImageTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/ChangeImageTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v5, 0x0

    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeImageTransform;->PROPNAME_BOUNDS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/ChangeImageTransform;->PROPNAME_BOUNDS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/ChangeImageTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    iget-object v3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v4, Landroidx/transition/ChangeImageTransform;->PROPNAME_MATRIX:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v4, :cond_9

    :cond_3
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v4, :cond_4

    if-gtz v1, :cond_6

    :cond_4
    invoke-direct {p0, v0}, Landroidx/transition/ChangeImageTransform;->createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    if-nez v2, :cond_7

    sget-object v2, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_7
    if-nez v3, :cond_8

    sget-object v3, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_8
    sget-object v1, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    invoke-virtual {v1, v0, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2, v3}, Landroidx/transition/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :cond_9
    move-object v0, v5

    goto :goto_0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroidx/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
