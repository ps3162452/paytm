.class final enum Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TransitionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;


# direct methods
.method private static synthetic $values()[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const/4 v1, 0x0

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "de4b50"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ae1b77"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "9762db"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "a7c950"

    invoke-static {v1, v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->$values()[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->$VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0x2bt
        0x70t
        0x27t
        0x73t
        0x79t
        0x2at
        0x20t
        0x70t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x32t
        0x20t
        0x65t
        0x37t
        0x67t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x74t
        0x78t
        0x60t
        0x7bt
        0x2at
        0x25t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x27t
        0x7et
        0x2dt
        0x70t
        0x66t
        0x78t
        0x24t
        0x73t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    .locals 1

    const-class v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->$VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0}, [Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    return-object v0
.end method
