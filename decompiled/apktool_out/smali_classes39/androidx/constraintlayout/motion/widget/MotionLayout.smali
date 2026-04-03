.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$Model;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEBUG_SHOW_NONE:I = 0x0

.field public static final DEBUG_SHOW_PATH:I = 0x2

.field public static final DEBUG_SHOW_PROGRESS:I = 0x1

.field private static final EPSILON:F = 1.0E-5f

.field public static IS_IN_EDIT_MODE:Z = false

.field static final MAX_KEY_FRAMES:I = 0x32

.field static final TAG:Ljava/lang/String;

.field public static final TOUCH_UP_COMPLETE:I = 0x0

.field public static final TOUCH_UP_COMPLETE_TO_END:I = 0x2

.field public static final TOUCH_UP_COMPLETE_TO_START:I = 0x1

.field public static final TOUCH_UP_DECELERATE:I = 0x4

.field public static final TOUCH_UP_DECELERATE_AND_COMPLETE:I = 0x5

.field public static final TOUCH_UP_NEVER_TO_END:I = 0x7

.field public static final TOUCH_UP_NEVER_TO_START:I = 0x6

.field public static final TOUCH_UP_STOP:I = 0x3

.field public static final VELOCITY_LAYOUT:I = 0x1

.field public static final VELOCITY_POST_LAYOUT:I = 0x0

.field public static final VELOCITY_STATIC_LAYOUT:I = 0x3

.field public static final VELOCITY_STATIC_POST_LAYOUT:I = 0x2


# instance fields
.field firstDown:Z

.field private lastPos:F

.field private lastY:F

.field private mAnimationStartTime:J

.field private mBeginState:I

.field private mBoundsCheck:Landroid/graphics/RectF;

.field mCurrentState:I

.field mDebugPath:I

.field private mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

.field private mDecoratorsHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayedApply:Z

.field private mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

.field mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

.field private mEndState:I

.field mEndWrapHeight:I

.field mEndWrapWidth:I

.field mFrameArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;"
        }
    .end annotation
.end field

.field private mFrames:I

.field mHeightMeasureMode:I

.field private mInLayout:Z

.field private mInRotation:Z

.field mInTransition:Z

.field mIndirectTransition:Z

.field private mInteractionEnabled:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mInverseMatrix:Landroid/graphics/Matrix;

.field mIsAnimating:Z

.field private mKeepAnimating:Z

.field private mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field private mLastDrawTime:J

.field private mLastFps:F

.field private mLastHeightMeasureSpec:I

.field mLastLayoutHeight:I

.field mLastLayoutWidth:I

.field mLastVelocity:F

.field private mLastWidthMeasureSpec:I

.field private mListenerPosition:F

.field private mListenerState:I

.field protected mMeasureDuringTransition:Z

.field mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

.field private mNeedsFireTransitionCompleted:Z

.field mOldHeight:I

.field mOldWidth:I

.field private mOnComplete:Ljava/lang/Runnable;

.field private mOnHideHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mOnShowHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field mPostInterpolationPosition:F

.field mPreRotate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/utils/ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private mPreRotateHeight:I

.field private mPreRotateWidth:I

.field private mPreviouseRotation:I

.field mProgressInterpolator:Landroid/view/animation/Interpolator;

.field private mRegionView:Landroid/view/View;

.field mRotatMode:I

.field mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

.field private mScheduledTransitionTo:[I

.field mScheduledTransitions:I

.field mScrollTargetDT:F

.field mScrollTargetDX:F

.field mScrollTargetDY:F

.field mScrollTargetTime:J

.field mStartWrapHeight:I

.field mStartWrapWidth:I

.field private mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

.field private mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporalInterpolator:Z

.field mTransitionCompleted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionDuration:F

.field mTransitionGoalPosition:F

.field private mTransitionInstantly:Z

.field mTransitionLastPosition:F

.field private mTransitionLastTime:J

.field private mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

.field private mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionPosition:F

.field mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field mUndergoingMotion:Z

.field mWidthMeasureMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "261a59"

    const v2, -0x3106049e    # -2.0970007E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7ft
        0x59t
        0x45t
        0x8t
        0x5at
        0x57t
        0x7et
        0x57t
        0x48t
        0xet
        0x40t
        0x4dt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    new-instance v0, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    new-instance v0, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    new-instance v0, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    return v0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/MotionLayout;ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    return v0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    return v0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setupMotionViews()V

    return-void
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/MotionLayout;IIIIZZ)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    return v0
.end method

.method static synthetic access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toRect(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateWidth:I

    return v0
.end method

.method static synthetic access$2200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateHeight:I

    return v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    return v0
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/MotionLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    return p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

    return v0
.end method

.method private callTransformedTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;FF)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method private checkStructure()V
    .locals 15

    const/16 v14, 0x1c

    const/16 v13, 0x1a

    const/4 v12, 0x2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_1

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    const/16 v1, 0x43

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ac2198"

    const-wide v4, 0x41cf1001af000000L    # 1.042285406E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-ne v0, v4, :cond_3

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "1936fa"

    const v7, -0x3176c0c9

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v4

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v5

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-ne v7, v5, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x35

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v8, 0x33

    new-array v8, v8, [B

    fill-array-data v8, :array_2

    const-string v9, "fe41ce"

    const-wide v10, -0x3e330691f0800000L    # -9.72217375E8

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v12, [B

    fill-array-data v8, :array_3

    const-string v9, "aeea1b"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-ne v7, v4, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v8, 0x29

    new-array v8, v8, [B

    fill-array-data v8, :array_4

    const-string v9, "bd6a35"

    const-wide v10, -0x3e45507f04000000L    # -4.47709436E8

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v12, [B

    fill-array-data v8, :array_5

    const-string v9, "389962"

    const/16 v10, 0x7116

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    new-array v4, v14, [B

    fill-array-data v4, :array_6

    const-string v7, "c557ff"

    const v8, -0x31b5f437

    invoke-static {v4, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    new-array v4, v13, [B

    fill-array-data v4, :array_7

    const-string v5, "941c36"

    const/16 v6, -0x5931

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/String;

    new-array v4, v14, [B

    fill-array-data v4, :array_8

    const-string v7, "543834"

    const v8, 0x4ea37e44

    invoke-static {v4, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/String;

    new-array v4, v13, [B

    fill-array-data v4, :array_9

    const-string v5, "70bcbc"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :array_0
    .array-data 1
        0x22t
        0x2bt
        0x77t
        0x72t
        0x72t
        0x2t
        0x41t
        0xet
        0x5dt
        0x45t
        0x50t
        0x57t
        0xft
        0x43t
        0x41t
        0x52t
        0x5ct
        0x56t
        0x4t
        0x43t
        0x5ct
        0x5et
        0x4dt
        0x18t
        0x12t
        0x6t
        0x46t
        0x10t
        0x19t
        0x4bt
        0x4t
        0x17t
        0x12t
        0x13t
        0x58t
        0x48t
        0x11t
        0x59t
        0x5et
        0x50t
        0x40t
        0x57t
        0x14t
        0x17t
        0x76t
        0x54t
        0x4at
        0x5bt
        0x13t
        0xat
        0x42t
        0x45t
        0x50t
        0x57t
        0xft
        0x5et
        0x10t
        0x71t
        0x41t
        0x55t
        0xdt
        0x4ct
        0x54t
        0x58t
        0x55t
        0x5dt
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x71t
        0x76t
        0x75t
        0x2dt
        0x5bt
        0x11t
        0x7at
        0x66t
        0x64t
        0x34t
        0x24t
        0x7ft
        0x6dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x25t
        0x2dt
        0x71t
        0x72t
        0x28t
        0x5ft
        0x46t
        0x11t
        0x43t
        0x5et
        0x43t
        0x11t
        0x14t
        0x4t
        0x5at
        0x42t
        0xat
        0x11t
        0xft
        0xat
        0x5at
        0x42t
        0x43t
        0x12t
        0xft
        0x11t
        0x5ct
        0x11t
        0x17t
        0xdt
        0x3t
        0x45t
        0x47t
        0x50t
        0xet
        0x0t
        0x46t
        0x16t
        0x40t
        0x50t
        0x11t
        0x11t
        0x46t
        0x4t
        0x5at
        0x55t
        0x43t
        0x0t
        0x8t
        0x1t
        0x14t
    .end array-data

    :array_3
    .array-data 1
        0x4ct
        0x5bt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x21t
        0x2ct
        0x73t
        0x22t
        0x78t
        0xft
        0x42t
        0x1dt
        0x59t
        0x14t
        0x13t
        0x56t
        0x3t
        0xat
        0x11t
        0x15t
        0x13t
        0x5dt
        0x3t
        0x12t
        0x53t
        0x41t
        0x41t
        0x50t
        0x14t
        0x1t
        0x44t
        0x12t
        0x56t
        0x15t
        0x16t
        0x16t
        0x57t
        0xft
        0x40t
        0x5ct
        0x16t
        0xdt
        0x59t
        0xft
        0x40t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1et
        0x6t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x43t
        0x5bt
        0x5at
        0x17t
        0x15t
        0x13t
        0x0t
        0x5dt
        0x15t
        0x54t
        0x9t
        0x8t
        0x10t
        0x41t
        0x47t
        0x56t
        0xft
        0x8t
        0x17t
        0x66t
        0x50t
        0x43t
        0x35t
        0x12t
        0x2t
        0x47t
        0x41t
        0x17t
    .end array-data

    :array_7
    .array-data 1
        0x19t
        0x5at
        0x5et
        0x43t
        0x40t
        0x43t
        0x5at
        0x5ct
        0x11t
        0x0t
        0x5ct
        0x58t
        0x4at
        0x40t
        0x43t
        0x2t
        0x5at
        0x58t
        0x4dt
        0x67t
        0x54t
        0x17t
        0x76t
        0x58t
        0x5dt
        0x14t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x15t
        0x5at
        0x5ct
        0x18t
        0x40t
        0x41t
        0x56t
        0x5ct
        0x13t
        0x5bt
        0x5ct
        0x5at
        0x46t
        0x40t
        0x41t
        0x59t
        0x5at
        0x5at
        0x41t
        0x67t
        0x56t
        0x4ct
        0x60t
        0x40t
        0x54t
        0x46t
        0x47t
        0x18t
    .end array-data

    :array_9
    .array-data 1
        0x17t
        0x5et
        0xdt
        0x43t
        0x11t
        0x16t
        0x54t
        0x58t
        0x42t
        0x0t
        0xdt
        0xdt
        0x44t
        0x44t
        0x10t
        0x2t
        0xbt
        0xdt
        0x43t
        0x63t
        0x7t
        0x17t
        0x27t
        0xdt
        0x53t
        0x10t
    .end array-data
.end method

.method private checkStructure(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 12

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2d

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x7

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    const-string v8, "ab4874"

    const-wide/32 v10, 0x6f7d526c

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x1c

    new-array v7, v7, [B

    fill-array-data v7, :array_1

    const-string v8, "d183b9"

    const-wide v10, -0x3e339e0f14000000L    # -9.52361432E8

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v7, "36e8ac"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "b5240c"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "d79520"

    const v7, 0x4eb65003    # 1.5293485E9f

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget v3, v2, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aget v5, v2, v0

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x7

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    const-string v7, "a4deb7"

    const/16 v8, -0x745d

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x14

    new-array v6, v6, [B

    fill-array-data v6, :array_6

    const-string v7, "f2eeff"

    const-wide v8, 0x41d55622d9c00000L    # 1.431866215E9

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->getHeight(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1a

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x7

    new-array v6, v6, [B

    fill-array-data v6, :array_7

    const-string v7, "c66b1c"

    const/16 v8, -0x7287

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/16 v8, 0x1f

    aput-byte v8, v6, v7

    const-string v7, "764d05"

    const/16 v8, -0x46cf

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x12

    new-array v6, v6, [B

    fill-array-data v6, :array_8

    const-string v7, "5c0606"

    const-wide v8, 0x41d114ce64800000L    # 1.146304914E9

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->getWidth(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1a

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_9

    const-string v6, "85d72c"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/16 v7, 0x1f

    aput-byte v7, v5, v6

    const-string v6, "72764a"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x12

    new-array v4, v4, [B

    fill-array-data v4, :array_a

    const-string v5, "77263a"

    const-wide v6, 0x41b1c2dcdd000000L    # 2.97983197E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    return-void

    :array_0
    .array-data 1
        0x22t
        0x2at
        0x71t
        0x7bt
        0x7ct
        0xet
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x70t
        0x74t
        0x7ft
        0x42t
        0x6ft
        0x2dt
        0x74t
        0x6ft
        0x60t
        0x42t
        0x6at
        0x2ct
        0x7et
        0x6dt
        0x7ft
        0x26t
        0x19t
        0x2ct
        0x70t
        0x6et
        0x76t
        0x42t
        0x70t
        0x20t
        0x16t
        0x4bt
        0x13t
    .end array-data

    :array_2
    .array-data 1
        0x13t
        0x52t
        0xat
        0x5dt
        0x12t
        0x43t
        0x5dt
        0x59t
        0x11t
        0x19t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x21t
        0x7dt
        0x77t
        0x77t
        0x7bt
        0x59t
        0x42t
    .end array-data

    :array_4
    .array-data 1
        0x44t
        0x79t
        0x76t
        0x15t
        0x71t
        0x7ft
        0x2at
        0x64t
        0x6dt
        0x67t
        0x73t
        0x79t
        0x2at
        0x63t
        0x6at
        0x15t
        0x54t
        0x5ft
        0x16t
        0x17t
    .end array-data

    :array_5
    .array-data 1
        0x22t
        0x7ct
        0x21t
        0x26t
        0x29t
        0xdt
        0x41t
    .end array-data

    :array_6
    .array-data 1
        0x46t
        0x7ct
        0x2at
        0x45t
        0x30t
        0xft
        0x3t
        0x45t
        0x45t
        0x8t
        0x7t
        0x12t
        0x5t
        0x5at
        0x0t
        0x16t
        0x46t
        0xft
        0x2t
        0x12t
    .end array-data

    :array_7
    .array-data 1
        0x20t
        0x7et
        0x73t
        0x21t
        0x7at
        0x59t
        0x43t
    .end array-data

    :array_8
    .array-data 1
        0x1ct
        0x43t
        0x5et
        0x59t
        0x10t
        0x7at
        0x74t
        0x3at
        0x7ft
        0x63t
        0x64t
        0x69t
        0x7dt
        0x26t
        0x79t
        0x71t
        0x78t
        0x62t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x7bt
        0x7dt
        0x21t
        0x74t
        0x79t
        0x59t
        0x18t
    .end array-data

    :array_a
    .array-data 1
        0x1et
        0x17t
        0x5ct
        0x59t
        0x13t
        0x2dt
        0x76t
        0x6et
        0x7dt
        0x63t
        0x67t
        0x3et
        0x7ft
        0x72t
        0x7bt
        0x71t
        0x7bt
        0x35t
    .end array-data
.end method

.method private checkStructure(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c788cb"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x20t
        0x7ft
        0x7dt
        0x7bt
        0x28t
        0x58t
        0x43t
        0x44t
        0x4ct
        0x59t
        0x11t
        0x16t
        0x43t
        0x56t
        0x56t
        0x5ct
        0x43t
        0x7t
        0xdt
        0x53t
        0x18t
        0x5bt
        0xct
        0xct
        0x10t
        0x43t
        0x4at
        0x59t
        0xat
        0xct
        0x17t
        0x17t
        0x4bt
        0x5dt
        0x17t
        0x42t
        0x10t
        0x5ft
        0x57t
        0x4dt
        0xft
        0x6t
        0x43t
        0x59t
        0x57t
        0x4ct
        0x43t
        0x0t
        0x6t
        0x17t
        0x4ct
        0x50t
        0x6t
        0x42t
        0x10t
        0x56t
        0x55t
        0x5dt
        0x42t
    .end array-data
.end method

.method private computeCurrentPositions()V
    .locals 4

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->setStartCurrentState(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private debugPos()V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-static {v4, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1b

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private evaluateLayout()V
    .locals 12

    const/4 v2, 0x0

    const v10, 0x3089705f    # 1.0E-9f

    const/4 v1, 0x0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v6

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v0, v5, Landroidx/constraintlayout/motion/utils/StopLogic;

    if-nez v0, :cond_d

    iget-wide v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    sub-long v8, v6, v8

    long-to-float v0, v8

    mul-float/2addr v0, v4

    mul-float/2addr v0, v10

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float/2addr v0, v3

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v0, v3

    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v3, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :cond_0
    cmpl-float v3, v4, v1

    if-lez v3, :cond_1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v3, v0, v3

    if-gez v3, :cond_2

    :cond_1
    cmpg-float v3, v4, v1

    if-gtz v3, :cond_c

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_c

    :cond_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    const/4 v0, 0x1

    move v11, v0

    move v0, v3

    move v3, v11

    :goto_1
    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v3, :cond_8

    iget-wide v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    mul-float/2addr v0, v10

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_3
    :goto_2
    cmpl-float v3, v4, v1

    if-lez v3, :cond_4

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v3, v0, v3

    if-gez v3, :cond_5

    :cond_4
    cmpg-float v1, v4, v1

    if-gtz v1, :cond_6

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_6

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :cond_6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v7

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v4

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_9

    move v3, v0

    :goto_3
    move v0, v2

    :goto_4
    if-ge v0, v7, :cond_a

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v1, :cond_7

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    :cond_9
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_3

    :cond_a
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_b
    return-void

    :cond_c
    move v3, v2

    goto :goto_1

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method private fireTransitionChange()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-interface {v0, p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-interface {v0, p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    :cond_3
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v1, :cond_4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-interface {v1, p0, v2, v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    invoke-interface {v0, p0, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    goto :goto_1

    :cond_5
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    :cond_6
    return-void
.end method

.method private fireTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p1

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p2

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6, v4, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    neg-float v2, p1

    neg-float v3, p2

    invoke-direct {p0, p3, p4, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->callTransformedTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    move v3, v1

    move v2, v4

    :goto_0
    if-ge v3, v6, :cond_5

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_layoutDescription:I

    if-ne v0, v7, :cond_0

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    move v0, v2

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_0
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_currentState:I

    if-ne v0, v7, :cond_1

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    move v0, v2

    goto :goto_1

    :cond_1
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionProgress:I

    if-ne v0, v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    move v0, v2

    goto :goto_1

    :cond_2
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_applyMotionScene:I

    if-ne v0, v7, :cond_3

    invoke-virtual {v5, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    goto :goto_1

    :cond_3
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_showPaths:I

    if-ne v0, v7, :cond_4

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-nez v7, :cond_a

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    move v0, v2

    goto :goto_1

    :cond_4
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionDebug:I

    if-ne v0, v7, :cond_a

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    move v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_6

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "89bd44"

    const-wide v4, -0x3e21dd6398000000L    # -2.022338976E9

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v2, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-eqz v0, :cond_8

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure()V

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v0, v9, :cond_9

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x6ft
        0x78t
        0x30t
        0x2at
        0x7dt
        0x7at
        0x7ft
        0x19t
        0x2ct
        0x2bt
        0x14t
        0x55t
        0x48t
        0x49t
        0x58t
        0x8t
        0x55t
        0x4dt
        0x57t
        0x4ct
        0x16t
        0x20t
        0x51t
        0x47t
        0x5bt
        0x4bt
        0xbt
        0x14t
        0x40t
        0x5dt
        0x57t
        0x57t
        0x42t
        0x10t
        0x55t
        0x53t
    .end array-data
.end method

.method private processTransitionCompleted()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private setupMotionViews()V
    .locals 13

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v9

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    const/4 v7, 0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v9, :cond_0

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->gatPathMotionArc()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_2

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v9, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->setPathMotionArc(I)V

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v11, v0, [I

    const/4 v0, 0x0

    const/4 v6, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v9, :cond_3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v10, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    move-result v0

    aput v0, v11, v6

    add-int/lit8 v0, v6, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    move v3, v0

    :goto_4
    if-ge v3, v6, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    aget v4, v11, v3

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_4

    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionHelper;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v4}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    move v8, v0

    :goto_7
    if-ge v8, v6, :cond_a

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    aget v3, v11, v8

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_7

    :goto_8
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_7

    :cond_7
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    move v8, v0

    :goto_9
    if-ge v8, v6, :cond_a

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    aget v3, v11, v8

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_9

    :goto_a
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_9

    :cond_9
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    move v6, v0

    :goto_b
    if-ge v6, v9, :cond_d

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    :goto_c
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_b

    :cond_c
    if-eqz v0, :cond_b

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    goto :goto_c

    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    move-result v3

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_17

    float-to-double v0, v3

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_e

    move v1, v7

    :goto_d
    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const v3, -0x800001

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    move v4, v0

    :goto_e
    if-ge v6, v9, :cond_11

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_15

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const v3, -0x800001

    const/4 v0, 0x0

    move v4, v0

    :goto_10
    if-ge v4, v9, :cond_12

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_18

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v12, v2

    move v2, v0

    move v0, v12

    :goto_11
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_d

    :cond_f
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v3

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v0

    if-eqz v1, :cond_10

    sub-float/2addr v0, v3

    :goto_12
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v4, v6, 0x1

    move v5, v0

    move v6, v4

    move v4, v3

    goto :goto_e

    :cond_10
    add-float/2addr v0, v3

    goto :goto_12

    :cond_11
    move v0, v2

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    move v4, v0

    :goto_13
    if-ge v4, v9, :cond_17

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_13

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    if-eqz v1, :cond_14

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    sub-float v5, v3, v5

    sub-float v6, v3, v2

    div-float/2addr v5, v6

    mul-float/2addr v5, v7

    sub-float v5, v7, v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    :cond_13
    :goto_14
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_13

    :cond_14
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    sub-float/2addr v5, v2

    mul-float/2addr v5, v7

    sub-float v6, v3, v2

    div-float/2addr v5, v6

    sub-float v5, v7, v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    goto :goto_14

    :cond_15
    const/4 v0, 0x0

    move v3, v0

    :goto_15
    if-ge v3, v9, :cond_17

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v2

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v6

    if-eqz v1, :cond_16

    sub-float v2, v6, v2

    :goto_16
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v7

    div-float/2addr v6, v8

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v7

    sub-float v6, v5, v4

    div-float/2addr v2, v6

    sub-float v2, v7, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_15

    :cond_16
    add-float/2addr v2, v6

    goto :goto_16

    :cond_17
    return-void

    :cond_18
    move v0, v2

    move v2, v3

    goto/16 :goto_11

    :cond_19
    move v0, v6

    goto/16 :goto_3
.end method

.method private toRect(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private static willJump(FFF)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    cmpl-float v2, p0, v5

    if-lez v2, :cond_2

    div-float v2, p0, p2

    mul-float v3, p0, v2

    mul-float v4, p2, v2

    mul-float/2addr v2, v4

    div-float/2addr v2, v6

    sub-float v2, v3, v2

    add-float/2addr v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    neg-float v2, p0

    div-float/2addr v2, p2

    mul-float v3, p0, v2

    mul-float v4, p2, v2

    mul-float/2addr v2, v4

    div-float/2addr v2, v6

    add-float/2addr v2, v3

    add-float/2addr v2, p1

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateTo(F)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v1, :cond_2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto :goto_0
.end method

.method public applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cloneConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto :goto_0
.end method

.method disableAutoTransition(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->disableAutoTransition(Z)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/16 v10, 0x9

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v8, 0x41200000    # 10.0f

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animate()V

    :cond_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v9, :cond_5

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_8

    sub-long v2, v0, v2

    const-wide/32 v4, 0xbebc200

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    int-to-float v4, v4

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v3

    div-float v2, v4, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    :cond_4
    :goto_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, 0x42280000    # 42.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    div-float v2, v0, v8

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v5, "3020c3"

    const-wide/32 v6, -0x7f5fa70e

    invoke-static {v0, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "17cb52"

    const/16 v5, 0x69bd

    invoke-static {v0, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_9

    new-array v0, v10, [B

    fill-array-data v0, :array_2

    const-string v5, "e9a744"

    const-wide/32 v6, 0x962bcff

    invoke-static {v0, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x24

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "42be2a"

    const/16 v6, -0x7a50

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-array v2, v10, [B

    fill-array-data v2, :array_4

    const-string v3, "14f4e3"

    const/16 v4, -0x6eb0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1d

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v2, -0x77ff78

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    invoke-virtual {p1, v0, v8, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-le v0, v9, :cond_7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    if-nez v0, :cond_6

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPostDraw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_8
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    goto/16 :goto_1

    :cond_9
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    nop

    :array_0
    .array-data 1
        0x13t
        0x56t
        0x42t
        0x43t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x11t
        0x1at
        0x5dt
        0x42t
    .end array-data

    :array_2
    .array-data 1
        0x10t
        0x57t
        0x5t
        0x52t
        0x52t
        0x5dt
        0xbt
        0x5ct
        0x5t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x14t
        0x1at
        0x12t
        0x17t
        0x5dt
        0x6t
        0x46t
        0x57t
        0x11t
        0x16t
        0x8t
        0x41t
    .end array-data

    :array_4
    .array-data 1
        0x11t
        0x1dt
        0x46t
        0x47t
        0x11t
        0x52t
        0x45t
        0x51t
        0x5bt
    .end array-data
.end method

.method public enableTransition(IZ)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iput-object v0, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    goto :goto_0
.end method

.method public enableViewTransition(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->enableViewTransition(IZ)V

    :cond_0
    return-void
.end method

.method endTrigger(Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->endTrigger(Z)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method evaluate(Z)V
    .locals 12

    iget-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    :cond_1
    const/4 v1, 0x0

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-eqz v2, :cond_22

    if-nez p1, :cond_2

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_22

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v9

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v4

    const/4 v0, 0x0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v1, v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-nez v1, :cond_2f

    iget-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    sub-long v0, v4, v0

    long-to-float v0, v0

    mul-float/2addr v0, v9

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float/2addr v0, v1

    move v1, v0

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float v2, v0, v1

    const/4 v0, 0x0

    iget-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v6, :cond_3

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :cond_3
    const/4 v6, 0x0

    cmpl-float v6, v9, v6

    if-lez v6, :cond_4

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v6, v2, v6

    if-gez v6, :cond_5

    :cond_4
    const/4 v6, 0x0

    cmpg-float v6, v9, v6

    if-gtz v6, :cond_6

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_6

    :cond_5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    const/4 v0, 0x1

    :cond_6
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    if-eqz v3, :cond_16

    if-nez v0, :cond_16

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v0, :cond_14

    iget-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    sub-long v0, v4, v0

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    if-ne v0, v1, :cond_13

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/StopLogic;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    :goto_1
    move v1, v0

    :goto_2
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v3, v0, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v3, :cond_2e

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    mul-float/2addr v0, v4

    const v4, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_7

    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    :cond_7
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    :cond_8
    move v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v3, v2

    if-gez v2, :cond_9

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_9

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    :cond_9
    :goto_3
    const/4 v7, 0x0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_a
    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_b

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v1, v0, v1

    if-gez v1, :cond_c

    :cond_b
    const/4 v1, 0x0

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_d

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_d

    :cond_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    :cond_d
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_e

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_f

    :cond_e
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_f
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v10

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_17

    move v3, v0

    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_10

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float v2, v9, v2

    add-float/2addr v2, v0

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    :cond_10
    const/4 v1, 0x0

    move v8, v1

    :goto_5
    if-ge v8, v10, :cond_18

    invoke-virtual {p0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v1, :cond_11

    iget-boolean v11, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v1

    or-int/2addr v1, v11

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    :cond_11
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_5

    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_13
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_2

    :cond_14
    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v4, v0, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v4, :cond_15

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    :goto_6
    const/4 v1, 0x0

    move v0, v3

    goto/16 :goto_3

    :cond_15
    add-float/2addr v2, v1

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float/2addr v0, v3

    mul-float/2addr v0, v9

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    goto :goto_6

    :cond_16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v1, 0x0

    move v0, v2

    goto/16 :goto_3

    :cond_17
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_4

    :cond_18
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_19

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v1, v0, v1

    if-gez v1, :cond_1a

    :cond_19
    const/4 v1, 0x0

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_26

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_26

    :cond_1a
    const/4 v1, 0x1

    :goto_7
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-nez v2, :cond_1b

    if-eqz v1, :cond_1b

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_1b
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1c
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v1, :cond_27

    const/4 v1, 0x1

    :goto_8
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2d

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2d

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-eq v2, v1, :cond_2d

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    const/4 v1, 0x1

    :goto_9
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1d

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq v2, v3, :cond_1d

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    const/4 v1, 0x1

    :cond_1d
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-eqz v2, :cond_28

    :cond_1e
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    :cond_1f
    :goto_a
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v2, :cond_22

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-nez v2, :cond_22

    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_20

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_21

    :cond_20
    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-gez v2, :cond_22

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_22

    :cond_21
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    :cond_22
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2b

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq v0, v2, :cond_23

    const/4 v1, 0x1

    :cond_23
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    :cond_24
    :goto_b
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v1, :cond_25

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    if-nez v0, :cond_25

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_25
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    return-void

    :cond_26
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_27
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_28
    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_29

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2a

    :cond_29
    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-gez v2, :cond_1f

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1f

    :cond_2a
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_a

    :cond_2b
    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_24

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-eq v0, v2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    goto :goto_b

    :cond_2d
    move v1, v7

    goto/16 :goto_9

    :cond_2e
    move v0, v2

    goto/16 :goto_3

    :cond_2f
    move v1, v0

    goto/16 :goto_0
.end method

.method protected fireTransitionCompleted()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-eq v0, v2, :cond_1

    if-eq v2, v1, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    if-eqz v0, :cond_3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    if-lez v1, :cond_3

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public fireTrigger(IZF)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getAnchorDpDt(IFFF[F)V
    .locals 4

    const/16 v2, 0x1f

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastPos:F

    sub-float v1, p2, v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastY:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    sub-float v2, v0, v2

    div-float v1, v2, v1

    :cond_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastPos:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastY:F

    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    const-string v2, "4bc194"

    const/16 v3, -0x56c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_1

    const-string v2, "09eef8"

    const/16 v3, 0x4630

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :array_0
    .array-data 1
        0x63t
        0x23t
        0x31t
        0x7ft
        0x70t
        0x7at
        0x73t
        0x42t
        0x0t
        0x5et
        0x4ct
        0x58t
        0x50t
        0x42t
        0xdt
        0x5et
        0x4dt
        0x14t
        0x52t
        0xbt
        0xdt
        0x55t
        0x19t
        0x42t
        0x5dt
        0x7t
        0x14t
        0x11t
        0x50t
        0x50t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x67t
        0x78t
        0x37t
        0x2bt
        0x2ft
        0x76t
        0x77t
        0x19t
        0x6t
        0xat
        0x13t
        0x54t
        0x54t
        0x19t
        0xbt
        0xat
        0x12t
        0x18t
        0x56t
        0x50t
        0xbt
        0x1t
        0x46t
        0x4et
        0x59t
        0x5ct
        0x12t
        0x45t
        0xft
        0x5ct
        0x10t
    .end array-data
.end method

.method public getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    goto :goto_0
.end method

.method public getConstraintSetIds()[I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSetIds()[I

    move-result-object v0

    goto :goto_0
.end method

.method getConstraintSetNames(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    return v0
.end method

.method public getDebugMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/DesignTool;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/DesignTool;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/DesignTool;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    return-object v0
.end method

.method public getEndState()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    return v0
.end method

.method getMotionController(I)Landroidx/constraintlayout/motion/widget/MotionController;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    return-object v0
.end method

.method protected getNanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    return v0
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/MotionScene;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    return-object v0
.end method

.method public getStartState()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    return v0
.end method

.method public getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionById(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->recordState()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->getTransitionState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .locals 2

    const/high16 v1, 0x447a0000    # 1000.0f

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    return v0
.end method

.method public getViewVelocity(Landroid/view/View;FF[FI)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v4, 0x3727c5ac    # 1.0E-5f

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v2, v4

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    mul-float/2addr v0, v2

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float/2addr v0, v2

    move v2, v0

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v3, v0, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v3, :cond_2

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v2

    move v7, v2

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getPostLayoutDvDp(FIIFF[F)V

    :goto_2
    const/4 v0, 0x2

    if-ge p5, v0, :cond_0

    aget v0, p4, v8

    mul-float/2addr v0, v7

    aput v0, p4, v8

    aget v0, p4, v9

    mul-float/2addr v0, v7

    aput v0, p4, v9

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isAttachedToWindow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDelayedApplicationOfInitialState()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    return v0
.end method

.method public isInRotation()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    return v0
.end method

.method public isInteractionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    return v0
.end method

.method public isViewTransitionEnabled(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->isViewTransitionEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToState(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v0, p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    goto :goto_0
.end method

.method public loadLayoutDescription(I)V
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x20

    if-eqz p1, :cond_b

    :try_start_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_8

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onFinishedMotionScene(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "04e3ea"

    const-wide v4, -0x3e3831a80a800000L    # -7.98797803E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "7f7bc8"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_4
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    :cond_8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-eqz v0, :cond_a

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    if-eqz v1, :cond_9

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$1;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$1;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getAutoTransition()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_b
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x45t
        0x5at
        0x4t
        0x51t
        0x9t
        0x4t
        0x10t
        0x40t
        0xat
        0x13t
        0x15t
        0x0t
        0x42t
        0x47t
        0x0t
        0x13t
        0x28t
        0xet
        0x44t
        0x5dt
        0xat
        0x5dt
        0x36t
        0x2t
        0x55t
        0x5at
        0x0t
        0x13t
        0x3t
        0x8t
        0x5ct
        0x51t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x8t
        0x56t
        0x0t
        0xft
        0x5dt
        0x17t
        0x12t
        0x58t
        0x42t
        0x13t
        0x59t
        0x45t
        0x15t
        0x52t
        0x42t
        0x2et
        0x57t
        0x43t
        0xft
        0x58t
        0xct
        0x30t
        0x5bt
        0x52t
        0x8t
        0x52t
        0x42t
        0x5t
        0x51t
        0x5bt
        0x3t
    .end array-data
.end method

.method lookUpConstraintId(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected obtainVelocityTracker()Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;
    .locals 1

    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->obtain()Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onFinishedMotionScene(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    if-eqz v1, :cond_5

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$4;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$4;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getAutoTransition()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->touchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, p0, v2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegionId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v1, :cond_5

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-direct {p0, v1, v2, v3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    :try_start_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    :goto_0
    return-void

    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    :try_start_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    if-eq v2, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    :cond_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOldWidth:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOldHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    if-eq v0, p2, :cond_c

    :cond_1
    move v0, v2

    :goto_1
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v3, :cond_2

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    move v0, v2

    :cond_2
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDirtyHierarchy:Z

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v4

    if-nez v0, :cond_4

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v5, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->isNotConfiguredWith(II)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_4
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v6

    invoke-virtual {v0, v2, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setMeasuredId(II)V

    move v2, v1

    :cond_5
    :goto_2
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v0, :cond_6

    if-eqz v2, :cond_b

    :cond_6
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    if-eq v2, v7, :cond_7

    if-nez v2, :cond_8

    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    int-to-float v2, v0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    if-eq v2, v7, :cond_9

    if-nez v2, :cond_a

    :cond_9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    int-to-float v2, v1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    sub-int v1, v4, v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_a
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setMeasuredDimension(II)V

    :cond_b
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluateLayout()V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :cond_d
    if-eqz v0, :cond_5

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    goto :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 10

    const/4 v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegionId()I

    move-result v3

    if-eq v3, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v3, :cond_0

    :cond_2
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMoveWhenScrollAtTop()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    move v0, p3

    :cond_3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v4, v3, v6

    if-eqz v4, :cond_4

    cmpl-float v3, v3, v5

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    int-to-float v0, p2

    int-to-float v2, p3

    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getProgressDirection(FF)F

    move-result v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpg-float v3, v2, v5

    if-gtz v3, :cond_6

    cmpg-float v3, v0, v5

    if-ltz v3, :cond_7

    :cond_6
    cmpl-float v2, v2, v6

    if-ltz v2, :cond_8

    cmpl-float v0, v0, v5

    if-lez v0, :cond_8

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, v8}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$3;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$3;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    int-to-float v4, p2

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    int-to-float v4, p3

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    iget-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->processScrollMove(FF)V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    aput p2, p4, v8

    aput p3, p4, v9

    :cond_9
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    aget v0, p4, v8

    if-nez v0, :cond_a

    aget v0, p4, v9

    if-eqz v0, :cond_0

    :cond_a
    iput-boolean v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    goto/16 :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    aget v0, p7, v1

    add-int/2addr v0, p4

    aput v0, p7, v1

    aget v0, p7, v2

    add-int/2addr v0, p5

    aput v0, p7, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    return-void
.end method

.method onNewStateAttachHandlers()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setupTouch()V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    div-float/2addr v2, v1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    div-float v1, v3, v1

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->processScrollUp(FF)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v1

    invoke-virtual {v0, p1, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->processTouchEvent(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isTransitionFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->isDragStarted()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    if-eqz v0, :cond_6

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isUsedOnShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isUseOnHide()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isDecorator()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    return-void
.end method

.method public rebuildMotion()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    const/16 v1, 0x3e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "43810c"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    return-void

    nop

    :array_0
    .array-data 1
        0x60t
        0x5bt
        0x51t
        0x42t
        0x10t
        0xet
        0x51t
        0x47t
        0x50t
        0x5et
        0x54t
        0x43t
        0x5dt
        0x40t
        0x18t
        0x55t
        0x55t
        0x13t
        0x46t
        0x56t
        0x5bt
        0x50t
        0x44t
        0x6t
        0x50t
        0x1dt
        0x18t
        0x61t
        0x5ct
        0x6t
        0x55t
        0x40t
        0x5dt
        0x11t
        0x53t
        0x2t
        0x58t
        0x5ft
        0x18t
        0x43t
        0x55t
        0x1t
        0x41t
        0x5at
        0x54t
        0x55t
        0x63t
        0x0t
        0x51t
        0x5dt
        0x5dt
        0x19t
        0x19t
        0x43t
        0x5dt
        0x5dt
        0x4bt
        0x45t
        0x55t
        0x2t
        0x50t
        0x1dt
    .end array-data
.end method

.method public rebuildScene()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public removeTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 4

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getLayoutDuringTransition()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->remeasure()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public rotateTo(II)V
    .locals 7

    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0x4

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-le v2, v3, :cond_1

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/utils/ViewState;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewState;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewState;-><init>()V

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/utils/ViewState;->getState(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, v6, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$2;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$2;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd(Ljava/lang/Runnable;)V

    if-lez p2, :cond_3

    int-to-float v0, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    :cond_3
    return-void
.end method

.method public scheduleTransitionTo(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    if-nez v0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    aput p1, v0, v1

    goto :goto_0

    :cond_2
    array-length v1, v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    if-gt v1, v2, :cond_1

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    goto :goto_1
.end method

.method public setDebugMode(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_0
.end method

.method public setOnHide(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpg-float v0, p1, v3

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v6

    if-lez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    const/16 v1, 0x45

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2967e8"

    const-wide v4, -0x3e3d4d1f89000000L    # -6.27425518E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setProgress(F)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_7

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v0, v1, :cond_5

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_3

    iput-boolean v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput-wide v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    iput-wide v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto :goto_0

    :cond_7
    cmpl-float v0, p1, v6

    if-ltz v0, :cond_9

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_8

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne v0, v1, :cond_8

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_6

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_1

    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x65t
        0x58t
        0x44t
        0x59t
        0xct
        0x56t
        0x55t
        0x18t
        0x16t
        0x67t
        0x17t
        0x57t
        0x55t
        0x4bt
        0x53t
        0x44t
        0x16t
        0x18t
        0x5bt
        0x4at
        0x16t
        0x53t
        0x0t
        0x5et
        0x5bt
        0x57t
        0x53t
        0x53t
        0x45t
        0x5et
        0x5dt
        0x4bt
        0x16t
        0x41t
        0x4t
        0x54t
        0x47t
        0x5ct
        0x45t
        0x17t
        0x7t
        0x5dt
        0x46t
        0x4et
        0x53t
        0x52t
        0xbt
        0x18t
        0x2t
        0x17t
        0x6t
        0x17t
        0x4t
        0x56t
        0x56t
        0x19t
        0x7t
        0x19t
        0x55t
        0x18t
        0x5bt
        0x57t
        0x55t
        0x5bt
        0x10t
        0x4bt
        0x5bt
        0x4ft
        0x53t
    .end array-data
.end method

.method public setProgress(FF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setProgress(F)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setVelocity(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    cmpl-float v2, p2, v1

    if-eqz v2, :cond_4

    cmpl-float v2, p2, v1

    if-lez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    cmpl-float v2, p1, v1

    if-eqz v2, :cond_1

    cmpl-float v2, p1, v0

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_5

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    return-void
.end method

.method setStartState(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    goto :goto_0
.end method

.method public setState(III)V
    .locals 3

    const/4 v1, -0x1

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(IFF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_0
.end method

.method setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .locals 2

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne v0, v1, :cond_2

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    :cond_2
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$5;->$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState:[I

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    :cond_3
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTransition(I)V
    .locals 8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/high16 v0, 0x7fc00000    # Float.NaN

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne v4, v5, :cond_5

    move v0, v1

    :cond_3
    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_4

    cmpl-float v3, v0, v1

    if-nez v3, :cond_6

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a6114c"

    const v4, -0x3111a049    # -1.9996251E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    goto :goto_0

    :cond_5
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v4, v5, :cond_3

    move v0, v2

    goto :goto_1

    :cond_6
    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_2

    :cond_7
    move v1, v0

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x50t
        0x5at
        0x10t
        0x8t
        0x42t
        0x58t
        0x5et
        0x5at
        0x37t
        0xet
        0x65t
        0x45t
        0x50t
        0x46t
        0x17t
        0x41t
    .end array-data
.end method

.method public setTransition(II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    goto :goto_0
.end method

.method protected setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isTransitionFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v1, v2, :cond_2

    :goto_2
    return-void

    :cond_0
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setMeasuredId(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto :goto_2
.end method

.method public setTransitionDuration(I)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6650ef"

    const-wide/32 v4, -0x404337f9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setDuration(I)V

    goto :goto_0

    :array_0
    .array-data 1
        0x7bt
        0x59t
        0x41t
        0x59t
        0xat
        0x8t
        0x65t
        0x55t
        0x50t
        0x5et
        0x0t
        0x46t
        0x58t
        0x59t
        0x41t
        0x10t
        0x1t
        0x3t
        0x50t
        0x5ft
        0x5bt
        0x55t
        0x1t
    .end array-data
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setTransitionState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v5, "107e4c"

    const/16 v6, -0x4160

    invoke-static {v1, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "212dae"

    const-wide v6, -0x3e33f64642800000L    # -9.40798843E8

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "dc0511"

    const-wide/32 v6, 0x4dbe6111

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x1ct
        0xet
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0x19t
        0x42t
        0xbt
        0x12t
        0x5ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x44t
        0x27t
        0x40t
        0x5at
        0x42t
        0x1et
        0x20t
        0x17t
        0xat
    .end array-data
.end method

.method public touchAnimateTo(IFF)V
    .locals 9

    const/4 v7, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v1

    invoke-static {p3, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->willJump(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->config(FFF)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v5

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxVelocity()F

    move-result v6

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->config(FFF)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :pswitch_3
    if-eq p1, v2, :cond_3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    :cond_3
    move v2, v7

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getAutoCompleteMode()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v5

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxVelocity()F

    move-result v6

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    :goto_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringMass()F

    move-result v4

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStiffiness()F

    move-result v5

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringDamping()F

    move-result v6

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStopThreshold()F

    move-result v7

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringBoundary()I

    move-result v8

    move v3, p3

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/motion/utils/StopLogic;->springConfig(FFFFFFFI)V

    goto :goto_3

    :cond_7
    move v2, p2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public touchSpringTo(FF)V
    .locals 9

    const/4 v2, 0x1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringMass()F

    move-result v4

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStiffiness()F

    move-result v5

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringDamping()F

    move-result v6

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStopThreshold()F

    move-result v7

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringBoundary()I

    move-result v8

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/motion/utils/StopLogic;->springConfig(FFFFFFFI)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto :goto_0
.end method

.method public transitionToEnd()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    return-void
.end method

.method public transitionToEnd(Ljava/lang/Runnable;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    return-void
.end method

.method public transitionToStart()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    return-void
.end method

.method public transitionToState(I)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(III)V

    goto :goto_0
.end method

.method public transitionToState(II)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v1, v1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(IIII)V

    goto :goto_0
.end method

.method public transitionToState(III)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(IIII)V

    return-void
.end method

.method public transitionToState(IIII)V
    .locals 11

    const/4 v5, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v9, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/constraintlayout/widget/StateSet;->convertToConstraintSet(IIFF)I

    move-result v0

    if-eq v0, v5, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v0, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne v1, p1, :cond_3

    invoke-virtual {p0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    if-lez p4, :cond_1

    int-to-float v0, p4

    div-float/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    goto :goto_0

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v1, p1, :cond_4

    invoke-virtual {p0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    if-lez p4, :cond_1

    int-to-float v0, p4

    div-float/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    goto :goto_0

    :cond_4
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq v0, v5, :cond_5

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    invoke-virtual {p0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    iput v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    if-lez p4, :cond_1

    int-to-float v0, p4

    div-float/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    goto :goto_0

    :cond_5
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    iput v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-ne p4, v5, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    :cond_6
    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v0, v5, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    if-nez p4, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v1, v6

    :goto_2
    if-ge v1, v8, :cond_9

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-direct {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_8
    if-lez p4, :cond_7

    int-to-float v0, p4

    div-float/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    goto :goto_1

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->computeCurrentPositions()V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    move v3, v6

    :goto_3
    if-ge v3, v8, :cond_b

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_a

    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_a
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionHelper;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v4}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    goto :goto_5

    :cond_c
    move v7, v6

    :goto_6
    if-ge v7, v8, :cond_10

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_d

    :goto_7
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6

    :cond_d
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    goto :goto_7

    :cond_e
    move v7, v6

    :goto_8
    if-ge v7, v8, :cond_10

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_f

    :goto_9
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_8

    :cond_f
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    goto :goto_9

    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    move-result v5

    cmpl-float v0, v5, v9

    if-eqz v0, :cond_12

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v0, -0x800001

    move v2, v0

    move v3, v1

    move v4, v6

    :goto_a
    if-ge v4, v8, :cond_11

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v7

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v0

    add-float v1, v0, v7

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v0, v7

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v2, v4, 0x1

    move v3, v1

    move v4, v2

    move v2, v0

    goto :goto_a

    :cond_11
    move v1, v6

    :goto_b
    if-ge v1, v8, :cond_12

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v4

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v6

    sub-float v7, v10, v5

    div-float v7, v10, v7

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    add-float/2addr v4, v6

    sub-float/2addr v4, v3

    mul-float/2addr v4, v5

    sub-float v6, v2, v3

    div-float/2addr v4, v6

    sub-float v4, v5, v4

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_12
    iput v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/16 :goto_0
.end method

.method public updateState()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setConstraintSet(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState()V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v0, p1, :cond_1

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    return-void
.end method

.method public updateStateAnimate(ILandroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v0, p1, :cond_0

    sget v0, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    sget v0, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    invoke-virtual {p0, v0, v3, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    sget v2, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    invoke-direct {v0, v3, v1, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V

    invoke-virtual {v0, p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setDuration(I)V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    goto :goto_0
.end method

.method public varargs viewTransition(I[Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->viewTransition(I[Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->TAG:Ljava/lang/String;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5ec7a2"

    const/16 v3, 0x6eb5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x15t
        0xbt
        0xct
        0x17t
        0xct
        0x5dt
        0x41t
        0xct
        0xct
        0x59t
        0x32t
        0x51t
        0x50t
        0xbt
        0x6t
    .end array-data
.end method
