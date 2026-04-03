.class public final enum Landroidx/constraintlayout/core/state/State$Helper;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/core/state/State$Helper;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum ALIGN_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum BARRIER:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum FLOW:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum LAYER:Landroidx/constraintlayout/core/state/State$Helper;

.field public static final enum VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Landroidx/constraintlayout/core/state/State$Helper;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "33b3ed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    new-instance v1, Landroidx/constraintlayout/core/state/State$Helper;

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "20d000"

    const-wide v4, 0x41ddc16f96400000L    # 1.996865113E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    new-instance v2, Landroidx/constraintlayout/core/state/State$Helper;

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "806a0e"

    const-wide/32 v6, -0x12d10a97

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Helper;

    new-instance v3, Landroidx/constraintlayout/core/state/State$Helper;

    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "a526b0"

    const/16 v6, -0x7393

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    new-instance v4, Landroidx/constraintlayout/core/state/State$Helper;

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "f19c47"

    const v7, 0x4e88844a

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/constraintlayout/core/state/State$Helper;->BARRIER:Landroidx/constraintlayout/core/state/State$Helper;

    new-instance v5, Landroidx/constraintlayout/core/state/State$Helper;

    const/4 v6, 0x5

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    const-string v7, "7d2e4d"

    const-wide/32 v8, 0x5c4d9b03

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/constraintlayout/core/state/State$Helper;->LAYER:Landroidx/constraintlayout/core/state/State$Helper;

    new-instance v6, Landroidx/constraintlayout/core/state/State$Helper;

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_6

    const-string v8, "47551b"

    const-wide v10, 0x41cb91a04e800000L    # 9.25057181E8

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/constraintlayout/core/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/constraintlayout/core/state/State$Helper;->FLOW:Landroidx/constraintlayout/core/state/State$Helper;

    const/4 v7, 0x7

    new-array v7, v7, [Landroidx/constraintlayout/core/state/State$Helper;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    sput-object v7, Landroidx/constraintlayout/core/state/State$Helper;->$VALUES:[Landroidx/constraintlayout/core/state/State$Helper;

    return-void

    nop

    :array_0
    .array-data 1
        0x7bt
        0x7ct
        0x30t
        0x7at
        0x3ft
        0x2bt
        0x7dt
        0x67t
        0x23t
        0x7ft
        0x3at
        0x27t
        0x7bt
        0x72t
        0x2bt
        0x7dt
    .end array-data

    :array_1
    .array-data 1
        0x64t
        0x75t
        0x36t
        0x64t
        0x79t
        0x73t
        0x73t
        0x7ct
        0x3bt
        0x73t
        0x78t
        0x71t
        0x7bt
        0x7et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x79t
        0x7ct
        0x7ft
        0x26t
        0x7et
        0x3at
        0x70t
        0x7ft
        0x64t
        0x28t
        0x6at
        0x2at
        0x76t
        0x64t
        0x77t
        0x2dt
        0x7ct
        0x3ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x20t
        0x79t
        0x7bt
        0x71t
        0x2ct
        0x6ft
        0x37t
        0x70t
        0x60t
        0x62t
        0x2bt
        0x73t
        0x20t
        0x79t
        0x7et
        0x6ft
    .end array-data

    :array_4
    .array-data 1
        0x24t
        0x70t
        0x6bt
        0x31t
        0x7dt
        0x72t
        0x34t
    .end array-data

    :array_5
    .array-data 1
        0x7bt
        0x25t
        0x6bt
        0x20t
        0x66t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x72t
        0x7bt
        0x7at
        0x62t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/State$Helper;
    .locals 1

    const-class v0, Landroidx/constraintlayout/core/state/State$Helper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/State$Helper;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/State$Helper;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->$VALUES:[Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/State$Helper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/state/State$Helper;

    return-object v0
.end method
