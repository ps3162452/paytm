.class public Landroidx/transition/Fade;
.super Landroidx/transition/Visibility;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# static fields
.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final OUT:I = 0x2

.field private static final PROPNAME_TRANSITION_ALPHA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f9e21c"

    const/16 v2, 0x4c9d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Fade;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "44b014"

    const-wide/32 v2, -0x723709ec

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Fade;->PROPNAME_TRANSITION_ALPHA:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x20t
        0x58t
        0x1t
        0x57t
    .end array-data

    :array_1
    .array-data 1
        0x55t
        0x5at
        0x6t
        0x42t
        0x5et
        0x5dt
        0x50t
        0xet
        0x4t
        0x51t
        0x55t
        0x51t
        0xet
        0x40t
        0x10t
        0x51t
        0x5ft
        0x47t
        0x5dt
        0x40t
        0xbt
        0x5ft
        0x5ft
        0x75t
        0x58t
        0x44t
        0xat
        0x51t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/transition/Fade;->setMode(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroidx/transition/Styleable;->FADE:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ca0c0f"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/transition/Fade;->getMode()I

    move-result v3

    invoke-static {v0, p2, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/transition/Fade;->setMode(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x0t
        0x54t
        0xat
        0x5et
        0x1t
        0x2et
        0xet
        0x54t
        0x6t
    .end array-data
.end method

.method private createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 3

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    sget-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroidx/transition/Fade$FadeAnimatorListener;

    invoke-direct {v1, p1}, Landroidx/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroidx/transition/Fade$1;

    invoke-direct {v1, p0, p1}, Landroidx/transition/Fade$1;-><init>(Landroidx/transition/Fade;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroidx/transition/Fade;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto :goto_0
.end method

.method private static getStartAlpha(Landroidx/transition/TransitionValues;F)F
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/Fade;->PROPNAME_TRANSITION_ALPHA:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_0
    return p1
.end method


# virtual methods
.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/Fade;->PROPNAME_TRANSITION_ALPHA:Ljava/lang/String;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v2}, Landroidx/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v1

    cmpl-float v2, v1, v3

    if-nez v2, :cond_0

    :goto_0
    invoke-direct {p0, p2, v0, v3}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p2}, Landroidx/transition/ViewUtils;->saveNonTransitionAlpha(Landroid/view/View;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
