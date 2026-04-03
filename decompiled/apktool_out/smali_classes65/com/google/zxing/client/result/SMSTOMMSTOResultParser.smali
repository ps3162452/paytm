.class public final Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
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

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x6

    invoke-static {p1}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [B

    fill-array-data v1, :array_0

    const-string v3, "57d644"

    const-wide/32 v4, -0x4b6601c7

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v3, "381096"

    const/16 v4, -0x3d14

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v6, [B

    fill-array-data v1, :array_2

    const-string v3, "0f8c50"

    const/4 v4, 0x1

    invoke-static {v1, v3, v7, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v6, [B

    fill-array-data v1, :array_3

    const-string v3, "4d8477"

    const-wide/32 v4, 0x9b8c396

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v3, Lcom/google/zxing/client/result/SMSParsedResult;

    invoke-direct {v3, v0, v2, v2, v1}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    :array_0
    .array-data 1
        0x46t
        0x5at
        0x17t
        0x42t
        0x5bt
        0xet
    .end array-data

    nop

    :array_1
    .array-data 1
        0x60t
        0x75t
        0x62t
        0x64t
        0x76t
        0xct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5dt
        0xbt
        0x4bt
        0x17t
        0x5at
        0xat
    .end array-data

    nop

    :array_3
    .array-data 1
        0x79t
        0x29t
        0x6bt
        0x60t
        0x78t
        0xdt
    .end array-data
.end method
