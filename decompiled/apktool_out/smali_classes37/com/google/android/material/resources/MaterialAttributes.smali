.class public Lcom/google/android/material/resources/MaterialAttributes;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    :cond_0
    :goto_0
    return p2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static resolveBooleanOrThrow(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveDimension(Landroid/content/Context;II)I
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static resolveInteger(Landroid/content/Context;II)I
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    iget p2, v0, Landroid/util/TypedValue;->data:I

    :cond_0
    return p2
.end method

.method public static resolveMinimumAccessibleTouchTarget(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/google/android/material/R$attr;->minTouchTargetSize:I

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveDimension(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I
    .locals 5

    const/4 v4, 0x1

    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xc9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f1784f"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x43t
        0x0t
        0x13t
        0x4bt
        0x14t
        0x14t
        0x3t
        0x40t
        0x42t
        0x51t
        0x46t
        0x3t
        0x15t
        0x11t
        0x56t
        0x18t
        0x42t
        0x7t
        0xat
        0x44t
        0x52t
        0x18t
        0x52t
        0x9t
        0x14t
        0x11t
        0x43t
        0x50t
        0x51t
        0x46t
        0x43t
        0x3t
        0x13t
        0x4bt
        0x14t
        0x7t
        0x12t
        0x45t
        0x45t
        0x51t
        0x56t
        0x13t
        0x12t
        0x54t
        0x17t
        0x4ct
        0x5bt
        0x46t
        0x4t
        0x54t
        0x17t
        0x4bt
        0x51t
        0x12t
        0x46t
        0x58t
        0x59t
        0x18t
        0x4dt
        0x9t
        0x13t
        0x43t
        0x17t
        0x59t
        0x44t
        0x16t
        0x46t
        0x45t
        0x5ft
        0x5dt
        0x59t
        0x3t
        0x48t
        0x11t
        0x6et
        0x57t
        0x41t
        0x46t
        0x5t
        0x50t
        0x59t
        0x18t
        0x51t
        0xft
        0x12t
        0x59t
        0x52t
        0x4at
        0x14t
        0x15t
        0x3t
        0x45t
        0x17t
        0x4ct
        0x5ct
        0x3t
        0x46t
        0x50t
        0x43t
        0x4ct
        0x46t
        0xft
        0x4t
        0x44t
        0x43t
        0x5dt
        0x14t
        0xft
        0x8t
        0x11t
        0x4et
        0x57t
        0x41t
        0x14t
        0x46t
        0x45t
        0x5ft
        0x5dt
        0x59t
        0x3t
        0x46t
        0x5et
        0x45t
        0x18t
        0x41t
        0x16t
        0x2t
        0x50t
        0x43t
        0x5dt
        0x14t
        0x1ft
        0x9t
        0x44t
        0x45t
        0x18t
        0x40t
        0xet
        0x3t
        0x5ct
        0x52t
        0x18t
        0x40t
        0x9t
        0x46t
        0x58t
        0x59t
        0x50t
        0x51t
        0x14t
        0xft
        0x45t
        0x17t
        0x5et
        0x46t
        0x9t
        0xbt
        0x11t
        0x63t
        0x50t
        0x51t
        0xbt
        0x3t
        0x1ft
        0x7at
        0x59t
        0x40t
        0x3t
        0x14t
        0x58t
        0x56t
        0x54t
        0x77t
        0x9t
        0xbt
        0x41t
        0x58t
        0x56t
        0x51t
        0x8t
        0x12t
        0x42t
        0x17t
        0x10t
        0x5bt
        0x14t
        0x46t
        0x50t
        0x17t
        0x5ct
        0x51t
        0x15t
        0x5t
        0x54t
        0x59t
        0x5ct
        0x55t
        0x8t
        0x12t
        0x18t
        0x19t
    .end array-data
.end method

.method public static resolveOrThrow(Landroid/view/View;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method
