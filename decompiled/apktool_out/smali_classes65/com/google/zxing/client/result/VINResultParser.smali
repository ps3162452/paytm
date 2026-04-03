.class public final Lcom/google/zxing/client/result/VINResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# static fields
.field private static final AZ09:Ljava/util/regex/Pattern;

.field private static final IOQ:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b07825"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "38de95"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        0x39t
        0x79t
        0x78t
        0x69t
        0x6ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x68t
        0x79t
        0x49t
        0x3ft
        0x9t
        0x18t
        0xat
        0x65t
        0x1ft
        0x54t
        0xet
        0x48t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static checkChar(I)C
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_0
    if-ne p0, v0, :cond_1

    const/16 v0, 0x58

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static checkChecksum(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lcom/google/zxing/client/result/VINResultParser;->vinPositionWeight(I)I

    move-result v3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/client/result/VINResultParser;->vinCharValue(C)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    rem-int/lit8 v2, v2, 0xb

    invoke-static {v2}, Lcom/google/zxing/client/result/VINResultParser;->checkChar(I)C

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x52

    const/4 v5, 0x0

    const/16 v4, 0x41

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    const-string v1, "236ae5"

    invoke-static {v0, v1, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    const-string v1, "65d3b0"

    const-wide/32 v2, 0x15a3c6f2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    if-lt v1, v4, :cond_0

    const/16 v0, 0x57

    if-gt v1, v0, :cond_0

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    const-string v1, "5583c6"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    if-lt v1, v4, :cond_1

    const/16 v0, 0x45

    if-le v1, v0, :cond_2

    :cond_1
    const/16 v0, 0x33

    if-lt v1, v0, :cond_0

    const/16 v0, 0x39

    if-gt v1, v0, :cond_0

    :cond_2
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    const-string v1, "ec3d75"

    const-wide/32 v2, -0x42d07a00

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    if-lt v1, v4, :cond_0

    const/16 v0, 0x54

    if-gt v1, v0, :cond_0

    new-array v0, v2, [B

    fill-array-data v0, :array_4

    const-string v1, "c77170"

    invoke-static {v0, v1, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x4c

    if-lt v1, v0, :cond_0

    if-gt v1, v6, :cond_0

    new-array v0, v2, [B

    fill-array-data v0, :array_5

    const-string v1, "2890bd"

    const-wide v2, 0x41dd685ddac00000L    # 1.973516139E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    new-array v0, v2, [B

    fill-array-data v0, :array_6

    const-string v1, "43a23a"

    const v2, 0x4e1ca273    # 6.56973E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    if-lt v1, v4, :cond_0

    const/16 v0, 0x45

    if-gt v1, v0, :cond_0

    new-array v0, v2, [B

    fill-array-data v0, :array_7

    const-string v1, "942958"

    const-wide v2, 0x41c8a91e27800000L    # 8.27472975E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    if-lt v1, v4, :cond_3

    const/16 v0, 0x4d

    if-gt v1, v0, :cond_3

    new-array v0, v2, [B

    fill-array-data v0, :array_8

    const-string v1, "44bd52"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x4e

    if-lt v1, v0, :cond_0

    const/16 v0, 0x54

    if-gt v1, v0, :cond_0

    new-array v0, v2, [B

    fill-array-data v0, :array_9

    const-string v1, "4977fe"

    const-wide v2, -0x3e2ee805f6800000L    # -1.147136038E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x46

    if-lt v1, v0, :cond_4

    if-gt v1, v6, :cond_4

    new-array v0, v2, [B

    fill-array-data v0, :array_a

    const-string v1, "c3fdbb"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x53

    if-lt v1, v0, :cond_0

    const/16 v0, 0x57

    if-gt v1, v0, :cond_0

    new-array v0, v2, [B

    fill-array-data v0, :array_b

    const-string v1, "7e5911"

    const-wide v2, -0x3e3b3ad41e800000L    # -6.96932291E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v2, [B

    fill-array-data v0, :array_c

    const-string v1, "b6bf9f"

    const/16 v2, 0x5c2d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x30

    if-eq v1, v0, :cond_5

    const/16 v0, 0x33

    if-lt v1, v0, :cond_0

    const/16 v0, 0x39

    if-gt v1, v0, :cond_0

    :cond_5
    new-array v0, v2, [B

    fill-array-data v0, :array_d

    const-string v1, "2ea3b9"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_c
    if-lt v1, v4, :cond_0

    if-gt v1, v6, :cond_0

    new-array v0, v2, [B

    fill-array-data v0, :array_e

    const-string v1, "87a1c3"

    const-wide v2, -0x3e262a02e3c00000L    # -1.733817457E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x39 -> :sswitch_3
        0x4a -> :sswitch_4
        0x4b -> :sswitch_5
        0x4c -> :sswitch_6
        0x4d -> :sswitch_7
        0x53 -> :sswitch_8
        0x56 -> :sswitch_9
        0x57 -> :sswitch_a
        0x58 -> :sswitch_b
        0x5a -> :sswitch_c
    .end sparse-switch

    :array_0
    .array-data 1
        0x67t
        0x60t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x75t
        0x74t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x78t
        0x6dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x27t
        0x31t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x29t
        0x67t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x79t
        0x77t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x77t
        0x7dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x70t
        0x7at
    .end array-data

    nop

    :array_8
    .array-data 1
        0x61t
        0x7ft
    .end array-data

    nop

    :array_9
    .array-data 1
        0x70t
        0x7ct
    .end array-data

    nop

    :array_a
    .array-data 1
        0x25t
        0x61t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x72t
        0x36t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x26t
        0x73t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x60t
        0x30t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x71t
        0x63t
    .end array-data
.end method

.method private static modelYear(C)I
    .locals 1

    const/16 v0, 0x45

    if-lt p0, v0, :cond_0

    const/16 v0, 0x48

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x45

    add-int/lit16 v0, v0, 0x7c0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4a

    if-lt p0, v0, :cond_1

    const/16 v0, 0x4e

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x4a

    add-int/lit16 v0, v0, 0x7c4

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    if-ne p0, v0, :cond_2

    const/16 v0, 0x7c9

    goto :goto_0

    :cond_2
    const/16 v0, 0x52

    if-lt p0, v0, :cond_3

    const/16 v0, 0x54

    if-gt p0, v0, :cond_3

    add-int/lit8 v0, p0, -0x52

    add-int/lit16 v0, v0, 0x7ca

    goto :goto_0

    :cond_3
    const/16 v0, 0x56

    if-lt p0, v0, :cond_4

    const/16 v0, 0x59

    if-gt p0, v0, :cond_4

    add-int/lit8 v0, p0, -0x56

    add-int/lit16 v0, v0, 0x7cd

    goto :goto_0

    :cond_4
    const/16 v0, 0x31

    if-lt p0, v0, :cond_5

    const/16 v0, 0x39

    if-gt p0, v0, :cond_5

    add-int/lit8 v0, p0, -0x31

    add-int/lit16 v0, v0, 0x7d1

    goto :goto_0

    :cond_5
    const/16 v0, 0x41

    if-lt p0, v0, :cond_6

    const/16 v0, 0x44

    if-gt p0, v0, :cond_6

    add-int/lit8 v0, p0, -0x41

    add-int/lit16 v0, v0, 0x7da

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static vinCharValue(C)I
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x49

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4a

    if-lt p0, v0, :cond_1

    const/16 v0, 0x52

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x4a

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x53

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x53

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    add-int/lit8 v0, p0, -0x30

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static vinPositionWeight(I)I
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-lt p0, v1, :cond_1

    const/4 v1, 0x7

    if-gt p0, v1, :cond_1

    rsub-int/lit8 v0, p0, 0x9

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-lt p0, v0, :cond_3

    const/16 v0, 0x11

    if-gt p0, v0, :cond_3

    rsub-int/lit8 v0, p0, 0x13

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VINResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/VINParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/VINParsedResult;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v1, :cond_0

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/zxing/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v10

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/google/zxing/client/result/VINResultParser;->checkChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v10

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/google/zxing/client/result/VINParsedResult;

    const/4 v3, 0x3

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    const/16 v5, 0x11

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/google/zxing/client/result/VINResultParser;->countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/client/result/VINResultParser;->modelYear(C)I

    move-result v7

    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/client/result/VINParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v10

    goto :goto_0
.end method
