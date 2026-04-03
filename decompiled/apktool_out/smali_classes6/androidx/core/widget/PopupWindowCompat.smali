.class public final Landroidx/core/widget/PopupWindowCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/PopupWindowCompat$Api19Impl;,
        Landroidx/core/widget/PopupWindowCompat$Api23Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;

.field private static sOverlapAnchorFieldAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "af6e32"

    const/16 v2, -0x7f2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/PopupWindowCompat;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x31t
        0x9t
        0x46t
        0x10t
        0x43t
        0x65t
        0x8t
        0x8t
        0x52t
        0xat
        0x44t
        0x71t
        0xet
        0xbt
        0x46t
        0x4t
        0x47t
        0x73t
        0x11t
        0xft
        0x4t
        0x54t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Landroidx/core/widget/PopupWindowCompat$Api23Impl;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    if-nez v0, :cond_1

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c9b3ab"

    const-wide/32 v4, 0x230bcde5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v8, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    :cond_1
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/core/widget/PopupWindowCompat;->TAG:Ljava/lang/String;

    const/16 v3, 0x35

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "e8027a"

    const-wide/32 v6, -0x4bc957e2

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Landroidx/core/widget/PopupWindowCompat;->TAG:Ljava/lang/String;

    const/16 v3, 0x31

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "e157d1"

    invoke-static {v3, v4, v8, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0xet
        0x76t
        0x14t
        0x56t
        0x13t
        0xet
        0x2t
        0x49t
        0x23t
        0x5dt
        0x2t
        0xat
        0xct
        0x4bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x26t
        0x57t
        0x45t
        0x5et
        0x53t
        0x41t
        0xbt
        0x57t
        0x44t
        0x12t
        0x51t
        0x4t
        0x11t
        0x5bt
        0x58t
        0x12t
        0x5at
        0x2et
        0x13t
        0x5dt
        0x42t
        0x5et
        0x56t
        0x11t
        0x24t
        0x56t
        0x53t
        0x5at
        0x58t
        0x13t
        0x45t
        0x5et
        0x59t
        0x57t
        0x5bt
        0x5t
        0x45t
        0x5et
        0x42t
        0x5dt
        0x5at
        0x41t
        0x35t
        0x57t
        0x40t
        0x47t
        0x47t
        0x36t
        0xct
        0x56t
        0x54t
        0x5dt
        0x40t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x26t
        0x5et
        0x40t
        0x5bt
        0x0t
        0x11t
        0xbt
        0x5et
        0x41t
        0x17t
        0x3t
        0x54t
        0x11t
        0x11t
        0x5at
        0x41t
        0x1t
        0x43t
        0x9t
        0x50t
        0x45t
        0x17t
        0x5t
        0x5ft
        0x6t
        0x59t
        0x5at
        0x45t
        0x44t
        0x57t
        0xct
        0x54t
        0x59t
        0x53t
        0x44t
        0x58t
        0xbt
        0x11t
        0x65t
        0x58t
        0x14t
        0x44t
        0x15t
        0x66t
        0x5ct
        0x59t
        0x0t
        0x5et
        0x12t
    .end array-data
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Landroidx/core/widget/PopupWindowCompat$Api23Impl;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethodAttempted:Z

    if-nez v0, :cond_1

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "254300"

    const-wide/32 v4, 0x18ee90ce

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    sput-boolean v6, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethodAttempted:Z

    :cond_1
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x55t
        0x50t
        0x40t
        0x64t
        0x59t
        0x5et
        0x56t
        0x5at
        0x43t
        0x7ft
        0x51t
        0x49t
        0x5dt
        0x40t
        0x40t
        0x67t
        0x49t
        0x40t
        0x57t
    .end array-data
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 7

    const/4 v6, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Landroidx/core/widget/PopupWindowCompat$Api23Impl;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    if-nez v0, :cond_2

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f35ad7"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    sput-boolean v6, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    :cond_2
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/core/widget/PopupWindowCompat;->TAG:Ljava/lang/String;

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "7ca4cd"

    const-wide/32 v4, 0x3c2be99e

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Landroidx/core/widget/PopupWindowCompat;->TAG:Ljava/lang/String;

    const/16 v2, 0x35

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "6834d3"

    const-wide v4, -0x3e4c18e7f1000000L    # -3.33912079E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0xbt
        0x7ct
        0x43t
        0x4t
        0x16t
        0x5bt
        0x7t
        0x43t
        0x74t
        0xft
        0x7t
        0x5ft
        0x9t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0xct
        0x14t
        0x58t
        0x7t
        0x44t
        0x59t
        0xct
        0x15t
        0x14t
        0x10t
        0x1t
        0x43t
        0x43t
        0xet
        0x42t
        0x6t
        0x16t
        0x5bt
        0x2t
        0x11t
        0x14t
        0x2t
        0xat
        0x54t
        0xbt
        0xet
        0x46t
        0x43t
        0x2t
        0x5et
        0x6t
        0xdt
        0x50t
        0x43t
        0xdt
        0x59t
        0x43t
        0x31t
        0x5bt
        0x13t
        0x11t
        0x47t
        0x34t
        0x8t
        0x5at
        0x7t
        0xbt
        0x40t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x75t
        0x57t
        0x46t
        0x58t
        0x0t
        0x13t
        0x58t
        0x57t
        0x47t
        0x14t
        0x2t
        0x56t
        0x42t
        0x5bt
        0x5bt
        0x14t
        0x9t
        0x7ct
        0x40t
        0x5dt
        0x41t
        0x58t
        0x5t
        0x43t
        0x77t
        0x56t
        0x50t
        0x5ct
        0xbt
        0x41t
        0x16t
        0x5et
        0x5at
        0x51t
        0x8t
        0x57t
        0x16t
        0x5et
        0x41t
        0x5bt
        0x9t
        0x13t
        0x66t
        0x57t
        0x43t
        0x41t
        0x14t
        0x64t
        0x5ft
        0x56t
        0x57t
        0x5bt
        0x13t
    .end array-data
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 6

    const/4 v5, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Landroidx/core/widget/PopupWindowCompat$Api23Impl;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethodAttempted:Z

    if-nez v0, :cond_2

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "67f677"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    sput-boolean v5, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethodAttempted:Z

    :cond_2
    sget-object v0, Landroidx/core/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x45t
        0x52t
        0x12t
        0x61t
        0x5et
        0x59t
        0x52t
        0x58t
        0x11t
        0x7at
        0x56t
        0x4et
        0x59t
        0x42t
        0x12t
        0x62t
        0x4et
        0x47t
        0x53t
    .end array-data
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/widget/PopupWindowCompat$Api19Impl;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p4, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
