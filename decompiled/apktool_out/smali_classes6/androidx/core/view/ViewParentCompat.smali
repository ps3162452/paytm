.class public final Landroidx/core/view/ViewParentCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sTempNestedScrollConsumed:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "fc6bd8"

    const-wide/32 v2, -0x60da45c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewParentCompat;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0xat
        0x53t
        0x15t
        0x34t
        0x59t
        0x14t
        0x6t
        0x58t
        0x16t
        0x27t
        0x57t
        0xbt
        0x13t
        0x57t
        0x16t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTempNestedScrollConsumed()[I
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    :goto_0
    sget-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    return-object v0

    :cond_0
    aput v2, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "29244c"

    const-wide/32 v4, -0x3a81e314

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "6410a9"

    const-wide v4, -0x3e4ce90dd3000000L    # -3.20270893E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/view/ViewParentCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    goto :goto_0

    :array_0
    .array-data 1
        0x64t
        0x50t
        0x57t
        0x43t
        0x64t
        0x2t
        0x40t
        0x5ct
        0x5ct
        0x40t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x50t
        0x5et
        0x55t
        0x12t
        0x19t
        0x58t
        0x5bt
        0x45t
        0x10t
        0x8t
        0x54t
        0x46t
        0x58t
        0x54t
        0x5dt
        0x4t
        0x57t
        0x42t
        0x14t
        0x58t
        0x5et
        0x15t
        0x5ct
        0x44t
        0x52t
        0x50t
        0x53t
        0x4t
        0x19t
        0x5bt
        0x51t
        0x45t
        0x58t
        0xet
        0x5dt
        0x16t
        0x5bt
        0x5ft
        0x7et
        0x4t
        0x4at
        0x42t
        0x51t
        0x55t
        0x76t
        0xdt
        0x50t
        0x58t
        0x53t
    .end array-data
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "f1a3da"

    const v4, 0x4e99e2fd

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "45b3ba"

    const v4, 0x4ee52412

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/view/ViewParentCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_0

    :array_0
    .array-data 1
        0x30t
        0x58t
        0x4t
        0x44t
        0x34t
        0x0t
        0x14t
        0x54t
        0xft
        0x47t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x14t
        0x51t
        0xdt
        0x56t
        0x11t
        0x41t
        0x5at
        0x5at
        0x16t
        0x13t
        0xbt
        0xct
        0x44t
        0x59t
        0x7t
        0x5et
        0x7t
        0xft
        0x40t
        0x15t
        0xbt
        0x5dt
        0x16t
        0x4t
        0x46t
        0x53t
        0x3t
        0x50t
        0x7t
        0x41t
        0x59t
        0x50t
        0x16t
        0x5bt
        0xdt
        0x5t
        0x14t
        0x5at
        0xct
        0x7dt
        0x7t
        0x12t
        0x40t
        0x50t
        0x6t
        0x63t
        0x10t
        0x4t
        0x72t
        0x59t
        0xbt
        0x5dt
        0x5t
    .end array-data
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    return-void
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 6

    const/4 v4, 0x0

    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/core/view/NestedScrollingParent2;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p5, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5ccf80"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x36

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "d7c98a"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/view/ViewParentCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x63t
        0xat
        0x6t
        0x11t
        0x68t
        0x51t
        0x47t
        0x6t
        0xdt
        0x12t
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x53t
        0xct
        0x5ct
        0x4bt
        0x41t
        0xat
        0x58t
        0x17t
        0x19t
        0x51t
        0xct
        0x14t
        0x5bt
        0x6t
        0x54t
        0x5dt
        0xft
        0x10t
        0x17t
        0xat
        0x57t
        0x4ct
        0x4t
        0x16t
        0x51t
        0x2t
        0x5at
        0x5dt
        0x41t
        0x9t
        0x52t
        0x17t
        0x51t
        0x57t
        0x5t
        0x44t
        0x58t
        0xdt
        0x77t
        0x5dt
        0x12t
        0x10t
        0x52t
        0x7t
        0x69t
        0x4at
        0x4t
        0x37t
        0x54t
        0x11t
        0x56t
        0x54t
        0xdt
    .end array-data
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 8

    const/4 v6, 0x0

    invoke-static {}, Landroidx/core/view/ViewParentCompat;->getTempNestedScrollConsumed()[I

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .locals 8

    invoke-static {}, Landroidx/core/view/ViewParentCompat;->getTempNestedScrollConsumed()[I

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent3;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/core/view/NestedScrollingParent3;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroidx/core/view/NestedScrollingParent3;->onNestedScroll(Landroid/view/View;IIIII[I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget v0, p7, v5

    add-int/2addr v0, p4

    aput v0, p7, v5

    aget v0, p7, v4

    add-int/2addr v0, p5

    aput v0, p7, v4

    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/core/view/NestedScrollingParent2;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    goto :goto_0

    :cond_2
    if-nez p6, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    :try_start_0
    invoke-interface/range {p0 .. p5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a7ad80"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x33

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "b56fe9"

    invoke-static {v2, v3, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/view/ViewParentCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/core/view/NestedScrollingParent;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/core/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_0

    :array_0
    .array-data 1
        0x37t
        0x5et
        0x4t
        0x13t
        0x68t
        0x51t
        0x13t
        0x52t
        0xft
        0x10t
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x51t
        0x59t
        0x3t
        0x16t
        0x19t
        0xct
        0x5at
        0x42t
        0x46t
        0xct
        0x54t
        0x12t
        0x59t
        0x53t
        0xbt
        0x0t
        0x57t
        0x16t
        0x15t
        0x5ft
        0x8t
        0x11t
        0x5ct
        0x10t
        0x53t
        0x57t
        0x5t
        0x0t
        0x19t
        0xft
        0x50t
        0x42t
        0xet
        0xat
        0x5dt
        0x42t
        0x5at
        0x58t
        0x28t
        0x0t
        0x4at
        0x16t
        0x50t
        0x52t
        0x35t
        0x6t
        0x4bt
        0xdt
        0x59t
        0x5at
    .end array-data
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 6

    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p4, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "922e57"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "7d4af6"

    const-wide v4, -0x3e36cfbf08800000L    # -8.45185519E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/view/ViewParentCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x6ft
        0x5bt
        0x57t
        0x12t
        0x65t
        0x56t
        0x4bt
        0x57t
        0x5ct
        0x11t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x17t
        0x0t
        0x5bt
        0x4t
        0x15t
        0x16t
        0x59t
        0xbt
        0x40t
        0x41t
        0xft
        0x5bt
        0x47t
        0x8t
        0x51t
        0xct
        0x3t
        0x58t
        0x43t
        0x44t
        0x5dt
        0xft
        0x12t
        0x53t
        0x45t
        0x2t
        0x55t
        0x2t
        0x3t
        0x16t
        0x5at
        0x1t
        0x40t
        0x9t
        0x9t
        0x52t
        0x17t
        0xbt
        0x5at
        0x2ft
        0x3t
        0x45t
        0x43t
        0x1t
        0x50t
        0x32t
        0x5t
        0x44t
        0x58t
        0x8t
        0x58t
        0x20t
        0x5t
        0x55t
        0x52t
        0x14t
        0x40t
        0x4t
        0x2t
    .end array-data
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 5

    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p4, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "1bcfef"

    const v4, -0x326823c8

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x38

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "3eacb1"

    const/16 v4, -0x734b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/view/ViewParentCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    goto :goto_0

    :array_0
    .array-data 1
        0x67t
        0xbt
        0x6t
        0x11t
        0x35t
        0x7t
        0x43t
        0x7t
        0xdt
        0x12t
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x13t
        0x1t
        0xet
        0x6t
        0x11t
        0x11t
        0x5dt
        0xat
        0x15t
        0x43t
        0xbt
        0x5ct
        0x43t
        0x9t
        0x4t
        0xet
        0x7t
        0x5ft
        0x47t
        0x45t
        0x8t
        0xdt
        0x16t
        0x54t
        0x41t
        0x3t
        0x0t
        0x0t
        0x7t
        0x11t
        0x5et
        0x0t
        0x15t
        0xbt
        0xdt
        0x55t
        0x13t
        0xat
        0xft
        0x30t
        0x16t
        0x50t
        0x41t
        0x11t
        0x2ft
        0x6t
        0x11t
        0x45t
        0x56t
        0x1t
        0x32t
        0x0t
        0x10t
        0x5et
        0x5ft
        0x9t
    .end array-data
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    return-void
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 5

    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2}, Landroidx/core/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    :try_start_0
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9d1926"

    const/16 v4, 0x72ce

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x37

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "43584c"

    const v4, -0x332a9bbe

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/core/view/ViewParentCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1}, Landroidx/core/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x6ft
        0xdt
        0x54t
        0x4et
        0x62t
        0x57t
        0x4bt
        0x1t
        0x5ft
        0x4dt
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x14t
        0x57t
        0x5at
        0x5dt
        0x47t
        0x43t
        0x5at
        0x5ct
        0x41t
        0x18t
        0x5dt
        0xet
        0x44t
        0x5ft
        0x50t
        0x55t
        0x51t
        0xdt
        0x40t
        0x13t
        0x5ct
        0x56t
        0x40t
        0x6t
        0x46t
        0x55t
        0x54t
        0x5bt
        0x51t
        0x43t
        0x59t
        0x56t
        0x41t
        0x50t
        0x5bt
        0x7t
        0x14t
        0x5ct
        0x5bt
        0x6bt
        0x40t
        0xct
        0x44t
        0x7dt
        0x50t
        0x4bt
        0x40t
        0x6t
        0x50t
        0x60t
        0x56t
        0x4at
        0x5bt
        0xft
        0x58t
    .end array-data
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
