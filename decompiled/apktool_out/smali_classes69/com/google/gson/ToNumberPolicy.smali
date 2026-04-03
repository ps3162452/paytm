.class public abstract enum Lcom/google/gson/ToNumberPolicy;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/gson/ToNumberStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gson/ToNumberPolicy;",
        ">;",
        "Lcom/google/gson/ToNumberStrategy;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/gson/ToNumberPolicy;

.field public static final enum BIG_DECIMAL:Lcom/google/gson/ToNumberPolicy;

.field public static final enum DOUBLE:Lcom/google/gson/ToNumberPolicy;

.field public static final enum LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy;

.field public static final enum LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/google/gson/ToNumberPolicy$1;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f8e3ee"

    const/16 v3, 0x4e10

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/gson/ToNumberPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy;

    new-instance v1, Lcom/google/gson/ToNumberPolicy$2;

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "da5ecf"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/google/gson/ToNumberPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy;

    new-instance v2, Lcom/google/gson/ToNumberPolicy$3;

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "437eb9"

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Lcom/google/gson/ToNumberPolicy$3;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy;

    new-instance v3, Lcom/google/gson/ToNumberPolicy$4;

    const/16 v4, 0xb

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "3a9861"

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Lcom/google/gson/ToNumberPolicy$4;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/gson/ToNumberPolicy;->BIG_DECIMAL:Lcom/google/gson/ToNumberPolicy;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/gson/ToNumberPolicy;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    sput-object v4, Lcom/google/gson/ToNumberPolicy;->$VALUES:[Lcom/google/gson/ToNumberPolicy;

    return-void

    nop

    :array_0
    .array-data 1
        0x22t
        0x77t
        0x30t
        0x71t
        0x29t
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x28t
        0x20t
        0x6ft
        0x2ct
        0x2ft
        0x3ft
        0x3bt
        0x31t
        0x74t
        0x37t
        0x30t
        0x23t
        0x20t
        0x3et
        0x7bt
        0x30t
        0x2et
        0x24t
        0x21t
        0x33t
    .end array-data

    :array_2
    .array-data 1
        0x78t
        0x7ct
        0x79t
        0x22t
        0x3dt
        0x76t
        0x66t
        0x6ct
        0x73t
        0x2at
        0x37t
        0x7bt
        0x78t
        0x76t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x71t
        0x28t
        0x7et
        0x67t
        0x72t
        0x74t
        0x70t
        0x28t
        0x74t
        0x79t
        0x7at
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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/gson/ToNumberPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/gson/ToNumberPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/ToNumberPolicy;
    .locals 1

    const-class v0, Lcom/google/gson/ToNumberPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gson/ToNumberPolicy;

    return-object v0
.end method

.method public static values()[Lcom/google/gson/ToNumberPolicy;
    .locals 1

    sget-object v0, Lcom/google/gson/ToNumberPolicy;->$VALUES:[Lcom/google/gson/ToNumberPolicy;

    invoke-virtual {v0}, [Lcom/google/gson/ToNumberPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/ToNumberPolicy;

    return-object v0
.end method
