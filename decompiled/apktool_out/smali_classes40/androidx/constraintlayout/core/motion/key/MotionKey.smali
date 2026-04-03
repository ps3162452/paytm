.class public abstract Landroidx/constraintlayout/core/motion/key/MotionKey;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# static fields
.field public static final ALPHA:Ljava/lang/String;

.field public static final CUSTOM:Ljava/lang/String;

.field public static final ELEVATION:Ljava/lang/String;

.field public static final ROTATION:Ljava/lang/String;

.field public static final ROTATION_X:Ljava/lang/String;

.field public static final SCALE_X:Ljava/lang/String;

.field public static final SCALE_Y:Ljava/lang/String;

.field public static final TRANSITION_PATH_ROTATE:Ljava/lang/String;

.field public static final TRANSLATION_X:Ljava/lang/String;

.field public static final TRANSLATION_Y:Ljava/lang/String;

.field public static UNSET:I

.field public static final VISIBILITY:Ljava/lang/String;


# instance fields
.field public mCustom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field public mFramePosition:I

.field mTargetId:I

.field mTargetString:Ljava/lang/String;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xc

    const/4 v7, 0x1

    const/16 v6, 0x9

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c3d14f"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->ALPHA:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    const-string v1, "b8446e"

    const v2, -0x320498e5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->CUSTOM:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "9cc752"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->ELEVATION:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_3

    const-string v1, "10e82d"

    const-wide/32 v2, 0x43b108d8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->ROTATION:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "08fdbb"

    const-wide/32 v2, -0x2ad0e3a9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->ROTATION_X:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_5

    const-string v1, "69f13b"

    const-wide v2, 0x41d3716c27c00000L    # 1.304801439E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->SCALE_X:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_6

    const-string v1, "784060"

    invoke-static {v0, v1, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->SCALE_Y:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "091474"

    const v2, 0x4ede4982    # 1.8646797E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->TRANSITION_PATH_ROTATE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_8

    const-string v1, "ff9ff9"

    const/16 v2, 0x3c4d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->TRANSLATION_X:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_9

    const-string v1, "f605e2"

    const-wide v2, -0x3e2ff8c1cb400000L    # -1.075640531E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->TRANSLATION_Y:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "de62ea"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->VISIBILITY:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x5ft
        0x14t
        0x59t
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x21t
        0x6dt
        0x67t
        0x60t
        0x79t
        0x28t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5ct
        0xft
        0x6t
        0x41t
        0x54t
        0x46t
        0x50t
        0xct
        0xdt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x43t
        0x5ft
        0x11t
        0x59t
        0x46t
        0xdt
        0x5et
        0x5et
        0x3ft
    .end array-data

    nop

    :array_4
    .array-data 1
        0x42t
        0x57t
        0x12t
        0x5t
        0x16t
        0xbt
        0x5ft
        0x56t
        0x3et
    .end array-data

    nop

    :array_5
    .array-data 1
        0x45t
        0x5at
        0x7t
        0x5dt
        0x56t
        0x3at
    .end array-data

    nop

    :array_6
    .array-data 1
        0x44t
        0x5bt
        0x55t
        0x5ct
        0x53t
        0x69t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x44t
        0x4bt
        0x50t
        0x5at
        0x44t
        0x5dt
        0x44t
        0x50t
        0x5et
        0x5at
        0x67t
        0x55t
        0x44t
        0x51t
        0x63t
        0x5bt
        0x43t
        0x55t
        0x44t
        0x5ct
    .end array-data

    :array_8
    .array-data 1
        0x12t
        0x14t
        0x58t
        0x8t
        0x15t
        0x55t
        0x7t
        0x12t
        0x50t
        0x9t
        0x8t
        0x61t
    .end array-data

    :array_9
    .array-data 1
        0x12t
        0x44t
        0x51t
        0x5bt
        0x16t
        0x5et
        0x7t
        0x42t
        0x59t
        0x5at
        0xbt
        0x6bt
    .end array-data

    :array_a
    .array-data 1
        0x12t
        0xct
        0x45t
        0x5bt
        0x7t
        0x8t
        0x8t
        0xct
        0x42t
        0x4bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addValues(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    return-object p0
.end method

.method public abstract getAttributeNames(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public getFramePosition()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCustomAttribute(Ljava/lang/String;IF)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IZ)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFramePosition(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setValue(IF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setValue(II)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setViewId(I)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    return-object p0
.end method

.method toBoolean(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method toFloat(Ljava/lang/Object;)F
    .locals 1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method toInt(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
