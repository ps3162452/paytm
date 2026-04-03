.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String;

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Landroidx/recyclerview/widget/LayoutState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0160f7"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x63t
        0x45t
        0x57t
        0x57t
        0x1t
        0x52t
        0x42t
        0x54t
        0x52t
        0x77t
        0x14t
        0x5et
        0x54t
        0x7dt
        0x7bt
        0x51t
        0x8t
        0x56t
        0x57t
        0x54t
        0x44t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    new-instance v0, Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    new-instance v0, Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    return-void
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    :cond_4
    return-void

    :cond_5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2
.end method

.method private attachViewToSpans(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V
    .locals 2

    iget v0, p3, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    if-ge p1, v2, :cond_3

    move v2, v0

    :goto_1
    iget-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkSpanForGap(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v3, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    if-le v0, v3, :cond_3

    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v0

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_2
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v0

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_2
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v0

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_2
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :sswitch_2
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v3, v1, :cond_0

    :cond_2
    move v0, v2

    goto :goto_0

    :sswitch_3
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eqz v1, :cond_2

    goto :goto_0

    :sswitch_5
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private createFullSpanItemFromEnd(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private createFullSpanItemFromStart(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private createOrientationHelpers()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    return-void
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/BitSet;->set(IIZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const v2, 0x7fffffff

    move v15, v2

    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    move/from16 v16, v2

    :goto_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p3}, Landroidx/recyclerview/widget/LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v5

    const/4 v2, -0x1

    if-ne v5, v2, :cond_7

    const/4 v2, 0x1

    move v4, v2

    :goto_3
    if-eqz v4, :cond_9

    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5, v6, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    move-object/from16 v17, v2

    :goto_5
    move-object/from16 v0, v17

    iput-object v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v2

    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int v7, v2, v5

    if-eqz v4, :cond_1d

    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    const/4 v8, -0x1

    iput v8, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    iput v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    move v5, v2

    :goto_8
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    if-eqz v4, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    :cond_1
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v14, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int v4, v2, v4

    move v6, v2

    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_16

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    :goto_c
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    :cond_2
    :goto_e
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_3
    const/high16 v2, -0x80000000

    move v15, v2

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    move-object/from16 v0, p2

    iget v3, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    add-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move-object/from16 v0, p2

    iget v3, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    sub-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getNextSpan(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-result-object v2

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v5

    move-object/from16 v17, v2

    goto/16 :goto_5

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    :cond_b
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    goto/16 :goto_7

    :cond_c
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v7

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    sub-int v2, v7, v2

    if-eqz v4, :cond_1d

    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    const/4 v8, 0x1

    iput v8, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    iput v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    move v5, v2

    goto/16 :goto_8

    :cond_d
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v7

    goto :goto_f

    :cond_e
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_10
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v2

    if-eqz v2, :cond_f

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_9

    :cond_10
    const/4 v2, 0x0

    goto :goto_10

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_10

    :cond_12
    const/4 v2, 0x0

    goto :goto_10

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v17

    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v4, v6

    sub-int/2addr v2, v4

    goto/16 :goto_a

    :cond_14
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int v6, v4, v2

    goto/16 :goto_b

    :cond_15
    move-object/from16 v0, v17

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_11

    :cond_16
    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v5

    move v11, v4

    move v12, v7

    move v13, v6

    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    goto/16 :goto_d

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v0, v17

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    :cond_19
    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v2, v3, v2

    :goto_12
    if-lez v2, :cond_1c

    move-object/from16 v0, p2

    iget v3, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_13
    return v2

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_12

    :cond_1c
    const/4 v2, 0x0

    goto :goto_13

    :cond_1d
    move v5, v2

    goto/16 :goto_8
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

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

.method private findLastReferenceChildPosition(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 2

    const/high16 v1, -0x80000000

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int v0, v1, v0

    if-lez v0, :cond_0

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    neg-int v1, v1

    sub-int/2addr v0, v1

    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    goto :goto_0
.end method

.method private fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 2

    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    goto :goto_0
.end method

.method private getMaxEnd(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getMaxStart(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getMinEnd(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getMinStart(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getNextSpan(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p1, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v0

    :goto_0
    iget v4, p1, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v4, v1, :cond_1

    const v1, 0x7fffffff

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    move v6, v3

    move v3, v1

    :goto_1
    if-eq v6, v2, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v1, v6

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    if-ge v1, v3, :cond_4

    move-object v3, v4

    :goto_2
    add-int v4, v6, v0

    move v6, v4

    move-object v5, v3

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v6, v3

    move v3, v1

    :goto_3
    if-eq v6, v2, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v1, v6

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    if-le v1, v3, :cond_3

    move-object v3, v4

    :goto_4
    add-int v4, v6, v0

    move v6, v4

    move-object v5, v3

    move v3, v1

    goto :goto_3

    :cond_2
    return-object v5

    :cond_3
    move v1, v3

    move-object v3, v5

    goto :goto_4

    :cond_4
    move v1, v3

    move-object v3, v5

    goto :goto_2
.end method

.method private handleUpdate(III)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    move v2, v0

    :goto_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    if-ge p1, p2, :cond_2

    add-int/lit8 v0, p2, 0x1

    move v1, v0

    move v0, p1

    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    sparse-switch p3, :sswitch_data_0

    :goto_2
    if-gt v1, v2, :cond_4

    :cond_0
    :goto_3
    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    move v0, p2

    goto :goto_1

    :cond_3
    add-int v0, p1, p2

    move v1, v0

    move v0, p1

    goto :goto_1

    :sswitch_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    :sswitch_1
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    goto :goto_2

    :sswitch_2
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_4
    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v1

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v2

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v5, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v2, v3, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    invoke-direct {p0, p1, v0, v1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v5, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v2, v3, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method private onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 8

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v7, :cond_2

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_9

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_a

    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    :goto_2
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    iput-boolean v2, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    :cond_4
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v4, :cond_6

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v4, v7, :cond_6

    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v4, v5, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v4, v5, :cond_6

    :cond_5
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    iput-boolean v2, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_e

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v4, v2, :cond_e

    :cond_7
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v4, :cond_b

    move v0, v1

    :goto_3
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_e

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    iget v5, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2

    :cond_b
    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-nez v0, :cond_11

    :cond_c
    move v0, v1

    :goto_4
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_d

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v6, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    :cond_e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    iget v0, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    iget-boolean v0, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_12

    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, v0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    :goto_5
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    :cond_f
    :goto_6
    if-eqz p3, :cond_15

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_14

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    move v0, v2

    :goto_7
    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    :goto_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    :cond_10
    iget-boolean v2, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    goto/16 :goto_0

    :cond_11
    move v0, v1

    :goto_9
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_e

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_12
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, v0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    goto/16 :goto_5

    :cond_13
    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    goto/16 :goto_6

    :cond_14
    move v0, v1

    goto :goto_7

    :cond_15
    move v0, v1

    goto :goto_8

    :cond_16
    move v0, v2

    goto :goto_7
.end method

.method private preferLastSpan(I)Z
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V
    .locals 3

    const/4 v1, -0x1

    iget-boolean v0, p2, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    if-nez v0, :cond_3

    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_2

    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    :cond_2
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    :cond_3
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_5

    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_4

    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    :goto_1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    :cond_4
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    iget v2, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_1

    :cond_5
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v0

    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_6

    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    :goto_2
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    :cond_6
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    iget v2, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_3

    move v0, v1

    :goto_1
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    :cond_4
    invoke-virtual {p0, v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_3

    move v0, v1

    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    :cond_4
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_0
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v6, v2, v1

    if-gez v6, :cond_2

    move v0, v1

    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_3
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v1

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    if-eq v0, v2, :cond_0

    move v1, v3

    :goto_3
    if-ge v1, v5, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_5

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v4, v7, :cond_6

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v4, v6

    neg-int v4, v4

    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v4, v6

    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v6, v6, -0x1

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int v0, v6, v0

    neg-int v0, v0

    mul-int/2addr v0, v2

    sub-int v0, v4, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    :cond_6
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v4, v6

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    mul-int/2addr v0, v2

    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v6, v7, :cond_7

    sub-int v0, v4, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    :cond_7
    sub-int v0, v4, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setLayoutStateDirection(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iput p1, v2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v0

    :goto_0
    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v0, -0x80000000

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iput v1, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iput p1, v0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge v0, p1, :cond_1

    move v0, v3

    :goto_0
    if-ne v2, v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int v0, v5, v0

    iput v0, v4, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iput-boolean v3, v0, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v4, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    neg-int v0, v0

    iput v0, v2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    goto :goto_2

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method private updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v1

    add-int/2addr v0, v1

    if-gt v0, p3, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v1

    sub-int v0, v1, v0

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 3

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    move v0, v1

    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method areAllStartsEqual()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    move v0, v1

    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkForGaps()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    move v4, v3

    move v3, v2

    :goto_1
    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    move v4, v3

    move v3, v2

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    :goto_2
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v4, v6, v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    if-nez v5, :cond_6

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move v0, v1

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v3, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v3, v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_3
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    move p2, p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    array-length v0, v0

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_4

    :cond_3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    :cond_4
    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v3, v3, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v3, v3, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_5

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v4, v4, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v4, v4, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    :goto_2
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aget v3, v3, v1

    invoke-interface {p4, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v3, v0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v4, v4, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    iput v3, v0, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 5

    if-nez p1, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x49

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "3bc9e9"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "de64c8"

    const v4, 0x4e0d641f    # 5.9303725E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p1

    :array_0
    .array-data 1
        0x63t
        0x10t
        0xct
        0x4ft
        0xct
        0x5dt
        0x56t
        0x6t
        0x43t
        0x50t
        0xbt
        0x4dt
        0x68t
        0x3ft
        0x44t
        0x4at
        0x45t
        0x4at
        0x5at
        0x18t
        0x6t
        0x19t
        0x8t
        0x4ct
        0x40t
        0x16t
        0x43t
        0x5bt
        0x0t
        0x19t
        0x5et
        0xdt
        0x11t
        0x5ct
        0x45t
        0x4dt
        0x5bt
        0x3t
        0xdt
        0x19t
        0xat
        0x4bt
        0x13t
        0x7t
        0x12t
        0x4ct
        0x4t
        0x55t
        0x13t
        0x16t
        0xct
        0x19t
        0x16t
        0x49t
        0x52t
        0xct
        0x43t
        0x5at
        0xat
        0x4ct
        0x5dt
        0x16t
        0x4dt
        0x19t
        0x20t
        0x41t
        0x43t
        0x7t
        0x0t
        0x4dt
        0x0t
        0x5dt
        0x9t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x48t
        0x45t
        0x57t
        0x46t
        0x11t
        0x59t
        0x1dt
        0x45t
        0x45t
        0x5dt
        0x19t
        0x5dt
        0x5et
    .end array-data
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v3, :cond_0

    if-lt v5, v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_1
    if-le v6, v4, :cond_2

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-object v1

    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v5, :cond_4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-le v7, v3, :cond_0

    if-lt v6, v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    if-ge v6, v3, :cond_2

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-object v1

    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 6

    const/4 v5, 0x1

    if-nez p1, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x49

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "76caa3"

    const v4, -0x31493b56

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "6adc35"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p1

    :array_0
    .array-data 1
        0x67t
        0x44t
        0xct
        0x17t
        0x8t
        0x57t
        0x52t
        0x52t
        0x43t
        0x8t
        0xft
        0x47t
        0x6ct
        0x6bt
        0x44t
        0x12t
        0x41t
        0x40t
        0x5et
        0x4ct
        0x6t
        0x41t
        0xct
        0x46t
        0x44t
        0x42t
        0x43t
        0x3t
        0x4t
        0x13t
        0x5at
        0x59t
        0x11t
        0x4t
        0x41t
        0x47t
        0x5ft
        0x57t
        0xdt
        0x41t
        0xet
        0x41t
        0x17t
        0x53t
        0x12t
        0x14t
        0x0t
        0x5ft
        0x17t
        0x42t
        0xct
        0x41t
        0x12t
        0x43t
        0x56t
        0x58t
        0x43t
        0x2t
        0xet
        0x46t
        0x59t
        0x42t
        0x4dt
        0x41t
        0x24t
        0x4bt
        0x47t
        0x53t
        0x0t
        0x15t
        0x4t
        0x57t
        0xdt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1at
        0x41t
        0x5t
        0x11t
        0x41t
        0x54t
        0x4ft
        0x41t
        0x17t
        0xat
        0x49t
        0x50t
        0xct
    .end array-data
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 6

    if-nez p1, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x49

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "937f27"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "2780e3"

    const-wide v4, 0x41c8ad0451000000L    # 8.27984034E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p1

    :array_0
    .array-data 1
        0x69t
        0x41t
        0x58t
        0x10t
        0x5bt
        0x53t
        0x5ct
        0x57t
        0x17t
        0xft
        0x5ct
        0x43t
        0x62t
        0x6et
        0x10t
        0x15t
        0x12t
        0x44t
        0x50t
        0x49t
        0x52t
        0x46t
        0x5ft
        0x42t
        0x4at
        0x47t
        0x17t
        0x4t
        0x57t
        0x17t
        0x54t
        0x5ct
        0x45t
        0x3t
        0x12t
        0x43t
        0x51t
        0x52t
        0x59t
        0x46t
        0x5dt
        0x45t
        0x19t
        0x56t
        0x46t
        0x13t
        0x53t
        0x5bt
        0x19t
        0x47t
        0x58t
        0x46t
        0x41t
        0x47t
        0x58t
        0x5dt
        0x17t
        0x5t
        0x5dt
        0x42t
        0x57t
        0x47t
        0x19t
        0x46t
        0x77t
        0x4ft
        0x49t
        0x56t
        0x54t
        0x12t
        0x57t
        0x53t
        0x3t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1et
        0x17t
        0x59t
        0x42t
        0x17t
        0x52t
        0x4bt
        0x17t
        0x4bt
        0x59t
        0x1ft
        0x56t
        0x8t
    .end array-data
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 6

    if-nez p1, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x49

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "699992"

    const v4, 0x4ced3083    # 1.2435561E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "0c31da"

    const-wide v4, 0x41d9728fb0c00000L    # 1.707753155E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p1

    :array_0
    .array-data 1
        0x66t
        0x4bt
        0x56t
        0x4ft
        0x50t
        0x56t
        0x53t
        0x5dt
        0x19t
        0x50t
        0x57t
        0x46t
        0x6dt
        0x64t
        0x1et
        0x4at
        0x19t
        0x41t
        0x5ft
        0x43t
        0x5ct
        0x19t
        0x54t
        0x47t
        0x45t
        0x4dt
        0x19t
        0x5bt
        0x5ct
        0x12t
        0x5bt
        0x56t
        0x4bt
        0x5ct
        0x19t
        0x46t
        0x5et
        0x58t
        0x57t
        0x19t
        0x56t
        0x40t
        0x16t
        0x5ct
        0x48t
        0x4ct
        0x58t
        0x5et
        0x16t
        0x4dt
        0x56t
        0x19t
        0x4at
        0x42t
        0x57t
        0x57t
        0x19t
        0x5at
        0x56t
        0x47t
        0x58t
        0x4dt
        0x17t
        0x19t
        0x7ct
        0x4at
        0x46t
        0x5ct
        0x5at
        0x4dt
        0x5ct
        0x56t
        0xct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ct
        0x43t
        0x52t
        0x43t
        0x16t
        0x0t
        0x49t
        0x43t
        0x40t
        0x58t
        0x1et
        0x4t
        0xat
    .end array-data
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method getFirstChildPosition()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getGapStrategy()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    return v0
.end method

.method getLastChildPosition()I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 12

    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v9, Ljava/util/BitSet;

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v9, v2}, Ljava/util/BitSet;-><init>(I)V

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v9, v6, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_1

    move v8, v0

    :goto_1
    if-ge v1, v8, :cond_2

    move v4, v3

    :goto_2
    move v7, v1

    :goto_3
    if-eq v7, v8, :cond_a

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkSpanForGap(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v5

    :goto_4
    return-object v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v8, v1

    move v1, v6

    goto :goto_1

    :cond_2
    move v4, v0

    goto :goto_2

    :cond_3
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    :cond_4
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_6

    :cond_5
    add-int v0, v7, v4

    move v7, v0

    goto :goto_3

    :cond_6
    add-int v1, v7, v4

    if-eq v1, v8, :cond_5

    add-int v1, v7, v4

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    if-lt v1, v11, :cond_c

    if-ne v1, v11, :cond_b

    move v1, v3

    :goto_5
    if-eqz v1, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_8

    move v1, v3

    :goto_6
    if-gez v2, :cond_9

    move v0, v3

    :goto_7
    if-eq v1, v0, :cond_5

    move-object v0, v5

    goto :goto_4

    :cond_7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    if-gt v1, v11, :cond_c

    if-ne v1, v11, :cond_b

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, v6

    goto :goto_6

    :cond_9
    move v0, v6

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    move v1, v6

    goto :goto_5

    :cond_c
    move-object v0, v5

    goto :goto_4
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLayoutRTL()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v7

    const/high16 v0, -0x80000000

    if-ne v7, v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    if-ne v7, v5, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    :goto_1
    invoke-direct {p0, v0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v3, v3, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v3, v0

    iput v3, v2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const v3, 0x3eaaaaab

    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iput-boolean v5, v2, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iput-boolean v4, v2, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p0, p3, v2, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-nez v8, :cond_4

    invoke-virtual {v9, v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    if-ne v2, v6, :cond_16

    :cond_4
    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_2
    if-ltz v3, :cond_9

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    if-ne v2, v6, :cond_16

    :cond_5
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    goto :goto_1

    :cond_7
    move v3, v4

    :goto_3
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v2, :cond_9

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    if-ne v2, v6, :cond_16

    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v0, :cond_c

    move v2, v5

    :goto_4
    const/4 v0, -0x1

    if-ne v7, v0, :cond_d

    move v0, v5

    :goto_5
    if-ne v2, v0, :cond_e

    move v3, v5

    :goto_6
    if-nez v8, :cond_a

    if-eqz v3, :cond_f

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v0

    :goto_7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    if-ne v0, v6, :cond_0

    :cond_a
    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_8
    if-ltz v2, :cond_15

    iget v0, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    if-ne v2, v0, :cond_10

    :cond_b
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_8

    :cond_c
    move v2, v4

    goto :goto_4

    :cond_d
    move v0, v4

    goto :goto_5

    :cond_e
    move v3, v4

    goto :goto_6

    :cond_f
    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v0

    goto :goto_7

    :cond_10
    if-eqz v3, :cond_11

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v0

    :goto_9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_b

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v0

    goto :goto_9

    :cond_12
    add-int/lit8 v4, v4, 0x1

    :cond_13
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v0, :cond_15

    if-eqz v3, :cond_14

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v0

    :goto_a
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    if-eq v0, v6, :cond_12

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v0

    goto :goto_a

    :cond_15
    move-object v0, v1

    goto/16 :goto_0

    :cond_16
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    :goto_2
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v1, v2

    :goto_3
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-eq v2, v4, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    :cond_2
    :goto_4
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-eq v2, v4, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_4

    :cond_6
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    :cond_0
    return-void
.end method

.method prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    const/4 v2, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    move v1, v2

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iput-boolean v2, v3, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    invoke-direct {p0, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v0, v2

    iput v0, v1, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    goto :goto_0
.end method

.method scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    if-ge v2, v0, :cond_3

    move v0, p1

    :cond_2
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iput v1, v2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p0, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    goto :goto_0

    :cond_3
    if-gez p1, :cond_2

    neg-int v0, v0

    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setGapStrategy(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x58

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5d5c6f"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    :array_0
    .array-data 1
        0x5ct
        0xat
        0x43t
        0x2t
        0x5at
        0xft
        0x51t
        0x44t
        0x52t
        0x2t
        0x46t
        0x46t
        0x46t
        0x10t
        0x47t
        0x2t
        0x42t
        0x3t
        0x52t
        0x1dt
        0x1bt
        0x43t
        0x7bt
        0x13t
        0x46t
        0x10t
        0x15t
        0x1t
        0x53t
        0x46t
        0x72t
        0x25t
        0x65t
        0x3ct
        0x7et
        0x27t
        0x7bt
        0x20t
        0x79t
        0x2at
        0x78t
        0x21t
        0x6at
        0x2at
        0x7at
        0x2dt
        0x73t
        0x46t
        0x5at
        0x16t
        0x15t
        0x24t
        0x77t
        0x36t
        0x6at
        0x2ct
        0x74t
        0x2dt
        0x72t
        0x2at
        0x7ct
        0x2at
        0x72t
        0x3ct
        0x7bt
        0x29t
        0x63t
        0x21t
        0x6at
        0x2at
        0x62t
        0x23t
        0x78t
        0x37t
        0x6at
        0x21t
        0x73t
        0x32t
        0x62t
        0x21t
        0x70t
        0x2dt
        0x69t
        0x35t
        0x65t
        0x25t
        0x7bt
        0x30t
    .end array-data
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v0

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e58ff4"

    const/16 v3, -0x2f8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iput-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0xct
        0x5bt
        0x4et
        0x7t
        0xat
        0x5dt
        0x1t
        0x15t
        0x57t
        0x14t
        0xft
        0x51t
        0xbt
        0x41t
        0x59t
        0x12t
        0xft
        0x5bt
        0xbt
        0x1bt
    .end array-data
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {v2, p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/high16 v4, -0x80000000

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v2, v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    :cond_2
    iput v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v2, v1, :cond_f

    :cond_4
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    :goto_1
    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v0, v4, :cond_7

    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v3

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v0, v3, :cond_9

    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    :goto_2
    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    move v0, v1

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_2

    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v0, v3

    if-gez v0, :cond_a

    neg-int v0, v0

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    move v0, v1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_b

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    move v0, v1

    goto/16 :goto_0

    :cond_b
    iput v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    move v0, v1

    goto/16 :goto_0

    :cond_c
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v2, v4, :cond_e

    iget v2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v2

    if-ne v2, v1, :cond_d

    move v0, v1

    :cond_d
    iput-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    :goto_3
    iput-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    goto :goto_3

    :cond_f
    iput v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move v0, v1

    goto/16 :goto_0
.end method

.method updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    const/4 v0, 0x0

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_0
.end method

.method updateMeasureSpecs(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int v0, p1, v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    return-void
.end method
