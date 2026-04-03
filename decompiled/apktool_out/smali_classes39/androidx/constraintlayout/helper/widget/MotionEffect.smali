.class public Landroidx/constraintlayout/helper/widget/MotionEffect;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;


# static fields
.field public static final AUTO:I = -0x1

.field public static final EAST:I = 0x2

.field public static final NORTH:I = 0x0

.field public static final SOUTH:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field private static final UNSET:I = -0x1

.field public static final WEST:I = 0x3


# instance fields
.field private fadeMove:I

.field private motionEffectAlpha:F

.field private motionEffectEnd:I

.field private motionEffectStart:I

.field private motionEffectStrictMove:Z

.field private motionEffectTranslationX:I

.field private motionEffectTranslationY:I

.field private viewTransitionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "aa2f26"

    const v2, -0x31f9f71f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x0t
        0x56t
        0x3t
        0x7ft
        0x59t
        0x17t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    const/16 v0, 0x31

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    const/16 v0, 0x32

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    iput v1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    const/16 v0, 0x31

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    const/16 v0, 0x32

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    iput v1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    const/16 v0, 0x31

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    const/16 v0, 0x32

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    iput v1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v6, 0x63

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_8

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_start:I

    if-ne v4, v5, :cond_1

    iget v5, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_end:I

    if-ne v4, v5, :cond_2

    iget v5, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    goto :goto_1

    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationX:I

    if-ne v4, v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    goto :goto_1

    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationY:I

    if-ne v4, v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    goto :goto_1

    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_alpha:I

    if-ne v4, v5, :cond_5

    iget v5, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    goto :goto_1

    :cond_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_move:I

    if-ne v4, v5, :cond_6

    iget v5, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    goto :goto_1

    :cond_6
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_strict:I

    if-ne v4, v5, :cond_7

    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    goto :goto_1

    :cond_7
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_viewTransition:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    goto :goto_1

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    if-ne v0, v1, :cond_9

    if-lez v0, :cond_b

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    :cond_9
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_a
    return-void

    :cond_b
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    goto :goto_2
.end method


# virtual methods
.method public isDecorator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/motion/widget/MotionLayout;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/helper/widget/MotionEffect;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/helper/widget/MotionEffect;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1

    sget-object v1, Landroidx/constraintlayout/helper/widget/MotionEffect;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "d0ca25"

    const/16 v5, 0x4b43

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v10, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v10}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    new-instance v11, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e3c547"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "deec23"

    const v3, -0x313d845e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-virtual {v11, v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    new-instance v12, Landroidx/constraintlayout/motion/widget/KeyPosition;

    invoke-direct {v12}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    invoke-virtual {v12, v1}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setFramePosition(I)V

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setType(I)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "177029"

    const/16 v3, -0x5ce8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "1f2784"

    const/16 v3, -0x6942

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v13, Landroidx/constraintlayout/motion/widget/KeyPosition;

    invoke-direct {v13}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-virtual {v13, v1}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setFramePosition(I)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setType(I)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "78d8af"

    const/16 v3, 0x5dcb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "ca63cb"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    if-lez v3, :cond_17

    new-instance v2, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const-string v4, "2c85f7"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_8

    const-string v4, "8307b5"

    const v5, -0x31131595

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    move-object v3, v2

    move-object v2, v1

    :goto_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    if-lez v5, :cond_16

    new-instance v4, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v4}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_9

    const-string v6, "e5bfb8"

    const v7, -0x313e3cec

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    const/16 v5, 0xc

    new-array v5, v5, [B

    fill-array-data v5, :array_a

    const-string v6, "3a932e"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    move-object v5, v4

    move-object v4, v1

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_9

    const/4 v1, 0x4

    new-array v8, v1, [I

    const/4 v1, 0x0

    move v6, v1

    :goto_2
    array-length v1, v9

    if-ge v6, v1, :cond_7

    aget-object v1, v9, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v1, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v7

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartX()F

    move-result v14

    sub-float/2addr v7, v14

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v14

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartY()F

    move-result v1

    sub-float v1, v14, v1

    const/4 v14, 0x0

    cmpg-float v14, v1, v14

    if-gez v14, :cond_4

    const/4 v14, 0x1

    const/4 v15, 0x1

    aget v15, v8, v15

    add-int/lit8 v15, v15, 0x1

    aput v15, v8, v14

    :cond_4
    const/4 v14, 0x0

    cmpl-float v1, v1, v14

    if-lez v1, :cond_5

    const/4 v1, 0x0

    const/4 v14, 0x0

    aget v14, v8, v14

    add-int/lit8 v14, v14, 0x1

    aput v14, v8, v1

    :cond_5
    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_6

    const/4 v1, 0x3

    const/4 v14, 0x3

    aget v14, v8, v14

    add-int/lit8 v14, v14, 0x1

    aput v14, v8, v1

    :cond_6
    const/4 v1, 0x0

    cmpg-float v1, v7, v1

    if-gez v1, :cond_2

    const/4 v1, 0x2

    const/4 v7, 0x2

    aget v7, v8, v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v8, v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    aget v7, v8, v1

    const/4 v1, 0x0

    const/4 v6, 0x1

    :goto_4
    const/4 v14, 0x4

    if-ge v6, v14, :cond_9

    aget v14, v8, v6

    if-ge v7, v14, :cond_8

    aget v1, v8, v6

    move v7, v1

    move v1, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    move v6, v1

    const/4 v1, 0x0

    move v7, v1

    :goto_5
    array-length v1, v9

    if-ge v7, v1, :cond_0

    aget-object v1, v9, v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v1, :cond_b

    :cond_a
    :goto_6
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v8

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartX()F

    move-result v14

    sub-float v14, v8, v14

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v8

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartY()F

    move-result v15

    sub-float v15, v8, v15

    const/4 v8, 0x1

    if-nez v6, :cond_f

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_d

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_d

    :cond_c
    const/4 v8, 0x0

    :cond_d
    :goto_7
    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget v8, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    const/4 v14, -0x1

    if-ne v8, v14, :cond_15

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    invoke-virtual {v1, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    invoke-virtual {v1, v13}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    move-object/from16 v0, p0

    iget v8, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    if-lez v8, :cond_e

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    :cond_e
    move-object/from16 v0, p0

    iget v8, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    if-lez v8, :cond_a

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    goto :goto_6

    :cond_f
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v6, v0, :cond_11

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_d

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    if-eqz v15, :cond_10

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_d

    :cond_10
    const/4 v8, 0x0

    goto :goto_7

    :cond_11
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v6, v0, :cond_13

    const/16 v16, 0x0

    cmpg-float v14, v14, v16

    if-gez v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    if-eqz v14, :cond_12

    const/4 v14, 0x0

    cmpl-float v14, v15, v14

    if-nez v14, :cond_d

    :cond_12
    const/4 v8, 0x0

    goto :goto_7

    :cond_13
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v6, v0, :cond_d

    const/16 v16, 0x0

    cmpl-float v14, v14, v16

    if-lez v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    if-eqz v14, :cond_14

    const/4 v14, 0x0

    cmpl-float v14, v15, v14

    if-nez v14, :cond_d

    :cond_14
    const/4 v8, 0x0

    goto :goto_7

    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z

    goto/16 :goto_6

    :cond_16
    move-object v5, v4

    move-object v4, v1

    goto/16 :goto_1

    :cond_17
    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x44t
        0x46t
        0xat
        0x4t
        0x45t
        0x46t
        0x44t
        0xdt
        0x43t
        0xft
        0x47t
        0x59t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x5ft
        0x13t
        0x5dt
        0x55t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5t
        0x9t
        0x15t
        0xbt
        0x53t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x41t
        0x52t
        0x45t
        0x53t
        0x57t
        0x57t
        0x45t
        0x6ft
    .end array-data

    :array_4
    .array-data 1
        0x41t
        0x3t
        0x40t
        0x54t
        0x5dt
        0x5at
        0x45t
        0x3ft
    .end array-data

    :array_5
    .array-data 1
        0x47t
        0x5dt
        0x16t
        0x5bt
        0x4t
        0x8t
        0x43t
        0x60t
    .end array-data

    :array_6
    .array-data 1
        0x13t
        0x4t
        0x44t
        0x50t
        0x6t
        0xct
        0x17t
        0x38t
    .end array-data

    :array_7
    .array-data 1
        0x46t
        0x11t
        0x59t
        0x5bt
        0x15t
        0x5bt
        0x53t
        0x17t
        0x51t
        0x5at
        0x8t
        0x6ft
    .end array-data

    :array_8
    .array-data 1
        0x4ct
        0x41t
        0x51t
        0x59t
        0x11t
        0x59t
        0x59t
        0x47t
        0x59t
        0x58t
        0xct
        0x6dt
    .end array-data

    :array_9
    .array-data 1
        0x11t
        0x47t
        0x3t
        0x8t
        0x11t
        0x54t
        0x4t
        0x41t
        0xbt
        0x9t
        0xct
        0x61t
    .end array-data

    :array_a
    .array-data 1
        0x47t
        0x13t
        0x58t
        0x5dt
        0x41t
        0x9t
        0x52t
        0x15t
        0x50t
        0x5ct
        0x5ct
        0x3ct
    .end array-data
.end method
