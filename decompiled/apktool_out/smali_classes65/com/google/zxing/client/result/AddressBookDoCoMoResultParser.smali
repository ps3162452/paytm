.class public final Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private static parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 20

    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "6c8145"

    const-wide/32 v6, -0x5f35f552

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "7757d0"

    const/16 v5, 0x1ad2

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "24fe57"

    const/16 v6, 0x6289

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v6, "40e045"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v2, v6}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v7, "62a91c"

    const/16 v8, 0x5035

    invoke-static {v4, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v4, v2, v7}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    const-string v7, "b9690a"

    const/16 v9, -0x4a36

    invoke-static {v4, v7, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v2, v7}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    const-string v7, "ffc35b"

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v4, v7, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v4, v2, v7}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_7

    const-string v7, "877b24"

    const-wide v14, -0x3e2a0c78a1800000L    # -1.473125754E9

    invoke-static {v4, v7, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v4, v2, v7}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    const/16 v4, 0x8

    invoke-static {v15, v4}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->isStringOfDigits(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v15, 0x0

    :cond_2
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_8

    const-string v7, "c76d63"

    const/16 v9, -0x32f7

    invoke-static {v4, v7, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v4, v2, v7}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v17

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_9

    const-string v7, "47b77a"

    const-wide/32 v18, -0x5a5dca33

    move-wide/from16 v0, v18

    invoke-static {v4, v7, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v4, v2, v7}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    new-instance v2, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x7bt
        0x26t
        0x7bt
        0x70t
        0x66t
        0x71t
        0xct
    .end array-data

    :array_1
    .array-data 1
        0x79t
        0xdt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x61t
        0x7bt
        0x33t
        0x2bt
        0x71t
        0xdt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x60t
        0x75t
        0x29t
        0xat
    .end array-data

    :array_4
    .array-data 1
        0x73t
        0x7ft
        0x20t
        0x70t
        0x7dt
        0x59t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x2ct
        0x76t
        0x62t
        0x7ct
        0xat
    .end array-data

    nop

    :array_6
    .array-data 1
        0x27t
        0x22t
        0x31t
        0x9t
    .end array-data

    :array_7
    .array-data 1
        0x7at
        0x73t
        0x76t
        0x3bt
        0x8t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x36t
        0x65t
        0x7at
        0x5et
    .end array-data

    :array_9
    .array-data 1
        0x7bt
        0x65t
        0x25t
        0xdt
    .end array-data
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    return-object v0
.end method
