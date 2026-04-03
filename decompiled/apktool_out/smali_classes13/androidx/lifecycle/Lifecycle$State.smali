.class public final enum Landroidx/lifecycle/Lifecycle$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/lifecycle/Lifecycle$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/lifecycle/Lifecycle$State;

.field public static final enum CREATED:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum DESTROYED:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum RESUMED:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum STARTED:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x7

    new-instance v0, Landroidx/lifecycle/Lifecycle$State;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5b938e"

    const-wide/32 v4, -0x4cc2c219

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v1, Landroidx/lifecycle/Lifecycle$State;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e87ed6"

    const-wide/32 v4, -0x1ce2d57d

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v2, Landroidx/lifecycle/Lifecycle$State;

    new-array v3, v8, [B

    fill-array-data v3, :array_2

    const-string v4, "c6f515"

    const-wide/32 v6, 0x42fde381

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v12}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v3, Landroidx/lifecycle/Lifecycle$State;

    new-array v4, v8, [B

    fill-array-data v4, :array_3

    const-string v5, "79dbca"

    const-wide v6, 0x41c6c7dfde800000L    # 7.64395453E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v4, Landroidx/lifecycle/Lifecycle$State;

    new-array v5, v8, [B

    fill-array-data v5, :array_4

    const-string v6, "623b86"

    const-wide/32 v8, -0x66172fc6

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    const/4 v5, 0x5

    new-array v5, v5, [Landroidx/lifecycle/Lifecycle$State;

    aput-object v0, v5, v10

    aput-object v1, v5, v11

    aput-object v2, v5, v12

    aput-object v3, v5, v13

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sput-object v5, Landroidx/lifecycle/Lifecycle$State;->$VALUES:[Landroidx/lifecycle/Lifecycle$State;

    return-void

    :array_0
    .array-data 1
        0x71t
        0x27t
        0x6at
        0x67t
        0x6at
        0x2at
        0x6ct
        0x27t
        0x7dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2ct
        0x76t
        0x7et
        0x31t
        0x2dt
        0x77t
        0x29t
        0x71t
        0x6dt
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x20t
        0x64t
        0x23t
        0x74t
        0x65t
        0x70t
        0x27t
    .end array-data

    :array_3
    .array-data 1
        0x64t
        0x6dt
        0x25t
        0x30t
        0x37t
        0x24t
        0x73t
    .end array-data

    :array_4
    .array-data 1
        0x64t
        0x77t
        0x60t
        0x37t
        0x75t
        0x73t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    const-class v0, Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public static values()[Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->$VALUES:[Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, [Landroidx/lifecycle/Lifecycle$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method


# virtual methods
.method public isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
