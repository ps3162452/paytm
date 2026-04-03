.class public Landroidx/constraintlayout/motion/widget/TransitionBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "09302c"

    const/16 v2, 0xa2e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/TransitionBuilder;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x64t
        0x4bt
        0x52t
        0x5et
        0x41t
        0xat
        0x44t
        0x50t
        0x5ct
        0x5et
        0x70t
        0x16t
        0x59t
        0x55t
        0x57t
        0x55t
        0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTransition(Landroidx/constraintlayout/motion/widget/MotionScene;IILandroidx/constraintlayout/widget/ConstraintSet;ILandroidx/constraintlayout/widget/ConstraintSet;)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-direct {v0, p1, p0, p2, p4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V

    invoke-static {p0, v0, p3, p5}, Landroidx/constraintlayout/motion/widget/TransitionBuilder;->updateConstraintSetInMotionScene(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    return-object v0
.end method

.method private static updateConstraintSetInMotionScene(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v1

    invoke-virtual {p0, v0, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setConstraintSet(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {p0, v1, p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->setConstraintSet(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    return-void
.end method

.method public static validate(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->validateLayout(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1a5c69"

    const/16 v3, -0x2728

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e22394"

    const-wide/32 v4, 0x604d257c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x33

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "2cc8fe"

    const-wide v4, -0x3e2dd1c080800000L    # -1.220083198E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x78t
        0xft
        0x43t
        0x2t
        0x5at
        0x50t
        0x55t
        0x41t
        0x58t
        0xct
        0x42t
        0x50t
        0x5et
        0xft
        0x15t
        0xft
        0x57t
        0x40t
        0x5et
        0x14t
        0x41t
        0x4dt
        0x16t
        0x74t
        0x5et
        0x15t
        0x5ct
        0xct
        0x58t
        0x19t
        0x62t
        0x2t
        0x50t
        0xdt
        0x53t
        0x19t
        0x55t
        0xet
        0x50t
        0x10t
        0x58t
        0x1et
        0x45t
        0x41t
        0x5dt
        0x2t
        0x40t
        0x5ct
        0x11t
        0x0t
        0x5bt
        0x1at
        0x16t
        0x4dt
        0x43t
        0x0t
        0x5bt
        0x10t
        0x5ft
        0x4dt
        0x58t
        0xet
        0x5bt
        0x4dt
    .end array-data

    :array_1
    .array-data 1
        0x28t
        0x5dt
        0x46t
        0x5at
        0x56t
        0x5at
        0x29t
        0x53t
        0x4bt
        0x5ct
        0x4ct
        0x40t
        0x45t
        0x56t
        0x5dt
        0x56t
        0x4at
        0x5at
        0x42t
        0x46t
        0x12t
        0x5bt
        0x58t
        0x42t
        0x0t
        0x12t
        0x46t
        0x5bt
        0x5ct
        0x14t
        0x17t
        0x5bt
        0x55t
        0x5bt
        0x4dt
        0x14t
        0x8t
        0x5dt
        0x46t
        0x5at
        0x56t
        0x5at
        0x45t
        0x41t
        0x51t
        0x56t
        0x57t
        0x51t
        0x4bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7bt
        0xdt
        0x15t
        0x59t
        0xat
        0xct
        0x56t
        0x43t
        0xet
        0x57t
        0x12t
        0xct
        0x5dt
        0xdt
        0x43t
        0x54t
        0x7t
        0x1ct
        0x5dt
        0x16t
        0x17t
        0x16t
        0x46t
        0x29t
        0x53t
        0x1at
        0xct
        0x4dt
        0x12t
        0x45t
        0x5ft
        0xat
        0x10t
        0x4bt
        0xft
        0xbt
        0x55t
        0x43t
        0x2et
        0x57t
        0x12t
        0xct
        0x5dt
        0xdt
        0x43t
        0x6bt
        0x5t
        0x0t
        0x5ct
        0x6t
        0x4dt
    .end array-data
.end method
