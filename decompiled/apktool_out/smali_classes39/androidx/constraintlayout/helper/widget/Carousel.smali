.class public Landroidx/constraintlayout/helper/widget/Carousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field public static final TOUCH_UP_CARRY_ON:I = 0x2

.field public static final TOUCH_UP_IMMEDIATE_STOP:I = 0x1


# instance fields
.field private backwardTransition:I

.field private dampening:F

.field private emptyViewBehavior:I

.field private firstViewReference:I

.field private forwardTransition:I

.field private infiniteCarousel:Z

.field private mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

.field private mAnimateTargetDelay:I

.field private mIndex:I

.field mLastStartId:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPreviousIndex:I

.field private mTargetIndex:I

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private nextState:I

.field private previousState:I

.field private startIndex:I

.field private touchUpMode:I

.field private velocityThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6bf137"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/helper/widget/Carousel;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x75t
        0x3t
        0x14t
        0x5et
        0x46t
        0x44t
        0x53t
        0xet
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    iput-boolean v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    const/16 v0, 0xc8

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    iput-boolean v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    const/16 v0, 0xc8

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    iput-boolean v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    const/16 v0, 0xc8

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/helper/widget/Carousel;)V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    return-void
.end method

.method static synthetic access$200(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    return v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    return v0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/helper/widget/Carousel;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    return v0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/helper/widget/Carousel;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    return v0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    return v0
.end method

.method private enableAllTransitions(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private enableTransition(IZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eq p2, v2, :cond_0

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    if-eqz p2, :cond_b

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_a

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_firstView:I

    if-ne v3, v4, :cond_1

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_backwardTransition:I

    if-ne v3, v4, :cond_2

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    goto :goto_1

    :cond_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_forwardTransition:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    goto :goto_1

    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_emptyViewsBehavior:I

    if-ne v3, v4, :cond_4

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    goto :goto_1

    :cond_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_previousState:I

    if-ne v3, v4, :cond_5

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    goto :goto_1

    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_nextState:I

    if-ne v3, v4, :cond_6

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    goto :goto_1

    :cond_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_dampeningFactor:I

    if-ne v3, v4, :cond_7

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    goto :goto_1

    :cond_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUpMode:I

    if-ne v3, v4, :cond_8

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    goto :goto_1

    :cond_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_velocityThreshold:I

    if-ne v3, v4, :cond_9

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    goto :goto_1

    :cond_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_infinite:I

    if-ne v3, v4, :cond_0

    iget-boolean v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    goto :goto_1

    :cond_a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    return-void
.end method

.method private updateItems()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    add-int/2addr v1, v3

    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    sub-int/2addr v1, v5

    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    if-eqz v5, :cond_9

    if-gez v1, :cond_4

    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    if-eq v5, v10, :cond_2

    invoke-direct {p0, v0, v5}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    :goto_2
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

    rem-int v5, v1, v5

    if-nez v5, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v1, v0, v2}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_2

    :cond_3
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v7}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v7

    rem-int/2addr v1, v7

    add-int/2addr v1, v6

    invoke-interface {v5, v0, v1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_3

    :cond_4
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

    if-lt v1, v5, :cond_8

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

    if-ne v1, v5, :cond_6

    move v1, v2

    :cond_5
    :goto_4
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    if-eq v5, v10, :cond_7

    invoke-direct {p0, v0, v5}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    :goto_5
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5, v0, v1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_3

    :cond_6
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

    if-le v1, v5, :cond_5

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

    rem-int/2addr v1, v5

    goto :goto_4

    :cond_7
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_5

    :cond_8
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5, v0, v1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_3

    :cond_9
    if-gez v1, :cond_a

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_3

    :cond_a
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

    if-lt v1, v5, :cond_b

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_3

    :cond_b
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5, v0, v1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_3

    :cond_c
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    if-eq v0, v8, :cond_f

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-instance v1, Landroidx/constraintlayout/helper/widget/Carousel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/Carousel$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    :cond_d
    :goto_6
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    if-eq v0, v8, :cond_e

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    if-ne v0, v8, :cond_10

    :cond_e
    sget-object v0, Landroidx/constraintlayout/helper/widget/Carousel;->TAG:Ljava/lang/String;

    const/16 v1, 0x38

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9b0961"

    const-wide/32 v4, -0x252ce060

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-ne v0, v1, :cond_d

    iput v8, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    goto :goto_6

    :cond_10
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-nez v1, :cond_11

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    :goto_7
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_12

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    goto/16 :goto_0

    :cond_11
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    invoke-direct {p0, v1, v9}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    goto :goto_7

    :cond_12
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    invoke-direct {p0, v0, v9}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x77t
        0xdt
        0x10t
        0x5bt
        0x57t
        0x52t
        0x52t
        0x15t
        0x51t
        0x4bt
        0x52t
        0x11t
        0x56t
        0x10t
        0x10t
        0x5ft
        0x59t
        0x43t
        0x4et
        0x3t
        0x42t
        0x5dt
        0x16t
        0x45t
        0x4bt
        0x3t
        0x5et
        0x4at
        0x5ft
        0x45t
        0x50t
        0xdt
        0x5et
        0x4at
        0x16t
        0x55t
        0x5ct
        0x4t
        0x59t
        0x57t
        0x53t
        0x55t
        0x19t
        0x4t
        0x5ft
        0x4bt
        0x16t
        0x72t
        0x58t
        0x10t
        0x5ft
        0x4ct
        0x45t
        0x54t
        0x55t
        0x43t
    .end array-data
.end method

.method private updateViewVisibility(ILandroid/view/View;I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    goto :goto_0
.end method

.method private updateViewVisibility(Landroid/view/View;I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v2

    move v1, v0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v3, v2, v0

    invoke-direct {p0, v3, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(ILandroid/view/View;I)Z

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    return v0
.end method

.method public jumpToIndex(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->refresh()V

    return-void
.end method

.method public synthetic lambda$updateItems$0$Carousel()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x5

    invoke-super {p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIds:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    if-ne v4, v2, :cond_0

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    :cond_4
    return-void
.end method

.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0

    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    return-void
.end method

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    if-ne p2, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v1

    if-lt v0, v1, :cond_1

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-gez v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    :cond_2
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    if-ne p2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    goto :goto_0

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v1

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-gez v0, :cond_2

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    goto :goto_1
.end method

.method public refresh()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    invoke-direct {p0, v0, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    return-void
.end method

.method public setAdapter(Landroidx/constraintlayout/helper/widget/Carousel$Adapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    return-void
.end method

.method public transitionToIndex(II)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    goto :goto_0
.end method
