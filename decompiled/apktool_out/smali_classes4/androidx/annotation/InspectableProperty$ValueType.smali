.class public final enum Landroidx/annotation/InspectableProperty$ValueType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/InspectableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/annotation/InspectableProperty$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum COLOR:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum GRAVITY:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum INFERRED:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum INT_ENUM:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum INT_FLAG:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum NONE:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final enum RESOURCE_ID:Landroidx/annotation/InspectableProperty$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v6, 0x8

    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    new-instance v0, Landroidx/annotation/InspectableProperty$ValueType;

    new-array v1, v12, [B

    fill-array-data v1, :array_0

    const-string v2, "aeff72"

    invoke-static {v1, v2, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$ValueType;->NONE:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v1, Landroidx/annotation/InspectableProperty$ValueType;

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "8d03c3"

    const-wide v4, 0x41bebd12e2000000L    # 5.15707618E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/annotation/InspectableProperty$ValueType;->INFERRED:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v2, Landroidx/annotation/InspectableProperty$ValueType;

    new-array v3, v6, [B

    fill-array-data v3, :array_2

    const-string v4, "e52c2e"

    const/16 v5, -0x3010

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/annotation/InspectableProperty$ValueType;->INT_ENUM:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v3, Landroidx/annotation/InspectableProperty$ValueType;

    new-array v4, v6, [B

    fill-array-data v4, :array_3

    const-string v5, "230c78"

    invoke-static {v4, v5, v10, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/annotation/InspectableProperty$ValueType;->INT_FLAG:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v4, Landroidx/annotation/InspectableProperty$ValueType;

    new-array v5, v13, [B

    fill-array-data v5, :array_4

    const-string v6, "6494a3"

    const-wide/32 v8, -0x2b6057e1

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v12}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/annotation/InspectableProperty$ValueType;->COLOR:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v5, Landroidx/annotation/InspectableProperty$ValueType;

    const/4 v6, 0x7

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    const-string v7, "2d728d"

    const-wide v8, -0x3e4ffdf0cd000000L    # -2.68570419E8

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/annotation/InspectableProperty$ValueType;->GRAVITY:Landroidx/annotation/InspectableProperty$ValueType;

    new-instance v6, Landroidx/annotation/InspectableProperty$ValueType;

    const/16 v7, 0xb

    new-array v7, v7, [B

    fill-array-data v7, :array_6

    const-string v8, "ec472d"

    const v9, -0x31b8debf

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/annotation/InspectableProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/annotation/InspectableProperty$ValueType;->RESOURCE_ID:Landroidx/annotation/InspectableProperty$ValueType;

    const/4 v7, 0x7

    new-array v7, v7, [Landroidx/annotation/InspectableProperty$ValueType;

    aput-object v0, v7, v11

    aput-object v1, v7, v10

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    aput-object v4, v7, v12

    aput-object v5, v7, v13

    const/4 v0, 0x6

    aput-object v6, v7, v0

    sput-object v7, Landroidx/annotation/InspectableProperty$ValueType;->$VALUES:[Landroidx/annotation/InspectableProperty$ValueType;

    return-void

    nop

    :array_0
    .array-data 1
        0x2ft
        0x2at
        0x28t
        0x23t
    .end array-data

    :array_1
    .array-data 1
        0x71t
        0x2at
        0x76t
        0x76t
        0x31t
        0x61t
        0x7dt
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x2ct
        0x7bt
        0x66t
        0x3ct
        0x77t
        0x2bt
        0x30t
        0x78t
    .end array-data

    :array_3
    .array-data 1
        0x7bt
        0x7dt
        0x64t
        0x3ct
        0x71t
        0x74t
        0x73t
        0x74t
    .end array-data

    :array_4
    .array-data 1
        0x75t
        0x7bt
        0x75t
        0x7bt
        0x33t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x75t
        0x36t
        0x76t
        0x64t
        0x71t
        0x30t
        0x6bt
    .end array-data

    :array_6
    .array-data 1
        0x37t
        0x26t
        0x67t
        0x78t
        0x67t
        0x36t
        0x26t
        0x26t
        0x6bt
        0x7et
        0x76t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/InspectableProperty$ValueType;
    .locals 1

    const-class v0, Landroidx/annotation/InspectableProperty$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/annotation/InspectableProperty$ValueType;

    return-object v0
.end method

.method public static values()[Landroidx/annotation/InspectableProperty$ValueType;
    .locals 1

    sget-object v0, Landroidx/annotation/InspectableProperty$ValueType;->$VALUES:[Landroidx/annotation/InspectableProperty$ValueType;

    invoke-virtual {v0}, [Landroidx/annotation/InspectableProperty$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/InspectableProperty$ValueType;

    return-object v0
.end method
