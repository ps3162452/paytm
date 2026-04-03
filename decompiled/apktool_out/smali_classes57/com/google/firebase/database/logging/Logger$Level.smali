.class public final enum Lcom/google/firebase/database/logging/Logger$Level;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/logging/Logger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/logging/Logger$Level;

.field public static final enum DEBUG:Lcom/google/firebase/database/logging/Logger$Level;

.field public static final enum ERROR:Lcom/google/firebase/database/logging/Logger$Level;

.field public static final enum INFO:Lcom/google/firebase/database/logging/Logger$Level;

.field public static final enum NONE:Lcom/google/firebase/database/logging/Logger$Level;

.field public static final enum WARN:Lcom/google/firebase/database/logging/Logger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v7, 0x4

    new-instance v0, Lcom/google/firebase/database/logging/Logger$Level;

    new-array v1, v11, [B

    fill-array-data v1, :array_0

    const-string v2, "619776"

    invoke-static {v1, v2, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Lcom/google/firebase/database/logging/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/logging/Logger$Level;->DEBUG:Lcom/google/firebase/database/logging/Logger$Level;

    new-instance v1, Lcom/google/firebase/database/logging/Logger$Level;

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "def767"

    const-wide/32 v4, -0x53d6a7f1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/google/firebase/database/logging/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/logging/Logger$Level;->INFO:Lcom/google/firebase/database/logging/Logger$Level;

    new-instance v2, Lcom/google/firebase/database/logging/Logger$Level;

    new-array v3, v7, [B

    fill-array-data v3, :array_2

    const-string v4, "ae7f66"

    const v5, -0x315b7545

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v13}, Lcom/google/firebase/database/logging/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/database/logging/Logger$Level;->WARN:Lcom/google/firebase/database/logging/Logger$Level;

    new-instance v3, Lcom/google/firebase/database/logging/Logger$Level;

    new-array v4, v11, [B

    fill-array-data v4, :array_3

    const-string v5, "b569da"

    invoke-static {v4, v5, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/database/logging/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/logging/Logger$Level;->ERROR:Lcom/google/firebase/database/logging/Logger$Level;

    new-instance v4, Lcom/google/firebase/database/logging/Logger$Level;

    new-array v5, v7, [B

    fill-array-data v5, :array_4

    const-string v6, "35264d"

    const-wide/32 v8, -0x7362eed1

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Lcom/google/firebase/database/logging/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/firebase/database/logging/Logger$Level;->NONE:Lcom/google/firebase/database/logging/Logger$Level;

    new-array v5, v11, [Lcom/google/firebase/database/logging/Logger$Level;

    aput-object v0, v5, v12

    aput-object v1, v5, v10

    aput-object v2, v5, v13

    const/4 v0, 0x3

    aput-object v3, v5, v0

    aput-object v4, v5, v7

    sput-object v5, Lcom/google/firebase/database/logging/Logger$Level;->$VALUES:[Lcom/google/firebase/database/logging/Logger$Level;

    return-void

    nop

    :array_0
    .array-data 1
        0x72t
        0x74t
        0x7bt
        0x62t
        0x70t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2dt
        0x2bt
        0x20t
        0x78t
    .end array-data

    :array_2
    .array-data 1
        0x36t
        0x24t
        0x65t
        0x28t
    .end array-data

    :array_3
    .array-data 1
        0x27t
        0x67t
        0x64t
        0x76t
        0x36t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x7dt
        0x7at
        0x7ct
        0x73t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/logging/Logger$Level;
    .locals 1

    const-class v0, Lcom/google/firebase/database/logging/Logger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/logging/Logger$Level;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/logging/Logger$Level;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/logging/Logger$Level;->$VALUES:[Lcom/google/firebase/database/logging/Logger$Level;

    invoke-virtual {v0}, [Lcom/google/firebase/database/logging/Logger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/logging/Logger$Level;

    return-object v0
.end method
