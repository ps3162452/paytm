.class public Landroidx/constraintlayout/motion/widget/KeyAttributes;
.super Landroidx/constraintlayout/motion/widget/Key;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final KEY_TYPE:I = 0x1

.field static final NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "5aded3"

    const-wide/32 v2, 0x4b9549be

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->NAME:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "01c930"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7et
        0x4t
        0x1dt
        0x24t
        0x10t
        0x47t
        0x47t
        0x8t
        0x6t
        0x10t
        0x10t
        0x56t
    .end array-data

    :array_1
    .array-data 1
        0x7bt
        0x54t
        0x1at
        0x78t
        0x47t
        0x44t
        0x42t
        0x58t
        0x1t
        0x4ct
        0x47t
        0x55t
        0x43t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    return p1
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    return v0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    return v0
.end method

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    return p1
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    return v0
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    return v0
.end method

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    return v0
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    return v0
.end method

.method static synthetic access$1402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    return v0
.end method

.method static synthetic access$1502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    return v0
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    return p1
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    return v0
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyAttributes;I)I
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    return p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    return v0
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    return p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    return v0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    return v0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    return p1
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    return v0
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    return p1
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    return v0
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    return p1
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .locals 12
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v4, 0x6

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-eqz v1, :cond_0

    new-array v8, v4, [B

    fill-array-data v8, :array_0

    const-string v9, "bc0fed"

    const/16 v10, 0xd56

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-array v8, v4, [B

    fill-array-data v8, :array_1

    const-string v9, "01c1ac"

    const-wide/32 v10, 0x267c748b

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v0, :cond_0

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    invoke-virtual {v1, v8, v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto :goto_0

    :sswitch_0
    const/4 v8, 0x5

    new-array v8, v8, [B

    fill-array-data v8, :array_2

    const-string v9, "209dc6"

    invoke-static {v8, v9, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_1
    const/16 v8, 0x14

    new-array v8, v8, [B

    fill-array-data v8, :array_3

    const-string v9, "fdc01c"

    const-wide/32 v10, 0x123c81d3

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    new-array v8, v5, [B

    fill-array-data v8, :array_4

    const-string v9, "21ca60"

    invoke-static {v8, v9, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :sswitch_3
    const/16 v8, 0x8

    new-array v8, v8, [B

    fill-array-data v8, :array_5

    const-string v9, "54853f"

    const-wide v10, -0x3e44024df6000000L    # -4.69611018E8

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const/16 v8, 0xf

    new-array v8, v8, [B

    fill-array-data v8, :array_6

    const-string v9, "1f85bc"

    const-wide v10, -0x3e29849336800000L    # -1.508750118E9

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto/16 :goto_1

    :sswitch_5
    const/16 v8, 0xf

    new-array v8, v8, [B

    fill-array-data v8, :array_7

    const-string v9, "b45dbd"

    const v10, -0x31b7a242

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_6
    new-array v8, v4, [B

    fill-array-data v8, :array_8

    const-string v9, "ef169e"

    const v10, -0x33766d2c    # -7.212816E7f

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto/16 :goto_1

    :sswitch_7
    new-array v8, v4, [B

    fill-array-data v8, :array_9

    const-string v9, "ba7f82"

    const/16 v10, -0x2c0b

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_8
    const/16 v8, 0x8

    new-array v8, v8, [B

    fill-array-data v8, :array_a

    const-string v9, "76695c"

    const v10, -0x31f5e4af

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_9
    new-array v8, v6, [B

    fill-array-data v8, :array_b

    const-string v9, "a4ab6c"

    const/16 v10, 0x775c

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto/16 :goto_1

    :sswitch_a
    new-array v8, v6, [B

    fill-array-data v8, :array_c

    const-string v9, "67ea77"

    const-wide v10, 0x41d6c6c22d400000L    # 1.528498357E9

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_b
    new-array v8, v6, [B

    fill-array-data v8, :array_d

    const-string v9, "159846"

    const/16 v10, 0x72

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_c
    new-array v8, v5, [B

    fill-array-data v8, :array_e

    const-string v9, "488690"

    const-wide/32 v10, 0x7558ec63

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_d
    new-array v8, v5, [B

    fill-array-data v8, :array_f

    const-string v9, "8396dd"

    const-wide/32 v10, -0x4a0699ae

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto/16 :goto_1

    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_3
    return-void

    :array_0
    .array-data 1
        0x21t
        0x36t
        0x63t
        0x32t
        0x2at
        0x29t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x73t
        0x64t
        0x30t
        0x65t
        0x2et
        0x2et
    .end array-data

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_2
    .array-data 1
        0x53t
        0x5ct
        0x49t
        0xct
        0x2t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x12t
        0x16t
        0x2t
        0x5et
        0x42t
        0xat
        0x12t
        0xdt
        0xct
        0x5et
        0x61t
        0x2t
        0x12t
        0xct
        0x31t
        0x5ft
        0x45t
        0x2t
        0x12t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x57t
        0x5dt
        0x6t
        0x17t
        0x57t
        0x44t
        0x5bt
        0x5et
        0xdt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x47t
        0x5bt
        0x4ct
        0x54t
        0x47t
        0xft
        0x5at
        0x5at
    .end array-data

    :array_6
    .array-data 1
        0x45t
        0x14t
        0x59t
        0x5bt
        0x11t
        0x5t
        0x5et
        0x14t
        0x55t
        0x65t
        0xbt
        0x15t
        0x5et
        0x12t
        0x61t
    .end array-data

    :array_7
    .array-data 1
        0x16t
        0x46t
        0x54t
        0xat
        0x11t
        0x2t
        0xdt
        0x46t
        0x58t
        0x34t
        0xbt
        0x12t
        0xdt
        0x40t
        0x6dt
    .end array-data

    :array_8
    .array-data 1
        0x16t
        0x5t
        0x50t
        0x5at
        0x5ct
        0x3ct
    .end array-data

    nop

    :array_9
    .array-data 1
        0x11t
        0x2t
        0x56t
        0xat
        0x5dt
        0x6at
    .end array-data

    nop

    :array_a
    .array-data 1
        0x47t
        0x44t
        0x59t
        0x5et
        0x47t
        0x6t
        0x44t
        0x45t
    .end array-data

    :array_b
    .array-data 1
        0x15t
        0x46t
        0x0t
        0xct
        0x45t
        0xft
        0x0t
        0x40t
        0x8t
        0xdt
        0x58t
        0x39t
    .end array-data

    :array_c
    .array-data 1
        0x42t
        0x45t
        0x4t
        0xft
        0x44t
        0x5bt
        0x57t
        0x43t
        0xct
        0xet
        0x59t
        0x6et
    .end array-data

    :array_d
    .array-data 1
        0x45t
        0x47t
        0x58t
        0x56t
        0x47t
        0x5at
        0x50t
        0x41t
        0x50t
        0x57t
        0x5at
        0x6et
    .end array-data

    :array_e
    .array-data 1
        0x46t
        0x57t
        0x4ct
        0x57t
        0x4dt
        0x59t
        0x5bt
        0x56t
        0x61t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x4at
        0x5ct
        0x4dt
        0x57t
        0x10t
        0xdt
        0x57t
        0x5dt
        0x61t
    .end array-data
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

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

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x6

    const/16 v7, 0xc

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "70f6ca"

    const v2, 0x4b8b5926    # 1.8264652E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "55ac43"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "803f7c"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v6, [B

    fill-array-data v0, :array_3

    const-string v1, "d59e91"

    const-wide v2, -0x3e2124204e400000L    # -2.070904519E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "afed21"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "e60e26"

    const-wide/32 v2, 0x6bcf013f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "41a7f0"

    const v2, 0x4d7684ba    # 2.5849334E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    new-array v0, v7, [B

    fill-array-data v0, :array_7

    const-string v1, "5aa653"

    const-wide v2, 0x41b5502ae2000000L    # 3.57575394E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v7, [B

    fill-array-data v0, :array_8

    const-string v1, "243000"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v7, [B

    fill-array-data v0, :array_9

    const-string v1, "7961e2"

    const-wide v2, 0x41d6f67ce0c00000L    # 1.541010307E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "4c83c6"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    new-array v0, v8, [B

    fill-array-data v0, :array_b

    const-string v1, "310935"

    const-wide v2, 0x41a071ab82000000L    # 1.37942465E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    new-array v0, v8, [B

    fill-array-data v0, :array_c

    const-string v1, "0f73e1"

    const v2, -0x3264d946

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v1, "3d0412"

    const v2, 0x4e998e25

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_e

    const-string v3, "e0c518"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    return-void

    :array_0
    .array-data 1
        0x56t
        0x5ct
        0x16t
        0x5et
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0x59t
        0x4t
        0x15t
        0x55t
        0x47t
        0x5ct
        0x5at
        0xft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4at
        0x5ft
        0x47t
        0x7t
        0x43t
        0xat
        0x57t
        0x5et
    .end array-data

    :array_3
    .array-data 1
        0x16t
        0x5at
        0x4dt
        0x4t
        0x4dt
        0x58t
        0xbt
        0x5bt
        0x61t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x13t
        0x9t
        0x11t
        0x5t
        0x46t
        0x58t
        0xet
        0x8t
        0x3ct
    .end array-data

    nop

    :array_5
    .array-data 1
        0x11t
        0x44t
        0x51t
        0xbt
        0x41t
        0x50t
        0xat
        0x44t
        0x5dt
        0x35t
        0x5bt
        0x40t
        0xat
        0x42t
        0x68t
    .end array-data

    :array_6
    .array-data 1
        0x40t
        0x43t
        0x0t
        0x59t
        0x15t
        0x56t
        0x5bt
        0x43t
        0xct
        0x67t
        0xft
        0x46t
        0x5bt
        0x45t
        0x38t
    .end array-data

    :array_7
    .array-data 1
        0x41t
        0x13t
        0x0t
        0x58t
        0x46t
        0x5ft
        0x54t
        0x15t
        0x8t
        0x59t
        0x5bt
        0x6bt
    .end array-data

    :array_8
    .array-data 1
        0x46t
        0x46t
        0x52t
        0x5et
        0x43t
        0x5ct
        0x53t
        0x40t
        0x5at
        0x5ft
        0x5et
        0x69t
    .end array-data

    :array_9
    .array-data 1
        0x43t
        0x4bt
        0x57t
        0x5ft
        0x16t
        0x5et
        0x56t
        0x4dt
        0x5ft
        0x5et
        0xbt
        0x68t
    .end array-data

    :array_a
    .array-data 1
        0x40t
        0x11t
        0x59t
        0x5dt
        0x10t
        0x5ft
        0x40t
        0xat
        0x57t
        0x5dt
        0x33t
        0x57t
        0x40t
        0xbt
        0x6at
        0x5ct
        0x17t
        0x57t
        0x40t
        0x6t
    .end array-data

    :array_b
    .array-data 1
        0x40t
        0x52t
        0x51t
        0x55t
        0x56t
        0x6dt
    .end array-data

    nop

    :array_c
    .array-data 1
        0x43t
        0x5t
        0x56t
        0x5ft
        0x0t
        0x68t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x43t
        0x16t
        0x5ft
        0x53t
        0x43t
        0x57t
        0x40t
        0x17t
    .end array-data

    :array_e
    .array-data 1
        0x26t
        0x65t
        0x30t
        0x61t
        0x7et
        0x75t
        0x49t
    .end array-data
.end method

.method getCurveFit()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyAttributes;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xc

    const/16 v4, 0x9

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "bdda09"

    invoke-static {v0, v1, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "83c39c"

    const-wide v2, 0x41bce2d25f000000L    # 4.84627039E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "47a1c3"

    const-wide v2, -0x3e6ebdbb20000000L    # -7.238892E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "981824"

    const-wide/32 v2, -0xc6aa983

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v4, [B

    fill-array-data v0, :array_4

    const-string v1, "cc6c95"

    const/16 v2, 0x4768

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "9a9412"

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "05bb1f"

    const v2, -0x315843a1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v5, [B

    fill-array-data v0, :array_7

    const-string v1, "f7e981"

    const-wide v2, 0x41cba6b520800000L    # 9.27820353E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v5, [B

    fill-array-data v0, :array_8

    const-string v1, "0f8939"

    const-wide/32 v2, 0xd6c0570

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    new-array v0, v5, [B

    fill-array-data v0, :array_9

    const-string v1, "fd380d"

    const-wide/32 v2, 0x4fbc2e2c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "c79d40"

    const/16 v2, 0x3741

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    new-array v0, v8, [B

    fill-array-data v0, :array_b

    const-string v1, "ac1b98"

    const-wide/32 v2, -0x3ca578e3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_e

    new-array v0, v8, [B

    fill-array-data v0, :array_c

    const-string v1, "69fcb0"

    const/16 v2, 0x406a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v1, "c7e4b1"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_e

    const-string v3, "ed7df4"

    const/16 v4, 0x129e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x3t
        0x8t
        0x14t
        0x9t
        0x51t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5dt
        0x5ft
        0x6t
        0x45t
        0x58t
        0x17t
        0x51t
        0x5ct
        0xdt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x46t
        0x58t
        0x15t
        0x50t
        0x17t
        0x5at
        0x5bt
        0x59t
    .end array-data

    :array_3
    .array-data 1
        0x4bt
        0x57t
        0x45t
        0x59t
        0x46t
        0x5dt
        0x56t
        0x56t
        0x69t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x11t
        0xct
        0x42t
        0x2t
        0x4dt
        0x5ct
        0xct
        0xdt
        0x6ft
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4dt
        0x13t
        0x58t
        0x5at
        0x42t
        0x54t
        0x56t
        0x13t
        0x54t
        0x64t
        0x58t
        0x44t
        0x56t
        0x15t
        0x61t
    .end array-data

    :array_6
    .array-data 1
        0x44t
        0x47t
        0x3t
        0xct
        0x42t
        0x0t
        0x5ft
        0x47t
        0xft
        0x32t
        0x58t
        0x10t
        0x5ft
        0x41t
        0x3bt
    .end array-data

    :array_7
    .array-data 1
        0x12t
        0x45t
        0x4t
        0x57t
        0x4bt
        0x5dt
        0x7t
        0x43t
        0xct
        0x56t
        0x56t
        0x69t
    .end array-data

    :array_8
    .array-data 1
        0x44t
        0x14t
        0x59t
        0x57t
        0x40t
        0x55t
        0x51t
        0x12t
        0x51t
        0x56t
        0x5dt
        0x60t
    .end array-data

    :array_9
    .array-data 1
        0x12t
        0x16t
        0x52t
        0x56t
        0x43t
        0x8t
        0x7t
        0x10t
        0x5at
        0x57t
        0x5et
        0x3et
    .end array-data

    :array_a
    .array-data 1
        0x17t
        0x45t
        0x58t
        0xat
        0x47t
        0x59t
        0x17t
        0x5et
        0x56t
        0xat
        0x64t
        0x51t
        0x17t
        0x5ft
        0x6bt
        0xbt
        0x40t
        0x51t
        0x17t
        0x52t
    .end array-data

    :array_b
    .array-data 1
        0x12t
        0x0t
        0x50t
        0xet
        0x5ct
        0x60t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x45t
        0x5at
        0x7t
        0xft
        0x7t
        0x69t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x13t
        0x45t
        0xat
        0x53t
        0x10t
        0x54t
        0x10t
        0x44t
    .end array-data

    :array_e
    .array-data 1
        0x26t
        0x31t
        0x64t
        0x30t
        0x29t
        0x79t
        0x49t
    .end array-data
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xc

    const/16 v3, 0x9

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "da0362"

    invoke-static {v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "a088ee"

    const-wide/32 v4, 0x66f0fb59

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "2de1ff"

    const v3, 0x4d445d5c

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "bc8de8"

    const-wide v2, -0x3e2ee7c9dd400000L    # -1.147197579E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :sswitch_4
    new-array v0, v3, [B

    fill-array-data v0, :array_4

    const-string v1, "284d5b"

    const-wide v2, 0x41cca7ac17000000L    # 9.6150123E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "854b82"

    const v2, 0x4de306c5    # 4.7610896E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "cb7e95"

    const-wide v2, -0x3e48c7ef43000000L    # -3.89550269E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "eb2633"

    const-wide/32 v2, -0x441cc3a2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v4, [B

    fill-array-data v0, :array_8

    const-string v1, "098e38"

    const-wide/32 v2, -0x50b6193

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v4, [B

    fill-array-data v0, :array_9

    const-string v1, "dc3d4d"

    const-wide/32 v4, -0x4f1e388

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "1877f3"

    const-wide v2, -0x3e2b415b89000000L    # -1.392153052E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "4c6b31"

    const-wide/32 v2, 0x5fa67da3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "635450"

    const-wide v2, 0x41d1a52f3d400000L    # 1.184152821E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v3, [B

    fill-array-data v0, :array_d

    const-string v1, "6b00bd"

    const-wide v2, 0x41c2185852000000L    # 6.07170724E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_0

    :sswitch_e
    new-array v0, v3, [B

    fill-array-data v0, :array_e

    const-string v1, "62556d"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v2, "4a53a3"

    invoke-static {v0, v2, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    const-string v1, "c7f0ce"

    const/16 v2, 0x65a0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x72062ffd -> :sswitch_10
        -0x6c0d7d20 -> :sswitch_f
        -0x4a771f66 -> :sswitch_e
        -0x4a771f65 -> :sswitch_d
        -0x490b9c39 -> :sswitch_c
        -0x490b9c38 -> :sswitch_b
        -0x490b9c37 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2d5a2d1e -> :sswitch_7
        -0x2d5a2d1d -> :sswitch_6
        -0x266f082 -> :sswitch_5
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x2283b8a2 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x12t
        0x8t
        0x43t
        0x5at
        0x54t
        0x5bt
        0x8t
        0x8t
        0x44t
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x45t
        0x4at
        0x4et
        0x0t
        0x23t
        0x8t
        0x44t
    .end array-data

    :array_2
    .array-data 1
        0x53t
        0x8t
        0x15t
        0x59t
        0x7t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x16t
        0x11t
        0x59t
        0xat
        0x16t
        0x51t
        0x16t
        0xat
        0x57t
        0xat
        0x35t
        0x59t
        0x16t
        0xbt
        0x6at
        0xbt
        0x11t
        0x59t
        0x16t
        0x6t
    .end array-data

    :array_4
    .array-data 1
        0x57t
        0x54t
        0x51t
        0x12t
        0x54t
        0x16t
        0x5bt
        0x57t
        0x5at
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4at
        0x5at
        0x40t
        0x3t
        0x4ct
        0x5bt
        0x57t
        0x5bt
    .end array-data

    :array_6
    .array-data 1
        0x17t
        0x10t
        0x56t
        0xbt
        0x4at
        0x53t
        0xct
        0x10t
        0x5at
        0x35t
        0x50t
        0x43t
        0xct
        0x16t
        0x6et
    .end array-data

    :array_7
    .array-data 1
        0x11t
        0x10t
        0x53t
        0x58t
        0x40t
        0x55t
        0xat
        0x10t
        0x5ft
        0x66t
        0x5at
        0x45t
        0xat
        0x16t
        0x6at
    .end array-data

    :array_8
    .array-data 1
        0x43t
        0x5at
        0x59t
        0x9t
        0x56t
        0x61t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x17t
        0x0t
        0x52t
        0x8t
        0x51t
        0x3ct
    .end array-data

    nop

    :array_a
    .array-data 1
        0x45t
        0x4at
        0x56t
        0x59t
        0x15t
        0x5ft
        0x50t
        0x4ct
        0x5et
        0x58t
        0x8t
        0x69t
    .end array-data

    :array_b
    .array-data 1
        0x40t
        0x11t
        0x57t
        0xct
        0x40t
        0x5dt
        0x55t
        0x17t
        0x5ft
        0xdt
        0x5dt
        0x68t
    .end array-data

    :array_c
    .array-data 1
        0x42t
        0x41t
        0x54t
        0x5at
        0x46t
        0x5ct
        0x57t
        0x47t
        0x5ct
        0x5bt
        0x5bt
        0x68t
    .end array-data

    :array_d
    .array-data 1
        0x44t
        0xdt
        0x44t
        0x51t
        0x16t
        0xdt
        0x59t
        0xct
        0x69t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x44t
        0x5dt
        0x41t
        0x54t
        0x42t
        0xdt
        0x59t
        0x5ct
        0x6dt
    .end array-data

    nop

    :array_f
    .array-data 1
        0x40t
        0x13t
        0x54t
        0x5dt
        0x12t
        0x5at
        0x40t
        0x8t
        0x5at
        0x5dt
        0x24t
        0x52t
        0x47t
        0x8t
        0x5bt
        0x54t
    .end array-data

    :array_10
    .array-data 1
        0xet
        0x58t
        0x12t
        0x59t
        0xct
        0xbt
        0x33t
        0x45t
        0x9t
        0x57t
        0x11t
        0x0t
        0x10t
        0x44t
    .end array-data
.end method
