.class public final enum Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DimensionBehaviour"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public static final enum FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public static final enum MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public static final enum MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public static final enum WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v6, 0xc

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "250e8c"

    const-wide v4, 0x41907a56c0000000L    # 6.9113264E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    new-instance v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "0e10ba"

    const-wide/32 v4, 0x4a943282

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    new-instance v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "e24bc2"

    const v5, 0x4d9f6af3    # 3.343233E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    new-array v4, v6, [B

    fill-array-data v4, :array_3

    const-string v5, "8f0c1e"

    const v6, 0x4ef6919e

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x4

    new-array v4, v4, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    aput-object v3, v4, v10

    sput-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->$VALUES:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x7ct
        0x68t
        0x20t
        0x7ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x67t
        0x37t
        0x70t
        0x60t
        0x3dt
        0x22t
        0x7ft
        0x2bt
        0x65t
        0x75t
        0x2ct
        0x35t
    .end array-data

    :array_2
    .array-data 1
        0x28t
        0x73t
        0x60t
        0x21t
        0x2bt
        0x6dt
        0x26t
        0x7dt
        0x7at
        0x31t
        0x37t
        0x60t
        0x24t
        0x7bt
        0x7at
        0x36t
    .end array-data

    :array_3
    .array-data 1
        0x75t
        0x27t
        0x64t
        0x20t
        0x79t
        0x3at
        0x68t
        0x27t
        0x62t
        0x26t
        0x7ft
        0x31t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    const-class v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->$VALUES:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    return-object v0
.end method
