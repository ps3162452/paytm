.class public Landroidx/constraintlayout/core/motion/key/MotionConstraintSet;
.super Ljava/lang/Object;


# static fields
.field private static final ERROR_MESSAGE:Ljava/lang/String;

.field private static final INTERNAL_MATCH_CONSTRAINT:I = -0x3

.field private static final INTERNAL_MATCH_PARENT:I = -0x1

.field private static final INTERNAL_WRAP_CONTENT:I = -0x2

.field private static final INTERNAL_WRAP_CONTENT_CONSTRAINED:I = -0x4

.field public static final ROTATE_LEFT_OF_PORTRATE:I = 0x4

.field public static final ROTATE_NONE:I = 0x0

.field public static final ROTATE_PORTRATE_OF_LEFT:I = 0x2

.field public static final ROTATE_PORTRATE_OF_RIGHT:I = 0x1

.field public static final ROTATE_RIGHT_OF_PORTRATE:I = 0x3


# instance fields
.field public mIdString:Ljava/lang/String;

.field public mRotate:I

.field private mValidate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e55997"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionConstraintSet;->ERROR_MESSAGE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x3dt
        0x78t
        0x79t
        0x19t
        0x49t
        0x56t
        0x17t
        0x46t
        0x50t
        0x4bt
        0x19t
        0x52t
        0x17t
        0x47t
        0x5at
        0x4bt
        0x19t
        0x5at
        0x10t
        0x46t
        0x41t
        0x19t
        0x5bt
        0x52t
        0x45t
        0x42t
        0x5ct
        0x4dt
        0x51t
        0x5et
        0xbt
        0x15t
        0x54t
        0x19t
        0x7at
        0x58t
        0xbt
        0x46t
        0x41t
        0x4bt
        0x58t
        0x5et
        0xbt
        0x41t
        0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionConstraintSet;->mRotate:I

    return-void
.end method
