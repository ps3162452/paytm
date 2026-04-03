.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mInvertMatrix:Landroid/graphics/Matrix;

.field mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPaintTelltales:Landroid/graphics/Paint;

.field mTailColor:I

.field mTailScale:F

.field mVelocityMode:I

.field velocity:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "669d8e"

    const v2, -0x31575018

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7bt
        0x59t
        0x4dt
        0xdt
        0x57t
        0xbt
        0x62t
        0x53t
        0x55t
        0x8t
        0x4ct
        0x4t
        0x5at
        0x53t
        0x4at
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    if-eqz p2, :cond_4

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailColor:I

    if-ne v3, v4, :cond_1

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_velocityMode:I

    if-ne v3, v4, :cond_2

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    goto :goto_1

    :cond_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailScale:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/constraintlayout/utils/widget/MockView;->onAttachedToWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getHeight()I

    move-result v13

    const/4 v0, 0x5

    new-array v14, v0, [F

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    aput v1, v14, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3e800000    # 0.25f

    aput v1, v14, v0

    const/4 v0, 0x2

    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, v14, v0

    const/4 v0, 0x3

    const/high16 v1, 0x3f400000    # 0.75f

    aput v1, v14, v0

    const/4 v0, 0x4

    const v1, 0x3f666666    # 0.9f

    aput v1, v14, v0

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    array-length v0, v14

    if-ge v10, v0, :cond_0

    aget v3, v14, v10

    const/4 v0, 0x0

    move v11, v0

    :goto_1
    array-length v0, v14

    if-ge v11, v0, :cond_2

    aget v2, v14, v11

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewVelocity(Landroid/view/View;FF[FI)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    int-to-float v0, v12

    mul-float v5, v0, v2

    int-to-float v0, v13

    mul-float v6, v0, v3

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    mul-float v0, v1, v2

    sub-float v7, v5, v0

    mul-float v0, v4, v2

    sub-float v8, v6, v0

    iget-object v9, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/utils/widget/MockView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->postInvalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->requestLayout()V

    return-void
.end method
