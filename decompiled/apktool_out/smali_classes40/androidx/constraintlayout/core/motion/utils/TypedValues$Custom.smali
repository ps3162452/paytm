.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Custom"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String;

.field public static final S_BOOLEAN:Ljava/lang/String;

.field public static final S_COLOR:Ljava/lang/String;

.field public static final S_DIMENSION:Ljava/lang/String;

.field public static final S_FLOAT:Ljava/lang/String;

.field public static final S_INT:Ljava/lang/String;

.field public static final S_REFERENCE:Ljava/lang/String;

.field public static final S_STRING:Ljava/lang/String;

.field public static final TYPE_BOOLEAN:I = 0x388

.field public static final TYPE_COLOR:I = 0x386

.field public static final TYPE_DIMENSION:I = 0x389

.field public static final TYPE_FLOAT:I = 0x385

.field public static final TYPE_INT:I = 0x384

.field public static final TYPE_REFERENCE:I = 0x38a

.field public static final TYPE_STRING:I = 0x387


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    const-string v1, "0bd737"

    const-wide/32 v2, -0x19ae5e21

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->NAME:Ljava/lang/String;

    new-array v0, v10, [B

    fill-array-data v0, :array_1

    const-string v1, "e0f74a"

    const-wide/32 v2, 0x28679302

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->S_BOOLEAN:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "2d5b46"

    const-wide/32 v2, -0x23e4708e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->S_COLOR:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "1743aa"

    invoke-static {v0, v1, v6, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->S_DIMENSION:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_4

    const-string v1, "ca685a"

    const/16 v2, -0x2136

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->S_FLOAT:Ljava/lang/String;

    new-array v0, v10, [B

    fill-array-data v0, :array_5

    const-string v1, "b4e0ad"

    invoke-static {v0, v1, v6, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->S_INT:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "f12e48"

    const v2, -0x311d4ac7

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->S_REFERENCE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_7

    const-string v1, "923812"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->S_STRING:Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v7, [B

    fill-array-data v1, :array_8

    const-string v2, "278e6c"

    const-wide v4, -0x3e41a76919000000L    # -5.09122279E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    new-array v1, v7, [B

    fill-array-data v1, :array_9

    const-string v2, "17a192"

    const/16 v3, -0x7319

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v8, [B

    fill-array-data v2, :array_a

    const-string v3, "38bd69"

    const-wide/32 v4, -0x76ebc88e

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v10, [B

    fill-array-data v2, :array_b

    const-string v3, "1c5459"

    const-wide v4, 0x41d1f5da42800000L    # 1.205299466E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_c

    const-string v3, "aa4d22"

    const-wide v4, 0x41896e4d68000000L    # 5.3332397E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v2, "85e30b"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->KEY_WORDS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x73t
        0x17t
        0x17t
        0x43t
        0x5ct
        0x5at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7t
        0x5ft
        0x9t
        0x5bt
        0x51t
        0x0t
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x51t
        0xbt
        0x59t
        0xdt
        0x46t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x55t
        0x5et
        0x59t
        0x56t
        0xft
        0x12t
        0x58t
        0x58t
        0x5at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5t
        0xdt
        0x59t
        0x59t
        0x41t
    .end array-data

    nop

    :array_5
    .array-data 1
        0xbt
        0x5at
        0x11t
        0x55t
        0x6t
        0x1t
        0x10t
    .end array-data

    :array_6
    .array-data 1
        0x14t
        0x54t
        0x54t
        0x17t
        0x51t
        0x56t
        0x5t
        0x54t
    .end array-data

    :array_7
    .array-data 1
        0x4at
        0x46t
        0x41t
        0x51t
        0x5ft
        0x55t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x54t
        0x5bt
        0x57t
        0x4t
        0x42t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x52t
        0x58t
        0xdt
        0x5et
        0x4bt
    .end array-data

    nop

    :array_a
    .array-data 1
        0x40t
        0x4ct
        0x10t
        0xdt
        0x58t
        0x5et
    .end array-data

    nop

    :array_b
    .array-data 1
        0x53t
        0xct
        0x5at
        0x58t
        0x50t
        0x58t
        0x5ft
    .end array-data

    :array_c
    .array-data 1
        0x5t
        0x8t
        0x59t
        0x1t
        0x5ct
        0x41t
        0x8t
        0xet
        0x5at
    .end array-data

    nop

    :array_d
    .array-data 1
        0x4at
        0x50t
        0x3t
        0x41t
        0x55t
        0xct
        0x5bt
        0x50t
    .end array-data
.end method
