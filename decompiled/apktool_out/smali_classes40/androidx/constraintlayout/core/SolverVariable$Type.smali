.class public final enum Landroidx/constraintlayout/core/SolverVariable$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/core/SolverVariable$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum CONSTANT:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Landroidx/constraintlayout/core/SolverVariable$Type;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "26ca2b"

    const-wide/32 v4, -0x2ebca2f9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    new-instance v1, Landroidx/constraintlayout/core/SolverVariable$Type;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "95f9f5"

    const-wide v4, 0x41c330578e000000L    # 6.43870492E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->CONSTANT:Landroidx/constraintlayout/core/SolverVariable$Type;

    new-instance v2, Landroidx/constraintlayout/core/SolverVariable$Type;

    new-array v3, v10, [B

    fill-array-data v3, :array_2

    const-string v4, "a56cac"

    invoke-static {v3, v4, v9, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    new-instance v3, Landroidx/constraintlayout/core/SolverVariable$Type;

    new-array v4, v10, [B

    fill-array-data v4, :array_3

    const-string v5, "4840c6"

    const-wide v6, 0x41d299c1ac400000L    # 1.248265905E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v12}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    new-instance v4, Landroidx/constraintlayout/core/SolverVariable$Type;

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "f30274"

    invoke-static {v5, v6, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/constraintlayout/core/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

    new-array v5, v10, [Landroidx/constraintlayout/core/SolverVariable$Type;

    aput-object v0, v5, v9

    aput-object v1, v5, v8

    aput-object v2, v5, v11

    aput-object v3, v5, v12

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sput-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/core/SolverVariable$Type;

    return-void

    :array_0
    .array-data 1
        0x67t
        0x78t
        0x31t
        0x24t
        0x61t
        0x36t
        0x60t
        0x7ft
        0x20t
        0x35t
        0x77t
        0x26t
    .end array-data

    :array_1
    .array-data 1
        0x7at
        0x7at
        0x28t
        0x6at
        0x32t
        0x74t
        0x77t
        0x61t
    .end array-data

    :array_2
    .array-data 1
        0x32t
        0x79t
        0x77t
        0x20t
        0x2at
    .end array-data

    nop

    :array_3
    .array-data 1
        0x71t
        0x6at
        0x66t
        0x7ft
        0x31t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x33t
        0x7dt
        0x7bt
        0x7ct
        0x78t
        0x63t
        0x28t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable$Type;
    .locals 1

    const-class v0, Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/SolverVariable$Type;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/SolverVariable$Type;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/SolverVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable$Type;

    return-object v0
.end method
