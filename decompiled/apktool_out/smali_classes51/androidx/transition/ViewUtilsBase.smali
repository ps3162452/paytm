.class Landroidx/transition/ViewUtilsBase;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VISIBILITY_MASK:I = 0xc

.field private static sSetFrameFetched:Z

.field private static sSetFrameMethod:Ljava/lang/reflect/Method;

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# instance fields
.field private mMatrixValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2506e5"

    const/16 v2, -0x3874

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ViewUtilsBase;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x64t
        0x5ct
        0x55t
        0x41t
        0x30t
        0x41t
        0x5bt
        0x59t
        0x43t
        0x74t
        0x4t
        0x46t
        0x57t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fetchSetFrame()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi",
            "SoonBlockedPrivateApi"
        }
    .end annotation

    const/4 v5, 0x1

    sget-boolean v0, Landroidx/transition/ViewUtilsBase;->sSetFrameFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/view/View;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0174e3"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    sget-object v0, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v5, Landroidx/transition/ViewUtilsBase;->sSetFrameFetched:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/transition/ViewUtilsBase;->TAG:Ljava/lang/String;

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "43307d"

    const/16 v4, -0x54bc

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x43t
        0x54t
        0x43t
        0x72t
        0x17t
        0x52t
        0x5dt
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x52t
        0x5at
        0x5ct
        0x52t
        0x0t
        0x14t
        0x47t
        0x5ct
        0x10t
        0x45t
        0x1t
        0x40t
        0x41t
        0x5at
        0x55t
        0x41t
        0x1t
        0x14t
        0x40t
        0x56t
        0x44t
        0x71t
        0x16t
        0x55t
        0x5et
        0x56t
        0x10t
        0x5at
        0x1t
        0x40t
        0x5bt
        0x5ct
        0x54t
    .end array-data
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v0, v1, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotation(F)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/transition/ViewUtilsBase;->mMatrixValues:[F

    if-nez v0, :cond_2

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/transition/ViewUtilsBase;->mMatrixValues:[F

    :cond_2
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x3

    aget v2, v0, v1

    mul-float v1, v2, v2

    sub-float v1, v3, v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    aget v1, v0, v7

    cmpg-float v1, v1, v6

    if-gez v1, :cond_3

    const/4 v1, -0x1

    :goto_1
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-double v2, v2

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    aget v3, v0, v7

    div-float/2addr v3, v1

    const/4 v4, 0x4

    aget v4, v0, v4

    div-float v1, v4, v1

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x5

    aget v0, v0, v5

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/transition/ViewUtilsBase;->fetchSetFrame()V

    sget-object v0, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x1

    sget-boolean v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/view/View;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b084e9"

    const/16 v3, 0x1d7c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    sget-object v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v4, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    :cond_0
    sget-object v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr v0, p2

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/transition/ViewUtilsBase;->TAG:Ljava/lang/String;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "4127a3"

    const/16 v3, -0x2f38

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0xft
        0x66t
        0x51t
        0x51t
        0x12t
        0x7ft
        0xet
        0x51t
        0x5ft
        0x47t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x52t
        0x54t
        0x46t
        0x54t
        0x9t
        0x65t
        0x5dt
        0x54t
        0x45t
        0x71t
        0xdt
        0x52t
        0x53t
        0x42t
        0x74t
        0x5et
        0x4t
        0x5ft
        0x50t
        0xbt
        0x12t
    .end array-data
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Landroidx/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Landroidx/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    return-void
.end method
