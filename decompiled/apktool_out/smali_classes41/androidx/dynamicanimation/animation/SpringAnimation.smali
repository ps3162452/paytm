.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation",
        "<",
        "Landroidx/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat",
            "<TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat",
            "<TK;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method private sanityCheck()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x54

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1bc9c9"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "93fed7"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x3f

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "bb707a"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x78t
        0xct
        0x0t
        0x56t
        0xet
        0x49t
        0x5dt
        0x7t
        0x17t
        0x5ct
        0x43t
        0x6at
        0x41t
        0x10t
        0xat
        0x57t
        0x4t
        0x78t
        0x5ft
        0xbt
        0xet
        0x58t
        0x17t
        0x50t
        0x5et
        0xct
        0x59t
        0x19t
        0x26t
        0x50t
        0x45t
        0xat
        0x6t
        0x4bt
        0x43t
        0x5ft
        0x58t
        0xct
        0x2t
        0x55t
        0x43t
        0x49t
        0x5et
        0x11t
        0xat
        0x4dt
        0xat
        0x56t
        0x5ft
        0x42t
        0xct
        0x4bt
        0x43t
        0x58t
        0x11t
        0x11t
        0x13t
        0x4bt
        0xat
        0x57t
        0x56t
        0x42t
        0x5t
        0x56t
        0x11t
        0x5at
        0x54t
        0x42t
        0xdt
        0x5ct
        0x6t
        0x5dt
        0x42t
        0x42t
        0x17t
        0x56t
        0x43t
        0x5bt
        0x54t
        0x42t
        0x10t
        0x5ct
        0x17t
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x7ft
        0x5at
        0x8t
        0x4t
        0x8t
        0x17t
        0x49t
        0x5ct
        0x15t
        0xct
        0x10t
        0x5et
        0x56t
        0x5dt
        0x46t
        0xat
        0x2t
        0x17t
        0x4dt
        0x5bt
        0x3t
        0x45t
        0x17t
        0x47t
        0x4bt
        0x5at
        0x8t
        0x2t
        0x44t
        0x54t
        0x58t
        0x5dt
        0x8t
        0xat
        0x10t
        0x17t
        0x5bt
        0x56t
        0x46t
        0x2t
        0x16t
        0x52t
        0x58t
        0x47t
        0x3t
        0x17t
        0x44t
        0x43t
        0x51t
        0x52t
        0x8t
        0x45t
        0x10t
        0x5ft
        0x5ct
        0x13t
        0xbt
        0x4t
        0x1ct
        0x17t
        0x4ft
        0x52t
        0xat
        0x10t
        0x1t
        0x19t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x24t
        0xbt
        0x59t
        0x51t
        0x5bt
        0x41t
        0x12t
        0xdt
        0x44t
        0x59t
        0x43t
        0x8t
        0xdt
        0xct
        0x17t
        0x5ft
        0x51t
        0x41t
        0x16t
        0xat
        0x52t
        0x10t
        0x44t
        0x11t
        0x10t
        0xbt
        0x59t
        0x57t
        0x17t
        0x2t
        0x3t
        0xct
        0x59t
        0x5ft
        0x43t
        0x41t
        0x0t
        0x7t
        0x17t
        0x5ct
        0x52t
        0x12t
        0x11t
        0x42t
        0x43t
        0x58t
        0x56t
        0xft
        0x42t
        0x16t
        0x5ft
        0x55t
        0x17t
        0xct
        0xbt
        0xct
        0x17t
        0x46t
        0x56t
        0xdt
        0x17t
        0x7t
        0x19t
    .end array-data
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .locals 1

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_0
.end method

.method public canSkipToEnd()Z
    .locals 4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    :goto_0
    iput v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_0
.end method

.method getAcceleration(FF)F
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public getSpring()Landroidx/dynamicanimation/animation/SpringForce;
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method isAtEquilibrium(FF)Z
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    move-result v0

    return v0
.end method

.method public setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method setValueThreshold(F)V
    .locals 0

    return-void
.end method

.method public skipToEnd()V
    .locals 6

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x3f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c241b4"

    const/16 v3, -0x58d9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a2ac85"

    const-wide/32 v4, 0x6b26c414

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x42t
        0x46t
        0x58t
        0xct
        0x53t
        0x43t
        0x53t
        0x5at
        0x58t
        0xft
        0x55t
        0x17t
        0x5bt
        0x5bt
        0x5ft
        0x11t
        0x14t
        0x0t
        0x53t
        0x5at
        0x11t
        0xdt
        0x5at
        0xft
        0x4bt
        0x14t
        0x52t
        0xdt
        0x59t
        0x6t
        0x12t
        0x40t
        0x5et
        0x42t
        0x55t
        0xdt
        0x12t
        0x51t
        0x5ft
        0x6t
        0x14t
        0x14t
        0x5at
        0x51t
        0x5ft
        0x42t
        0x40t
        0xbt
        0x57t
        0x46t
        0x54t
        0x42t
        0x5dt
        0x10t
        0x12t
        0x50t
        0x50t
        0xft
        0x44t
        0xat
        0x5ct
        0x53t
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x5ct
        0x8t
        0xet
        0x59t
        0x41t
        0x8t
        0x5dt
        0xft
        0x10t
        0x18t
        0x58t
        0x0t
        0x4bt
        0x41t
        0xct
        0x56t
        0x59t
        0x18t
        0x12t
        0x3t
        0x6t
        0x18t
        0x46t
        0x15t
        0x53t
        0x13t
        0x17t
        0x5dt
        0x51t
        0x41t
        0x5dt
        0xft
        0x43t
        0x4ct
        0x5dt
        0x4t
        0x12t
        0xct
        0x2t
        0x51t
        0x5bt
        0x41t
        0x46t
        0x9t
        0x11t
        0x5dt
        0x54t
        0x5t
    .end array-data
.end method

.method public start()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->sanityCheck()V

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setValueThreshold(D)V

    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 9

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v2, v0

    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v4, v0

    const-wide/16 v6, 0x2

    div-long v6, p1, v6

    invoke-virtual/range {v1 .. v7}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v0

    iget-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    iget-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v2, v2

    iget v0, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v4, v0

    const-wide/16 v6, 0x2

    div-long v6, p1, v6

    invoke-virtual/range {v1 .. v7}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v0

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v0, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    :goto_1
    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    invoke-virtual {p0, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v2, v0

    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v4, v0

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v0

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v0, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
