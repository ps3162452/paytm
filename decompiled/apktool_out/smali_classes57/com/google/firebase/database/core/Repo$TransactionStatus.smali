.class final enum Lcom/google/firebase/database/core/Repo$TransactionStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/Repo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TransactionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/core/Repo$TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum INITIALIZING:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum SENT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x3

    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1c86a2"

    const-wide v4, -0x3e2e8f208ec00000L    # -1.170439621E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->INITIALIZING:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    new-instance v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    new-array v2, v9, [B

    fill-array-data v2, :array_1

    const-string v3, "3a6f98"

    const v4, 0x4e99139b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v12}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    new-instance v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    new-array v3, v10, [B

    fill-array-data v3, :array_2

    const-string v4, "927f41"

    const-wide/32 v6, -0x4ef20875

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v13}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    new-instance v3, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const/16 v4, 0x9

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "9fbd99"

    const v6, -0x32285668

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/core/Repo$TransactionStatus;->COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    new-instance v4, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const/16 v5, 0x10

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "ab342a"

    const v7, -0x31c1629a

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    new-instance v5, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const/16 v6, 0xb

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    const-string v7, "bc0963"

    const/16 v8, 0x4796

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v0, v6, v11

    aput-object v1, v6, v12

    aput-object v2, v6, v13

    aput-object v3, v6, v9

    aput-object v4, v6, v10

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lcom/google/firebase/database/core/Repo$TransactionStatus;->$VALUES:[Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-void

    :array_0
    .array-data 1
        0x78t
        0x2dt
        0x71t
        0x62t
        0x28t
        0x73t
        0x7dt
        0x2at
        0x62t
        0x7ft
        0x2ft
        0x75t
    .end array-data

    :array_1
    .array-data 1
        0x61t
        0x34t
        0x78t
    .end array-data

    :array_2
    .array-data 1
        0x6at
        0x77t
        0x79t
        0x32t
    .end array-data

    :array_3
    .array-data 1
        0x7at
        0x29t
        0x2ft
        0x34t
        0x75t
        0x7ct
        0x6dt
        0x23t
        0x26t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x32t
        0x27t
        0x7dt
        0x60t
        0x6dt
        0x2ft
        0x24t
        0x27t
        0x77t
        0x67t
        0x6dt
        0x20t
        0x23t
        0x2dt
        0x61t
        0x60t
    .end array-data

    :array_5
    .array-data 1
        0x2ct
        0x26t
        0x75t
        0x7dt
        0x65t
        0x6ct
        0x23t
        0x21t
        0x7ft
        0x6bt
        0x62t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .locals 1

    const-class v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->$VALUES:[Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-virtual {v0}, [Lcom/google/firebase/database/core/Repo$TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-object v0
.end method
