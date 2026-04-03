.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;,
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;,
        Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW_CONSTRAINTS:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final MEASURE:Z = false

.field private static final OPTIMIZE_HEIGHT_CHANGE:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String;

.field private static sSharedValues:Landroidx/constraintlayout/widget/SharedValues;


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

.field private mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private mConstraintSetId:I

.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field protected mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field private mMetrics:Landroidx/constraintlayout/core/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnMeasureHeightMeasureSpec:I

.field private mOnMeasureWidthMeasureSpec:I

.field private mOptimizationLevel:I

.field private mTempMapIdToWidget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "546d5d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->TAG:Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "4d59df"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    return-void

    :array_0
    .array-data 1
        0x76t
        0x5bt
        0x58t
        0x17t
        0x41t
        0x16t
        0x54t
        0x5dt
        0x58t
        0x10t
        0x79t
        0x5t
        0x4ct
        0x5bt
        0x43t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0xbt
        0x5bt
        0x4at
        0x10t
        0x14t
        0x55t
        0xdt
        0x5bt
        0x4dt
        0x28t
        0x7t
        0x4dt
        0xbt
        0x40t
        0x4dt
        0x49t
        0x54t
        0x1at
        0x55t
        0x1bt
        0xbt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const v5, 0x7fffffff

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-direct {p0, v4, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-direct {p0, p2, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-direct {p0, p2, p3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-direct {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    :cond_0
    if-lez v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static getSharedValues()Landroidx/constraintlayout/widget/SharedValues;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/widget/SharedValues;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/SharedValues;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    return-object v0
.end method

.method private final getTargetWidget(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_1
    if-ne v0, p0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_7

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_1

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_2

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    goto :goto_1

    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    goto :goto_1

    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    goto :goto_1

    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_5

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_1

    :cond_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layoutDescription:I

    if-ne v4, v5, :cond_6

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    iput-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    goto :goto_1

    :cond_6
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    :try_start_1
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    goto :goto_1

    :catch_1
    move-exception v5

    iput-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    return-void
.end method

.method private markHierarchyDirty()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    return-void
.end method

.method private setChildrenConstraints()V
    .locals 9

    const/4 v8, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v7

    move v0, v2

    :goto_0
    if-ge v0, v7, :cond_1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-eq v0, v8, :cond_5

    move v3, v2

    :goto_4
    if-ge v3, v7, :cond_5

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-ne v4, v5, :cond_4

    instance-of v4, v0, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v4, :cond_4

    check-cast v0, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    move v3, v2

    :goto_5
    if-ge v3, v4, :cond_7

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_6
    if-ge v3, v7, :cond_9

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_8

    check-cast v0, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Placeholder;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    :goto_7
    if-ge v0, v7, :cond_a

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v4

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    move v6, v2

    :goto_8
    if-ge v6, v7, :cond_c

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v3

    if-nez v3, :cond_b

    :goto_9
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8

    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    goto :goto_9

    :cond_c
    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_3
.end method

.method private setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v2, :cond_1

    iput-boolean v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p5, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iget v3, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    :cond_1
    return-void
.end method

.method private updateHierarchy()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setChildrenConstraints()V

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    const/4 v0, 0x0

    iput-boolean v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    iget-boolean v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInPlaceholder(Z)V

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    :cond_0
    invoke-virtual {p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    instance-of v0, p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_1

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    :cond_1
    iget-boolean v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v0, :cond_6

    check-cast p3, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v2, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_2

    iget v2, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_4

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    invoke-virtual {p3, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    invoke-virtual {p3, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_0

    :cond_6
    iget v6, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iget v2, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iget v5, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iget v3, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-ge v7, v8, :cond_23

    iget v6, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget v2, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget v5, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iget v3, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    const/4 v7, -0x1

    if-ne v2, v7, :cond_7

    iget v7, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_d

    iget v6, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    :cond_7
    :goto_1
    const/4 v7, -0x1

    if-ne v1, v7, :cond_f

    const/4 v7, -0x1

    if-ne v4, v7, :cond_f

    iget v7, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_e

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    move v7, v1

    move v8, v3

    move v9, v4

    move v1, v6

    move v6, v0

    move v0, v2

    :goto_2
    iget v2, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-virtual {p5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_8

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v2, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {p3, v0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connectCircularConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V

    :cond_8
    :goto_3
    if-eqz p1, :cond_a

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    :cond_9
    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setOrigin(II)V

    :cond_a
    iget-boolean v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v0, :cond_1f

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-boolean v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    if-eqz v0, :cond_1d

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :goto_4
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    :cond_b
    :goto_5
    iget-boolean v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v0, :cond_22

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    iget-boolean v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    if-eqz v0, :cond_20

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :goto_6
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    :cond_c
    :goto_7
    iget-object v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalWeight(F)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWrapBehaviorInParent(I)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v2, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v3, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {p3, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v2, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v3, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {p3, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    goto/16 :goto_0

    :cond_d
    iget v7, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    iget v2, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    goto/16 :goto_1

    :cond_e
    iget v7, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_f

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    move v7, v1

    move v8, v3

    move v9, v4

    move v1, v6

    move v6, v0

    move v0, v2

    goto/16 :goto_2

    :cond_f
    move v7, v1

    move v8, v3

    move v9, v4

    move v1, v6

    move v6, v0

    move v0, v2

    goto/16 :goto_2

    :cond_10
    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    invoke-virtual {p5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_11

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_11
    :goto_8
    const/4 v0, -0x1

    if-eq v7, v0, :cond_18

    invoke-virtual {p5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_12

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v0, p3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_12
    :goto_9
    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {p5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_13

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v5, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_13
    :goto_a
    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {p5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_14

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v5, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_14
    :goto_b
    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    :cond_15
    :goto_c
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_16

    invoke-virtual {p3, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    :cond_16
    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    goto/16 :goto_3

    :cond_17
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    invoke-virtual {p5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_11

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_8

    :cond_18
    const/4 v0, -0x1

    if-eq v9, v0, :cond_12

    invoke-virtual {p5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_12

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v0, p3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_9

    :cond_19
    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {p5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_13

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v5, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_a

    :cond_1a
    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {p5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_14

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v5, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_b

    :cond_1b
    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto/16 :goto_c

    :cond_1c
    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    iget v4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto/16 :goto_c

    :cond_1d
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_4

    :cond_1e
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_5

    :cond_1f
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_5

    :cond_20
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_6

    :cond_21
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_7

    :cond_22
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_c

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_7

    :cond_23
    move v7, v1

    move v8, v3

    move v9, v4

    move v1, v6

    move v6, v0

    move v0, v2

    goto/16 :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 15

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v0

    int-to-float v8, v0

    const/high16 v9, 0x44870000    # 1080.0f

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v10

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v10, :cond_3

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x14

    aput-byte v3, v1, v2

    const-string v2, "8fa35a"

    const v3, 0x4db8788f    # 3.8686358E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v1, v1

    div-float/2addr v1, v9

    mul-float/2addr v1, v7

    float-to-int v11, v1

    int-to-float v1, v2

    const/high16 v2, 0x44f00000    # 1920.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v8

    float-to-int v12, v1

    int-to-float v1, v3

    div-float/2addr v1, v9

    mul-float/2addr v1, v7

    float-to-int v13, v1

    int-to-float v0, v0

    const/high16 v1, 0x44f00000    # 1920.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v8

    float-to-int v14, v0

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v11

    int-to-float v2, v12

    add-int v0, v11, v13

    int-to-float v3, v0

    int-to-float v4, v12

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v0, v11, v13

    int-to-float v1, v0

    int-to-float v2, v12

    add-int v0, v11, v13

    int-to-float v3, v0

    add-int v0, v12, v14

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v0, v11, v13

    int-to-float v1, v0

    add-int v0, v12, v14

    int-to-float v2, v0

    int-to-float v3, v11

    add-int v0, v12, v14

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    add-int v0, v12, v14

    int-to-float v2, v0

    int-to-float v3, v11

    int-to-float v4, v12

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v0, -0xff0100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v11

    int-to-float v2, v12

    add-int v0, v11, v13

    int-to-float v3, v0

    add-int v0, v12, v14

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    add-int v0, v12, v14

    int-to-float v2, v0

    add-int v0, v11, v13

    int-to-float v3, v0

    int-to-float v4, v12

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_3
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/core/Metrics;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->fillMetrics(Landroidx/constraintlayout/core/Metrics;)V

    return-void
.end method

.method public forceLayout()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRtl()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    move-result v2

    if-ne v0, v2, :cond_2

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public loadLayoutDescription(I)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    iget-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v7, :cond_1

    iget-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v7, :cond_1

    iget-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isVirtualGroup:Z

    if-nez v7, :cond_1

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-nez v0, :cond_0

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v7

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v8

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    add-int v9, v0, v7

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    add-int v6, v0, v8

    invoke-virtual {v1, v7, v8, v9, v6}, Landroid/view/View;->layout(IIII)V

    instance-of v0, v1, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7, v8, v9, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    if-ne v0, p2, :cond_0

    :cond_0
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-nez v0, :cond_2

    :cond_2
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->updateHierarchy()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v3

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_0

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    new-instance v1, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v1, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->remove(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    return-void
.end method

.method public requestLayout()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected resolveMeasuredDimension(IIIIZZ)V
    .locals 5

    const/high16 v4, 0x1000000

    const v3, 0xffffff

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    add-int/2addr v1, p3

    invoke-static {v1, p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v1

    add-int/2addr v0, p4

    invoke-static {v0, p2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v0

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    and-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    and-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p5, :cond_0

    or-int/2addr v1, v4

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr v0, v4

    :cond_1
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    return-void
.end method

.method protected resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 14

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v6, v3, v4

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->captureLayoutInfo(IIIIII)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gtz v1, :cond_0

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    move v12, v0

    :goto_1
    sub-int/2addr v7, v5

    sub-int/2addr v9, v6

    move-object v4, p0

    move-object v5, p1

    move v6, v13

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIII)V

    iget v10, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iget v11, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    move-object v4, p1

    move/from16 v5, p2

    move v6, v13

    move v13, v3

    invoke-virtual/range {v4 .. v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(IIIIIIIII)J

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_1
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    :cond_0
    check-cast p2, Ljava/lang/String;

    new-array v0, v3, [B

    const/4 v1, 0x0

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const-string v1, "22b23d"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    return-void
.end method

.method protected setSelfDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIII)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v5

    sparse-switch p2, :sswitch_data_0

    move p3, v1

    :cond_0
    :goto_0
    sparse-switch p4, :sswitch_data_1

    move p5, v1

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    if-ne p3, v5, :cond_2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v5

    if-eq p5, v5, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateMeasures()V

    :cond_3
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setX(I)V

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setY(I)V

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr v5, v4

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    return-void

    :sswitch_0
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr v6, v4

    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_0

    :sswitch_1
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v5, :cond_5

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    :sswitch_2
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v5, :cond_0

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    :sswitch_3
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr v5, v3

    invoke-static {v5, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    goto :goto_1

    :sswitch_4
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_1

    :sswitch_5
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v5, :cond_1

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_1

    :cond_4
    move p5, v1

    goto :goto_1

    :cond_5
    move p3, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public setState(III)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(IFF)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
