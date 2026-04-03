.class public Landroidx/constraintlayout/motion/widget/KeyPosition;
.super Landroidx/constraintlayout/motion/widget/KeyPositionBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
    }
.end annotation


# static fields
.field public static final DRAWPATH:Ljava/lang/String;

.field static final KEY_TYPE:I = 0x2

.field static final NAME:Ljava/lang/String;

.field public static final PERCENT_HEIGHT:Ljava/lang/String;

.field public static final PERCENT_WIDTH:Ljava/lang/String;

.field public static final PERCENT_X:Ljava/lang/String;

.field public static final PERCENT_Y:Ljava/lang/String;

.field public static final SIZE_PERCENT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSITION_EASING:Ljava/lang/String;

.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field mAltPercentX:F

.field mAltPercentY:F

.field private mCalculatedPositionX:F

.field private mCalculatedPositionY:F

.field mDrawPath:I

.field mPathMotionArc:I

.field mPercentHeight:F

.field mPercentWidth:F

.field mPercentX:F

.field mPercentY:F

.field mPositionType:I

.field mTransitionEasing:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0xb

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "c91909"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->DRAWPATH:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "e96dee"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->NAME:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "1c933b"

    const v2, 0x4e4686fa    # 8.3268365E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_HEIGHT:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "6c3414"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_WIDTH:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_4

    const-string v1, "deb514"

    const-wide v2, -0x3e20da7a27400000L    # -2.090211171E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_X:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_5

    const-string v1, "dac537"

    const-wide v2, 0x41d89294e3400000L    # 1.649038221E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_Y:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_6

    const-string v1, "527991"

    const v2, 0x4dd41120    # 4.447365E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->SIZE_PERCENT:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_7

    const-string v1, "c9c8e7"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "4a98fa"

    const v2, -0x3135a282

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->TRANSITION_EASING:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7t
        0x4bt
        0x50t
        0x4et
        0x60t
        0x58t
        0x17t
        0x51t
    .end array-data

    :array_1
    .array-data 1
        0x2et
        0x5ct
        0x4ft
        0x34t
        0xat
        0x16t
        0xct
        0x4dt
        0x5ft
        0xbt
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x6t
        0x4bt
        0x50t
        0x56t
        0xct
        0x45t
        0x2bt
        0x5ct
        0x5at
        0x54t
        0xat
        0x45t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x46t
        0x6t
        0x41t
        0x57t
        0x54t
        0x5at
        0x42t
        0x34t
        0x5at
        0x50t
        0x45t
        0x5ct
    .end array-data

    :array_4
    .array-data 1
        0x14t
        0x0t
        0x10t
        0x56t
        0x54t
        0x5at
        0x10t
        0x3dt
    .end array-data

    :array_5
    .array-data 1
        0x14t
        0x4t
        0x11t
        0x56t
        0x56t
        0x59t
        0x10t
        0x38t
    .end array-data

    :array_6
    .array-data 1
        0x46t
        0x5bt
        0x4dt
        0x5ct
        0x69t
        0x54t
        0x47t
        0x51t
        0x52t
        0x57t
        0x4dt
    .end array-data

    :array_7
    .array-data 1
        0x28t
        0x5ct
        0x1at
        0x68t
        0xat
        0x44t
        0xat
        0x4dt
        0xat
        0x57t
        0xbt
    .end array-data

    :array_8
    .array-data 1
        0x40t
        0x13t
        0x58t
        0x56t
        0x15t
        0x8t
        0x40t
        0x8t
        0x56t
        0x56t
        0x23t
        0x0t
        0x47t
        0x8t
        0x57t
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    sget v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mType:I

    return-void
.end method

.method private calcCartesianPosition(FFFF)V
    .locals 7

    const/4 v1, 0x0

    sub-float v4, p3, p1

    sub-float v5, p4, p2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_3
    mul-float/2addr v0, v4

    add-float/2addr v0, p1

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    mul-float v0, v4, v2

    add-float/2addr v0, p2

    mul-float v1, v5, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    goto :goto_1

    :cond_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    goto :goto_2

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    goto :goto_3
.end method

.method private calcPathPosition(FFFF)V
    .locals 6

    sub-float v0, p3, p1

    sub-float v1, p4, p2

    neg-float v2, v1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    mul-float v5, v0, v3

    add-float/2addr v5, p1

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    mul-float/2addr v1, v3

    add-float/2addr v1, p2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-void
.end method

.method private calcScreenPosition(II)V
    .locals 4

    const/4 v3, 0x0

    add-int/lit8 v0, p1, 0x0

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    mul-float/2addr v0, v1

    int-to-float v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    add-int/lit8 v0, p2, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    int-to-float v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method calcPosition(IIFFFF)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcCartesianPosition(FFFF)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcScreenPosition(II)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcPathPosition(FFFF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyPosition;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyPosition;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyPosition;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyPosition;

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-object p0
.end method

.method getPositionX()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    return v0
.end method

.method getPositionY()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return v0
.end method

.method public intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
    .locals 8

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcPosition(IIFFFF)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    sub-float v0, p5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    sub-float v0, p6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 7

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual/range {p0 .. p7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v0

    sub-float/2addr v3, v1

    aget-object v4, p5, v6

    if-eqz v4, :cond_1

    sget-object v4, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_X:Ljava/lang/String;

    aget-object v5, p5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sub-float v0, p3, v0

    div-float/2addr v0, v2

    aput v0, p6, v6

    sub-float v0, p4, v1

    div-float/2addr v0, v3

    aput v0, p6, v7

    :goto_0
    return-void

    :cond_0
    sub-float v0, p3, v0

    div-float/2addr v0, v2

    aput v0, p6, v7

    sub-float v0, p4, v1

    div-float/2addr v0, v3

    aput v0, p6, v6

    goto :goto_0

    :cond_1
    sget-object v4, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_X:Ljava/lang/String;

    aput-object v4, p5, v6

    sub-float v0, p3, v0

    div-float/2addr v0, v2

    aput v0, p6, v6

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_Y:Ljava/lang/String;

    aput-object v0, p5, v7

    sub-float v0, p4, v1

    div-float/2addr v0, v3

    aput v0, p6, v7

    goto :goto_0
.end method

.method positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v0

    sub-float/2addr v3, v1

    float-to-double v4, v2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v6, v4

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v5, v6, v8

    if-gez v5, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8c7a8c"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p6, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p6, v0

    :cond_0
    :goto_0
    return-void

    :cond_1
    div-float/2addr v2, v4

    div-float/2addr v3, v4

    sub-float v5, p4, v1

    mul-float/2addr v5, v2

    sub-float v6, p3, v0

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    sub-float v0, p3, v0

    mul-float/2addr v0, v2

    sub-float v1, p4, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    div-float/2addr v0, v4

    const/4 v1, 0x0

    aget-object v1, p5, v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_X:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p5, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput v0, p6, v1

    const/4 v0, 0x1

    aput v5, p6, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    sget-object v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_X:Ljava/lang/String;

    aput-object v2, p5, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_Y:Ljava/lang/String;

    aput-object v2, p5, v1

    const/4 v1, 0x0

    aput v0, p6, v1

    const/4 v0, 0x1

    aput v5, p6, v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5ct
        0xat
        0x44t
        0x15t
        0x59t
        0xdt
        0x5bt
        0x6t
        0x17t
        0x1ft
        0x18t
        0x53t
    .end array-data
.end method

.method positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    aget-object v2, p6, v4

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_X:Ljava/lang/String;

    aget-object v3, p6, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v1, v1

    div-float v1, p4, v1

    aput v1, p7, v4

    int-to-float v0, v0

    div-float v0, p5, v0

    aput v0, p7, v5

    :goto_0
    return-void

    :cond_0
    int-to-float v1, v1

    div-float v1, p4, v1

    aput v1, p7, v5

    int-to-float v0, v0

    div-float v0, p5, v0

    aput v0, p7, v4

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_X:Ljava/lang/String;

    aput-object v2, p6, v4

    int-to-float v1, v1

    div-float v1, p4, v1

    aput v1, p7, v4

    sget-object v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_Y:Ljava/lang/String;

    aput-object v1, p6, v5

    int-to-float v0, v0

    div-float v0, p5, v0

    aput v0, p7, v5

    goto :goto_0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_Y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_X:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->SIZE_PERCENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->DRAWPATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_HEIGHT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->PERCENT_WIDTH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->TRANSITION_EASING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_6
        -0x4330437f -> :sswitch_5
        -0x3ca72634 -> :sswitch_4
        -0x314b3c77 -> :sswitch_3
        -0xbefb6fc -> :sswitch_2
        0x198424b3 -> :sswitch_1
        0x198424b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
