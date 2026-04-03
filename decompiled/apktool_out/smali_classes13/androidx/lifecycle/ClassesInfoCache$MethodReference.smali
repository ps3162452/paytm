.class final Landroidx/lifecycle/ClassesInfoCache$MethodReference;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ClassesInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MethodReference"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final mCallType:I

.field final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(ILjava/lang/reflect/Method;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    iput-object p2, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void
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
    instance-of v2, p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    iget v2, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    iget v3, p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method invokeCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .locals 5

    :try_start_0
    iget v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "941387"

    const/16 v4, 0x5a14

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x7ft
        0x55t
        0x58t
        0x5ft
        0x5dt
        0x53t
        0x19t
        0x40t
        0x5et
        0x13t
        0x5bt
        0x56t
        0x55t
        0x58t
        0x11t
        0x5ct
        0x5at
        0x44t
        0x5ct
        0x46t
        0x47t
        0x56t
        0x4at
        0x17t
        0x54t
        0x51t
        0x45t
        0x5bt
        0x57t
        0x53t
    .end array-data
.end method
