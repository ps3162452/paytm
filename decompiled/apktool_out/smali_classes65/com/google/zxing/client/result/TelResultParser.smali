.class public final Lcom/google/zxing/client/result/TelResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/TelResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x4

    invoke-static {p1}, Lcom/google/zxing/client/result/TelResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v3, "f7919d"

    invoke-static {v0, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v3, "bf8327"

    const-wide v4, 0x41d29893a9000000L    # 1.247956644E9

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v3, "68d19b"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v6, [B

    fill-array-data v3, :array_3

    const-string v4, "861968"

    invoke-static {v3, v4, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v3, 0x3f

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v3, Lcom/google/zxing/client/result/TelParsedResult;

    invoke-direct {v3, v1, v0, v2}, Lcom/google/zxing/client/result/TelParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :array_0
    .array-data 1
        0x12t
        0x52t
        0x55t
        0xbt
    .end array-data

    :array_1
    .array-data 1
        0x36t
        0x23t
        0x74t
        0x9t
    .end array-data

    :array_2
    .array-data 1
        0x62t
        0x7dt
        0x28t
        0xbt
    .end array-data

    :array_3
    .array-data 1
        0x4ct
        0x53t
        0x5dt
        0x3t
    .end array-data
.end method
