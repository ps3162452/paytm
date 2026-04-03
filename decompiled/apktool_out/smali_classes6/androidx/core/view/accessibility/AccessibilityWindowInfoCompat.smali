.class public Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mInfo:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method public static obtain()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtain(Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    goto :goto_0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a58732"

    const v2, -0x3269eb0c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "4e1e40"

    const v2, -0x32f5f016

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "7120ee"

    const v2, 0x4eb3f395

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "5c05ba"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "ac7494"

    const v2, -0x310637b5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x5dt
        0x60t
        0x76t
        0x7ct
        0x7dt
        0x7dt
        0x36t
        0x7bt
        0x6t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x60t
        0x3ct
        0x61t
        0x20t
        0x6bt
        0x71t
        0x77t
        0x26t
        0x74t
        0x36t
        0x67t
        0x79t
        0x76t
        0x2ct
        0x7dt
        0x2ct
        0x60t
        0x69t
        0x6bt
        0x2at
        0x67t
        0x20t
        0x66t
        0x7ct
        0x75t
        0x3ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x63t
        0x68t
        0x62t
        0x75t
        0x3at
        0x36t
        0x6et
        0x62t
        0x66t
        0x75t
        0x28t
    .end array-data

    :array_3
    .array-data 1
        0x61t
        0x3at
        0x60t
        0x70t
        0x3dt
        0x28t
        0x7bt
        0x33t
        0x65t
        0x61t
        0x3dt
        0x2ct
        0x70t
        0x37t
        0x78t
        0x7at
        0x26t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x35t
        0x3at
        0x67t
        0x71t
        0x66t
        0x75t
        0x31t
        0x33t
        0x7bt
        0x7dt
        0x7at
        0x75t
        0x35t
        0x2at
        0x78t
        0x7at
    .end array-data
.end method

.method static wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    iget-object v2, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v3, p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAnchor()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public getChild(I)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLayer()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getParent()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getParent()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRoot()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isAccessibilityFocused()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isAccessibilityFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isActive()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const/16 v4, 0x18

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "37eb4b"

    const/16 v6, -0x66c3

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "953f27"

    const v6, -0x316da579

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "5877c1"

    const/16 v6, -0xaa8

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getType()I

    move-result v4

    invoke-static {v4}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "1c06a8"

    const/16 v6, -0x1273

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getLayer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v4, v7, [B

    fill-array-data v4, :array_4

    const-string v5, "1405d5"

    invoke-static {v4, v5, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v4, "8376df"

    invoke-static {v0, v4, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->isFocused()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-array v0, v7, [B

    fill-array-data v0, :array_6

    const-string v4, "b837f9"

    const-wide v6, -0x3ea5b21100000000L    # -6895548.0

    invoke-static {v0, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->isActive()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v4, "7787fb"

    const-wide/32 v6, -0x4c46f7d3

    invoke-static {v0, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getParent()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v4, "333d4b"

    invoke-static {v0, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x72t
        0x54t
        0x6t
        0x7t
        0x47t
        0x11t
        0x5at
        0x55t
        0xct
        0xet
        0x5dt
        0x16t
        0x4at
        0x60t
        0xct
        0xct
        0x50t
        0xdt
        0x44t
        0x7et
        0xbt
        0x4t
        0x5bt
        0x39t
    .end array-data

    :array_1
    .array-data 1
        0x50t
        0x51t
        0xet
    .end array-data

    :array_2
    .array-data 1
        0x19t
        0x18t
        0x43t
        0x4et
        0x13t
        0x54t
        0x8t
    .end array-data

    :array_3
    .array-data 1
        0x1dt
        0x43t
        0x5ct
        0x57t
        0x18t
        0x5dt
        0x43t
        0x5et
    .end array-data

    :array_4
    .array-data 1
        0x1dt
        0x14t
        0x52t
        0x5at
        0x11t
        0x5bt
        0x55t
        0x47t
        0xdt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x14t
        0x13t
        0x51t
        0x59t
        0x7t
        0x13t
        0x4bt
        0x56t
        0x53t
        0xbt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x4et
        0x18t
        0x52t
        0x54t
        0x12t
        0x50t
        0x14t
        0x5dt
        0xet
    .end array-data

    nop

    :array_7
    .array-data 1
        0x1bt
        0x17t
        0x50t
        0x56t
        0x15t
        0x32t
        0x56t
        0x45t
        0x5dt
        0x59t
        0x12t
        0x5ft
    .end array-data

    :array_8
    .array-data 1
        0x1ft
        0x13t
        0x5bt
        0x5t
        0x47t
        0x21t
        0x5bt
        0x5at
        0x5ft
        0x0t
        0x46t
        0x7t
        0x5dt
        0xet
    .end array-data
.end method
