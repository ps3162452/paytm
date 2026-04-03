.class Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 9

    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_1

    move-object v6, p1

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mContinue:Z

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c0f0b4"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v6, v0

    :goto_2
    if-eqz v6, :cond_0

    const/4 v0, 0x1

    :try_start_1
    new-array v7, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "af6463"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "7a6db3"

    const-wide/32 v4, 0x5baf0f19

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_2

    :catch_2
    move-exception v0

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "fca60a"

    const/16 v3, 0x5981

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "57057a"

    const-wide v4, 0x41c46ed1da000000L    # 6.85614004E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x10t
        0x55t
        0x12t
        0x60t
        0x10t
        0x5bt
        0x4t
        0x42t
        0x3t
        0x43t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x37t
        0xft
        0x53t
        0x43t
        0x62t
        0x5at
        0xct
        0x3t
        0x75t
        0x4dt
        0x55t
        0x5ft
        0x4t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x42t
        0xft
        0x57t
        0x6t
        0xet
        0x56t
        0x17t
        0x15t
        0x59t
        0x44t
        0x11t
        0x56t
        0x43t
        0x31t
        0x44t
        0xbt
        0x5t
        0x41t
        0x52t
        0x12t
        0x45t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x30t
        0xat
        0x4t
        0x41t
        0x64t
        0x8t
        0xbt
        0x6t
        0x22t
        0x4ft
        0x53t
        0xdt
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x40t
        0x59t
        0x51t
        0x57t
        0x5bt
        0x4t
        0x15t
        0x43t
        0x5ft
        0x15t
        0x44t
        0x4t
        0x41t
        0x67t
        0x42t
        0x5at
        0x50t
        0x13t
        0x50t
        0x44t
        0x43t
    .end array-data
.end method
