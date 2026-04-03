.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$DispatchChangeEvent;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;,
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final EVENT_NESTED_SCROLL:I = 0x1

.field static final EVENT_PRE_DRAW:I = 0x0

.field static final EVENT_VIEW_REMOVED:I = 0x2

.field static final TAG:Ljava/lang/String;

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sRectPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

.field private final mBehaviorConsumed:[I

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "eb790c"

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TAG:Ljava/lang/String;

    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;

    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    sput-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    :array_0
    .array-data 1
        0x26t
        0xdt
        0x58t
        0x4bt
        0x54t
        0xat
        0xbt
        0x3t
        0x43t
        0x56t
        0x42t
        0x2ft
        0x4t
        0x1bt
        0x58t
        0x4ct
        0x44t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroidx/coordinatorlayout/R$attr;->coordinatorLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    new-instance v0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    new-instance v0, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    if-nez p3, :cond_1

    sget-object v0, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    const/4 v1, 0x0

    sget v2, Landroidx/coordinatorlayout/R$style;->Widget_Support_CoordinatorLayout:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    if-nez p3, :cond_2

    sget-object v2, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    const/4 v5, 0x0

    sget v6, Landroidx/coordinatorlayout/R$style;->Widget_Support_CoordinatorLayout:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_0
    :goto_1
    sget v0, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_keylines:I

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    array-length v2, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    iget-object v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    aget v5, v5, v0

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    sget-object v0, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    goto :goto_0

    :cond_2
    sget-object v2, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto :goto_1

    :cond_3
    sget v0, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method private static acquireTempRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    return-object v0
.end method

.method private static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_1

    move p2, p1

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-gt p0, p2, :cond_0

    move p2, p0

    goto :goto_0
.end method

.method private constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .locals 5

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget v4, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v2, v0, p3

    add-int v3, v1, p4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    move-object v1, p1

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, v4, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object p1, v1

    goto :goto_0
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V
    .locals 4

    iget v0, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v0

    invoke-static {v0, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    iget v0, p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v0

    invoke-static {v0, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    sparse-switch v1, :sswitch_data_0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    :goto_0
    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_1

    iget v0, p3, Landroid/graphics/Rect;->top:I

    :goto_1
    and-int/lit8 v3, v2, 0x7

    sparse-switch v3, :sswitch_data_2

    sub-int/2addr v1, p6

    :goto_2
    :sswitch_0
    and-int/lit8 v2, v2, 0x70

    sparse-switch v2, :sswitch_data_3

    sub-int/2addr v0, p7

    :goto_3
    :sswitch_1
    add-int v2, v1, p6

    add-int v3, v0, p7

    invoke-virtual {p4, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :sswitch_2
    iget v1, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :sswitch_3
    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    goto :goto_0

    :sswitch_4
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :sswitch_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_1

    :sswitch_6
    div-int/lit8 v3, p6, 0x2

    sub-int/2addr v1, v3

    goto :goto_2

    :sswitch_7
    div-int/lit8 v2, p7, 0x2

    sub-int/2addr v0, v2

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getKeyline(I)I
    .locals 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    if-nez v1, :cond_0

    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x18

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "562bba"

    invoke-static {v3, v4, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1a

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "9bd79d"

    const-wide v6, -0x3e31bc9328800000L    # -1.015470511E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    :cond_1
    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "b82e53"

    const-wide/32 v6, 0x3e126b6a

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "0d5db7"

    const-wide/32 v6, -0x15fb6ef0

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    aget v0, v0, p1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x7bt
        0x59t
        0x12t
        0x9t
        0x7t
        0x18t
        0x59t
        0x5ft
        0x5ct
        0x7t
        0x11t
        0x41t
        0x51t
        0x53t
        0x54t
        0xbt
        0xct
        0x4t
        0x51t
        0x16t
        0x54t
        0xdt
        0x10t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x19t
        0x4ft
        0x44t
        0x56t
        0x4dt
        0x10t
        0x5ct
        0xft
        0x14t
        0x43t
        0x5ct
        0x0t
        0x19t
        0xbt
        0xat
        0x53t
        0x5ct
        0x1ct
        0x19t
        0xet
        0xbt
        0x58t
        0x52t
        0x11t
        0x49t
        0x42t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x29t
        0x5dt
        0x4bt
        0x9t
        0x5ct
        0x5dt
        0x7t
        0x18t
        0x5bt
        0xbt
        0x51t
        0x56t
        0x1at
        0x18t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x10t
        0xbt
        0x40t
        0x10t
        0x42t
        0x58t
        0x56t
        0x44t
        0x47t
        0x5t
        0xct
        0x50t
        0x55t
        0x44t
        0x53t
        0xbt
        0x10t
        0x17t
    .end array-data
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    invoke-static {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    invoke-static {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 6

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, p2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, p3, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v0
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v1

    invoke-static {v1, p3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    sub-int p2, v4, p2

    :cond_0
    invoke-direct {p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v1

    sub-int v2, v1, v6

    const/4 v1, 0x0

    and-int/lit8 v8, v3, 0x7

    sparse-switch v8, :sswitch_data_0

    :goto_0
    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_1

    :goto_1
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v3

    iget v8, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v8

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v4, v8

    sub-int/2addr v4, v6

    iget v8, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v8

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int v4, v5, v4

    sub-int/2addr v4, v7

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v4, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v1, v2, v6

    add-int v3, v0, v7

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :sswitch_0
    add-int/2addr v2, v6

    goto :goto_0

    :sswitch_1
    div-int/lit8 v8, v6, 0x2

    add-int/2addr v2, v8

    goto :goto_0

    :sswitch_2
    add-int/lit8 v1, v7, 0x0

    goto :goto_1

    :sswitch_3
    div-int/lit8 v1, v7, 0x2

    add-int/lit8 v1, v1, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0, p1, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v6, "af113d"

    invoke-static {v3, v6, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "08962c"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    invoke-static {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_4
    iget v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v2, p3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v2, v5, 0x30

    const/16 v6, 0x30

    if-ne v2, v6, :cond_a

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v6

    iget v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int/2addr v2, v6

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_a

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int v2, v6, v2

    invoke-direct {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    move v2, v1

    :goto_1
    and-int/lit8 v6, v5, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_5

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    add-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_5

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v6, v2

    invoke-direct {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    move v2, v1

    :cond_5
    if-nez v2, :cond_6

    invoke-direct {p0, p1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    :cond_6
    and-int/lit8 v2, v5, 0x3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_9

    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v6

    iget v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int/2addr v2, v6

    iget v6, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_9

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int v2, v6, v2

    invoke-direct {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    move v2, v1

    :goto_2
    and-int/lit8 v5, v5, 0x5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    add-int/2addr v0, v5

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v5, :cond_8

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    move v0, v1

    :goto_3
    if-nez v0, :cond_7

    invoke-direct {p0, p1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    :cond_7
    invoke-static {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v2, v3

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_1

    :array_0
    .array-data 1
        0x33t
        0x3t
        0x52t
        0x45t
        0x13t
        0x17t
        0x9t
        0x9t
        0x44t
        0x5dt
        0x57t
        0x44t
        0x3t
        0x3t
        0x11t
        0x46t
        0x5at
        0x10t
        0x9t
        0xft
        0x5ft
        0x11t
        0x47t
        0xct
        0x4t
        0x46t
        0x52t
        0x59t
        0x5at
        0x8t
        0x5t
        0x41t
        0x42t
        0x11t
        0x51t
        0xbt
        0x14t
        0x8t
        0x55t
        0x42t
        0x1dt
        0x44t
        0x33t
        0x3t
        0x52t
        0x45t
        0x9t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x44t
        0x19t
        0x74t
        0x5dt
        0x16t
        0x5et
        0x5ct
        0x4at
        0xct
    .end array-data
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 6

    const/16 v4, 0x2e

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [B

    const/16 v1, 0x4f

    aput-byte v1, v0, v2

    const-string v1, "aba892"

    const-wide/32 v2, 0x69820ec8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_1
    :try_start_0
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_2
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p2, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "0490d7"

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object v1, v0

    goto :goto_2

    :array_0
    .array-data 1
        0x73t
        0x5bt
        0x4ct
        0x5ct
        0x0t
        0x17t
        0x5et
        0x5bt
        0x4dt
        0x10t
        0xdt
        0x59t
        0x56t
        0x58t
        0x58t
        0x44t
        0x1t
        0x17t
        0x72t
        0x51t
        0x51t
        0x51t
        0x12t
        0x5et
        0x5ft
        0x46t
        0x19t
        0x43t
        0x11t
        0x55t
        0x53t
        0x58t
        0x58t
        0x43t
        0x17t
        0x17t
    .end array-data
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 20

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    const/4 v4, 0x0

    move v15, v4

    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v19

    if-nez v13, :cond_0

    if-eqz v14, :cond_1

    :cond_0
    if-eqz v16, :cond_1

    if-eqz v19, :cond_6

    if-nez v6, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    :goto_1
    packed-switch p2, :pswitch_data_0

    move v5, v14

    :goto_2
    add-int/lit8 v6, v15, 0x1

    move v15, v6

    move v14, v5

    move-object v6, v4

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move v5, v14

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move v5, v14

    goto :goto_2

    :cond_1
    if-nez v13, :cond_8

    if-eqz v19, :cond_8

    packed-switch p2, :pswitch_data_1

    move v5, v13

    :goto_3
    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iput-object v12, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    :cond_2
    :goto_4
    invoke-virtual {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v7, :cond_3

    const/4 v4, 0x1

    :goto_5
    if-eqz v8, :cond_4

    if-nez v4, :cond_4

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    return v5

    :pswitch_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_3

    :pswitch_3
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_5

    :cond_4
    move v13, v5

    move v5, v4

    move-object v4, v6

    goto :goto_2

    :cond_5
    move-object v4, v6

    goto :goto_1

    :cond_6
    move-object v4, v6

    move v5, v14

    goto :goto_2

    :cond_7
    move v5, v13

    goto :goto_6

    :cond_8
    move v5, v13

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private prepareChildren()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->clear()V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v5, p0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, v4}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, p0, v4, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v7, v6}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v7, v6}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    :cond_2
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v7, v6, v4}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method private static releaseTempRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private resetTouchBehaviors(Z)V
    .locals 12

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    invoke-virtual {p0, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v11, p0, v10, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v11, p0, v10, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_2
    if-ge v1, v9, :cond_3

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    iput-boolean v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x11

    :cond_0
    return p0
.end method

.method private static resolveGravity(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_1

    const v0, 0x800003

    or-int/2addr v0, p0

    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x30

    :cond_0
    return v0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method private static resolveKeylineGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800035

    :cond_0
    return p0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    if-eq v1, p2, :cond_0

    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int v1, p2, v1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    iput p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    :cond_0
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    if-eq v1, p2, :cond_0

    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int v1, p2, v1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    iput p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    :cond_0
    return-void
.end method

.method private setupForInsets()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    :cond_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    goto :goto_0
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 2

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    :cond_0
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, p2, v0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    :try_start_0
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-gt v0, v5, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v5, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-lt v0, v5, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v4, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v5, :cond_2

    :goto_2
    invoke-static {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    invoke-static {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    :goto_3
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    invoke-static {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v0

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getScrimColor(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->clamp(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_1
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method ensurePreDrawListener()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addPreDrawListener()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removePreDrawListener()V

    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v0
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v0
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V

    invoke-direct {p0, v5, p4, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .locals 10

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v1, :cond_1

    instance-of v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;

    invoke-interface {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TAG:Ljava/lang/String;

    const/16 v3, 0x1f

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "22392c"

    invoke-static {v3, v4, v8, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    iput-boolean v8, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    :goto_1
    if-eqz v2, :cond_3

    const-class v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    if-eqz v2, :cond_4

    :try_start_0
    invoke-interface {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iput-boolean v8, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x17

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "a0017f"

    const/16 v7, 0x6e0e

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x41

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "94fbc1"

    const v6, -0x316293ac

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x73t
        0x46t
        0x47t
        0x58t
        0x51t
        0xbt
        0x57t
        0x56t
        0x13t
        0x5bt
        0x57t
        0xbt
        0x53t
        0x44t
        0x5at
        0x56t
        0x40t
        0x43t
        0x51t
        0x5et
        0x52t
        0x4at
        0x41t
        0x43t
        0x5bt
        0x41t
        0x13t
        0x57t
        0x47t
        0xft
        0x5et
    .end array-data

    :array_1
    .array-data 1
        0x25t
        0x55t
        0x56t
        0x50t
        0x42t
        0xat
        0x15t
        0x10t
        0x52t
        0x54t
        0x5ft
        0x7t
        0x17t
        0x59t
        0x5ft
        0x43t
        0x17t
        0x5t
        0xdt
        0x51t
        0x43t
        0x42t
        0x17t
    .end array-data

    :array_2
    .array-data 1
        0x19t
        0x57t
        0x9t
        0x17t
        0xft
        0x55t
        0x19t
        0x5at
        0x9t
        0x16t
        0x43t
        0x53t
        0x5ct
        0x14t
        0xft
        0xct
        0x10t
        0x45t
        0x58t
        0x5at
        0x12t
        0xbt
        0x2t
        0x45t
        0x5ct
        0x50t
        0x48t
        0x42t
        0x27t
        0x58t
        0x5dt
        0x14t
        0x1ft
        0xdt
        0x16t
        0x11t
        0x5ft
        0x5bt
        0x14t
        0x5t
        0x6t
        0x45t
        0x19t
        0x55t
        0x46t
        0x6t
        0x6t
        0x57t
        0x58t
        0x41t
        0xat
        0x16t
        0x43t
        0x52t
        0x56t
        0x5at
        0x15t
        0x16t
        0x11t
        0x44t
        0x5at
        0x40t
        0x9t
        0x10t
        0x5ct
    .end array-data
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v1
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object v0, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v0, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v8, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v5, v4, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v6, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    if-eqz v1, :cond_1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0, p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_3
    invoke-static {v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    invoke-static {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    invoke-static {v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    :cond_4
    return-void

    :cond_5
    move v0, v8

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    :cond_0
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    return-void
.end method

.method final onChildViewsChanged(I)V
    .locals 14

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v11

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_9

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_3

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v12, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v12, v2, :cond_2

    invoke-virtual {p0, v0, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v3, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    if-eqz v2, :cond_4

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v2, v7}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v4, v2, 0x70

    sparse-switch v4, :sswitch_data_0

    :goto_2
    and-int/lit8 v2, v2, 0x7

    packed-switch v2, :pswitch_data_0

    :cond_4
    :goto_3
    :pswitch_0
    iget v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0, v9, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    :cond_5
    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    invoke-virtual {p0, v0, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_6
    add-int/lit8 v1, v6, 0x1

    move v4, v1

    :goto_4
    if-ge v4, v8, :cond_0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12, p0, v1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-nez p1, :cond_8

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    :cond_7
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :sswitch_0
    iget v4, v9, Landroid/graphics/Rect;->top:I

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :sswitch_1
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v12

    iget v13, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :pswitch_1
    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget v4, v10, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :pswitch_2
    iget v2, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    iget v12, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v12

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_8
    packed-switch p1, :pswitch_data_1

    invoke-virtual {v12, p0, v1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_6
    if-ne p1, v3, :cond_7

    invoke-virtual {v2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    goto :goto_5

    :pswitch_3
    invoke-virtual {v12, p0, v1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    move v1, v3

    goto :goto_6

    :cond_9
    invoke-static {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    invoke-static {v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    invoke-static {v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_1
    iput-boolean v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-direct {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    :cond_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0, v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0, v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x62

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7c702c"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v1, :cond_2

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {p0, p1, v0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    goto :goto_0

    :array_0
    .array-data 1
        0x76t
        0xdt
        0x17t
        0x51t
        0x5ct
        0x0t
        0x5ft
        0xct
        0x45t
        0x10t
        0x5ft
        0x2t
        0x4et
        0x43t
        0x59t
        0x5ft
        0x46t
        0x43t
        0x55t
        0x6t
        0x17t
        0x53t
        0x5at
        0x2t
        0x59t
        0x4t
        0x52t
        0x54t
        0x12t
        0x2t
        0x51t
        0x17t
        0x52t
        0x42t
        0x12t
        0x20t
        0x58t
        0xct
        0x45t
        0x54t
        0x5bt
        0xdt
        0x56t
        0x17t
        0x58t
        0x42t
        0x7et
        0x2t
        0x4et
        0xct
        0x42t
        0x44t
        0x12t
        0xet
        0x52t
        0x2t
        0x44t
        0x45t
        0x40t
        0x6t
        0x5at
        0x6t
        0x59t
        0x44t
        0x12t
        0x1t
        0x52t
        0x4t
        0x5et
        0x5et
        0x41t
        0x43t
        0x55t
        0x6t
        0x51t
        0x5ft
        0x40t
        0x6t
        0x17t
        0xft
        0x56t
        0x49t
        0x5dt
        0x16t
        0x43t
        0x43t
        0x5et
        0x43t
        0x12t
        0x0t
        0x58t
        0xet
        0x47t
        0x5ct
        0x57t
        0x17t
        0x52t
        0x4dt
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 25

    invoke-direct/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ensurePreDrawListener()V

    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v18

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v19

    const/4 v1, 0x1

    move/from16 v0, v19

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    move v9, v1

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v13

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v10, v1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v24

    const/4 v1, 0x0

    move v14, v1

    :goto_2
    move/from16 v0, v24

    if-ge v14, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    move v1, v11

    move v2, v12

    move v3, v13

    :goto_3
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v11, v1

    move v13, v3

    move v12, v2

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v9, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v10, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v5, 0x0

    iget v1, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v1, :cond_5

    if-eqz v20, :cond_5

    iget v1, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v1

    iget v2, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    const/4 v4, 0x5

    if-ne v2, v4, :cond_8

    if-eqz v9, :cond_8

    :cond_4
    const/4 v2, 0x0

    sub-int v4, v21, v17

    sub-int v1, v4, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_5
    :goto_4
    if-eqz v10, :cond_c

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v7

    add-int/2addr v1, v2

    sub-int v1, v21, v1

    move/from16 v0, v20

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    add-int v1, v6, v7

    sub-int v1, v23, v1

    move/from16 v0, v22

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_5
    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v2, v15, v17

    add-int/2addr v1, v2

    iget v2, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v4, v16, v18

    add-int/2addr v1, v4

    iget v4, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v4

    iget v4, v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v11, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v3, v4

    goto/16 :goto_3

    :cond_8
    const/4 v4, 0x5

    if-ne v2, v4, :cond_9

    if-eqz v9, :cond_a

    :cond_9
    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    if-eqz v9, :cond_5

    :cond_a
    const/4 v2, 0x0

    sub-int/2addr v1, v15

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_4

    :cond_b
    const/high16 v1, -0x1000000

    and-int/2addr v1, v11

    move/from16 v0, p1

    invoke-static {v12, v0, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v11, 0x10

    move/from16 v0, p2

    invoke-static {v13, v0, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    return-void

    :cond_c
    move/from16 v6, p2

    move/from16 v4, p1

    goto :goto_5
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v7, v8

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_2

    invoke-virtual {p0, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move v0, v7

    :goto_1
    add-int/lit8 v1, v9, 0x1

    move v7, v0

    move v9, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    or-int/2addr v0, v7

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_3
    return v7

    :cond_4
    move v0, v7

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    move v6, v7

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_3

    invoke-virtual {p0, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move v0, v6

    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    or-int/2addr v0, v6

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    return v6
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v12

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_4

    invoke-virtual {p0, v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    move v1, v2

    move v3, v10

    move v2, v9

    :goto_1
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move v10, v3

    move v9, v2

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    move v3, v10

    move v2, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v2, v4

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    if-lez p2, :cond_2

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_2
    if-lez p3, :cond_3

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    aput v9, p4, v1

    const/4 v1, 0x1

    aput v10, p4, v1

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_5
    return-void

    :cond_6
    move v1, v2

    move v3, v10

    move v2, v9

    goto :goto_1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 15
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v14

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v14, :cond_4

    invoke-virtual {p0, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    move v1, v11

    move v3, v12

    :goto_1
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    move v12, v3

    move v11, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v11

    move v3, v12

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v2, v4

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    iget-object v10, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V

    if-lez p4, :cond_2

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    if-lez p5, :cond_3

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    aget v3, p7, v3

    add-int/2addr v3, v11

    aput v3, p7, v1

    const/4 v1, 0x1

    const/4 v3, 0x1

    aget v3, p7, v3

    add-int/2addr v3, v12

    aput v3, p7, v1

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_5
    return-void

    :cond_6
    move v1, v11

    move v3, v12

    goto :goto_1
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 9

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v8, :cond_2

    invoke-virtual {p0, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void

    :cond_1
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    invoke-virtual {v5, p0, v4, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    return-object v2
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_2

    invoke-virtual {p0, v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move v0, v8

    :goto_1
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v8, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v1

    or-int v0, v8, v1

    invoke-virtual {v7, p4, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v7, p4, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    move v0, v8

    goto :goto_1

    :cond_2
    return v8
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 5

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, p0, v3, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    :cond_1
    invoke-virtual {v0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll(I)V

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v0, :cond_6

    invoke-direct {p0, p1, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v0, p0, v3, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    move v8, v0

    :goto_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v8, v0

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    if-eq v9, v10, :cond_1

    if-ne v9, v4, :cond_2

    :cond_1
    invoke-direct {p0, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    :cond_2
    return v8

    :cond_3
    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_4
    move v8, v7

    goto :goto_1

    :cond_5
    move v8, v7

    move v1, v0

    goto :goto_1

    :cond_6
    move v1, v7

    goto :goto_0

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method removePreDrawListener()V
    .locals 2

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Landroidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final setWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestLayout()V

    :cond_0
    return-object p1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
