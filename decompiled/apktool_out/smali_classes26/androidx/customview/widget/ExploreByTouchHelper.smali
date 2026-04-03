.class public abstract Landroidx/customview/widget/ExploreByTouchHelper;
.super Landroidx/core/view/AccessibilityDelegateCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String;

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter",
            "<",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v5, 0x7fffffff

    const/high16 v4, -0x80000000

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8af3de"

    const-wide/32 v2, 0x516ab5c4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$1;

    invoke-direct {v0}, Landroidx/customview/widget/ExploreByTouchHelper$1;-><init>()V

    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$2;

    invoke-direct {v0}, Landroidx/customview/widget/ExploreByTouchHelper$2;-><init>()V

    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0xft
        0x2t
        0x41t
        0xbt
        0xct
        0x5ct
        0x4ft
        0x10t
        0x5at
        0x1t
        0x12t
        0x16t
        0x37t
        0xft
        0x56t
        0x13t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/high16 v1, -0x80000000

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    iput v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    iput v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    iput v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8fae31"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "f38dd8"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x6et
        0xft
        0x4t
        0x12t
        0x13t
        0x5ct
        0x59t
        0x1ft
        0x41t
        0xbt
        0x5ct
        0x45t
        0x18t
        0x4t
        0x4t
        0x45t
        0x5dt
        0x44t
        0x54t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x7t
        0x50t
        0x5bt
        0x1t
        0x17t
        0x4bt
        0xft
        0x51t
        0x51t
        0x8t
        0xdt
        0x4ct
        0x1ft
    .end array-data
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .locals 3

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x53

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f02778"

    const v3, -0x326f9347

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x25t
        0x51t
        0x5et
        0x5bt
        0x55t
        0x59t
        0x5t
        0x5bt
        0x41t
        0x17t
        0x5at
        0x4dt
        0x15t
        0x44t
        0x12t
        0x56t
        0x53t
        0x5ct
        0x46t
        0x44t
        0x57t
        0x4ft
        0x43t
        0x18t
        0x9t
        0x42t
        0x12t
        0x56t
        0x17t
        0x5bt
        0x9t
        0x5et
        0x46t
        0x52t
        0x59t
        0x4ct
        0x46t
        0x54t
        0x57t
        0x44t
        0x54t
        0x4at
        0xft
        0x40t
        0x46t
        0x5et
        0x58t
        0x56t
        0x46t
        0x59t
        0x5ct
        0x17t
        0x47t
        0x57t
        0x16t
        0x45t
        0x5et
        0x56t
        0x43t
        0x5dt
        0x23t
        0x46t
        0x57t
        0x59t
        0x43t
        0x7et
        0x9t
        0x42t
        0x64t
        0x5et
        0x45t
        0x4ct
        0x13t
        0x51t
        0x5et
        0x61t
        0x5et
        0x5dt
        0x11t
        0x79t
        0x56t
        0x1ft
        0x1et
    .end array-data
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object v0
.end method

.method private createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    invoke-virtual {v3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    sget-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    sget-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    invoke-virtual {p0, p1, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x52

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6b7cc9"

    const/16 v3, 0x21e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v4, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "52f9f4"

    const v3, -0x328a55e3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v0

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x53

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "ebb03e"

    const/16 v3, -0x5950

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v3, 0x59

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "4f4a73"

    invoke-static {v3, v4, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3, v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_5

    invoke-virtual {v3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :goto_0
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_6

    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_4
    :goto_2
    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v4, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget v0, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    if-eq v0, v7, :cond_9

    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    iget v0, v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    :goto_3
    if-eq v0, v7, :cond_8

    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4, v5, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    sget-object v5, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    :cond_9
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v4, v4, v2

    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v5, v5, v1

    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_a
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v2, v4, v2

    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v4, v4, v1

    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    :cond_b
    return-object v3

    :array_0
    .array-data 1
        0x75t
        0x3t
        0x5bt
        0xft
        0x1t
        0x58t
        0x55t
        0x9t
        0x44t
        0x43t
        0xet
        0x4ct
        0x45t
        0x16t
        0x17t
        0x2t
        0x7t
        0x5dt
        0x16t
        0x16t
        0x52t
        0x1bt
        0x17t
        0x19t
        0x59t
        0x10t
        0x17t
        0x2t
        0x43t
        0x5at
        0x59t
        0xct
        0x43t
        0x6t
        0xdt
        0x4dt
        0x16t
        0x6t
        0x52t
        0x10t
        0x0t
        0x4bt
        0x5ft
        0x12t
        0x43t
        0xat
        0xct
        0x57t
        0x16t
        0xbt
        0x59t
        0x43t
        0x13t
        0x56t
        0x46t
        0x17t
        0x5bt
        0x2t
        0x17t
        0x5ct
        0x78t
        0xdt
        0x53t
        0x6t
        0x25t
        0x56t
        0x44t
        0x34t
        0x5et
        0x11t
        0x17t
        0x4ct
        0x57t
        0xet
        0x61t
        0xat
        0x6t
        0x4et
        0x7ft
        0x6t
        0x1ft
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x76t
        0x53t
        0xat
        0x55t
        0x4t
        0x55t
        0x56t
        0x59t
        0x15t
        0x19t
        0xbt
        0x41t
        0x46t
        0x46t
        0x46t
        0x4at
        0x3t
        0x40t
        0x15t
        0x42t
        0x7t
        0x4bt
        0x3t
        0x5at
        0x41t
        0x12t
        0x4t
        0x56t
        0x13t
        0x5at
        0x51t
        0x41t
        0x46t
        0x50t
        0x8t
        0x14t
        0x45t
        0x5dt
        0x16t
        0x4ct
        0xat
        0x55t
        0x41t
        0x57t
        0x28t
        0x56t
        0x2t
        0x51t
        0x73t
        0x5dt
        0x14t
        0x6ft
        0xft
        0x46t
        0x41t
        0x47t
        0x7t
        0x55t
        0x30t
        0x5dt
        0x50t
        0x45t
        0x2ft
        0x5dt
        0x4et
        0x1dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x26t
        0x3t
        0xet
        0x5ct
        0x51t
        0x4t
        0x6t
        0x9t
        0x11t
        0x10t
        0x5et
        0x10t
        0x16t
        0x16t
        0x42t
        0x5et
        0x5ct
        0x11t
        0x45t
        0x3t
        0x6t
        0x54t
        0x13t
        0x24t
        0x26t
        0x36t
        0x2bt
        0x7ft
        0x7dt
        0x3at
        0x24t
        0x21t
        0x21t
        0x75t
        0x60t
        0x36t
        0x2ct
        0x20t
        0x2bt
        0x7ct
        0x7at
        0x31t
        0x3ct
        0x3dt
        0x24t
        0x7ft
        0x70t
        0x30t
        0x36t
        0x42t
        0xbt
        0x5et
        0x13t
        0x15t
        0xat
        0x12t
        0x17t
        0x5ct
        0x52t
        0x11t
        0x0t
        0x2ct
        0xdt
        0x54t
        0x56t
        0x23t
        0xat
        0x10t
        0x34t
        0x59t
        0x41t
        0x11t
        0x10t
        0x3t
        0xet
        0x66t
        0x5at
        0x0t
        0x12t
        0x2bt
        0x6t
        0x18t
        0x1at
    .end array-data

    :array_3
    .array-data 1
        0x77t
        0x7t
        0x58t
        0xdt
        0x55t
        0x52t
        0x57t
        0xdt
        0x47t
        0x41t
        0x5at
        0x46t
        0x47t
        0x12t
        0x14t
        0xft
        0x58t
        0x47t
        0x14t
        0x7t
        0x50t
        0x5t
        0x17t
        0x72t
        0x77t
        0x32t
        0x7dt
        0x2et
        0x79t
        0x6ct
        0x77t
        0x2at
        0x71t
        0x20t
        0x65t
        0x6ct
        0x75t
        0x25t
        0x77t
        0x24t
        0x64t
        0x60t
        0x7dt
        0x24t
        0x7dt
        0x2dt
        0x7et
        0x67t
        0x6dt
        0x39t
        0x72t
        0x2et
        0x74t
        0x66t
        0x67t
        0x46t
        0x5dt
        0xft
        0x17t
        0x43t
        0x5bt
        0x16t
        0x41t
        0xdt
        0x56t
        0x47t
        0x51t
        0x28t
        0x5bt
        0x5t
        0x52t
        0x75t
        0x5bt
        0x14t
        0x62t
        0x8t
        0x45t
        0x47t
        0x41t
        0x7t
        0x58t
        0x37t
        0x5et
        0x56t
        0x43t
        0x2ft
        0x50t
        0x49t
        0x1et
    .end array-data
.end method

.method private createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "df051e"

    const/16 v3, 0x7f3c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v5, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2

    :array_0
    .array-data 1
        0x32t
        0xft
        0x55t
        0x42t
        0x42t
        0x45t
        0x7t
        0x7t
        0x5et
        0x5bt
        0x5et
        0x11t
        0x44t
        0xet
        0x51t
        0x43t
        0x54t
        0x45t
        0x6t
        0x9t
        0x44t
        0x5dt
        0x11t
        0x17t
        0x1t
        0x7t
        0x5ct
        0x15t
        0x50t
        0xbt
        0x0t
        0x46t
        0x46t
        0x5ct
        0x43t
        0x11t
        0x11t
        0x7t
        0x5ct
        0x15t
        0x52t
        0xdt
        0xdt
        0xat
        0x54t
        0x47t
        0x54t
        0xbt
    .end array-data
.end method

.method private getAllNodes()Landroidx/collection/SparseArrayCompat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    new-instance v3, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v3}, Landroidx/collection/SparseArrayCompat;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5d1f2a"

    const-wide v4, 0x41de0d303e400000L    # 2.016723193E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-virtual {p2, v0, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object p2

    :sswitch_1
    invoke-virtual {p2, v3, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2, v2, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2, v3, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 1
        0x51t
        0xdt
        0x43t
        0x3t
        0x51t
        0x15t
        0x5ct
        0xbt
        0x5ft
        0x46t
        0x5ft
        0x14t
        0x46t
        0x10t
        0x11t
        0x4t
        0x57t
        0x41t
        0x5at
        0xat
        0x54t
        0x46t
        0x5dt
        0x7t
        0x15t
        0x1ft
        0x77t
        0x29t
        0x71t
        0x34t
        0x66t
        0x3bt
        0x64t
        0x36t
        0x1et
        0x41t
        0x73t
        0x2bt
        0x72t
        0x33t
        0x61t
        0x3et
        0x71t
        0x2bt
        0x66t
        0x28t
        0x1et
        0x41t
        0x73t
        0x2bt
        0x72t
        0x33t
        0x61t
        0x3et
        0x79t
        0x21t
        0x77t
        0x32t
        0x1et
        0x41t
        0x73t
        0x2bt
        0x72t
        0x33t
        0x61t
        0x3et
        0x67t
        0x2dt
        0x76t
        0x2et
        0x66t
        0x1ct
        0x1bt
    .end array-data
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static keyToDirection(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x82

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x21

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x42

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .locals 8
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    invoke-direct {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAllNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    iget v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v1, v7, :cond_0

    const/4 v3, 0x0

    :goto_0
    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x68

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8cdce8"

    const-wide v4, -0x3e2844176b000000L    # -1.592762964E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v3, v1

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v5, :cond_1

    :goto_1
    sget-object v1, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    sget-object v2, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/customview/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    :goto_2
    if-nez v1, :cond_4

    move v0, v7

    :goto_3
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    :cond_1
    move v5, v6

    goto :goto_1

    :sswitch_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v1, v7, :cond_2

    iget v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-direct {p0, v1, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    :goto_4
    sget-object v1, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    sget-object v2, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    move v5, p1

    invoke-static/range {v0 .. v5}, Landroidx/customview/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_3
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, p1, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 1
        0x5ct
        0xat
        0x16t
        0x6t
        0x6t
        0x4ct
        0x51t
        0xct
        0xat
        0x43t
        0x8t
        0x4dt
        0x4bt
        0x17t
        0x44t
        0x1t
        0x0t
        0x18t
        0x57t
        0xdt
        0x1t
        0x43t
        0xat
        0x5et
        0x18t
        0x18t
        0x22t
        0x2ct
        0x26t
        0x6dt
        0x6bt
        0x3ct
        0x22t
        0x2ct
        0x37t
        0x6ft
        0x79t
        0x31t
        0x20t
        0x4ft
        0x45t
        0x7et
        0x77t
        0x20t
        0x31t
        0x30t
        0x3at
        0x7at
        0x79t
        0x20t
        0x2ft
        0x34t
        0x24t
        0x6at
        0x7ct
        0x4ft
        0x44t
        0x25t
        0x2at
        0x7bt
        0x6dt
        0x30t
        0x3bt
        0x36t
        0x35t
        0x14t
        0x18t
        0x25t
        0x2bt
        0x20t
        0x30t
        0x6bt
        0x67t
        0x27t
        0x2bt
        0x34t
        0x2bt
        0x14t
        0x18t
        0x25t
        0x2bt
        0x20t
        0x30t
        0x6bt
        0x67t
        0x2ft
        0x21t
        0x25t
        0x31t
        0x14t
        0x18t
        0x25t
        0x2bt
        0x20t
        0x30t
        0x6bt
        0x67t
        0x31t
        0x2dt
        0x24t
        0x2dt
        0x6ct
        0x45t
        0x4dt
    .end array-data
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 1

    sparse-switch p2, :sswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v1, p1, :cond_0

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-direct {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    :cond_2
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_0
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v4, -0x80000000

    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-eq v2, v4, :cond_0

    invoke-direct {p0, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroidx/customview/widget/ExploreByTouchHelper;->keyToDirection(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    move v2, v0

    :goto_1
    add-int/lit8 v5, v4, 0x1

    if-ge v2, v5, :cond_0

    invoke-direct {p0, v3, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    invoke-direct {v0, p0}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroidx/customview/widget/ExploreByTouchHelper;)V

    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .locals 1

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(II)V
    .locals 3

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p2    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0

    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 4

    const/4 v1, 0x1

    const/high16 v3, -0x80000000

    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v2, p1, :cond_0

    iget v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    :cond_2
    if-eq p1, v3, :cond_0

    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move v0, v1

    goto :goto_0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method
