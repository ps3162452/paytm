.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-static {v0, v2}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 28

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_4

    invoke-static {v4, v5}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, 0x2

    add-int v20, v20, v4

    move/from16 v0, v20

    invoke-static {v0, v5}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    add-int v20, v20, v21

    const/16 v21, -0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v21, :pswitch_data_0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move/from16 v4, v20

    goto :goto_1

    :sswitch_0
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    const-string v24, "927205"

    const/16 v25, 0x342b

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x0

    goto :goto_2

    :sswitch_1
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_1

    const-string v24, "4af15a"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x1

    goto :goto_2

    :sswitch_2
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    const-string v24, "b833ac"

    const-wide/32 v26, 0x7ac3f90e

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x2

    goto :goto_2

    :sswitch_3
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_3

    const-string v24, "5fd4d5"

    const v25, 0x4e9bdfff

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x3

    goto/16 :goto_2

    :sswitch_4
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_4

    const-string v24, "c657b6"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x4

    goto/16 :goto_2

    :sswitch_5
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_5

    const-string v24, "3644a8"

    const/16 v25, 0x5a2f

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x5

    goto/16 :goto_2

    :sswitch_6
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_6

    const-string v24, "587e33"

    const v25, 0x4e8f03c4

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x6

    goto/16 :goto_2

    :sswitch_7
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_7

    const-string v24, "d52fc4"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x7

    goto/16 :goto_2

    :sswitch_8
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_8

    const-string v24, "1bf934"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x8

    goto/16 :goto_2

    :sswitch_9
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_9

    const-string v24, "ee0818"

    const-wide v26, 0x41d6dabfa9c00000L    # 1.533738663E9

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x9

    goto/16 :goto_2

    :sswitch_a
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_a

    const-string v24, "ce675a"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0xa

    goto/16 :goto_2

    :sswitch_b
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_b

    const-string v24, "2e72d7"

    const/16 v25, -0x4055

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0xb

    goto/16 :goto_2

    :sswitch_c
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_c

    const-string v24, "8fae50"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0xc

    goto/16 :goto_2

    :sswitch_d
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_d

    const-string v24, "a97d10"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0xd

    goto/16 :goto_2

    :sswitch_e
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_e

    const-string v24, "f7a45d"

    const/16 v25, 0x4d73

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0xe

    goto/16 :goto_2

    :sswitch_f
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_f

    const-string v24, "6187ae"

    const v25, -0x3209ed66

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0xf

    goto/16 :goto_2

    :sswitch_10
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_10

    const-string v24, "45f170"

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x10

    goto/16 :goto_2

    :sswitch_11
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_11

    const-string v24, "a8dc8a"

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x11

    goto/16 :goto_2

    :sswitch_12
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_12

    const-string v24, "df6cbb"

    const-wide/32 v26, -0x405a3cb2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x12

    goto/16 :goto_2

    :sswitch_13
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_13

    const-string v24, "519c1e"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x13

    goto/16 :goto_2

    :sswitch_14
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_14

    const-string v24, "b0e7dc"

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x14

    goto/16 :goto_2

    :sswitch_15
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_15

    const-string v24, "468ee0"

    const-wide/32 v26, -0x21e09c9

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x15

    goto/16 :goto_2

    :sswitch_16
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_16

    const-string v24, "0aae67"

    const-wide/32 v26, 0x70672bb2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x16

    goto/16 :goto_2

    :sswitch_17
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_17

    const-string v24, "e5e2b5"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x17

    goto/16 :goto_2

    :sswitch_18
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_18

    const-string v24, "9e58dc"

    const-wide v26, -0x3e2ec35397400000L    # -1.156755875E9

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x18

    goto/16 :goto_2

    :sswitch_19
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_19

    const-string v24, "72acab"

    const-wide v26, -0x3e27e2068dc00000L    # -1.618470345E9

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x19

    goto/16 :goto_2

    :sswitch_1a
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_1a

    const-string v24, "f4a45c"

    const/16 v25, 0x113c

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x1a

    goto/16 :goto_2

    :sswitch_1b
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_1b

    const-string v24, "53dd5b"

    const-wide/32 v26, 0x18b69041

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x1b

    goto/16 :goto_2

    :sswitch_1c
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_1c

    const-string v24, "454c95"

    const v25, -0x31266c2a

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x1c

    goto/16 :goto_2

    :sswitch_1d
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_1d

    const-string v24, "ac1069"

    const v25, -0x315c38c4

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x1d

    goto/16 :goto_2

    :sswitch_1e
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_1e

    const-string v24, "4bfa20"

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x1e

    goto/16 :goto_2

    :sswitch_1f
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_1f

    const-string v24, "608695"

    const-wide/32 v26, -0x34a8da1f

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x1f

    goto/16 :goto_2

    :sswitch_20
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_20

    const-string v24, "eb234c"

    const/16 v25, 0x39d3

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x20

    goto/16 :goto_2

    :sswitch_21
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_21

    const-string v24, "76d1d9"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x21

    goto/16 :goto_2

    :sswitch_22
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_22

    const-string v24, "1c63de"

    const v25, -0x3138df7c

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v21, 0x22

    goto/16 :goto_2

    :pswitch_0
    move-object v7, v4

    goto/16 :goto_3

    :pswitch_1
    move-object v6, v4

    goto/16 :goto_3

    :pswitch_2
    move-object v8, v4

    goto/16 :goto_3

    :pswitch_3
    move-object v9, v4

    goto/16 :goto_3

    :pswitch_4
    move-object v10, v4

    goto/16 :goto_3

    :pswitch_5
    move-object v11, v4

    goto/16 :goto_3

    :pswitch_6
    move-object v12, v4

    goto/16 :goto_3

    :pswitch_7
    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_23

    const-string v14, "0c0a89"

    const-wide v24, -0x3e2ad5bcd7800000L    # -1.420364962E9

    move-wide/from16 v0, v24

    invoke-static {v13, v14, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v13, v4

    goto/16 :goto_3

    :pswitch_8
    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_24

    const-string v14, "eea580"

    const v15, -0x314d71f8

    invoke-static {v13, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v13, v4

    goto/16 :goto_3

    :pswitch_9
    const/16 v16, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v4

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_3

    :cond_4
    new-instance v4, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    invoke-direct/range {v4 .. v19}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_0
        0x601 -> :sswitch_1
        0x61f -> :sswitch_2
        0x620 -> :sswitch_3
        0x622 -> :sswitch_4
        0x624 -> :sswitch_5
        0x626 -> :sswitch_6
        0x17ecde -> :sswitch_7
        0x17ecdf -> :sswitch_8
        0x17ece0 -> :sswitch_9
        0x17ece1 -> :sswitch_a
        0x17ece2 -> :sswitch_b
        0x17ece3 -> :sswitch_c
        0x17ece4 -> :sswitch_d
        0x17ece5 -> :sswitch_e
        0x17ece6 -> :sswitch_f
        0x17ece7 -> :sswitch_10
        0x17f09f -> :sswitch_11
        0x17f0a0 -> :sswitch_12
        0x17f0a1 -> :sswitch_13
        0x17f0a2 -> :sswitch_14
        0x17f0a3 -> :sswitch_15
        0x17f0a4 -> :sswitch_16
        0x17f0a5 -> :sswitch_17
        0x17f0a6 -> :sswitch_18
        0x17f0a7 -> :sswitch_19
        0x17f0a8 -> :sswitch_1a
        0x180b24 -> :sswitch_1b
        0x180b25 -> :sswitch_1c
        0x180b26 -> :sswitch_1d
        0x180b27 -> :sswitch_1e
        0x180b43 -> :sswitch_1f
        0x180b44 -> :sswitch_20
        0x180b45 -> :sswitch_21
        0x180b46 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :array_0
    .array-data 1
        0x9t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x50t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x53t
        0x8t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4t
        0x57t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x52t
        0x5t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x2t
        0x3t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x4t
        0xft
    .end array-data

    nop

    :array_7
    .array-data 1
        0x57t
        0x4t
        0x2t
        0x56t
    .end array-data

    :array_8
    .array-data 1
        0x2t
        0x53t
        0x56t
        0x8t
    .end array-data

    :array_9
    .array-data 1
        0x56t
        0x54t
        0x0t
        0xat
    .end array-data

    :array_a
    .array-data 1
        0x50t
        0x54t
        0x6t
        0x4t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x54t
        0x7t
        0x6t
    .end array-data

    :array_c
    .array-data 1
        0xbt
        0x57t
        0x51t
        0x50t
    .end array-data

    :array_d
    .array-data 1
        0x52t
        0x8t
        0x7t
        0x52t
    .end array-data

    :array_e
    .array-data 1
        0x55t
        0x6t
        0x51t
        0x3t
    .end array-data

    :array_f
    .array-data 1
        0x5t
        0x0t
        0x8t
        0xft
    .end array-data

    :array_10
    .array-data 1
        0x7t
        0x4t
        0x56t
        0x8t
    .end array-data

    :array_11
    .array-data 1
        0x52t
        0xat
        0x54t
        0x53t
    .end array-data

    :array_12
    .array-data 1
        0x57t
        0x54t
        0x6t
        0x52t
    .end array-data

    :array_13
    .array-data 1
        0x6t
        0x3t
        0x9t
        0x51t
    .end array-data

    :array_14
    .array-data 1
        0x51t
        0x2t
        0x55t
        0x4t
    .end array-data

    :array_15
    .array-data 1
        0x7t
        0x4t
        0x8t
        0x51t
    .end array-data

    :array_16
    .array-data 1
        0x3t
        0x53t
        0x51t
        0x50t
    .end array-data

    :array_17
    .array-data 1
        0x56t
        0x7t
        0x55t
        0x4t
    .end array-data

    :array_18
    .array-data 1
        0xat
        0x57t
        0x5t
        0xft
    .end array-data

    :array_19
    .array-data 1
        0x4t
        0x0t
        0x51t
        0x5bt
    .end array-data

    :array_1a
    .array-data 1
        0x55t
        0x6t
        0x51t
        0xdt
    .end array-data

    :array_1b
    .array-data 1
        0x6t
        0xat
        0x56t
        0x54t
    .end array-data

    :array_1c
    .array-data 1
        0x7t
        0xct
        0x6t
        0x52t
    .end array-data

    :array_1d
    .array-data 1
        0x52t
        0x5at
        0x3t
        0x2t
    .end array-data

    :array_1e
    .array-data 1
        0x7t
        0x5bt
        0x54t
        0x52t
    .end array-data

    :array_1f
    .array-data 1
        0x5t
        0x9t
        0xbt
        0x6t
    .end array-data

    :array_20
    .array-data 1
        0x56t
        0x5bt
        0x1t
        0x2t
    .end array-data

    :array_21
    .array-data 1
        0x4t
        0xft
        0x57t
        0x3t
    .end array-data

    :array_22
    .array-data 1
        0x2t
        0x5at
        0x5t
        0x0t
    .end array-data

    :array_23
    .array-data 1
        0x7bt
        0x24t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x29t
        0x27t
    .end array-data
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object v0

    return-object v0
.end method
