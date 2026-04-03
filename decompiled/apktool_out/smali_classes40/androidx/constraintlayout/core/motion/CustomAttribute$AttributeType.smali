.class public final enum Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/CustomAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum BOOLEAN_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum COLOR_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum DIMENSION_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum FLOAT_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum INT_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum REFERENCE_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum STRING_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2933da"

    const-wide v4, -0x3e2354ead4400000L    # -1.923896495E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    new-instance v1, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "7a0a9f"

    const-wide v4, 0x41d066fa0a400000L    # 1.100736553E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    new-instance v2, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "849c83"

    const/16 v5, -0x3253

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    new-instance v3, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    const/16 v4, 0x13

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "9367e7"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    new-instance v4, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "9d50e5"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    new-instance v5, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    const/16 v6, 0xc

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    const-string v7, "97e67c"

    const/16 v8, -0x219f

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    new-instance v6, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    const/16 v7, 0xe

    new-array v7, v7, [B

    fill-array-data v7, :array_6

    const-string v8, "66e86e"

    const-wide/32 v10, -0x770bc3b6

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    new-instance v7, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    const/16 v8, 0xe

    new-array v8, v8, [B

    fill-array-data v8, :array_7

    const-string v9, "4050f6"

    const v10, 0x4d790712    # 2.6112438E8f

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    const/16 v8, 0x8

    new-array v8, v8, [Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

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

    sput-object v8, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    return-void

    nop

    :array_0
    .array-data 1
        0x7bt
        0x77t
        0x67t
        0x6ct
        0x30t
        0x38t
        0x62t
        0x7ct
    .end array-data

    :array_1
    .array-data 1
        0x71t
        0x2dt
        0x7ft
        0x20t
        0x6dt
        0x39t
        0x63t
        0x38t
        0x60t
        0x24t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7bt
        0x7bt
        0x75t
        0x2ct
        0x6at
        0x6ct
        0x6ct
        0x6dt
        0x69t
        0x26t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7at
        0x7ct
        0x7at
        0x78t
        0x37t
        0x68t
        0x7dt
        0x61t
        0x77t
        0x60t
        0x24t
        0x75t
        0x75t
        0x76t
        0x69t
        0x63t
        0x3ct
        0x67t
        0x7ct
    .end array-data

    :array_4
    .array-data 1
        0x6at
        0x30t
        0x67t
        0x79t
        0x2bt
        0x72t
        0x66t
        0x30t
        0x6ct
        0x60t
        0x20t
    .end array-data

    :array_5
    .array-data 1
        0x7bt
        0x78t
        0x2at
        0x7at
        0x72t
        0x22t
        0x77t
        0x68t
        0x31t
        0x6ft
        0x67t
        0x26t
    .end array-data

    :array_6
    .array-data 1
        0x72t
        0x7ft
        0x28t
        0x7dt
        0x78t
        0x36t
        0x7ft
        0x79t
        0x2bt
        0x67t
        0x62t
        0x3ct
        0x66t
        0x73t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x66t
        0x75t
        0x73t
        0x75t
        0x34t
        0x73t
        0x7at
        0x73t
        0x70t
        0x6ft
        0x32t
        0x6ft
        0x64t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    .locals 1

    const-class v0, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    return-object v0
.end method
