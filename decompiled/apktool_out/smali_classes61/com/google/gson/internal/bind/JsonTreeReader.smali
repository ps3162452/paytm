.class public final Lcom/google/gson/internal/bind/JsonTreeReader;
.super Lcom/google/gson/stream/JsonReader;


# static fields
.field private static final SENTINEL_CLOSED:Ljava/lang/Object;

.field private static final UNREADABLE_READER:Ljava/io/Reader;


# instance fields
.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private stack:[Ljava/lang/Object;

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/internal/bind/JsonTreeReader$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/JsonTreeReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 2

    const/16 v1, 0x20

    sget-object v0, Lcom/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    invoke-direct {p0, p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x9

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "50d111"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    const-string v3, "3c9846"

    const/16 v4, 0x3da

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x70t
        0x48t
        0x14t
        0x54t
        0x52t
        0x45t
        0x50t
        0x54t
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x13t
        0x1t
        0x4ct
        0x4ct
        0x14t
        0x41t
        0x52t
        0x10t
        0x19t
    .end array-data
.end method

.method private locationString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8619b6"

    const-wide/32 v4, 0x4d20b9f4

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x18t
        0x57t
        0x45t
        0x19t
        0x12t
        0x57t
        0x4ct
        0x5et
        0x11t
    .end array-data
.end method

.method private peekStack()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private popStack()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-object v0
.end method

.method private push(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iput v3, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    return-void
.end method

.method public endArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method public endObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/google/gson/JsonArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_0

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/google/gson/JsonObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_0

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_0
    return v0
.end method

.method public nextDouble()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v5, [B

    fill-array-data v3, :array_0

    const-string v4, "d0b119"

    const-wide/32 v6, 0x4f918527

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    const-string v4, "461f7e"

    const-wide v6, 0x41b4c65b30000000L    # 3.48543792E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsDouble()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->isLenient()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x21

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "85edef"

    const-wide v6, -0x3e40ce750d000000L    # -5.23340531E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    :cond_3
    return-wide v0

    :array_0
    .array-data 1
        0x21t
        0x48t
        0x12t
        0x54t
        0x52t
        0x4dt
        0x1t
        0x54t
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x14t
        0x54t
        0x44t
        0x12t
        0x17t
        0x12t
        0x55t
        0x45t
        0x11t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x72t
        0x66t
        0x2at
        0x2at
        0x45t
        0x0t
        0x57t
        0x47t
        0x7t
        0xdt
        0x1t
        0x15t
        0x18t
        0x7bt
        0x4t
        0x2at
        0x45t
        0x7t
        0x56t
        0x51t
        0x45t
        0xdt
        0xbt
        0x0t
        0x51t
        0x5bt
        0xct
        0x10t
        0xct
        0x3t
        0x4bt
        0xft
        0x45t
    .end array-data
.end method

.method public nextInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x9

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v6, [B

    fill-array-data v3, :array_0

    const-string v4, "72fa0a"

    const v5, 0x4e10561d    # 6.0539066E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v6, [B

    fill-array-data v3, :array_1

    const-string v4, "954040"

    const-wide/32 v6, -0x50dd2850

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result v0

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_1
    return v0

    nop

    :array_0
    .array-data 1
        0x72t
        0x4at
        0x16t
        0x4t
        0x53t
        0x15t
        0x52t
        0x56t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x57t
        0x41t
        0x44t
        0x14t
        0x47t
        0x58t
        0x46t
        0x14t
    .end array-data
.end method

.method public nextLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v5, [B

    fill-array-data v3, :array_0

    const-string v4, "0b1f0a"

    const-wide/32 v6, -0x42d8693b

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    const-string v4, "b3c8ff"

    const-wide/32 v6, 0x181ee38a    # 1.999372573E-315

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    :cond_1
    return-wide v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x1at
        0x41t
        0x3t
        0x53t
        0x15t
        0x55t
        0x6t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x42t
        0x51t
        0x16t
        0x4ct
        0x46t
        0x11t
        0x3t
        0x40t
        0x43t
    .end array-data
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-object v1
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v5, [B

    fill-array-data v3, :array_0

    const-string v4, "68b56f"

    const-wide/32 v6, -0x16464906

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    const-string v4, "e9e84d"

    const-wide v6, -0x3e243da053400000L    # -1.862893235E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_1
    return-object v0

    :array_0
    .array-data 1
        0x73t
        0x40t
        0x12t
        0x50t
        0x55t
        0x12t
        0x53t
        0x5ct
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x45t
        0x5bt
        0x10t
        0x4ct
        0x14t
        0x13t
        0x4t
        0x4at
        0x45t
    .end array-data
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/google/gson/JsonObject;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/google/gson/JsonArray;

    if-eqz v1, :cond_6

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lcom/google/gson/JsonPrimitive;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    instance-of v1, v0, Lcom/google/gson/JsonNull;

    if-eqz v1, :cond_b

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_b
    sget-object v1, Lcom/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "434861"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x7et
        0x40t
        0x5bt
        0x56t
        0x64t
        0x54t
        0x55t
        0x57t
        0x51t
        0x4at
        0x16t
        0x58t
        0x47t
        0x13t
        0x57t
        0x54t
        0x59t
        0x42t
        0x51t
        0x57t
    .end array-data
.end method

.method public promoteNameToValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public skipValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->nextName()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9a6be5"

    const/16 v4, 0x6504

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    iget v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "dd9a76"

    const-wide v4, 0x41c78c16a0800000L    # 7.90113601E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x57t
        0x14t
        0x5at
        0xet
    .end array-data

    :array_1
    .array-data 1
        0xat
        0x11t
        0x55t
        0xdt
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
