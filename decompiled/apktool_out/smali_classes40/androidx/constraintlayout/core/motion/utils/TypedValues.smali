.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/TypedValues$Attributes;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$Cycle;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;
    }
.end annotation


# static fields
.field public static final BOOLEAN_MASK:I = 0x1

.field public static final FLOAT_MASK:I = 0x4

.field public static final INT_MASK:I = 0x2

.field public static final STRING_MASK:I = 0x8

.field public static final S_CUSTOM:Ljava/lang/String;

.field public static final TYPE_FRAME_POSITION:I = 0x64

.field public static final TYPE_TARGET:I = 0x65


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "49a78e"

    const-wide v2, 0x41da2156d5c00000L    # 1.753570135E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues;->S_CUSTOM:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x77t
        0x6ct
        0x32t
        0x63t
        0x77t
        0x28t
    .end array-data
.end method


# virtual methods
.method public abstract getId(Ljava/lang/String;)I
.end method

.method public abstract setValue(IF)Z
.end method

.method public abstract setValue(II)Z
.end method

.method public abstract setValue(ILjava/lang/String;)Z
.end method

.method public abstract setValue(IZ)Z
.end method
