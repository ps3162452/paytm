.class public final enum Lcom/google/firebase/database/Logger$Level;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/Logger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/Logger$Level;

.field public static final enum DEBUG:Lcom/google/firebase/database/Logger$Level;

.field public static final enum ERROR:Lcom/google/firebase/database/Logger$Level;

.field public static final enum INFO:Lcom/google/firebase/database/Logger$Level;

.field public static final enum NONE:Lcom/google/firebase/database/Logger$Level;

.field public static final enum WARN:Lcom/google/firebase/database/Logger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x5

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x4

    new-instance v0, Lcom/google/firebase/database/Logger$Level;

    new-array v1, v13, [B

    fill-array-data v1, :array_0

    const-string v2, "f01f92"

    const-wide/32 v4, 0x4fe20062

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Lcom/google/firebase/database/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/Logger$Level;->DEBUG:Lcom/google/firebase/database/Logger$Level;

    new-instance v1, Lcom/google/firebase/database/Logger$Level;

    new-array v2, v10, [B

    fill-array-data v2, :array_1

    const-string v3, "a3a469"

    invoke-static {v2, v3, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lcom/google/firebase/database/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/Logger$Level;->INFO:Lcom/google/firebase/database/Logger$Level;

    new-instance v2, Lcom/google/firebase/database/Logger$Level;

    new-array v3, v10, [B

    fill-array-data v3, :array_2

    const-string v4, "ef0a88"

    invoke-static {v3, v4, v12, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v14}, Lcom/google/firebase/database/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/database/Logger$Level;->WARN:Lcom/google/firebase/database/Logger$Level;

    new-instance v3, Lcom/google/firebase/database/Logger$Level;

    new-array v4, v13, [B

    fill-array-data v4, :array_3

    const-string v5, "70ed93"

    const-wide v6, -0x3e3e927f36800000L    # -5.84778131E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/database/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/Logger$Level;->ERROR:Lcom/google/firebase/database/Logger$Level;

    new-instance v4, Lcom/google/firebase/database/Logger$Level;

    new-array v5, v10, [B

    fill-array-data v5, :array_4

    const-string v6, "c62fe6"

    const-wide/32 v8, 0x110a88fe

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Lcom/google/firebase/database/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/firebase/database/Logger$Level;->NONE:Lcom/google/firebase/database/Logger$Level;

    new-array v5, v13, [Lcom/google/firebase/database/Logger$Level;

    aput-object v0, v5, v12

    aput-object v1, v5, v11

    aput-object v2, v5, v14

    const/4 v0, 0x3

    aput-object v3, v5, v0

    aput-object v4, v5, v10

    sput-object v5, Lcom/google/firebase/database/Logger$Level;->$VALUES:[Lcom/google/firebase/database/Logger$Level;

    return-void

    nop

    :array_0
    .array-data 1
        0x22t
        0x75t
        0x73t
        0x33t
        0x7et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x28t
        0x7dt
        0x27t
        0x7bt
    .end array-data

    :array_2
    .array-data 1
        0x32t
        0x27t
        0x62t
        0x2ft
    .end array-data

    :array_3
    .array-data 1
        0x72t
        0x62t
        0x37t
        0x2bt
        0x6bt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x2dt
        0x79t
        0x7ct
        0x23t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/Logger$Level;
    .locals 1

    const-class v0, Lcom/google/firebase/database/Logger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/Logger$Level;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/Logger$Level;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/Logger$Level;->$VALUES:[Lcom/google/firebase/database/Logger$Level;

    invoke-virtual {v0}, [Lcom/google/firebase/database/Logger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/Logger$Level;

    return-object v0
.end method
