.class public Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/WidgetContainer;


# static fields
.field private static final DEBUG:Z = false

.field static final DEBUG_GRAPH:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final MAX_ITERATIONS:I = 0x8

.field static myCounter:I


# instance fields
.field private horizontalWrapMax:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private horizontalWrapMin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

.field mDebugSolverPassCount:I

.field public mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

.field public mGroupsWrapOptimized:Z

.field private mHeightMeasuredTooSmall:Z

.field mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mHorizontalChainsSize:I

.field public mHorizontalWrapOptimized:Z

.field private mIsRtl:Z

.field public mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field protected mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

.field public mMetrics:Landroidx/constraintlayout/core/Metrics;

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field public mSkipSolver:Z

.field protected mSystem:Landroidx/constraintlayout/core/LinearSystem;

.field mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mVerticalChainsSize:I

.field public mVerticalWrapOptimized:Z

.field private mWidthMeasuredTooSmall:Z

.field public mWrapFixedHeight:I

.field public mWrapFixedWidth:I

.field private pass:I

.field private verticalWrapMax:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private verticalWrapMin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field widgetsToAdd:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->myCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-array v0, v3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v0, v3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-array v0, v3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v0, v3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(IIII)V

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-array v0, v3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v0, v3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-array v0, v3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v0, v3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setDebugName(Ljava/lang/String;)V

    return-void
.end method

.method private addHorizontalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    add-int/lit8 v0, v0, 0x1

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v2, v0, v1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    return-void
.end method

.method private addMaxWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, p2, v0, v2, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    return-void
.end method

.method private addMinWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v0, p2, v2, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    return-void
.end method

.method private addVerticalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    add-int/lit8 v0, v0, 0x1

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v2, v0, v1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    return-void
.end method

.method public static measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z
    .locals 8

    const/4 v7, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v0, :cond_2

    :cond_1
    iput v2, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v2, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iput-boolean v2, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    iput p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_1
    iget-object v3, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_7

    move v3, v1

    :goto_2
    if-eqz v0, :cond_8

    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    move v6, v1

    :goto_3
    if-eqz v3, :cond_9

    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    move v5, v1

    :goto_4
    if-eqz v0, :cond_13

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v4

    if-eqz v4, :cond_13

    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v4, :cond_13

    if-nez v6, :cond_13

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v3, :cond_12

    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_12

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v4, v2

    :goto_5
    if-eqz v3, :cond_11

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_11

    if-nez v5, :cond_11

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v4, :cond_10

    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v0, :cond_10

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v2

    :goto_6
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v3, v2

    :goto_7
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v2

    :cond_3
    if-eqz v6, :cond_4

    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v2, v4, v2

    if-ne v2, v7, :cond_a

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_4
    :goto_8
    if-eqz v5, :cond_5

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v0, v0, v1

    if-ne v0, v7, :cond_c

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_5
    :goto_9
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    iget v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget-boolean v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    iget v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    iget-boolean v2, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v3, v2

    goto/16 :goto_2

    :cond_8
    move v6, v2

    goto/16 :goto_3

    :cond_9
    move v5, v2

    goto/16 :goto_4

    :cond_a
    if-nez v0, :cond_4

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_b

    iget v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    :goto_a
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v2, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    goto :goto_8

    :cond_b
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    goto :goto_a

    :cond_c
    if-nez v3, :cond_5

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_d

    iget v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    :goto_b
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v1, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatioSide()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    goto :goto_9

    :cond_d
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    goto :goto_b

    :cond_e
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    goto :goto_9

    :cond_f
    move v3, v4

    goto/16 :goto_7

    :cond_10
    move v0, v2

    goto/16 :goto_6

    :cond_11
    move v0, v3

    goto/16 :goto_6

    :cond_12
    move v4, v2

    goto/16 :goto_5

    :cond_13
    move v4, v0

    goto/16 :goto_5
.end method

.method private resetChains()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    return-void
.end method


# virtual methods
.method addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 1

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_0
.end method

.method public addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v7

    invoke-virtual {p0, p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v5

    move v1, v5

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0, v5, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    invoke-virtual {v0, v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v0, :cond_16

    move v0, v6

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    move v1, v5

    :goto_2
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v2, :cond_1

    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->markWidgets()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    move v1, v5

    :goto_3
    if-ge v1, v4, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v0, p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->contains(Ljava/util/HashSet;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0, p1, v7}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0, p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_5

    :cond_9
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    if-eqz v0, :cond_d

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v1, v5

    :goto_6
    if-ge v1, v4, :cond_b

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addFirst()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_c

    move v4, v5

    :goto_7
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    invoke-virtual {v0, p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_8

    :cond_c
    move v4, v6

    goto :goto_7

    :cond_d
    move v1, v5

    :goto_9
    if-ge v1, v4, :cond_13

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v5

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v6

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v8, :cond_e

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_e
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_f

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_f
    invoke-virtual {v0, p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v8, :cond_10

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_10
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v2, :cond_11

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_11
    :goto_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_12
    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addFirst()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0, p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_a

    :cond_13
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-lez v0, :cond_14

    invoke-static {p0, p1, v9, v5}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    :cond_14
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez v0, :cond_15

    invoke-static {p0, p1, v9, v6}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    :cond_15
    return v6

    :cond_16
    move v0, v1

    goto/16 :goto_1
.end method

.method public addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v0

    if-le v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public addHorizontalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v0

    if-le v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v0

    if-le v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v0

    if-le v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public defineTerminalWidgets()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->defineTerminalWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    return-void
.end method

.method public directMeasure(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->directMeasure(Z)Z

    move-result v0

    return v0
.end method

.method public directMeasureSetup(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->directMeasureSetup(Z)Z

    move-result v0

    return v0
.end method

.method public directMeasureWithOrientation(ZI)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->directMeasureWithOrientation(ZI)Z

    move-result v0

    return v0
.end method

.method public fillMetrics(Landroidx/constraintlayout/core/Metrics;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/LinearSystem;->fillMetrics(Landroidx/constraintlayout/core/Metrics;)V

    return-void
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/widgets/Guideline;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v4, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v4, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    return-object v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    return v0
.end method

.method public getSystem()Landroidx/constraintlayout/core/LinearSystem;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c81c08"

    const v2, -0x3154e287

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x20t
        0x57t
        0x5ft
        0x10t
        0x44t
        0x4at
        0x2t
        0x51t
        0x5ft
        0x17t
        0x7ct
        0x59t
        0x1at
        0x57t
        0x44t
        0x17t
    .end array-data
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/widgets/Guideline;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v4, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v4, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public handlesInternalConstraints()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateGraph()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->invalidateGraph()V

    return-void
.end method

.method public invalidateMeasures()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->invalidateMeasures()V

    return-void
.end method

.method public isHeightMeasuredTooSmall()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    return v0
.end method

.method public isRtl()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    return v0
.end method

.method public isWidthMeasuredTooSmall()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    return v0
.end method

.method public layout()V
    .locals 23

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mX:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mY:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v16, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v17, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v4, :cond_0

    iget-wide v8, v4, Landroidx/constraintlayout/core/Metrics;->layouts:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroidx/constraintlayout/core/Metrics;->layouts:J

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->pass:I

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 v7, 0x1

    invoke-static {v4, v7}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    const/4 v4, 0x0

    move v7, v4

    :goto_0
    if-ge v7, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v8

    if-eqz v8, :cond_1

    instance-of v8, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v8, :cond_1

    instance-of v8, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v8, :cond_1

    instance-of v8, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v8, :cond_1

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v10, :cond_2

    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v10, 0x1

    if-eq v8, v10, :cond_2

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v8, :cond_2

    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_1
    if-nez v8, :cond_1

    new-instance v8, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v8}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    sget v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v9, v4, v10, v8, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    :cond_1
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-le v15, v4, :cond_b

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v17

    if-eq v0, v4, :cond_4

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v16

    if-ne v0, v4, :cond_b

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/16 v7, 0x400

    invoke-static {v4, v7}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->simpleSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v17

    if-ne v0, v4, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-ge v5, v4, :cond_9

    if-lez v5, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    move v4, v5

    :goto_2
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v16

    if-ne v0, v5, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v5

    if-ge v6, v5, :cond_a

    if-lez v6, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    move v5, v6

    :goto_3
    const/4 v6, 0x1

    move v7, v4

    move v8, v6

    move v6, v5

    :goto_4
    const/16 v4, 0x40

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_5
    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    const/4 v9, 0x0

    iput-boolean v9, v5, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    const/4 v9, 0x0

    iput-boolean v9, v5, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v9, :cond_d

    :cond_7
    const/4 v4, 0x1

    move v9, v4

    :goto_6
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetChains()V

    const/4 v4, 0x0

    move v10, v4

    :goto_7
    if-ge v10, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v11, v4, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    if-eqz v11, :cond_8

    check-cast v4, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->layout()V

    :cond_8
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_7

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v5

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    move v7, v5

    move v8, v4

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    move v9, v4

    goto :goto_6

    :cond_e
    const/16 v4, 0x40

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v18

    const/4 v10, 0x0

    const/4 v4, 0x1

    move/from16 v22, v4

    move v4, v10

    move v10, v8

    move/from16 v8, v22

    :goto_8
    if-eqz v8, :cond_1f

    add-int/lit8 v14, v4, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetChains()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    const/4 v4, 0x0

    move v11, v4

    :goto_9
    if-ge v11, v15, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v4, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_9

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMinWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMaxWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMinWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMaxWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    :cond_13
    if-eqz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    :goto_a
    if-eqz v8, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    sget-object v8, Landroidx/constraintlayout/core/widgets/Optimizer;->flags:[Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateChildrenFromSolver(Landroidx/constraintlayout/core/LinearSystem;[Z)Z

    move-result v8

    :goto_b
    if-eqz v9, :cond_1e

    const/16 v4, 0x8

    if-ge v14, v4, :cond_1e

    sget-object v4, Landroidx/constraintlayout/core/widgets/Optimizer;->flags:[Z

    const/4 v11, 0x2

    aget-boolean v4, v4, v11

    if-eqz v4, :cond_1e

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v12

    move v12, v11

    move v11, v4

    :goto_c
    if-ge v13, v15, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    move/from16 v19, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    move/from16 v19, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    add-int v4, v4, v19

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v12, v13, 0x1

    move v13, v12

    move v12, v4

    goto :goto_c

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0xc

    new-array v13, v13, [B

    fill-array-data v13, :array_0

    const-string v19, "5c61a3"

    const-wide v20, -0x3e2c9d8deb000000L    # -1.300875348E9

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v13, v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    const/4 v4, 0x0

    move v8, v4

    :goto_d
    if-ge v8, v15, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_d

    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v17

    if-ne v0, v12, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v12

    if-ge v12, v4, :cond_21

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v10, v4, v8

    const/4 v8, 0x1

    const/4 v4, 0x1

    :goto_e
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v16

    if-ne v0, v10, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v10

    if-ge v10, v11, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v10, v4, v8

    const/4 v8, 0x1

    const/4 v4, 0x1

    :cond_18
    :goto_f
    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v11

    if-le v10, v11, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v10, v4, v8

    const/4 v8, 0x1

    const/4 v4, 0x1

    :cond_19
    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v11

    if-le v10, v11, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v10, v4, v8

    const/4 v8, 0x1

    const/4 v4, 0x1

    :cond_1a
    if-nez v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_1b

    if-lez v7, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v10

    if-le v10, v7, :cond_1b

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v11, v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    const/4 v4, 0x1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_1c

    if-lez v6, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v10

    if-le v10, v6, :cond_1c

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v11, v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    const/4 v4, 0x1

    :cond_1c
    const/16 v10, 0x8

    if-le v14, v10, :cond_1d

    const/4 v4, 0x0

    :cond_1d
    move v10, v8

    move v8, v4

    move v4, v14

    goto/16 :goto_8

    :cond_1e
    move v4, v8

    move v8, v10

    goto/16 :goto_f

    :cond_1f
    move-object v4, v5

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v10, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aput-object v16, v4, v5

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/LinearSystem;->getCache()Landroidx/constraintlayout/core/Cache;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V

    return-void

    :cond_21
    move v4, v8

    move v8, v10

    goto/16 :goto_e

    :cond_22
    move v5, v6

    goto/16 :goto_3

    :cond_23
    move v4, v5

    goto/16 :goto_2

    :array_0
    .array-data 1
        0x70t
        0x3bt
        0x75t
        0x74t
        0x31t
        0x67t
        0x7ct
        0x2ct
        0x78t
        0x11t
        0x5bt
        0x13t
    .end array-data
.end method

.method public measure(IIIIIIIII)J
    .locals 13

    move/from16 v0, p8

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    move/from16 v0, p9

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    move-object v3, p0

    move v4, p1

    move/from16 v5, p8

    move/from16 v6, p9

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v2 .. v12}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solverMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIIIIIIII)J

    move-result-wide v2

    return-wide v2
.end method

.method public optimizeFor(I)Z
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->reset()V

    return-void
.end method

.method public setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    sput-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    return-void
.end method

.method public setPass(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->pass:I

    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    return-void
.end method

.method public updateChildrenFromSolver(Landroidx/constraintlayout/core/LinearSystem;[Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-boolean v0, p2, v1

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDimensionOverride()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public updateFromRuns(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->updateFromRuns(ZZ)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateHierarchy()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    return-void
.end method
