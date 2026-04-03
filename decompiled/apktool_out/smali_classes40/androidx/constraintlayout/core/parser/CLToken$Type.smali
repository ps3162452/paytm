.class final enum Landroidx/constraintlayout/core/parser/CLToken$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/parser/CLToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/core/parser/CLToken$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/core/parser/CLToken$Type;

.field public static final enum FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

.field public static final enum NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

.field public static final enum TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Landroidx/constraintlayout/core/parser/CLToken$Type;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2f581b"

    invoke-static {v1, v2, v9, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroidx/constraintlayout/core/parser/CLToken$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;

    new-instance v1, Landroidx/constraintlayout/core/parser/CLToken$Type;

    new-array v2, v10, [B

    fill-array-data v2, :array_1

    const-string v3, "70602a"

    invoke-static {v2, v3, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Landroidx/constraintlayout/core/parser/CLToken$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    new-instance v2, Landroidx/constraintlayout/core/parser/CLToken$Type;

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "c58115"

    const/16 v5, -0x3d79

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Landroidx/constraintlayout/core/parser/CLToken$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    new-instance v3, Landroidx/constraintlayout/core/parser/CLToken$Type;

    new-array v4, v10, [B

    fill-array-data v4, :array_3

    const-string v5, "bf47d1"

    const-wide/32 v6, -0x4fbc2e84

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v12}, Landroidx/constraintlayout/core/parser/CLToken$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

    new-array v4, v10, [Landroidx/constraintlayout/core/parser/CLToken$Type;

    aput-object v0, v4, v9

    aput-object v1, v4, v8

    aput-object v2, v4, v11

    aput-object v3, v4, v12

    sput-object v4, Landroidx/constraintlayout/core/parser/CLToken$Type;->$VALUES:[Landroidx/constraintlayout/core/parser/CLToken$Type;

    return-void

    nop

    :array_0
    .array-data 1
        0x67t
        0x28t
        0x7et
        0x76t
        0x7et
        0x35t
        0x7ct
    .end array-data

    :array_1
    .array-data 1
        0x63t
        0x62t
        0x63t
        0x75t
    .end array-data

    :array_2
    .array-data 1
        0x25t
        0x74t
        0x74t
        0x62t
        0x74t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2ct
        0x33t
        0x78t
        0x7bt
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLToken$Type;
    .locals 1

    const-class v0, Landroidx/constraintlayout/core/parser/CLToken$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLToken$Type;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/parser/CLToken$Type;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->$VALUES:[Landroidx/constraintlayout/core/parser/CLToken$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/parser/CLToken$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/parser/CLToken$Type;

    return-object v0
.end method
