.class final enum Lcom/google/gson/ToNumberPolicy$4;
.super Lcom/google/gson/ToNumberPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/ToNumberPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/ToNumberPolicy;-><init>(Ljava/lang/String;ILcom/google/gson/ToNumberPolicy$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/gson/ToNumberPolicy$4;->readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/math/BigDecimal;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/google/gson/internal/NumberLimits;->parseBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "123ed7"

    const/16 v5, -0x1e0f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "641313"

    const v4, -0x312a743d

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x72t
        0x53t
        0x5dt
        0xbt
        0xbt
        0x43t
        0x11t
        0x42t
        0x52t
        0x17t
        0x17t
        0x52t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0x14t
        0x50t
        0x47t
        0x11t
        0x43t
        0x57t
        0x40t
        0x59t
        0x13t
    .end array-data
.end method
