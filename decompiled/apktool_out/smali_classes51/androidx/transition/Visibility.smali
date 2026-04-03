.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$DisappearListener;,
        Landroidx/transition/Visibility$Mode;,
        Landroidx/transition/Visibility$VisibilityInfo;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String;

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String;

.field static final PROPNAME_VISIBILITY:Ljava/lang/String;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v3, 0x1d

    const/16 v6, 0x19

    const/4 v5, 0x1

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "174585"

    const/16 v2, 0x7664

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Visibility;->PROPNAME_PARENT:Ljava/lang/String;

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "35ee05"

    const v2, 0x4dbe9d37    # 3.9974678E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Visibility;->PROPNAME_SCREEN_LOCATION:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const-string v1, "e978e3"

    const v2, 0x4e7098d1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Visibility;->PROPNAME_VISIBILITY:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    const-string v3, "0470b4"

    const v4, 0x4efb160e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v6, [B

    fill-array-data v1, :array_4

    const-string v2, "6068b8"

    invoke-static {v1, v2, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x50t
        0x59t
        0x50t
        0x47t
        0x57t
        0x5ct
        0x55t
        0xdt
        0x42t
        0x5ct
        0x4bt
        0x5ct
        0x53t
        0x5et
        0x58t
        0x5ct
        0x4ct
        0x4ct
        0xbt
        0x47t
        0x55t
        0x47t
        0x5dt
        0x5bt
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x52t
        0x5bt
        0x1t
        0x17t
        0x5ft
        0x5ct
        0x57t
        0xft
        0x13t
        0xct
        0x43t
        0x5ct
        0x51t
        0x5ct
        0x9t
        0xct
        0x44t
        0x4ct
        0x9t
        0x46t
        0x6t
        0x17t
        0x55t
        0x50t
        0x5dt
        0x79t
        0xat
        0x6t
        0x51t
        0x41t
        0x5at
        0x5at
        0xbt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4t
        0x57t
        0x53t
        0x4at
        0xat
        0x5at
        0x1t
        0x3t
        0x41t
        0x51t
        0x16t
        0x5at
        0x7t
        0x50t
        0x5bt
        0x51t
        0x11t
        0x4at
        0x5ft
        0x4ft
        0x5et
        0x4bt
        0xct
        0x51t
        0xct
        0x55t
        0x5et
        0x4ct
        0x1ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x51t
        0x5at
        0x53t
        0x42t
        0xdt
        0x5dt
        0x54t
        0xet
        0x41t
        0x59t
        0x11t
        0x5dt
        0x52t
        0x5dt
        0x5bt
        0x59t
        0x16t
        0x4dt
        0xat
        0x42t
        0x5et
        0x43t
        0xbt
        0x56t
        0x59t
        0x58t
        0x5et
        0x44t
        0x1bt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x57t
        0x5et
        0x52t
        0x4at
        0xdt
        0x51t
        0x52t
        0xat
        0x40t
        0x51t
        0x11t
        0x51t
        0x54t
        0x59t
        0x5at
        0x51t
        0x16t
        0x41t
        0xct
        0x40t
        0x57t
        0x4at
        0x7t
        0x56t
        0x42t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
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

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    sget-object v0, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d94dd8"

    const/16 v3, -0x2da6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1, v4, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/transition/Visibility;->setMode(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x4bt
        0x55t
        0xat
        0x17t
        0x51t
        0x10t
        0x50t
        0x5bt
        0xat
        0x32t
        0x51t
        0x17t
        0x50t
        0x56t
        0xdt
        0x8t
        0x51t
        0x10t
        0x40t
        0x79t
        0xbt
        0x0t
        0x5dt
    .end array-data
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_VISIBILITY:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/Visibility;->PROPNAME_PARENT:Ljava/lang/String;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_SCREEN_LOCATION:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Landroidx/transition/Visibility$VisibilityInfo;

    invoke-direct {v1}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    iput-boolean v4, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    iput-boolean v4, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_VISIBILITY:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_VISIBILITY:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_VISIBILITY:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_VISIBILITY:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    :goto_1
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v0, v2, :cond_3

    iget-object v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_3

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    iput v5, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iput-object v6, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    iput v5, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    iput-object v6, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v0, v2, :cond_5

    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v0, :cond_4

    iput-boolean v4, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    :cond_4
    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v0, :cond_0

    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    :cond_5
    iget-object v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    iput-boolean v4, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    :cond_6
    iget-object v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v0, :cond_8

    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    :cond_8
    if-nez p2, :cond_0

    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v0, :cond_0

    iput-boolean v4, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

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

    invoke-direct {p0, p2, p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v1, :cond_1

    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_VISIBILITY:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/Visibility;->PROPNAME_VISIBILITY:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v1

    iget-boolean v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v2, :cond_3

    iget v1, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVisible(Landroidx/transition/TransitionValues;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_VISIBILITY:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Landroidx/transition/Visibility;->PROPNAME_PARENT:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-nez p4, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v2

    invoke-virtual {p0, v0, v3}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    and-int/lit8 v0, v0, 0x2

    if-eq v0, v9, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-eqz p2, :cond_0

    iget-object v6, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz p4, :cond_3

    iget-object v0, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v1, v0

    :goto_1
    sget v0, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v6, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    move v1, v3

    move-object v5, v0

    move-object v0, v2

    :goto_2
    if-eqz v5, :cond_d

    if-nez v1, :cond_2

    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v2, Landroidx/transition/Visibility;->PROPNAME_SCREEN_LOCATION:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v2, v0, v4

    aget v0, v0, v3

    new-array v7, v9, [I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v4, v7, v4

    sub-int/2addr v2, v4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v5, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v2, v7, v3

    sub-int/2addr v0, v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    invoke-interface {v0, v5}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, p1, v5, p2, p4}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    if-nez v1, :cond_0

    if-nez v2, :cond_c

    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    invoke-interface {v0, v5}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_5
    if-eqz v1, :cond_6

    move-object v5, v1

    move v0, v4

    move-object v1, v2

    :goto_3
    if-eqz v0, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v0, v1

    move-object v5, v6

    move v1, v4

    goto :goto_2

    :cond_6
    move-object v1, v2

    move-object v5, v2

    move v0, v3

    goto :goto_3

    :cond_7
    const/4 v0, 0x4

    if-ne p5, v0, :cond_8

    move-object v5, v2

    move v0, v4

    goto :goto_3

    :cond_8
    if-ne v6, v1, :cond_9

    move-object v5, v2

    move v0, v4

    goto :goto_3

    :cond_9
    move-object v1, v2

    move-object v5, v2

    move v0, v3

    goto :goto_3

    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v7

    invoke-virtual {p0, v0, v3}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v7

    iget-boolean v7, v7, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v7, :cond_b

    invoke-static {p1, v6, v0}, Landroidx/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move v1, v4

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, -0x1

    if-eq v7, v0, :cond_f

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroidx/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v0, :cond_f

    move-object v0, v1

    move-object v5, v6

    move v1, v4

    goto/16 :goto_2

    :cond_c
    sget v0, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v6, v0, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Landroidx/transition/Visibility$1;

    invoke-direct {v0, p0, p1, v5, v6}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto/16 :goto_0

    :cond_d
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v0, v4}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    invoke-virtual {p0, p1, v0, p2, p4}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_e

    new-instance v1, Landroidx/transition/Visibility$DisappearListener;

    invoke-direct {v1, v0, p5, v3}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v2, v1}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p0, v1}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto/16 :goto_0

    :cond_e
    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    move v1, v4

    goto/16 :goto_2
.end method

.method public setMode(I)V
    .locals 4

    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "211321"

    const/16 v3, 0x366

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroidx/transition/Visibility;->mMode:I

    return-void

    :array_0
    .array-data 1
        0x7dt
        0x5ft
        0x5dt
        0x4at
        0x12t
        0x7ct
        0x7dt
        0x75t
        0x74t
        0x6ct
        0x7bt
        0x7ft
        0x12t
        0x50t
        0x5ft
        0x57t
        0x12t
        0x7ct
        0x7dt
        0x75t
        0x74t
        0x6ct
        0x7dt
        0x64t
        0x66t
        0x11t
        0x57t
        0x5ft
        0x53t
        0x56t
        0x41t
        0x11t
        0x50t
        0x41t
        0x57t
        0x11t
        0x53t
        0x5dt
        0x5dt
        0x5ct
        0x45t
        0x54t
        0x56t
    .end array-data
.end method
