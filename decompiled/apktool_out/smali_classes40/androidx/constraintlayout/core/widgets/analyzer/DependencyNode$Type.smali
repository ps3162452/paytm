.class final enum Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

.field public static final enum BASELINE:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

.field public static final enum BOTTOM:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

.field public static final enum HORIZONTAL_DIMENSION:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

.field public static final enum LEFT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

.field public static final enum RIGHT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

.field public static final enum TOP:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

.field public static final enum VERTICAL_DIMENSION:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "950d88"

    const/16 v3, 0x66e2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->UNKNOWN:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    new-instance v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "a4549d"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "accfa7"

    const/16 v5, 0x4846

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "19b1d6"

    const v6, -0x325dbd86    # -3.402832E8f

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/4 v5, 0x5

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "12deae"

    const-wide/32 v8, 0x7c29808a

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/4 v6, 0x3

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    const-string v7, "828b24"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/4 v7, 0x6

    new-array v7, v7, [B

    fill-array-data v7, :array_6

    const-string v8, "6126f9"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    new-instance v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/16 v8, 0x8

    new-array v8, v8, [B

    fill-array-data v8, :array_7

    const-string v9, "d7e21c"

    const-wide v10, -0x3e4ac03f7f000000L    # -3.56499585E8

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/16 v8, 0x8

    new-array v8, v8, [Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v7, v8, v0

    sput-object v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->$VALUES:[Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    return-void

    :array_0
    .array-data 1
        0x6ct
        0x7bt
        0x7bt
        0x2at
        0x77t
        0x6ft
        0x77t
    .end array-data

    :array_1
    .array-data 1
        0x29t
        0x7bt
        0x67t
        0x7dt
        0x63t
        0x2bt
        0x2ft
        0x60t
        0x74t
        0x78t
        0x66t
        0x20t
        0x28t
        0x79t
        0x70t
        0x7at
        0x6at
        0x2dt
        0x2et
        0x7at
    .end array-data

    :array_2
    .array-data 1
        0x37t
        0x26t
        0x31t
        0x32t
        0x28t
        0x74t
        0x20t
        0x2ft
        0x3ct
        0x22t
        0x28t
        0x7at
        0x24t
        0x2dt
        0x30t
        0x2ft
        0x2et
        0x79t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7dt
        0x7ct
        0x24t
        0x65t
    .end array-data

    :array_4
    .array-data 1
        0x63t
        0x7bt
        0x23t
        0x2dt
        0x35t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x6ct
        0x7dt
        0x68t
    .end array-data

    :array_6
    .array-data 1
        0x74t
        0x7et
        0x66t
        0x62t
        0x29t
        0x74t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x26t
        0x76t
        0x36t
        0x77t
        0x7dt
        0x2at
        0x2at
        0x72t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;
    .locals 1

    const-class v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->$VALUES:[Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    return-object v0
.end method
