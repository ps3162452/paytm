.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String;

.field public static final GB2312:Ljava/lang/String;

.field private static final ISO88591:Ljava/lang/String;

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String;

.field private static final UTF8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v6, [B

    fill-array-data v2, :array_0

    const-string v3, "6cacce"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/common/StringUtils;->EUC_JP:Ljava/lang/String;

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "de5432"

    const v4, -0x3133dc05

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/common/StringUtils;->GB2312:Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "cccba7"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/common/StringUtils;->ISO88591:Ljava/lang/String;

    new-array v2, v5, [B

    fill-array-data v2, :array_3

    const-string v3, "9ae487"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS:Ljava/lang/String;

    new-array v2, v5, [B

    fill-array-data v2, :array_4

    const-string v3, "0b0701"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/common/StringUtils;->UTF8:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    new-array v2, v5, [B

    fill-array-data v2, :array_5

    const-string v3, "505e24"

    invoke-static {v2, v3, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v6, [B

    fill-array-data v2, :array_6

    const-string v3, "5b3f42"

    const-wide v4, 0x41d20097f8400000L    # 1.208115169E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x73t
        0x36t
        0x22t
        0x3ct
        0x29t
        0x35t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x23t
        0x27t
        0x7t
        0x7t
        0x2t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2at
        0x30t
        0x2ct
        0x5at
        0x59t
        0x2t
        0x5at
        0x3ct
        0x52t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x6at
        0x2bt
        0x2ct
        0x67t
    .end array-data

    :array_4
    .array-data 1
        0x65t
        0x36t
        0x76t
        0xft
    .end array-data

    :array_5
    .array-data 1
        0x66t
        0x7at
        0x7ct
        0x36t
    .end array-data

    :array_6
    .array-data 1
        0x70t
        0x37t
        0x70t
        0x39t
        0x7et
        0x62t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    const/4 v12, 0x1

    const/4 v10, 0x1

    const/16 v17, 0x1

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    array-length v2, v0

    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    const/16 v3, -0x11

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    const/16 v3, -0x45

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, -0x41

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    move/from16 v18, v3

    move v3, v4

    move v4, v6

    move v6, v7

    move/from16 v7, v17

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    if-nez v12, :cond_1

    if-nez v10, :cond_1

    if-eqz v7, :cond_13

    :cond_1
    aget-byte v17, p0, v18

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    if-eqz v7, :cond_23

    if-lez v16, :cond_6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-nez v17, :cond_5

    const/4 v7, 0x0

    move/from16 v17, v7

    :goto_3
    if-eqz v12, :cond_2

    const/16 v7, 0x7f

    move/from16 v0, v20

    if-le v0, v7, :cond_b

    const/16 v7, 0xa0

    move/from16 v0, v20

    if-ge v0, v7, :cond_b

    const/4 v7, 0x0

    move v12, v7

    :cond_2
    :goto_4
    if-eqz v10, :cond_24

    if-lez v8, :cond_e

    const/16 v7, 0x40

    move/from16 v0, v20

    if-lt v0, v7, :cond_3

    const/16 v7, 0x7f

    move/from16 v0, v20

    if-eq v0, v7, :cond_3

    const/16 v7, 0xfc

    move/from16 v0, v20

    if-le v0, v7, :cond_d

    :cond_3
    const/4 v7, 0x0

    move/from16 v21, v5

    move v5, v4

    move/from16 v4, v21

    move/from16 v22, v8

    move v8, v9

    move v9, v7

    move/from16 v7, v22

    :goto_5
    add-int/lit8 v10, v18, 0x1

    move/from16 v18, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move/from16 v7, v17

    move/from16 v21, v5

    move v5, v4

    move/from16 v4, v21

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v7

    goto :goto_3

    :cond_6
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_23

    and-int/lit8 v17, v20, 0x40

    if-nez v17, :cond_7

    const/4 v7, 0x0

    move/from16 v17, v7

    goto :goto_3

    :cond_7
    add-int/lit8 v16, v16, 0x1

    and-int/lit8 v17, v20, 0x20

    if-nez v17, :cond_8

    add-int/lit8 v15, v15, 0x1

    move/from16 v17, v7

    goto :goto_3

    :cond_8
    add-int/lit8 v16, v16, 0x1

    and-int/lit8 v17, v20, 0x10

    if-nez v17, :cond_9

    add-int/lit8 v14, v14, 0x1

    move/from16 v17, v7

    goto :goto_3

    :cond_9
    add-int/lit8 v16, v16, 0x1

    and-int/lit8 v17, v20, 0x8

    if-nez v17, :cond_a

    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v7

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    move/from16 v17, v7

    goto :goto_3

    :cond_b
    const/16 v7, 0x9f

    move/from16 v0, v20

    if-le v0, v7, :cond_2

    const/16 v7, 0xc0

    move/from16 v0, v20

    if-lt v0, v7, :cond_c

    const/16 v7, 0xd7

    move/from16 v0, v20

    if-eq v0, v7, :cond_c

    const/16 v7, 0xf7

    move/from16 v0, v20

    if-ne v0, v7, :cond_2

    :cond_c
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    goto/16 :goto_4

    :cond_d
    add-int/lit8 v7, v8, -0x1

    move v8, v9

    move v9, v10

    move/from16 v21, v5

    move v5, v4

    move/from16 v4, v21

    goto :goto_5

    :cond_e
    const/16 v7, 0x80

    move/from16 v0, v20

    if-eq v0, v7, :cond_f

    const/16 v7, 0xa0

    move/from16 v0, v20

    if-eq v0, v7, :cond_f

    const/16 v7, 0xef

    move/from16 v0, v20

    if-le v0, v7, :cond_10

    :cond_f
    const/4 v7, 0x0

    move/from16 v21, v5

    move v5, v4

    move/from16 v4, v21

    move/from16 v22, v8

    move v8, v9

    move v9, v7

    move/from16 v7, v22

    goto/16 :goto_5

    :cond_10
    const/16 v7, 0xa0

    move/from16 v0, v20

    if-le v0, v7, :cond_11

    const/16 v7, 0xe0

    move/from16 v0, v20

    if-ge v0, v7, :cond_11

    add-int/lit8 v7, v6, 0x1

    const/4 v6, 0x0

    add-int/lit8 v4, v9, 0x1

    if-le v4, v5, :cond_22

    move v5, v6

    move v9, v10

    move v6, v7

    move v7, v8

    move v8, v4

    goto/16 :goto_5

    :cond_11
    const/16 v7, 0x7f

    move/from16 v0, v20

    if-le v0, v7, :cond_12

    add-int/lit8 v7, v8, 0x1

    const/4 v8, 0x0

    add-int/lit8 v4, v4, 0x1

    if-le v4, v3, :cond_21

    move v3, v4

    move v9, v10

    move/from16 v21, v4

    move v4, v5

    move/from16 v5, v21

    goto/16 :goto_5

    :cond_12
    const/4 v7, 0x0

    const/4 v4, 0x0

    move v9, v10

    move/from16 v21, v4

    move v4, v5

    move/from16 v5, v21

    move/from16 v22, v7

    move v7, v8

    move/from16 v8, v22

    goto/16 :goto_5

    :cond_13
    if-eqz v7, :cond_20

    if-lez v16, :cond_20

    const/4 v4, 0x0

    :goto_6
    if-eqz v10, :cond_14

    if-lez v8, :cond_14

    const/4 v10, 0x0

    :cond_14
    if-eqz v4, :cond_16

    if-nez v2, :cond_15

    add-int v2, v15, v14

    add-int/2addr v2, v13

    if-lez v2, :cond_16

    :cond_15
    sget-object v2, Lcom/google/zxing/common/StringUtils;->UTF8:Ljava/lang/String;

    goto/16 :goto_0

    :cond_16
    if-eqz v10, :cond_18

    sget-boolean v2, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v2, :cond_17

    const/4 v2, 0x3

    if-ge v5, v2, :cond_17

    const/4 v2, 0x3

    if-lt v3, v2, :cond_18

    :cond_17
    sget-object v2, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_0

    :cond_18
    if-eqz v12, :cond_1c

    if-eqz v10, :cond_1c

    const/4 v2, 0x2

    if-ne v5, v2, :cond_19

    const/4 v2, 0x2

    if-eq v6, v2, :cond_1a

    :cond_19
    mul-int/lit8 v2, v11, 0xa

    move/from16 v0, v19

    if-lt v2, v0, :cond_1b

    :cond_1a
    sget-object v2, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1b
    sget-object v2, Lcom/google/zxing/common/StringUtils;->ISO88591:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1c
    if-eqz v12, :cond_1d

    sget-object v2, Lcom/google/zxing/common/StringUtils;->ISO88591:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1d
    if-eqz v10, :cond_1e

    sget-object v2, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1e
    if-eqz v4, :cond_1f

    sget-object v2, Lcom/google/zxing/common/StringUtils;->UTF8:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1f
    sget-object v2, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_0

    :cond_20
    move v4, v7

    goto :goto_6

    :cond_21
    move v9, v10

    move/from16 v21, v4

    move v4, v5

    move/from16 v5, v21

    goto/16 :goto_5

    :cond_22
    move v9, v10

    move/from16 v21, v6

    move v6, v7

    move v7, v8

    move v8, v4

    move v4, v5

    move/from16 v5, v21

    goto/16 :goto_5

    :cond_23
    move/from16 v17, v7

    goto/16 :goto_3

    :cond_24
    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v21, v4

    move v4, v5

    move/from16 v5, v21

    goto/16 :goto_5
.end method
