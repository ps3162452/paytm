.class public final Lcom/google/android/material/expandable/ExpandableWidgetHelper;
.super Ljava/lang/Object;


# instance fields
.field private expanded:Z

.field private expandedComponentIdHint:I

.field private final widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/expandable/ExpandableWidget;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    iput v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    return-void
.end method

.method private dispatchExpandedStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExpandedComponentIdHint()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "00c06b"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "afbc8f"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    iget-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        0x48t
        0x13t
        0x51t
        0x58t
        0x6t
        0x55t
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0x1et
        0x12t
        0x2t
        0x56t
        0x2t
        0x4t
        0x2t
        0x21t
        0xct
        0x55t
        0x16t
        0xet
        0x8t
        0x7t
        0xdt
        0x4ct
        0x2ft
        0x5t
        0x2et
        0xbt
        0xdt
        0x4ct
    .end array-data
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "315b3c"

    const-wide/32 v4, -0x1b02834b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "71182e"

    const/16 v3, -0x38af

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x56t
        0x49t
        0x45t
        0x3t
        0x5dt
        0x7t
        0x56t
        0x55t
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0x49t
        0x41t
        0x59t
        0x5ct
        0x1t
        0x52t
        0x55t
        0x72t
        0x57t
        0x5ft
        0x15t
        0x58t
        0x5ft
        0x54t
        0x56t
        0x46t
        0x2ct
        0x53t
        0x79t
        0x58t
        0x56t
        0x46t
    .end array-data
.end method

.method public setExpanded(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    invoke-direct {p0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    return-void
.end method
