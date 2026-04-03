.class Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCache"
.end annotation


# instance fields
.field final KeyEndState:Ljava/lang/String;

.field final KeyProgress:Ljava/lang/String;

.field final KeyStartState:Ljava/lang/String;

.field final KeyVelocity:Ljava/lang/String;

.field endState:I

.field mProgress:F

.field mVelocity:F

.field startState:I

.field final this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x7fc00000    # Float.NaN

    const/16 v2, 0xf

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->startState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    const-string v1, "914d15"

    invoke-static {v0, v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->KeyProgress:Ljava/lang/String;

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    const-string v1, "8e5968"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->KeyVelocity:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "7f18b0"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->KeyStartState:Ljava/lang/String;

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    const-string v1, "5e368f"

    const-wide/32 v2, 0x3bd1a623

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->KeyEndState:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x54t
        0x5et
        0x40t
        0xdt
        0x5et
        0x5bt
        0x17t
        0x41t
        0x46t
        0xbt
        0x56t
        0x47t
        0x5ct
        0x42t
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x55t
        0xat
        0x41t
        0x50t
        0x59t
        0x56t
        0x16t
        0x13t
        0x50t
        0x55t
        0x59t
        0x5bt
        0x51t
        0x11t
        0x4ct
    .end array-data

    :array_2
    .array-data 1
        0x5at
        0x9t
        0x45t
        0x51t
        0xdt
        0x5et
        0x19t
        0x35t
        0x45t
        0x59t
        0x10t
        0x44t
        0x64t
        0x12t
        0x50t
        0x4ct
        0x7t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x58t
        0xat
        0x47t
        0x5ft
        0x57t
        0x8t
        0x1bt
        0x20t
        0x5dt
        0x52t
        0x6bt
        0x12t
        0x54t
        0x11t
        0x56t
    .end array-data
.end method


# virtual methods
.method apply()V
    .locals 5

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/4 v3, -0x1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->startState:I

    if-ne v0, v3, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    if-eq v1, v3, :cond_1

    :cond_0
    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    return-void

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0, v3, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(FF)V

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->startState:I

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    goto :goto_1
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 7

    const/16 v6, 0xf

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-array v1, v6, [B

    fill-array-data v1, :array_0

    const-string v2, "b87c84"

    const v3, 0x4efdfa63

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v2, "11cc7c"

    const-wide v4, -0x3e6ebd5078000000L    # -7.2395746E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "cf6c4d"

    const-wide/32 v4, -0x22df08ae

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->startState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-array v1, v6, [B

    fill-array-data v1, :array_3

    const-string v2, "3cda1b"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :array_0
    .array-data 1
        0xft
        0x57t
        0x43t
        0xat
        0x57t
        0x5at
        0x4ct
        0x48t
        0x45t
        0xct
        0x5ft
        0x46t
        0x7t
        0x4bt
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x5ct
        0x5et
        0x17t
        0xat
        0x58t
        0xdt
        0x1ft
        0x47t
        0x6t
        0xft
        0x58t
        0x0t
        0x58t
        0x45t
        0x1at
    .end array-data

    :array_2
    .array-data 1
        0xet
        0x9t
        0x42t
        0xat
        0x5bt
        0xat
        0x4dt
        0x35t
        0x42t
        0x2t
        0x46t
        0x10t
        0x30t
        0x12t
        0x57t
        0x17t
        0x51t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5et
        0xct
        0x10t
        0x8t
        0x5et
        0xct
        0x1dt
        0x26t
        0xat
        0x5t
        0x62t
        0x16t
        0x52t
        0x17t
        0x1t
    .end array-data
.end method

.method public recordState()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->startState:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    return-void
.end method

.method public setEndState(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    return-void
.end method

.method public setStartState(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->startState:I

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0xf

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "31328f"

    const/16 v2, 0x8f8

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "23de90"

    const/16 v2, -0x142b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "291029"

    const-wide/32 v2, -0x759f09af

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->startState:I

    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "88235d"

    const/16 v2, -0x3282

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    return-void

    :array_0
    .array-data 1
        0x5et
        0x5et
        0x47t
        0x5bt
        0x57t
        0x8t
        0x1dt
        0x41t
        0x41t
        0x5dt
        0x5ft
        0x14t
        0x56t
        0x42t
        0x40t
    .end array-data

    :array_1
    .array-data 1
        0x5ft
        0x5ct
        0x10t
        0xct
        0x56t
        0x5et
        0x1ct
        0x45t
        0x1t
        0x9t
        0x56t
        0x53t
        0x5bt
        0x47t
        0x1dt
    .end array-data

    :array_2
    .array-data 1
        0x5ft
        0x56t
        0x45t
        0x59t
        0x5dt
        0x57t
        0x1ct
        0x6at
        0x45t
        0x51t
        0x40t
        0x4dt
        0x61t
        0x4dt
        0x50t
        0x44t
        0x57t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x55t
        0x57t
        0x46t
        0x5at
        0x5at
        0xat
        0x16t
        0x7dt
        0x5ct
        0x57t
        0x66t
        0x10t
        0x59t
        0x4ct
        0x57t
    .end array-data
.end method

.method public setVelocity(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    return-void
.end method
