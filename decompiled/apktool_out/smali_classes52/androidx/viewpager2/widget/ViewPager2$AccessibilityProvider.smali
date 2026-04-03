.class abstract Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AccessibilityProvider"
.end annotation


# instance fields
.field final this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ViewPager2$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method


# virtual methods
.method handlesGetAccessibilityClassName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method handlesLmPerformAccessibilityAction(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method handlesRvGetAccessibilityClassName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onAttachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method onDetachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method onGetAccessibilityClassName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3e0a52"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7dt
        0xat
        0x44t
        0x41t
        0x5ct
        0x5ft
        0x43t
        0x9t
        0x55t
        0xct
        0x50t
        0x5ct
        0x47t
        0x0t
        0x54t
        0x4ft
    .end array-data
.end method

.method onInitialize(Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    return-void
.end method

.method onLmInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    return-void
.end method

.method onLmPerformAccessibilityAction(I)Z
    .locals 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e8548b"

    const-wide/32 v4, 0x2739ed68

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2bt
        0x57t
        0x41t
        0x14t
        0x51t
        0xft
        0x15t
        0x54t
        0x50t
        0x59t
        0x5dt
        0xct
        0x11t
        0x5dt
        0x51t
        0x1at
    .end array-data
.end method

.method onPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "315f5e"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7dt
        0x5et
        0x41t
        0x46t
        0x5ct
        0x8t
        0x43t
        0x5dt
        0x50t
        0xbt
        0x50t
        0xbt
        0x47t
        0x54t
        0x51t
        0x48t
    .end array-data
.end method

.method onRestorePendingState()V
    .locals 0

    return-void
.end method

.method onRvGetAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8ce9e5"

    const/16 v3, 0x4bc6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x76t
        0xct
        0x11t
        0x19t
        0xct
        0x58t
        0x48t
        0xft
        0x0t
        0x54t
        0x0t
        0x5bt
        0x4ct
        0x6t
        0x1t
        0x17t
    .end array-data
.end method

.method onRvInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method onSetLayoutDirection()V
    .locals 0

    return-void
.end method

.method onSetNewCurrentItem()V
    .locals 0

    return-void
.end method

.method onSetOrientation()V
    .locals 0

    return-void
.end method

.method onSetUserInputEnabled()V
    .locals 0

    return-void
.end method
