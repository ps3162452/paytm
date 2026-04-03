.class public final enum Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;


# direct methods
.method private static synthetic $values()[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v1, 0x0

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xe

    const/16 v3, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e8c4ec"

    const-wide v4, -0x3e2216658e400000L    # -2.007394759E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "a2a7a0"

    const-wide/32 v4, 0x78173717

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const-string v2, "678b4f"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "fe292f"

    const-wide v4, -0x3e52531906000000L    # -2.48935293E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "f7ea59"

    const/16 v3, -0x2f01

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "de8acf"

    const-wide v4, 0x41b550936c000000L    # 3.57602156E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-array v1, v8, [B

    fill-array-data v1, :array_6

    const-string v2, "069481"

    const v3, 0x4ea25f13

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-array v1, v8, [B

    fill-array-data v1, :array_7

    const-string v2, "288aea"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->$values()[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x76t
        0x37t
        0x6bt
        0x31t
        0x3at
        0x35t
        0x7dt
    .end array-data

    :array_1
    .array-data 1
        0x27t
        0x7et
        0x2et
        0x76t
        0x35t
        0x6ft
        0x35t
        0x6bt
        0x31t
        0x72t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x75t
        0x78t
        0x74t
        0x2dt
        0x66t
        0x39t
        0x62t
        0x6et
        0x68t
        0x27t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x25t
        0x2at
        0x7et
        0x76t
        0x60t
        0x39t
        0x22t
        0x37t
        0x73t
        0x6et
        0x73t
        0x24t
        0x2at
        0x20t
        0x6dt
        0x6dt
        0x6bt
        0x36t
        0x23t
    .end array-data

    :array_4
    .array-data 1
        0x35t
        0x63t
        0x37t
        0x28t
        0x7bt
        0x7et
        0x39t
        0x63t
        0x3ct
        0x31t
        0x70t
    .end array-data

    :array_5
    .array-data 1
        0x26t
        0x2at
        0x77t
        0x2dt
        0x26t
        0x27t
        0x2at
        0x3at
        0x6ct
        0x38t
        0x33t
        0x23t
    .end array-data

    :array_6
    .array-data 1
        0x74t
        0x7ft
        0x74t
        0x71t
        0x76t
        0x62t
        0x79t
        0x79t
        0x77t
        0x6bt
        0x6ct
        0x68t
        0x60t
        0x73t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x60t
        0x7dt
        0x7et
        0x24t
        0x37t
        0x24t
        0x7ct
        0x7bt
        0x7dt
        0x3et
        0x31t
        0x38t
        0x62t
        0x7dt
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 1

    const-class v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v0}, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-object v0
.end method
