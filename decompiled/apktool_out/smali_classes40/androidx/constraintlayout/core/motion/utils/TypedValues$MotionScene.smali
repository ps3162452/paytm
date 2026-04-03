.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionScene"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String;

.field public static final S_DEFAULT_DURATION:Ljava/lang/String;

.field public static final S_LAYOUT_DURING_TRANSITION:Ljava/lang/String;

.field public static final TYPE_DEFAULT_DURATION:I = 0x258

.field public static final TYPE_LAYOUT_DURING_TRANSITION:I = 0x259


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x16

    const/16 v4, 0xf

    const/4 v6, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "545f09"

    const-wide v2, -0x3e335dfb21800000L    # -9.60760253E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;->NAME:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "65c620"

    const-wide v2, 0x41c1a1b2f0800000L    # 5.91619553E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;->S_DEFAULT_DURATION:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "9391c2"

    const/16 v2, -0x786c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;->S_LAYOUT_DURING_TRANSITION:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v4, [B

    fill-array-data v1, :array_3

    const-string v2, "18b49a"

    const-wide v4, -0x3e2a02e1a7400000L    # -1.475639651E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-array v2, v7, [B

    fill-array-data v2, :array_4

    const-string v3, "20395d"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;->KEY_WORDS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x78t
        0x5bt
        0x41t
        0xft
        0x5ft
        0x57t
        0x66t
        0x57t
        0x50t
        0x8t
        0x55t
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0x50t
        0x5t
        0x57t
        0x47t
        0x5ct
        0x42t
        0x71t
        0x16t
        0x44t
        0x53t
        0x44t
        0x5ft
        0x5at
        0xdt
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x52t
        0x40t
        0x5et
        0x16t
        0x46t
        0x7dt
        0x46t
        0x4bt
        0x58t
        0xdt
        0x55t
        0x6dt
        0x41t
        0x58t
        0x5ft
        0x10t
        0x5bt
        0x4dt
        0x5at
        0x56t
        0x5ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x55t
        0x5dt
        0x4t
        0x55t
        0x4ct
        0xdt
        0x45t
        0x7ct
        0x17t
        0x46t
        0x58t
        0x15t
        0x58t
        0x57t
        0xct
    .end array-data

    :array_4
    .array-data 1
        0x5et
        0x51t
        0x4at
        0x56t
        0x40t
        0x10t
        0x76t
        0x45t
        0x41t
        0x50t
        0x5bt
        0x3t
        0x66t
        0x42t
        0x52t
        0x57t
        0x46t
        0xdt
        0x46t
        0x59t
        0x5ct
        0x57t
    .end array-data
.end method
