.class Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;
.super Landroidx/constraintlayout/motion/utils/ViewOscillator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewOscillator;
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

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .locals 10

    const/16 v9, 0x15

    const/16 v8, 0xe

    const/4 v7, 0x1

    const/4 v6, 0x0

    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "69de98"

    const-wide v4, 0x41a69a113e000000L    # 1.89597855E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->get(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v8, [B

    fill-array-data v1, :array_1

    const-string v2, "c3eb1c"

    const-wide/32 v4, 0x4fd66cef

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [B

    fill-array-data v2, :array_2

    const-string v3, "f087b7"

    const-wide/32 v4, 0x7bb46bdd

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    iput-boolean v7, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    goto :goto_1

    :catch_2
    move-exception v0

    new-array v1, v8, [B

    fill-array-data v1, :array_3

    const-string v2, "e79793"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [B

    fill-array-data v2, :array_4

    const-string v3, "ac93ec"

    const-wide v4, -0x3e289ebb28400000L    # -1.569002335E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x45t
        0x5ct
        0x10t
        0x35t
        0x4bt
        0x57t
        0x51t
        0x4bt
        0x1t
        0x16t
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x35t
        0x5at
        0x0t
        0x15t
        0x7et
        0x10t
        0x0t
        0x5at
        0x9t
        0xet
        0x50t
        0x17t
        0xct
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x13t
        0x5et
        0x59t
        0x55t
        0xet
        0x52t
        0x46t
        0x44t
        0x57t
        0x17t
        0x11t
        0x52t
        0x12t
        0x60t
        0x4at
        0x58t
        0x5t
        0x45t
        0x3t
        0x43t
        0x4bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x33t
        0x5et
        0x5ct
        0x40t
        0x76t
        0x40t
        0x6t
        0x5et
        0x55t
        0x5bt
        0x58t
        0x47t
        0xat
        0x45t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x14t
        0xdt
        0x58t
        0x51t
        0x9t
        0x6t
        0x41t
        0x17t
        0x56t
        0x13t
        0x16t
        0x6t
        0x15t
        0x33t
        0x4bt
        0x5ct
        0x2t
        0x11t
        0x4t
        0x10t
        0x4at
    .end array-data
.end method
