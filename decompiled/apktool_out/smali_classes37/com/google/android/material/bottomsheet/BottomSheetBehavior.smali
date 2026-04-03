.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SaveFlags;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StableState;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$State;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CORNER_ANIMATION_DURATION:I = 0x1f4

.field private static final DEF_STYLE_RES:I

.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field private static final NO_MAX_SIZE:I = -0x1

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final SAVE_ALL:I = -0x1

.field public static final SAVE_FIT_TO_CONTENTS:I = 0x2

.field public static final SAVE_HIDEABLE:I = 0x4

.field public static final SAVE_NONE:I = 0x0

.field public static final SAVE_PEEK_HEIGHT:I = 0x1

.field public static final SAVE_SKIP_COLLAPSED:I = 0x8

.field private static final SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field activePointerId:I

.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private childHeight:I

.field collapsedOffset:I

.field private final dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private draggable:Z

.field elevation:F

.field private expandHalfwayActionId:I

.field expandedOffset:I

.field private fitToContents:Z

.field fitToContentsOffset:I

.field private gestureInsetBottom:I

.field private gestureInsetBottomIgnored:Z

.field halfExpandedOffset:I

.field halfExpandedRatio:F

.field hideable:Z

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialY:I

.field private insetBottom:I

.field private insetTop:I

.field private interpolatorAnimator:Landroid/animation/ValueAnimator;

.field private isShapeExpanded:Z

.field private lastNestedScrollDy:I

.field lastStableState:I

.field private marginLeftSystemWindowInsets:Z

.field private marginRightSystemWindowInsets:Z

.field private marginTopSystemWindowInsets:Z

.field private materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private maxHeight:I

.field private maxWidth:I

.field private maximumVelocity:F

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private paddingBottomSystemWindowInsets:Z

.field private paddingLeftSystemWindowInsets:Z

.field private paddingRightSystemWindowInsets:Z

.field private paddingTopSystemWindowInsets:Z

.field parentHeight:I

.field parentWidth:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightGestureInsetBuffer:I

.field private peekHeightMin:I

.field private saveFlags:I

.field private shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private skipCollapsed:Z

.field state:I

.field private final stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior",
            "<TV;>.StateSettlingTracker;"
        }
    .end annotation
.end field

.field touchingScrollingChild:Z

.field private updateImportantForAccessibilityOnSiblings:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "71c88f"

    const v2, -0x33bea46d    # -5.0687564E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->TAG:Ljava/lang/String;

    sget v0, Lcom/google/android/material/R$style;->Widget_Design_BottomSheet_Modal:I

    sput v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->DEF_STYLE_RES:I

    return-void

    nop

    :array_0
    .array-data 1
        0x75t
        0x5et
        0x17t
        0x4ct
        0x57t
        0xbt
        0x64t
        0x59t
        0x6t
        0x5dt
        0x4ct
        0x24t
        0x52t
        0x59t
        0x2t
        0x4et
        0x51t
        0x9t
        0x45t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    iput-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    iput-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    iput-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    iput-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    iput v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    iput-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    sget-object v0, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/google/android/material/R$attr;->bottomSheetStyle:I

    sget v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->DEF_STYLE_RES:I

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createMaterialShapeDrawableIfNeeded(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createShapeValueAnimator()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_elevation:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    :cond_2
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxWidth(I)V

    :cond_3
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxHeight(I)V

    :cond_4
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-ne v2, v3, :cond_5

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    :goto_0
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_gestureInsetBottomIgnored:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_draggable:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_saveFlags:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSaveFlags(I)V

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHalfExpandedRatio(F)V

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    :goto_1
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingRightSystemWindowInsets:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingTopSystemWindowInsets:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_marginLeftSystemWindowInsets:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_marginRightSystemWindowInsets:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_marginTopSystemWindowInsets:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    return-void

    :cond_5
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    goto/16 :goto_0

    :cond_6
    sget v1, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    return v0
.end method

.method private addAccessibilityActionForState(Landroid/view/View;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;II)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I

    move-result v0

    return v0
.end method

.method private calculateCollapsedOffset()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int v0, v1, v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0
.end method

.method private calculateHalfExpandedOffset()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    return-void
.end method

.method private calculatePeekHeight()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;
    .locals 1

    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    return-object v0
.end method

.method private createMaterialShapeDrawableIfNeeded(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010031

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    goto :goto_0
.end method

.method private createShapeValueAnimator()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior",
            "<TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x33

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6b977d"

    const v3, 0x4d352a7d    # 1.8996629E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "aaea2e"

    const-wide v4, 0x41c85271a5800000L    # 8.16112459E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x62t
        0xat
        0x5ct
        0x17t
        0x41t
        0xdt
        0x53t
        0x15t
        0x19t
        0x5et
        0x44t
        0x44t
        0x58t
        0xdt
        0x4dt
        0x17t
        0x56t
        0x17t
        0x45t
        0xdt
        0x5at
        0x5et
        0x56t
        0x10t
        0x53t
        0x6t
        0x19t
        0x40t
        0x5et
        0x10t
        0x5et
        0x42t
        0x7bt
        0x58t
        0x43t
        0x10t
        0x59t
        0xft
        0x6at
        0x5ft
        0x52t
        0x1t
        0x42t
        0x20t
        0x5ct
        0x5ft
        0x56t
        0x12t
        0x5ft
        0xdt
        0x4bt
    .end array-data

    :array_1
    .array-data 1
        0x35t
        0x9t
        0x0t
        0x41t
        0x44t
        0xct
        0x4t
        0x16t
        0x45t
        0x8t
        0x41t
        0x45t
        0xft
        0xet
        0x11t
        0x41t
        0x53t
        0x45t
        0x2t
        0x9t
        0xct
        0xdt
        0x56t
        0x45t
        0xet
        0x7t
        0x45t
        0x22t
        0x5dt
        0xat
        0x13t
        0x5t
        0xct
        0xft
        0x53t
        0x11t
        0xet
        0x13t
        0x29t
        0x0t
        0x4bt
        0xat
        0x14t
        0x15t
    .end array-data
.end method

.method private getChildMeasureSpec(IIII)I
    .locals 2

    invoke-static {p1, p2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    packed-switch v1, :pswitch_data_0

    if-nez v0, :cond_1

    :goto_1
    const/high16 v0, -0x80000000

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method private getTopOffsetForState(I)I
    .locals 6

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "791767"

    const-wide v4, -0x3e5e437cf4000000L    # -1.48783494E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    :goto_0
    return v0

    :pswitch_1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x7et
        0x57t
        0x47t
        0x56t
        0x5at
        0x5et
        0x53t
        0x19t
        0x42t
        0x43t
        0x57t
        0x43t
        0x52t
        0x19t
        0x45t
        0x58t
        0x16t
        0x50t
        0x52t
        0x4dt
        0x11t
        0x43t
        0x59t
        0x47t
        0x17t
        0x56t
        0x57t
        0x51t
        0x45t
        0x52t
        0x43t
        0x3t
        0x11t
    .end array-data
.end method

.method private getYVelocity()F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    goto :goto_0
.end method

.method private isLayouting(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private restoreOptionalState(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eq v0, v2, :cond_2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    iget v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    :cond_3
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v2, :cond_4

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_4
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    :cond_5
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v2, :cond_6

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    :cond_6
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    :cond_7
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v2, :cond_8

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    :cond_8
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    goto :goto_0
.end method

.method private runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isLayouting(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private setWindowInsetsListener(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isGestureInsetBottomIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    invoke-static {p1, v1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    goto :goto_1
.end method

.method private shouldHandleDraggingWithHelper()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startSettling(Landroid/view/View;IZ)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getTopOffsetForState(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(I)V

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    invoke-virtual {v0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->continueSettlingToState(I)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1
.end method

.method private updateAccessibilityActions()V
    .locals 7

    const/4 v6, 0x5

    const/4 v3, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v4, 0x80000

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    const/high16 v4, 0x40000

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    const/high16 v4, 0x100000

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    :cond_2
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v4, v2, :cond_3

    sget v4, Lcom/google/android/material/R$string;->bottomsheet_action_expand_halfway:I

    invoke-direct {p0, v0, v4, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    :cond_3
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v4, v6, :cond_4

    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v4, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    :cond_4
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    goto :goto_0

    :pswitch_2
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    goto :goto_0

    :pswitch_3
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v3, :cond_6

    :goto_1
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateDrawableForTargetState(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p1, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    if-eq v4, v0, :cond_0

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    new-array v5, v5, [F

    sub-float/2addr v3, v0

    aput v3, v5, v2

    aput v0, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method private updateImportantForAccessibility(Z)V
    .locals 7

    const/16 v6, 0x10

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_5

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-static {v4, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_2

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_0
.end method

.method private updatePeekHeight(Z)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public disableShapeAnimations()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method dispatchOnSlide(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-gt p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v1, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float v1, v2, v1

    move v2, v1

    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v1, p1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    move v2, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getExpandedOffset()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    goto :goto_1
.end method

.method public getHalfExpandedRatio()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    return v0
.end method

.method public getLastStableState()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    return v0
.end method

.method getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    return v0
.end method

.method public getPeekHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    goto :goto_0
.end method

.method getPeekHeightMin()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    return v0
.end method

.method public getSaveFlags()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    return v0
.end method

.method public getSkipCollapsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    return v0
.end method

.method public isFitToContents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method public isGestureInsetBottomIgnored()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return v0
.end method

.method public isHideable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    return v0
.end method

.method public isNestedScrollingCheckEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-nez v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v2, v1

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v0, v8, :cond_5

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_2
    if-eqz v0, :cond_5

    iget v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v0, v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    :cond_5
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    if-ne v0, v7, :cond_7

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, p2, v5, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    goto :goto_1

    :cond_6
    move-object v0, v3

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_4
    if-ne v4, v8, :cond_9

    if-eqz v0, :cond_9

    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v3, :cond_9

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v3, v1, :cond_9

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    :goto_5
    move v2, v1

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_5

    :cond_a
    move-object v0, v3

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$dimen;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_9

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_1

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    :cond_1
    invoke-virtual {v3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, v6, :cond_7

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    sub-int v3, v4, v3

    if-ge v3, v5, :cond_5

    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    if-eqz v3, :cond_a

    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    :cond_5
    :goto_3
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    sub-int v3, v4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v3, v6, :cond_b

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_6
    :goto_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    :goto_5
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_10

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onLayout(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    :cond_a
    sub-int v3, v4, v5

    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    goto :goto_3

    :cond_b
    const/4 v4, 0x6

    if-ne v3, v4, :cond_c

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_4

    :cond_c
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v4, :cond_d

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_4

    :cond_d
    const/4 v4, 0x4

    if-ne v3, v4, :cond_e

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_4

    :cond_e
    if-eq v3, v1, :cond_f

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_4

    :cond_10
    return v1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-direct {p0, p3, v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    move-result v1

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p6

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0, p5, v2, v3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p3, v1, :cond_1

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    const/4 v3, 0x1

    if-ne p7, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p3, v0, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v1, v0, p5

    if-lez p5, :cond_6

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    sub-int/2addr v0, v1

    aput v0, p6, v3

    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    iput p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    iput-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-eqz v0, :cond_0

    aput p5, p6, v3

    neg-int v0, p5

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    :cond_6
    if-gez p5, :cond_3

    const/4 v2, -0x1

    invoke-virtual {p3, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-le v1, v2, :cond_7

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v1, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-eqz v0, :cond_0

    aput p5, p6, v3

    neg-int v0, p5

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    :cond_8
    sub-int/2addr v0, v2

    aput v0, p6, v3

    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x4

    check-cast p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->restoreOptionalState(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V

    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    :goto_0
    return-void

    :cond_1
    iget v0, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne p3, v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    if-eqz v3, :cond_0

    :cond_2
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    if-lez v3, :cond_6

    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v2, :cond_4

    :cond_3
    :goto_1
    invoke-direct {p0, p2, v1, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    iput-boolean v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-le v2, v3, :cond_5

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    move-result v3

    invoke-virtual {p0, p2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v1, 0x5

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    if-nez v3, :cond_c

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v4, :cond_8

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v0, v3, :cond_3

    move v1, v2

    goto :goto_1

    :cond_8
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v3, v4, :cond_a

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_1

    :cond_9
    move v1, v0

    goto :goto_1

    :cond_a
    sub-int v1, v3, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v1, v3, :cond_b

    move v1, v0

    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_1

    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v3, v1, :cond_e

    move v1, v0

    goto/16 :goto_1

    :cond_e
    move v1, v2

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v2, v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_3
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->TAG:Ljava/lang/String;

    const/16 v1, 0x154

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a95c3e"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x23t
        0x56t
        0x41t
        0x17t
        0x5ct
        0x8t
        0x32t
        0x51t
        0x50t
        0x6t
        0x47t
        0x27t
        0x4t
        0x51t
        0x54t
        0x15t
        0x5at
        0xat
        0x13t
        0x19t
        0x5bt
        0xct
        0x44t
        0x45t
        0x12t
        0x4ct
        0x45t
        0x13t
        0x5ct
        0x17t
        0x15t
        0x4at
        0x15t
        0xet
        0x46t
        0x9t
        0x15t
        0x50t
        0x45t
        0xft
        0x56t
        0x45t
        0x2t
        0x58t
        0x59t
        0xft
        0x51t
        0x4t
        0x2t
        0x52t
        0x46t
        0x4dt
        0x13t
        0x5t
        0x12t
        0x5ct
        0x41t
        0x21t
        0x5ct
        0x11t
        0x15t
        0x56t
        0x58t
        0x30t
        0x5bt
        0x0t
        0x4t
        0x4dt
        0x76t
        0x2t
        0x5ft
        0x9t
        0x3t
        0x58t
        0x56t
        0x8t
        0x1bt
        0x4ct
        0x1t
        0x19t
        0x47t
        0x6t
        0x5et
        0xat
        0x17t
        0x5ct
        0x46t
        0x43t
        0x52t
        0x9t
        0xdt
        0x19t
        0x50t
        0x1bt
        0x5at
        0x16t
        0x15t
        0x50t
        0x5bt
        0x4t
        0x13t
        0x6t
        0x0t
        0x55t
        0x59t
        0x1t
        0x52t
        0x6t
        0xat
        0x4at
        0x19t
        0x43t
        0x5at
        0xbt
        0x2t
        0x55t
        0x40t
        0x7t
        0x5at
        0xbt
        0x6t
        0x19t
        0x5at
        0xdt
        0x56t
        0x16t
        0x41t
        0x4at
        0x50t
        0x17t
        0x13t
        0xct
        0xft
        0x4dt
        0x50t
        0x11t
        0x5dt
        0x4t
        0xdt
        0x55t
        0x4ct
        0x43t
        0x51t
        0x1ct
        0x41t
        0x55t
        0x5ct
        0x1t
        0x41t
        0x4t
        0x13t
        0x40t
        0x15t
        0x2t
        0x46t
        0x11t
        0x9t
        0x56t
        0x47t
        0x10t
        0x1ft
        0x45t
        0x16t
        0x51t
        0x5ct
        0x0t
        0x5bt
        0x45t
        0xct
        0x58t
        0x4ct
        0x43t
        0x41t
        0x0t
        0x12t
        0x4ct
        0x59t
        0x17t
        0x13t
        0xct
        0xft
        0x19t
        0x40t
        0xdt
        0x5at
        0xbt
        0x15t
        0x5ct
        0x5bt
        0x7t
        0x56t
        0x1t
        0x41t
        0x5bt
        0x50t
        0xbt
        0x52t
        0x13t
        0x8t
        0x56t
        0x47t
        0x4dt
        0x13t
        0x31t
        0x9t
        0x50t
        0x46t
        0x43t
        0x5et
        0x4t
        0x18t
        0x19t
        0x56t
        0xbt
        0x52t
        0xbt
        0x6t
        0x5ct
        0x15t
        0xat
        0x5dt
        0x45t
        0x15t
        0x51t
        0x50t
        0x43t
        0x55t
        0x10t
        0x15t
        0x4ct
        0x47t
        0x6t
        0x1dt
        0x45t
        0x31t
        0x55t
        0x50t
        0x2t
        0x40t
        0x0t
        0x41t
        0x4ct
        0x46t
        0x6t
        0x13t
        0x5t
        0x0t
        0x5dt
        0x51t
        0x21t
        0x5ct
        0x11t
        0x15t
        0x56t
        0x58t
        0x30t
        0x5bt
        0x0t
        0x4t
        0x4dt
        0x76t
        0x2t
        0x5ft
        0x9t
        0x3t
        0x58t
        0x56t
        0x8t
        0x1bt
        0x4ct
        0x1t
        0x19t
        0x54t
        0xdt
        0x57t
        0x45t
        0x1t
        0x4bt
        0x50t
        0xet
        0x5ct
        0x13t
        0x4t
        0x7bt
        0x5at
        0x17t
        0x47t
        0xat
        0xct
        0x6at
        0x5dt
        0x6t
        0x56t
        0x11t
        0x22t
        0x58t
        0x59t
        0xft
        0x51t
        0x4t
        0x2t
        0x52t
        0x1dt
        0x4at
        0x53t
        0x45t
        0x8t
        0x57t
        0x46t
        0x17t
        0x56t
        0x4t
        0x5t
        0x19t
        0x41t
        0xct
        0x13t
        0x16t
        0x4t
        0x4dt
        0x15t
        0x1at
        0x5ct
        0x10t
        0x13t
        0x19t
        0x5at
        0x14t
        0x5dt
        0x45t
        0x2t
        0x58t
        0x59t
        0xft
        0x51t
        0x4t
        0x2t
        0x52t
        0x46t
        0x4dt
    .end array-data
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    return-void
.end method

.method public setExpandedOffset(I)V
    .locals 4

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "794511"

    const/16 v3, 0x40fd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x58t
        0x5ft
        0x52t
        0x46t
        0x54t
        0x45t
        0x17t
        0x54t
        0x41t
        0x46t
        0x45t
        0x11t
        0x55t
        0x5ct
        0x14t
        0x52t
        0x43t
        0x54t
        0x56t
        0x4dt
        0x51t
        0x47t
        0x11t
        0x45t
        0x5ft
        0x58t
        0x5at
        0x15t
        0x5et
        0x43t
        0x17t
        0x5ct
        0x45t
        0x40t
        0x50t
        0x5dt
        0x17t
        0x4dt
        0x5bt
        0x15t
        0x1t
    .end array-data
.end method

.method public setFitToContents(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    goto :goto_1
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c133e0"

    const-wide v4, 0x41b83c820c000000L    # 4.06618636E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x11t
        0x50t
        0x47t
        0x5at
        0xat
        0x10t
        0xet
        0x44t
        0x40t
        0x47t
        0x45t
        0x52t
        0x6t
        0x11t
        0x52t
        0x13t
        0x3t
        0x5ct
        0xct
        0x50t
        0x47t
        0x13t
        0x13t
        0x51t
        0xft
        0x44t
        0x56t
        0x13t
        0x7t
        0x55t
        0x17t
        0x46t
        0x56t
        0x56t
        0xbt
        0x10t
        0x53t
        0x11t
        0x52t
        0x5dt
        0x1t
        0x10t
        0x52t
    .end array-data
.end method

.method public setHideable(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    :cond_1
    return-void
.end method

.method public setHideableInternal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    return-void
.end method

.method public setPeekHeight(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    return-void
.end method

.method public final setPeekHeight(IZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v2, :cond_3

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    if-eq v2, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setSaveFlags(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return-void
.end method

.method public setState(I)V
    .locals 7

    const/16 v4, 0x8

    const/4 v1, 0x6

    const/4 v6, 0x1

    if-eq p1, v6, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d6c828"

    const v3, 0x4e9aa627

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p1, v6, :cond_6

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v2, "8d1c37"

    const-wide v4, 0x41dc5d3bd3400000L    # 1.903488845E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v3, "da2a49"

    invoke-static {v1, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-nez v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "28e0e5"

    const-wide v4, -0x3e3506d903000000L    # -9.05072122E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    if-ne p1, v1, :cond_4

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getTopOffsetForState(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    if-gt v0, v1, :cond_4

    const/4 v0, 0x3

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    :cond_4
    move v1, p1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    new-array v0, v4, [B

    fill-array-data v0, :array_4

    const-string v2, "e3783f"

    const/16 v3, 0x5689

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x37t
        0x62t
        0x22t
        0x6ct
        0x77t
        0x67t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7ct
        0x36t
        0x70t
        0x24t
        0x74t
        0x7et
        0x76t
        0x23t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x12t
        0x5at
        0xet
        0x41t
        0x55t
        0x0t
        0x41t
        0x5ct
        0xet
        0x40t
        0x19t
        0x6t
        0x4t
        0x12t
        0x12t
        0x51t
        0x4dt
        0x44t
        0x4t
        0x4at
        0x15t
        0x51t
        0x4bt
        0xat
        0x0t
        0x5et
        0xdt
        0x4dt
        0x17t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x71t
        0x59t
        0xbt
        0x5et
        0xat
        0x41t
        0x12t
        0x4bt
        0x0t
        0x44t
        0x45t
        0x46t
        0x46t
        0x59t
        0x11t
        0x55t
        0x5ft
        0x15t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x36t
        0x76t
        0x63t
        0x6ct
        0x7ft
        0x2ft
        0x2bt
        0x74t
    .end array-data
.end method

.method setStateInternal(I)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    if-eq p1, v5, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    :cond_2
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_5

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(I)V

    move v2, v1

    :goto_2
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_6

    if-ne p1, v3, :cond_4

    :cond_6
    invoke-direct {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    goto :goto_0
.end method

.method public setUpdateImportantForAccessibilityOnSiblings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    return-void
.end method

.method public shouldExpandOnUpwardDrag(JF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v2, v2

    div-float v2, v3, v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public shouldSkipHalfExpandedStateWhenDragging()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipSmoothAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
