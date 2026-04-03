.class public final Lcom/google/zxing/client/result/WifiResultParser;
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

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 11

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/16 v10, 0x3b

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "711167"

    invoke-static {v1, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v1, v9, [B

    fill-array-data v1, :array_1

    const-string v3, "27a77f"

    const-wide/32 v4, -0xc59ed76

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v10, v8}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-array v0, v9, [B

    fill-array-data v0, :array_2

    const-string v1, "b7a750"

    const-wide v4, 0x41cd4b392f000000L    # 9.82938206E8

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v10, v8}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    new-array v0, v9, [B

    fill-array-data v0, :array_3

    const-string v1, "0ff143"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v10, v8}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "f00b4f"

    const-wide v6, -0x3e73a3dd38000000L    # -5.9475033E7

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Lcom/google/zxing/client/result/WifiParsedResult;

    new-array v5, v9, [B

    fill-array-data v5, :array_5

    const-string v6, "1b97e8"

    const/16 v7, 0x68b6

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v10, v8}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x60t
        0x78t
        0x77t
        0x78t
        0xct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0xdt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x32t
        0xdt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x64t
        0x5ct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x8t
        0x5ft
        0x40t
        0x3t
        0x47t
        0x15t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x79t
        0x58t
    .end array-data
.end method
