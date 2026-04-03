.class public final enum Landroidx/constraintlayout/core/state/State$Direction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/core/state/State$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum BOTTOM:Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum END:Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum LEFT:Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum START:Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum TOP:Landroidx/constraintlayout/core/state/State$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Landroidx/constraintlayout/core/state/State$Direction;

    new-array v1, v12, [B

    fill-array-data v1, :array_0

    const-string v2, "c4ae32"

    invoke-static {v1, v2, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    new-instance v1, Landroidx/constraintlayout/core/state/State$Direction;

    new-array v2, v11, [B

    fill-array-data v2, :array_1

    const-string v3, "047b12"

    const-wide/32 v4, 0x38f4d19

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    new-instance v2, Landroidx/constraintlayout/core/state/State$Direction;

    new-array v3, v11, [B

    fill-array-data v3, :array_2

    const-string v4, "b87d36"

    const/16 v5, -0x65f7

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/core/state/State$Direction;->START:Landroidx/constraintlayout/core/state/State$Direction;

    new-instance v3, Landroidx/constraintlayout/core/state/State$Direction;

    new-array v4, v10, [B

    fill-array-data v4, :array_3

    const-string v5, "481bbe"

    invoke-static {v4, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/core/state/State$Direction;->END:Landroidx/constraintlayout/core/state/State$Direction;

    new-instance v4, Landroidx/constraintlayout/core/state/State$Direction;

    new-array v5, v10, [B

    fill-array-data v5, :array_4

    const-string v6, "06daa1"

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v12}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/constraintlayout/core/state/State$Direction;->TOP:Landroidx/constraintlayout/core/state/State$Direction;

    new-instance v5, Landroidx/constraintlayout/core/state/State$Direction;

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    const-string v7, "1d4748"

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v11}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/constraintlayout/core/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/core/state/State$Direction;

    const/4 v6, 0x6

    new-array v6, v6, [Landroidx/constraintlayout/core/state/State$Direction;

    aput-object v0, v6, v9

    aput-object v1, v6, v8

    const/4 v0, 0x2

    aput-object v2, v6, v0

    aput-object v3, v6, v10

    aput-object v4, v6, v12

    aput-object v5, v6, v11

    sput-object v6, Landroidx/constraintlayout/core/state/State$Direction;->$VALUES:[Landroidx/constraintlayout/core/state/State$Direction;

    return-void

    nop

    :array_0
    .array-data 1
        0x2ft
        0x71t
        0x27t
        0x31t
    .end array-data

    :array_1
    .array-data 1
        0x62t
        0x7dt
        0x70t
        0x2at
        0x65t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x31t
        0x6ct
        0x76t
        0x36t
        0x67t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x71t
        0x76t
        0x75t
    .end array-data

    :array_4
    .array-data 1
        0x64t
        0x79t
        0x34t
    .end array-data

    :array_5
    .array-data 1
        0x73t
        0x2bt
        0x60t
        0x63t
        0x7bt
        0x75t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/State$Direction;
    .locals 1

    const-class v0, Landroidx/constraintlayout/core/state/State$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/State$Direction;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/State$Direction;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/state/State$Direction;->$VALUES:[Landroidx/constraintlayout/core/state/State$Direction;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/State$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/state/State$Direction;

    return-object v0
.end method
