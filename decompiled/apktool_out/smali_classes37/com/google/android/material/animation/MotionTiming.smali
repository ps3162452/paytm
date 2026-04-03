.class public Lcom/google/android/material/animation/MotionTiming;
.super Ljava/lang/Object;


# instance fields
.field private delay:J

.field private duration:J

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private repeatCount:I

.field private repeatMode:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    iput-wide p3, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    iput-wide p3, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    iput-object p5, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static createFromAnimator(Landroid/animation/ValueAnimator;)Lcom/google/android/material/animation/MotionTiming;
    .locals 7

    new-instance v1, Lcom/google/android/material/animation/MotionTiming;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    invoke-static {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolatorCompat(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    iput v0, v1, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    iput v0, v1, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    return-object v1
.end method

.method private static getInterpolatorCompat(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;
    .locals 2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    instance-of v1, v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    instance-of v1, v0, Landroid/view/animation/AccelerateInterpolator;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_3
    instance-of v1, v0, Landroid/view/animation/DecelerateInterpolator;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/material/animation/MotionTiming;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/material/animation/MotionTiming;

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public getRepeatCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "520abc"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "f86706"

    const/16 v3, 0x2d10

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "f7cd48"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "7f74e4"

    const v3, -0x322468cf

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "fca0da"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "9db8a6"

    const-wide/32 v4, -0x7b3abc65

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x15t
        0x56t
        0x55t
        0xdt
        0x3t
        0x1at
        0xft
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x5ct
        0x43t
        0x45t
        0x51t
        0x42t
        0xft
        0x57t
        0x58t
        0xdt
        0x10t
    .end array-data

    :array_2
    .array-data 1
        0x46t
        0x5et
        0xdt
        0x10t
        0x51t
        0x4at
        0x16t
        0x58t
        0xft
        0x5t
        0x40t
        0x57t
        0x14t
        0xdt
        0x43t
    .end array-data

    :array_3
    .array-data 1
        0x17t
        0x14t
        0x52t
        0x44t
        0x0t
        0x55t
        0x43t
        0x25t
        0x58t
        0x41t
        0xbt
        0x40t
        0xdt
        0x46t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x46t
        0x11t
        0x4t
        0x40t
        0x1t
        0x0t
        0x12t
        0x2et
        0xet
        0x54t
        0x1t
        0x5bt
        0x46t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x44t
        0x6et
    .end array-data
.end method
