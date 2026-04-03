.class public final Lcom/google/zxing/client/result/VEventResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v3}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static stripMailto(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x7

    if-eqz p0, :cond_1

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "377060"

    const-wide/32 v2, 0x5d10bf8b

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "773c81"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    nop

    :array_0
    .array-data 1
        0x5et
        0x56t
        0x5et
        0x5ct
        0x42t
        0x5ft
        0x9t
    .end array-data

    :array_1
    .array-data 1
        0x7at
        0x76t
        0x7at
        0x2ft
        0x6ct
        0x7et
        0xdt
    .end array-data
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;
    .locals 14

    invoke-static {p1}, Lcom/google/zxing/client/result/VEventResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "e88ecb"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "cdeadf"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v3, "8c5223"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v4, "70644c"

    const/16 v5, -0x6ef8

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v5, "ea10f2"

    const v6, -0x3151a8b5

    invoke-static {v0, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v6, "7e0fa1"

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v0, v1, v6}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v7, "8f86be"

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v0, v1, v7}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v8, "8d8e07"

    const/16 v9, -0x4234

    invoke-static {v0, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-static {v0, v1, v8}, Lcom/google/zxing/client/result/VEventResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v0, 0x0

    :goto_1
    array-length v9, v8

    if-ge v0, v9, :cond_2

    aget-object v9, v8, v0

    invoke-static {v9}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v9, "dcf596"

    const/16 v10, -0x254e

    invoke-static {v0, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    invoke-static {v0, v1, v9}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v10, "a2c289"

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v0, v10, v11, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    invoke-static {v0, v1, v10}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    :goto_2
    :try_start_0
    new-instance v1, Lcom/google/zxing/client/result/CalendarParsedResult;

    invoke-direct/range {v1 .. v13}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x27t
        0x7dt
        0x7ft
        0x2ct
        0x2dt
        0x58t
        0x33t
        0x7dt
        0x6et
        0x20t
        0x2dt
        0x36t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x31t
        0x28t
        0x2ct
        0x25t
        0x34t
        0x3at
    .end array-data

    :array_2
    .array-data 1
        0x7ct
        0x37t
        0x66t
        0x66t
        0x73t
        0x61t
        0x6ct
    .end array-data

    :array_3
    .array-data 1
        0x73t
        0x64t
        0x73t
        0x7at
        0x70t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x21t
        0x34t
        0x63t
        0x71t
        0x32t
        0x7bt
        0x2at
        0x2ft
    .end array-data

    :array_5
    .array-data 1
        0x7bt
        0x2at
        0x73t
        0x27t
        0x35t
        0x78t
        0x78t
        0x2bt
    .end array-data

    :array_6
    .array-data 1
        0x77t
        0x34t
        0x7ft
        0x77t
        0x2ct
        0x2ct
        0x62t
        0x23t
        0x6at
    .end array-data

    nop

    :array_7
    .array-data 1
        0x79t
        0x30t
        0x6ct
        0x20t
        0x7et
        0x73t
        0x7dt
        0x21t
    .end array-data

    :array_8
    .array-data 1
        0x20t
        0x26t
        0x35t
        0x76t
        0x6bt
        0x7ft
        0x34t
        0x37t
        0x2ft
        0x7at
        0x77t
    .end array-data

    :array_9
    .array-data 1
        0x26t
        0x77t
        0x2ct
    .end array-data
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object v0

    return-object v0
.end method
