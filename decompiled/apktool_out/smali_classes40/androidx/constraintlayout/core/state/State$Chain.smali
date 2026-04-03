.class public final enum Landroidx/constraintlayout/core/state/State$Chain;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Chain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/core/state/State$Chain;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/core/state/State$Chain;

.field public static final enum PACKED:Landroidx/constraintlayout/core/state/State$Chain;

.field public static final enum SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

.field public static final enum SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v6, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Landroidx/constraintlayout/core/state/State$Chain;

    new-array v1, v6, [B

    fill-array-data v1, :array_0

    const-string v2, "97368c"

    const-wide v4, 0x41d85573c1800000L    # 1.63301351E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Landroidx/constraintlayout/core/state/State$Chain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    new-instance v1, Landroidx/constraintlayout/core/state/State$Chain;

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "a295b1"

    const/16 v4, -0x4d13

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Landroidx/constraintlayout/core/state/State$Chain;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;

    new-instance v2, Landroidx/constraintlayout/core/state/State$Chain;

    new-array v3, v6, [B

    fill-array-data v3, :array_2

    const-string v4, "aa517c"

    const-wide v6, -0x3e399d6688800000L    # -7.51121135E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v10}, Landroidx/constraintlayout/core/state/State$Chain;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/core/state/State$Chain;->PACKED:Landroidx/constraintlayout/core/state/State$Chain;

    const/4 v3, 0x3

    new-array v3, v3, [Landroidx/constraintlayout/core/state/State$Chain;

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    aput-object v2, v3, v10

    sput-object v3, Landroidx/constraintlayout/core/state/State$Chain;->$VALUES:[Landroidx/constraintlayout/core/state/State$Chain;

    return-void

    :array_0
    .array-data 1
        0x6at
        0x67t
        0x61t
        0x73t
        0x79t
        0x27t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x32t
        0x62t
        0x6bt
        0x70t
        0x23t
        0x75t
        0x3et
        0x7bt
        0x77t
        0x66t
        0x2bt
        0x75t
        0x24t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x31t
        0x20t
        0x76t
        0x7at
        0x72t
        0x27t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/State$Chain;
    .locals 1

    const-class v0, Landroidx/constraintlayout/core/state/State$Chain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/State$Chain;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/State$Chain;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Chain;->$VALUES:[Landroidx/constraintlayout/core/state/State$Chain;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/State$Chain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/state/State$Chain;

    return-object v0
.end method
