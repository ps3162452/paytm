.class public final Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 9

    const/4 v8, 0x6

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [B

    fill-array-data v2, :array_0

    const-string v3, "83b91a"

    const-wide/32 v4, -0x2dc2846b

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v3, "422a85"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v7}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "9fadfe"

    invoke-static {v3, v4, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v7}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    aget-object v1, v1, v6

    invoke-static {v1}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x75t
        0x76t
        0x20t
        0x72t
        0x7ct
        0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x60t
        0x7bt
        0x66t
        0x2dt
        0x7dt
        0xft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6ct
        0x34t
        0x2dt
        0x5et
    .end array-data
.end method
