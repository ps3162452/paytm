.class Landroidx/transition/ViewGroupUtilsApi14;
.super Ljava/lang/Object;


# static fields
.field private static final LAYOUT_TRANSITION_CHANGING:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static sCancelMethod:Ljava/lang/reflect/Method;

.field private static sCancelMethodFetched:Z

.field private static sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

.field private static sLayoutSuppressedField:Ljava/lang/reflect/Field;

.field private static sLayoutSuppressedFieldFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b05e5c"

    const-wide/32 v2, -0x27aa14d2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ViewGroupUtilsApi14;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x34t
        0x59t
        0x50t
        0x12t
        0x72t
        0x11t
        0xdt
        0x45t
        0x45t
        0x30t
        0x41t
        0xat
        0xet
        0x43t
        0x74t
        0x15t
        0x5ct
        0x52t
        0x56t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cancelLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    const/16 v8, 0x2c

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/animation/LayoutTransition;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "daed0d"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v7, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    :cond_0
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->TAG:Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_1

    const-string v2, "dad376"

    const-wide v4, -0x3e232d6069800000L    # -1.93426185E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->TAG:Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_2

    const-string v2, "b8b613"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->TAG:Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_3

    const-string v2, "8d8b2b"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x7t
        0x0t
        0xbt
        0x7t
        0x55t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x22t
        0x0t
        0xdt
        0x5ft
        0x52t
        0x52t
        0x44t
        0x15t
        0xbt
        0x13t
        0x56t
        0x55t
        0x7t
        0x4t
        0x17t
        0x40t
        0x17t
        0x55t
        0x5t
        0xft
        0x7t
        0x56t
        0x5bt
        0x16t
        0x9t
        0x4t
        0x10t
        0x5bt
        0x58t
        0x52t
        0x44t
        0x3t
        0x1dt
        0x13t
        0x45t
        0x53t
        0x2t
        0xdt
        0x1t
        0x50t
        0x43t
        0x5ft
        0xbt
        0xft
    .end array-data

    :array_2
    .array-data 1
        0x24t
        0x59t
        0xbt
        0x5at
        0x54t
        0x57t
        0x42t
        0x4ct
        0xdt
        0x16t
        0x50t
        0x50t
        0x1t
        0x5dt
        0x11t
        0x45t
        0x11t
        0x50t
        0x3t
        0x56t
        0x1t
        0x53t
        0x5dt
        0x13t
        0xft
        0x5dt
        0x16t
        0x5et
        0x5et
        0x57t
        0x42t
        0x5at
        0x1bt
        0x16t
        0x43t
        0x56t
        0x4t
        0x54t
        0x7t
        0x55t
        0x45t
        0x5at
        0xdt
        0x56t
    .end array-data

    :array_3
    .array-data 1
        0x7et
        0x5t
        0x51t
        0xet
        0x57t
        0x6t
        0x18t
        0x10t
        0x57t
        0x42t
        0x5bt
        0xct
        0x4et
        0xbt
        0x53t
        0x7t
        0x12t
        0x1t
        0x59t
        0xat
        0x5bt
        0x7t
        0x5et
        0x42t
        0x55t
        0x1t
        0x4ct
        0xat
        0x5dt
        0x6t
        0x18t
        0x6t
        0x41t
        0x42t
        0x40t
        0x7t
        0x5et
        0x8t
        0x5dt
        0x1t
        0x46t
        0xbt
        0x57t
        0xat
    .end array-data
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 8
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/transition/ViewGroupUtilsApi14$1;

    invoke-direct {v0}, Landroidx/transition/ViewGroupUtilsApi14$1;-><init>()V

    sput-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v7, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/transition/ViewGroupUtilsApi14;->cancelLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_1
    sget-object v1, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    if-eq v0, v1, :cond_2

    sget v1, Landroidx/transition/R$id;->transition_layout_save:I

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_2
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    sget-boolean v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    if-nez v0, :cond_5

    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "211326"

    const-wide/32 v4, 0x45b41c31

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v7, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    :cond_5
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_8

    :try_start_1
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    :try_start_2
    sget-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    sget v0, Landroidx/transition/R$id;->transition_layout_save:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_3

    sget v1, Landroidx/transition/R$id;->transition_layout_save:I

    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->TAG:Ljava/lang/String;

    const/16 v2, 0x36

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "d76c69"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    :goto_3
    sget-object v2, Landroidx/transition/ViewGroupUtilsApi14;->TAG:Ljava/lang/String;

    const/16 v3, 0x33

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "f7238b"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_2

    :array_0
    .array-data 1
        0x5ft
        0x7dt
        0x50t
        0x4at
        0x5dt
        0x43t
        0x46t
        0x62t
        0x44t
        0x43t
        0x42t
        0x44t
        0x57t
        0x42t
        0x42t
        0x56t
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x22t
        0x56t
        0x5ft
        0xft
        0x53t
        0x5dt
        0x44t
        0x43t
        0x59t
        0x43t
        0x57t
        0x5at
        0x7t
        0x52t
        0x45t
        0x10t
        0x16t
        0x54t
        0x28t
        0x56t
        0x4ft
        0xct
        0x43t
        0x4dt
        0x37t
        0x42t
        0x46t
        0x13t
        0x44t
        0x5ct
        0x17t
        0x44t
        0x53t
        0x7t
        0x16t
        0x5ft
        0xdt
        0x52t
        0x5at
        0x7t
        0x16t
        0x5bt
        0x1dt
        0x17t
        0x44t
        0x6t
        0x50t
        0x55t
        0x1t
        0x54t
        0x42t
        0xat
        0x59t
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x20t
        0x56t
        0x5bt
        0x5ft
        0x5dt
        0x6t
        0x46t
        0x43t
        0x5dt
        0x13t
        0x5ft
        0x7t
        0x12t
        0x17t
        0x5ft
        0x7ft
        0x59t
        0x1bt
        0x9t
        0x42t
        0x46t
        0x60t
        0x4dt
        0x12t
        0x16t
        0x45t
        0x57t
        0x40t
        0x4bt
        0x7t
        0x2t
        0x17t
        0x54t
        0x5at
        0x5dt
        0xet
        0x2t
        0x17t
        0x50t
        0x4at
        0x18t
        0x10t
        0x3t
        0x51t
        0x5et
        0x56t
        0x5bt
        0x16t
        0xft
        0x58t
        0x5ct
    .end array-data
.end method
