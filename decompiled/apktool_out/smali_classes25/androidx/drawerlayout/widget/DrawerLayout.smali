.class public Landroidx/drawerlayout/widget/DrawerLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroidx/customview/widget/Openable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;,
        Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;,
        Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;,
        Landroidx/drawerlayout/widget/DrawerLayout$SavedState;,
        Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;,
        Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String;

.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f

.field private static sEdgeSizeUsingSystemGestureInsets:Z


# instance fields
.field private final mActionDismiss:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field private final mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildHitRect:Landroid/graphics/Rect;

.field private mChildInvertedMatrix:Landroid/graphics/Matrix;

.field private mChildrenCanceledTouch:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "92d2ff"

    const-wide/32 v4, 0xd8c146f

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->ACCESSIBILITY_CLASS_NAME:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "b9d92b"

    const-wide/32 v4, 0x243adb97

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->TAG:Ljava/lang/String;

    new-array v0, v1, [I

    const v3, 0x1010434

    aput v3, v0, v2

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    new-array v0, v1, [I

    const v3, 0x10100b3

    aput v3, v0, v2

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_2

    :goto_2
    sput-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->sEdgeSizeUsingSystemGestureInsets:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x58t
        0x5ct
        0x0t
        0x40t
        0x9t
        0xft
        0x5dt
        0x4at
        0x4at
        0x56t
        0x14t
        0x7t
        0x4et
        0x57t
        0x16t
        0x5et
        0x7t
        0x1ft
        0x56t
        0x47t
        0x10t
        0x1ct
        0x11t
        0xft
        0x5dt
        0x55t
        0x1t
        0x46t
        0x48t
        0x22t
        0x4bt
        0x53t
        0x13t
        0x57t
        0x14t
        0x2at
        0x58t
        0x4bt
        0xbt
        0x47t
        0x12t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x26t
        0x4bt
        0x5t
        0x4et
        0x57t
        0x10t
        0x2et
        0x58t
        0x1dt
        0x56t
        0x47t
        0x16t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    sget v0, Landroidx/drawerlayout/R$attr;->drawerLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v0}, Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    const/high16 v0, -0x67000000

    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    iput-boolean v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    iput v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    iput v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    iput v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    iput v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    iput-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$1;

    invoke-direct {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mActionDismiss:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v0, v1

    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v1, p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v7, v1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, v5}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, v0}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v7, v1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, v0}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    invoke-static {p0, v5}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$2;

    invoke-direct {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout$2;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setSystemUiVisibility(I)V

    sget-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    :goto_0
    sget-object v0, Landroidx/drawerlayout/R$styleable;->DrawerLayout:[I

    invoke-virtual {p1, p2, v0, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_1
    sget v0, Landroidx/drawerlayout/R$styleable;->DrawerLayout_elevation:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroidx/drawerlayout/R$styleable;->DrawerLayout_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_1
    iput-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/drawerlayout/R$dimen;->def_drawer_elevation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    neg-float v1, v1

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 3

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    :cond_0
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    return-object v2
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x5

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "44e27e"

    const/16 v2, -0x6c61

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    and-int/lit8 v0, p0, 0x5

    if-ne v0, v2, :cond_1

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    const-string v1, "0e2699"

    const v2, 0x4e27a44d    # 7.031407E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x78t
        0x71t
        0x23t
        0x66t
    .end array-data

    :array_1
    .array-data 1
        0x62t
        0x2ct
        0x75t
        0x7et
        0x6dt
    .end array-data
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget-boolean v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

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

.method private hasVisibleDrawer()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInBoundsOfChild(FFLandroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_0
    return-void
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private resolveShadowDrawables()V
    .locals 1

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateChildAccessibilityAction(Landroid/view/View;)V
    .locals 3

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mActionDismiss:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {p1, v0, v1, v2}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    :cond_0
    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1    # Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x60000

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_5

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_0
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v7, v1, :cond_0

    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

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

.method public close()V
    .locals 1

    const v0, 0x800003

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void
.end method

.method public closeDrawer(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(IZ)V

    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "76f9e5"

    const/16 v4, 0x7b7b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    return-void

    :array_0
    .array-data 1
        0x79t
        0x59t
        0x46t
        0x5dt
        0x17t
        0x54t
        0x40t
        0x53t
        0x14t
        0x19t
        0x13t
        0x5ct
        0x52t
        0x41t
        0x46t
        0x5ft
        0xat
        0x40t
        0x59t
        0x52t
        0x46t
        0x4et
        0xct
        0x41t
        0x5ft
        0x16t
        0x1t
        0x4bt
        0x4t
        0x43t
        0x5et
        0x42t
        0x1ft
        0x19t
    .end array-data
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "53e70a"

    const-wide/32 v4, 0x6f21068a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4aa572"

    const/16 v4, 0x1da7

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    iput v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    :goto_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    invoke-virtual {p0, v3, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(ILandroid/view/View;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :array_0
    .array-data 1
        0x63t
        0x5at
        0x0t
        0x40t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x14t
        0x8t
        0x12t
        0x15t
        0x59t
        0x5dt
        0x40t
        0x41t
        0x0t
        0x15t
        0x44t
        0x5et
        0x5dt
        0x5t
        0x8t
        0x5bt
        0x50t
        0x12t
        0x50t
        0x13t
        0x0t
        0x42t
        0x52t
        0x40t
    .end array-data
.end method

.method public closeDrawers()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    return-void
.end method

.method closeDrawers(Z)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p1, :cond_0

    iget-boolean v6, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    neg-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    :goto_2
    iput-boolean v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, v4}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, v4}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isInBoundsOfChild(FFLandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iput v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v5

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v3, v7, :cond_3

    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v8, v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v8, 0x3

    invoke-virtual {p0, v2, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    if-eqz v5, :cond_5

    iget v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    iget v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    shl-int/lit8 v2, v2, 0x18

    const v5, 0xffffff

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_3
    return v7

    :cond_5
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v2

    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v3

    const/4 v4, 0x0

    sub-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_7
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    and-int/lit8 v5, v2, 0x7

    if-ne v4, v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findVisibleDrawer()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 1

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 3

    const/4 v2, 0x3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    if-eq v1, v2, :cond_1

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    :goto_1
    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_1

    :sswitch_1
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    if-eq v1, v2, :cond_3

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    :goto_2
    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_4
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_2

    :sswitch_2
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    if-eq v1, v2, :cond_5

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    :goto_3
    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_6
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_3

    :sswitch_3
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    if-eq v1, v2, :cond_7

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    :cond_7
    if-nez v0, :cond_8

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    :goto_4
    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_8
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "909ab3"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "963670"

    const/16 v4, -0xead

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x6ft
        0x59t
        0x5ct
        0x16t
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x5ft
        0x40t
        0x16t
        0x59t
        0x5ft
        0x4dt
        0x16t
        0x52t
        0x16t
        0x53t
        0x42t
        0x58t
        0x41t
        0x56t
        0x44t
    .end array-data
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "57cbd2"

    const-wide/32 v4, 0xa1d54c8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "7283af"

    const/16 v4, -0x3444

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x63t
        0x5et
        0x6t
        0x15t
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x17t
        0x5bt
        0x4bt
        0x13t
        0xft
        0x9t
        0x43t
        0x12t
        0x59t
        0x13t
        0x5t
        0x14t
        0x56t
        0x45t
        0x5dt
        0x41t
    .end array-data
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2f8c56"

    const-wide/32 v4, -0x70d95f1d

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e3833e"

    const-wide v4, 0x41d20ac2cd000000L    # 1.210780468E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x64t
        0xft
        0x5dt
        0x14t
        0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x45t
        0x5at
        0x4bt
        0x13t
        0x5dt
        0xat
        0x11t
        0x13t
        0x59t
        0x13t
        0x57t
        0x17t
        0x4t
        0x44t
        0x5dt
        0x41t
    .end array-data
.end method

.method public isOpen()Z
    .locals 1

    const v0, 0x800003

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    sub-int v0, v1, v0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    return-void

    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    or-int/2addr v3, v4

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    iput v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    iget v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    float-to-int v0, v0

    float-to-int v5, v5

    invoke-virtual {v6, v0, v5}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    move v0, v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    iput-boolean v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    sub-int v6, p4, p2

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_9

    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/4 v1, 0x3

    invoke-virtual {p0, v8, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_4

    neg-int v1, v9

    int-to-float v2, v9

    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    add-int v1, v9, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    :goto_2
    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    iget v4, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    iget v4, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v2

    iget v11, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    :goto_4
    if-eqz v3, :cond_3

    invoke-virtual {p0, v8, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    :cond_3
    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    int-to-float v1, v9

    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v2, v6, v1

    sub-int v1, v6, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :sswitch_0
    sub-int v4, p5, p3

    iget v10, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v4, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v2

    iget v11, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v11

    invoke-virtual {v8, v2, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :sswitch_1
    sub-int v11, p5, p3

    sub-int v4, v11, v10

    div-int/lit8 v4, v4, 0x2

    iget v12, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    if-ge v4, v12, :cond_7

    iget v4, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    :cond_6
    :goto_6
    add-int/2addr v9, v2

    add-int/2addr v10, v4

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_7
    add-int v12, v4, v10

    iget v13, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v13, v11, v13

    if-le v12, v13, :cond_6

    iget v4, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v11, v4

    sub-int/2addr v4, v10

    goto :goto_6

    :cond_8
    const/4 v0, 0x4

    goto :goto_5

    :cond_9
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->sEdgeSizeUsingSystemGestureInsets:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->getDefaultEdgeSize()I

    move-result v2

    iget v3, v0, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/customview/widget/ViewDragHelper;->setEdgeSize(I)V

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->getDefaultEdgeSize()I

    move-result v2

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/customview/widget/ViewDragHelper;->setEdgeSize(I)V

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v4, v6, :cond_0

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v5, v6, :cond_14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_1

    const/16 v3, 0x12c

    :cond_1
    if-nez v5, :cond_14

    const/16 v2, 0x12c

    move v4, v2

    move v5, v3

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v6, v2

    :goto_1
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v11

    const/4 v2, 0x0

    move v9, v2

    :goto_2
    if-ge v9, v11, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    move v2, v7

    move v3, v8

    :goto_3
    add-int/lit8 v7, v9, 0x1

    move v8, v3

    move v9, v7

    move v7, v2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x37

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "dd6c90"

    const-wide/32 v6, 0x507fea3a

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v2, 0x0

    move v6, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v6, :cond_6

    iget v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {v3, v10}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v13

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v3, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInsets;

    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-virtual {v12, v3}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v3, v5, v3

    iget v13, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v13, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    sub-int v13, v4, v13

    iget v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v13, v2

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v12, v3, v2}, Landroid/view/View;->measure(II)V

    move v2, v7

    move v3, v8

    goto :goto_3

    :cond_7
    const/4 v14, 0x5

    if-ne v13, v14, :cond_5

    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v15

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v3

    goto :goto_4

    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v3, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInsets;

    const/4 v14, 0x3

    if-ne v13, v14, :cond_a

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v3

    :cond_9
    :goto_6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v13

    iput v13, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v13

    iput v13, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v13

    iput v13, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    :cond_a
    const/4 v14, 0x5

    if-ne v13, v14, :cond_9

    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v15

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v3

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-boolean v3, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v3, :cond_c

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v3

    move-object/from16 v0, p0

    iget v13, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    cmpl-float v3, v3, v13

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v12, v3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v3

    and-int/lit8 v13, v3, 0x7

    const/4 v3, 0x3

    if-ne v13, v3, :cond_f

    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_d

    if-nez v7, :cond_e

    :cond_d
    if-nez v3, :cond_10

    if-eqz v8, :cond_10

    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "af8061"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v13}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "320529"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroidx/drawerlayout/widget/DrawerLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2a

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "9e402f"

    const/16 v6, -0x5d0d

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    const/4 v3, 0x0

    goto :goto_7

    :cond_10
    if-eqz v3, :cond_11

    const/4 v3, 0x1

    move v7, v8

    :goto_8
    move-object/from16 v0, p0

    iget v8, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    iget v13, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v13

    iget v13, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v13

    iget v13, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v8, v13}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v8

    iget v13, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v14, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    iget v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v13, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {v12, v8, v2}, Landroid/view/View;->measure(II)V

    move v2, v3

    move v3, v7

    goto/16 :goto_3

    :cond_11
    const/4 v8, 0x1

    move v3, v7

    move v7, v8

    goto :goto_8

    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "ed46be"

    const-wide v6, 0x41d9d00836400000L    # 1.732255961E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    const-string v5, "bdf5e7"

    const/16 v6, 0xc75

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x61

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    const-string v5, "8979bd"

    const-wide/32 v6, -0x684c63c3

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    return-void

    :cond_14
    move v4, v2

    move v5, v3

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x20t
        0x16t
        0x57t
        0x14t
        0x5ct
        0x42t
        0x28t
        0x5t
        0x4ft
        0xct
        0x4ct
        0x44t
        0x44t
        0x9t
        0x43t
        0x10t
        0x4dt
        0x10t
        0x6t
        0x1t
        0x16t
        0xet
        0x5ct
        0x51t
        0x17t
        0x11t
        0x44t
        0x6t
        0x5dt
        0x10t
        0x13t
        0xdt
        0x42t
        0xbt
        0x19t
        0x7dt
        0x1t
        0x5t
        0x45t
        0x16t
        0x4bt
        0x55t
        0x37t
        0x14t
        0x53t
        0x0t
        0x17t
        0x75t
        0x3ct
        0x25t
        0x75t
        0x37t
        0x75t
        0x69t
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x22t
        0xet
        0x51t
        0x5ct
        0x52t
        0x11t
        0x5t
        0x14t
        0x59t
        0x47t
        0x53t
        0x43t
        0x41t
        0xet
        0x59t
        0x43t
        0x16t
        0x50t
        0x3t
        0x15t
        0x57t
        0x5ct
        0x43t
        0x45t
        0x4t
        0x46t
        0x5ft
        0x42t
        0x57t
        0x47t
        0x8t
        0x12t
        0x41t
        0x10t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x13t
        0x50t
        0x45t
        0x41t
        0x12t
        0x4dt
        0x5bt
        0x5bt
        0x43t
        0x15t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x19t
        0x4t
        0x58t
        0x42t
        0x57t
        0x7t
        0x5dt
        0x1ct
        0x14t
        0x58t
        0x53t
        0x15t
        0x19t
        0x4t
        0x14t
        0x54t
        0x40t
        0x7t
        0x4et
        0x0t
        0x46t
        0x10t
        0x44t
        0xft
        0x5ct
        0x12t
        0x14t
        0x51t
        0x5et
        0x9t
        0x57t
        0x2t
        0x14t
        0x44t
        0x5at
        0x7t
        0x4dt
        0x45t
        0x51t
        0x54t
        0x55t
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x26t
        0xct
        0x5dt
        0x5at
        0x6t
        0x45t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x42t
        0x5t
        0x12t
        0x15t
        0xct
        0x59t
        0x6t
        0x1t
        0x1et
        0x15t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x18t
        0x5dt
        0x58t
        0x5ct
        0x11t
        0x44t
        0x56t
        0x56t
        0x43t
        0x19t
        0xat
        0x5t
        0x4et
        0x5ct
        0x17t
        0x58t
        0x42t
        0x12t
        0x59t
        0x55t
        0x5et
        0x5dt
        0x42t
        0x8t
        0x59t
        0x40t
        0x58t
        0x4ct
        0x16t
        0x3bt
        0x5ft
        0x4bt
        0x56t
        0x4ft
        0xbt
        0x10t
        0x41t
        0x19t
        0x1at
        0x19t
        0xft
        0x11t
        0x4bt
        0x4dt
        0x17t
        0x5bt
        0x7t
        0x44t
        0x7ft
        0x4bt
        0x56t
        0x4ft
        0xbt
        0x10t
        0x41t
        0x17t
        0x7bt
        0x7ct
        0x24t
        0x30t
        0x14t
        0x19t
        0x70t
        0x4bt
        0x3t
        0x12t
        0x51t
        0x4dt
        0x4et
        0x17t
        0x30t
        0x2dt
        0x7ft
        0x71t
        0x63t
        0x19t
        0xdt
        0x16t
        0x18t
        0x7et
        0x45t
        0x58t
        0x14t
        0xdt
        0x4ct
        0x40t
        0x19t
        0x77t
        0x2dt
        0x3bt
        0x7ft
        0x6bt
        0x76t
        0x6ft
        0x2bt
        0x30t
        0x61t
    .end array-data
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    const/4 v2, 0x3

    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :cond_2
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    if-eq v0, v2, :cond_3

    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_3
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v0, v2, :cond_4

    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_4
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v0, v2, :cond_5

    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v1, 0x800003

    invoke-virtual {p0, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_5
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v1, 0x800005

    invoke-virtual {p0, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v6, v0}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_1

    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iget v4, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    move v4, v2

    :goto_2
    if-nez v1, :cond_0

    if-eqz v4, :cond_4

    :cond_0
    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v0, v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    :cond_1
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    iput v0, v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    iput v0, v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    iput v0, v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    iput v0, v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    return-object v6

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    iput v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    float-to-int v5, v2

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v2, v4

    iget v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-int v3, v4, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public open()V
    .locals 1

    const v0, 0x800003

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void
.end method

.method public openDrawer(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(IZ)V

    return-void
.end method

.method public openDrawer(IZ)V
    .locals 6

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ffe468"

    const-wide/32 v4, -0x3310716c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    return-void

    nop

    :array_0
    .array-data 1
        0x28t
        0x9t
        0x45t
        0x50t
        0x44t
        0x59t
        0x11t
        0x3t
        0x17t
        0x14t
        0x40t
        0x51t
        0x3t
        0x11t
        0x45t
        0x52t
        0x59t
        0x4dt
        0x8t
        0x2t
        0x45t
        0x43t
        0x5ft
        0x4ct
        0xet
        0x46t
        0x2t
        0x46t
        0x57t
        0x4et
        0xft
        0x12t
        0x1ct
        0x14t
    .end array-data
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a8f648"

    const-wide/32 v4, -0x60305d4f

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "bddd02"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    iput v7, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    invoke-direct {p0, p1, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p1, v6, v1}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    invoke-virtual {p0, v6, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(ILandroid/view/View;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x37t
        0x51t
        0x3t
        0x41t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x42t
        0xdt
        0x17t
        0x44t
        0x5et
        0x5dt
        0x16t
        0x44t
        0x5t
        0x44t
        0x43t
        0x5et
        0xbt
        0x0t
        0xdt
        0xat
        0x57t
        0x12t
        0x6t
        0x16t
        0x5t
        0x13t
        0x55t
        0x40t
    .end array-data
.end method

.method public removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1    # Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawerElevation(F)V
    .locals 3

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    :cond_1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    :goto_1
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_2
    return-void

    :sswitch_0
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_0

    :sswitch_1
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :sswitch_2
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_0

    :sswitch_3
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 6
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x1

    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "22759d"

    const/4 v4, 0x0

    invoke-static {v2, v3, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x30

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "6df3ac"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void

    :array_0
    .array-data 1
        0x64t
        0x5bt
        0x52t
        0x42t
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0xdt
        0x15t
        0x13t
        0xft
        0xct
        0x42t
        0x44t
        0x7t
        0x13t
        0x5t
        0x11t
        0x57t
        0x13t
        0x3t
        0x41t
        0x41t
        0x14t
        0x5ft
        0x10t
        0xet
        0x13t
        0x0t
        0x13t
        0x46t
        0x16t
        0x9t
        0x43t
        0x13t
        0xat
        0x57t
        0x10t
        0x3t
        0x13t
        0xdt
        0x2t
        0x4ft
        0xbt
        0x13t
        0x47t
        0x3et
        0x4t
        0x44t
        0x5t
        0x10t
        0x5at
        0x15t
        0x1at
    .end array-data
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    const v2, 0x800005

    const v1, 0x800003

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int v0, p2, v1

    if-ne v0, v1, :cond_2

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    goto :goto_0

    :cond_2
    and-int v0, p2, v2

    if-ne v0, v2, :cond_3

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method updateDrawerState(ILandroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v3

    if-eq v2, v1, :cond_0

    if-ne v3, v1, :cond_2

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    :cond_1
    :goto_1
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    if-eq v2, v0, :cond_6

    iput v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_2
    if-eq v2, v0, :cond_3

    if-ne v3, v0, :cond_4

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_5
    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    return-void
.end method
