.class public final enum Lcom/google/gson/Strictness;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gson/Strictness;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/gson/Strictness;

.field public static final enum LEGACY_STRICT:Lcom/google/gson/Strictness;

.field public static final enum LENIENT:Lcom/google/gson/Strictness;

.field public static final enum STRICT:Lcom/google/gson/Strictness;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/gson/Strictness;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e90b8e"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/gson/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    new-instance v1, Lcom/google/gson/Strictness;

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "b57d1a"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/google/gson/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/gson/Strictness;->LEGACY_STRICT:Lcom/google/gson/Strictness;

    new-instance v2, Lcom/google/gson/Strictness;

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "e778dd"

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v7}, Lcom/google/gson/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/gson/Strictness;->STRICT:Lcom/google/gson/Strictness;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/gson/Strictness;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    sput-object v3, Lcom/google/gson/Strictness;->$VALUES:[Lcom/google/gson/Strictness;

    return-void

    nop

    :array_0
    .array-data 1
        0x29t
        0x7ct
        0x7et
        0x2bt
        0x7dt
        0x2bt
        0x31t
    .end array-data

    :array_1
    .array-data 1
        0x2et
        0x70t
        0x70t
        0x25t
        0x72t
        0x38t
        0x3dt
        0x66t
        0x63t
        0x36t
        0x78t
        0x22t
        0x36t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x36t
        0x63t
        0x65t
        0x71t
        0x27t
        0x30t
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/Strictness;
    .locals 1

    const-class v0, Lcom/google/gson/Strictness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Strictness;

    return-object v0
.end method

.method public static values()[Lcom/google/gson/Strictness;
    .locals 1

    sget-object v0, Lcom/google/gson/Strictness;->$VALUES:[Lcom/google/gson/Strictness;

    invoke-virtual {v0}, [Lcom/google/gson/Strictness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/Strictness;

    return-object v0
.end method
