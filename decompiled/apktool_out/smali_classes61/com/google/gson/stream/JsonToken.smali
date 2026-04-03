.class public final enum Lcom/google/gson/stream/JsonToken;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gson/stream/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/gson/stream/JsonToken;

.field public static final enum BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

.field public static final enum BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

.field public static final enum BOOLEAN:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_ARRAY:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_OBJECT:Lcom/google/gson/stream/JsonToken;

.field public static final enum NAME:Lcom/google/gson/stream/JsonToken;

.field public static final enum NULL:Lcom/google/gson/stream/JsonToken;

.field public static final enum NUMBER:Lcom/google/gson/stream/JsonToken;

.field public static final enum STRING:Lcom/google/gson/stream/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0x9

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x6

    const/4 v6, 0x4

    new-instance v0, Lcom/google/gson/stream/JsonToken;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "41ff66"

    invoke-static {v1, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    new-instance v0, Lcom/google/gson/stream/JsonToken;

    new-array v1, v10, [B

    fill-array-data v1, :array_1

    const-string v2, "b59445"

    const-wide/32 v4, 0x2485253

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    new-instance v0, Lcom/google/gson/stream/JsonToken;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "a6458c"

    const-wide/32 v4, -0x6830a419

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    new-instance v0, Lcom/google/gson/stream/JsonToken;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "ac2e0d"

    const-wide v4, 0x41dbf54b1ac00000L    # 1.876241515E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    new-instance v0, Lcom/google/gson/stream/JsonToken;

    new-array v1, v6, [B

    fill-array-data v1, :array_4

    const-string v2, "1c4b11"

    const-wide v4, 0x41d307cec9400000L    # 1.277115173E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    new-instance v0, Lcom/google/gson/stream/JsonToken;

    new-array v1, v7, [B

    fill-array-data v1, :array_5

    const-string v2, "c58a4f"

    const v3, 0x4ed15cdc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    new-instance v0, Lcom/google/gson/stream/JsonToken;

    new-array v1, v7, [B

    fill-array-data v1, :array_6

    const-string v2, "1282ce"

    const/16 v3, -0x5588

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    new-instance v0, Lcom/google/gson/stream/JsonToken;

    new-array v1, v9, [B

    fill-array-data v1, :array_7

    const-string v2, "356b08"

    const-wide/32 v4, 0xa66f11

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    new-instance v0, Lcom/google/gson/stream/JsonToken;

    new-array v1, v6, [B

    fill-array-data v1, :array_8

    const-string v2, "424cba"

    const-wide/32 v4, 0x3e901439

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    new-instance v0, Lcom/google/gson/stream/JsonToken;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "f57339"

    const-wide v4, -0x3e2b38271e800000L    # -1.394566022E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/gson/stream/JsonToken;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    aput-object v1, v0, v8

    const/4 v1, 0x2

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    aput-object v1, v0, v9

    const/16 v1, 0x8

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/gson/stream/JsonToken;->$VALUES:[Lcom/google/gson/stream/JsonToken;

    return-void

    nop

    :array_0
    .array-data 1
        0x76t
        0x74t
        0x21t
        0x2ft
        0x78t
        0x69t
        0x75t
        0x63t
        0x34t
        0x27t
        0x6ft
    .end array-data

    :array_1
    .array-data 1
        0x27t
        0x7bt
        0x7dt
        0x6bt
        0x75t
        0x67t
        0x30t
        0x74t
        0x60t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x23t
        0x73t
        0x73t
        0x7ct
        0x76t
        0x3ct
        0x2et
        0x74t
        0x7et
        0x70t
        0x7bt
        0x37t
    .end array-data

    :array_3
    .array-data 1
        0x24t
        0x2dt
        0x76t
        0x3at
        0x7ft
        0x26t
        0x2bt
        0x26t
        0x71t
        0x31t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x7ft
        0x22t
        0x79t
        0x27t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x61t
        0x6at
        0x28t
        0x7at
        0x21t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x7ft
        0x67t
        0x75t
        0x70t
        0x26t
        0x37t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x71t
        0x7at
        0x79t
        0x2et
        0x75t
        0x79t
        0x7dt
    .end array-data

    :array_8
    .array-data 1
        0x7at
        0x67t
        0x78t
        0x2ft
    .end array-data

    :array_9
    .array-data 1
        0x23t
        0x7bt
        0x73t
        0x6ct
        0x77t
        0x76t
        0x25t
        0x60t
        0x7at
        0x76t
        0x7dt
        0x6dt
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/stream/JsonToken;
    .locals 1

    const-class v0, Lcom/google/gson/stream/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gson/stream/JsonToken;

    return-object v0
.end method

.method public static values()[Lcom/google/gson/stream/JsonToken;
    .locals 1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->$VALUES:[Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v0}, [Lcom/google/gson/stream/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/stream/JsonToken;

    return-object v0
.end method
