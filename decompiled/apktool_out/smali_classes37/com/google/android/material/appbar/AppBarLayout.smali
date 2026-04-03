.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;,
        Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
        Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;,
        Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;,
        Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;,
        Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;,
        Lcom/google/android/material/appbar/AppBarLayout$LayoutParams$ScrollFlags;,
        Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;,
        Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;,
        Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

.field private currentOffset:I

.field private downPreScrollRange:I

.field private downScrollRange:I

.field private elevationOverlayAnimator:Landroid/animation/ValueAnimator;

.field private haveChildWithInterpolator:Z

.field private lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private liftOnScroll:Z

.field private final liftOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private liftOnScrollTargetView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private liftOnScrollTargetViewId:I

.field private liftable:Z

.field private liftableOverride:Z

.field private lifted:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:I

.field private statusBarForeground:Landroid/graphics/drawable/Drawable;

.field private tmpStatesArray:[I

.field private totalScrollRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_Design_AppBarLayout:I

    sput v0, Lcom/google/android/material/appbar/AppBarLayout;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->appBarLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/16 v8, 0x15

    const/4 v7, -0x1

    const/4 v6, 0x0

    sget v4, Lcom/google/android/material/appbar/AppBarLayout;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v7, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    iput v7, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    iput v7, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    iput v6, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setOrientation(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    sget-object v2, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    :cond_0
    invoke-static {p0, p2, p3, v4}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    :cond_1
    sget-object v2, Lcom/google/android/material/R$styleable;->AppBarLayout:[I

    new-array v5, v6, [I

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-direct {p0, v0, v6, v6}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_4

    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    :cond_5
    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    :cond_6
    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScroll:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScrollTargetViewId:I

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    sget v0, Lcom/google/android/material/R$styleable;->AppBarLayout_statusBarForeground:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/AppBarLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/appbar/AppBarLayout;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    return-object v0
.end method

.method private clearLiftOnScrollTargetView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private findLiftOnScrollTargetView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private hasCollapsibleChild()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private invalidateScrollRanges()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->restoreScrollState(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;Z)V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->saveScrollState(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    move-result-object v0

    goto :goto_0
.end method

.method private setExpanded(ZZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz p2, :cond_2

    const/4 v1, 0x4

    :goto_1
    if-eqz p3, :cond_0

    const/16 v0, 0x8

    :cond_0
    or-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    return-void

    :cond_1
    const/4 v1, 0x2

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private setLiftableState(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldDrawStatusBarForeground()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldOffsetFirstChild()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private startLiftOnScrollElevationOverlayAnimation(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$dimen;->design_appbar_elevation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    if-eqz p2, :cond_1

    move v2, v1

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$2;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private updateWillNotDraw()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldDrawStatusBarForeground()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public addLiftOnScrollListener(Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    return v0
.end method

.method public clearLiftOnScrollListener()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldDrawStatusBarForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 3

    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior",
            "<",
            "Lcom/google/android/material/appbar/AppBarLayout;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    return-object v0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v1, v3

    :goto_1
    if-ltz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    iget v7, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v7

    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_2

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v0, v6

    :goto_2
    if-nez v2, :cond_1

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v4

    sub-int v4, v5, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    add-int/2addr v0, v1

    :goto_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    add-int/2addr v0, v6

    goto :goto_2

    :cond_3
    add-int/2addr v0, v5

    goto :goto_2

    :cond_4
    if-lez v1, :cond_6

    :cond_5
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method getDownNestedScrollRange()I
    .locals 10

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    iget v8, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_2

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getLiftOnScrollTargetViewId()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method getPendingAction()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    return v0
.end method

.method public getStatusBarForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_3

    iget v8, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    if-nez v2, :cond_1

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    and-int/lit8 v1, v7, 0x2

    if-eqz v1, :cond_2

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method getUpNestedPreScrollRange()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method hasChildWithInterpolator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    return v0
.end method

.method hasScrollableChildren()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLiftOnScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    return v0
.end method

.method public isLifted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    array-length v0, v1

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/material/R$attr;->state_liftable:I

    :goto_0
    const/4 v3, 0x0

    aput v0, v1, v3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/google/android/material/R$attr;->state_lifted:I

    :goto_1
    const/4 v3, 0x1

    aput v0, v1, v3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/google/android/material/R$attr;->state_collapsible:I

    :goto_2
    const/4 v3, 0x2

    aput v0, v1, v3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/material/R$attr;->state_collapsed:I

    :goto_3
    const/4 v3, 0x3

    aput v0, v1, v3

    invoke-static {v2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v0

    return-object v0

    :cond_1
    sget v0, Lcom/google/android/material/R$attr;->state_liftable:I

    neg-int v0, v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/google/android/material/R$attr;->state_lifted:I

    neg-int v0, v0

    goto :goto_1

    :cond_3
    sget v0, Lcom/google/android/material/R$attr;->state_collapsible:I

    neg-int v0, v0

    goto :goto_2

    :cond_4
    sget v0, Lcom/google/android/material/R$attr;->state_collapsed:I

    neg-int v0, v0

    goto :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->hasCollapsibleChild()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setMeasuredDimension(II)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method onOffsetChanged(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->willNotDraw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->updateWillNotDraw()V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    :cond_1
    return-object p1
.end method

.method public removeLiftOnScrollListener(Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    return-void
.end method

.method resetPendingAction()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    return-void
.end method

.method public setLiftOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    return-void
.end method

.method public setLiftOnScrollTargetViewId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    return-void
.end method

.method public setLiftable(Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    move-result v0

    return v0
.end method

.method public setLiftableOverrideEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    return-void
.end method

.method public setLifted(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(ZZ)Z

    move-result v0

    return v0
.end method

.method setLiftedState(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(ZZ)Z

    move-result v0

    return v0
.end method

.method setLiftedState(ZZ)Z
    .locals 1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->startLiftOnScrollElevationOverlayAnimation(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x4b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "56d95f"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x74t
        0x46t
        0x14t
        0x7bt
        0x54t
        0x14t
        0x79t
        0x57t
        0x1dt
        0x56t
        0x40t
        0x12t
        0x15t
        0x5ft
        0x17t
        0x19t
        0x54t
        0xat
        0x42t
        0x57t
        0x1dt
        0x4at
        0x15t
        0x10t
        0x50t
        0x44t
        0x10t
        0x50t
        0x56t
        0x7t
        0x59t
        0x16t
        0x5t
        0x57t
        0x51t
        0x46t
        0x51t
        0x59t
        0x1t
        0x4at
        0x15t
        0x8t
        0x5at
        0x42t
        0x44t
        0x4at
        0x40t
        0x16t
        0x45t
        0x59t
        0x16t
        0x4dt
        0x15t
        0xet
        0x5at
        0x44t
        0xdt
        0x43t
        0x5at
        0x8t
        0x41t
        0x57t
        0x8t
        0x19t
        0x5at
        0x14t
        0x5ct
        0x53t
        0xat
        0x4dt
        0x54t
        0x12t
        0x5ct
        0x59t
        0xat
    .end array-data
.end method

.method public setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->updateWillNotDraw()V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStatusBarForegroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarForegroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method shouldLift(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->findLiftOnScrollTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
