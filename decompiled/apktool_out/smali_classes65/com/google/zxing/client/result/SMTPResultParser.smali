.class public final Lcom/google/zxing/client/result/SMTPResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 10

    const/16 v9, 0x3a

    const/4 v8, 0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/zxing/client/result/SMTPResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const-string v3, "8d2ba9"

    const-wide/32 v4, 0x78a5064a    # 1.0000288717E-314

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    const-string v3, "f3dd75"

    invoke-static {v1, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v0

    :goto_1
    new-instance v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    new-array v1, v8, [Ljava/lang/String;

    aput-object v3, v1, v6

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v5, v2

    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v5, v2

    move-object v3, v0

    move-object v4, v2

    goto :goto_1

    :array_0
    .array-data 1
        0x4bt
        0x9t
        0x46t
        0x12t
        0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x35t
        0x7et
        0x30t
        0x34t
        0xdt
    .end array-data
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMTPResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v0

    return-object v0
.end method
