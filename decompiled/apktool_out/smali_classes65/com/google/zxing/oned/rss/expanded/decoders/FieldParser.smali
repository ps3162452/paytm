.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "da56fa"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_1

    const-string v8, "f5b3df"

    const v9, 0x4e2ac362    # 7.162328E8f

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [B

    fill-array-data v8, :array_2

    const-string v9, "21ae85"

    const-wide/32 v10, -0x3c71a4a

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [B

    fill-array-data v9, :array_3

    const-string v10, "b51c08"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_4

    const-string v11, "1131dc"

    const-wide v12, -0x3e6dbe5c34000000L    # -7.6572915E7

    invoke-static {v10, v11, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [B

    fill-array-data v11, :array_5

    const-string v12, "238c7e"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [B

    fill-array-data v12, :array_6

    const-string v13, "be94ad"

    const-wide/32 v14, -0x63a58208

    invoke-static {v12, v13, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    sget-object v11, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    sget-object v13, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_7

    const-string v17, "8b517c"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    fill-array-data v17, :array_8

    const-string v18, "93f9b2"

    const v19, -0x31de0e82

    invoke-static/range {v17 .. v19}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x1e

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    sget-object v16, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_9

    const-string v20, "97fcf6"

    const v21, 0x4da3f6ec    # 3.4385856E8f

    invoke-static/range {v19 .. v21}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    sget-object v19, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x1e

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_a

    const-string v21, "eb2cf7"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v23}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x1e

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    fill-array-data v21, :array_b

    const-string v22, "617515"

    const/16 v23, 0x6e69

    invoke-static/range {v21 .. v23}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const/16 v21, 0x1e

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    fill-array-data v22, :array_c

    const-string v23, "362b24"

    const-wide/32 v24, -0x76a05df0

    invoke-static/range {v22 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const/16 v22, 0x1e

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    sget-object v22, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v25, v0

    fill-array-data v25, :array_d

    const-string v26, "335ac6"

    const-wide v28, -0x3e2935b02ec00000L    # -1.529429829E9

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    sget-object v25, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const/16 v25, 0x1e

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v25, 0x18

    move/from16 v0, v25

    new-array v0, v0, [[Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v4, v25, v26

    const/4 v4, 0x1

    aput-object v5, v25, v4

    const/4 v4, 0x2

    aput-object v6, v25, v4

    const/4 v4, 0x3

    aput-object v7, v25, v4

    const/4 v4, 0x4

    aput-object v8, v25, v4

    const/4 v4, 0x5

    aput-object v9, v25, v4

    const/4 v4, 0x6

    aput-object v10, v25, v4

    const/4 v4, 0x7

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_e

    const-string v8, "1c72d3"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0x8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_f

    const-string v8, "ffbe41"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0x9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_10

    const-string v8, "2e8075"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0xa

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_11

    const-string v8, "742db0"

    const v9, 0x4eba582d

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0xb

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_12

    const-string v8, "016045"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v12, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0xc

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_13

    const-string v8, "438a07"

    const/16 v9, 0x3db

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v13, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0xd

    aput-object v14, v25, v4

    const/16 v4, 0xe

    aput-object v15, v25, v4

    const/16 v4, 0xf

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_14

    const-string v8, "b2421f"

    const v9, 0x4e9dd4a9

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0x10

    aput-object v17, v25, v4

    const/16 v4, 0x11

    aput-object v18, v25, v4

    const/16 v4, 0x12

    aput-object v19, v25, v4

    const/16 v4, 0x13

    aput-object v20, v25, v4

    const/16 v4, 0x14

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_15

    const-string v8, "d1abef"

    const-wide v10, -0x3e3992a8f3800000L    # -7.52528921E8

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v21, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0x15

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_16

    const-string v8, "29b233"

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v22, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0x16

    aput-object v23, v25, v4

    const/16 v4, 0x17

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_17

    const-string v8, "53331c"

    const-wide v10, -0x3e3f337086000000L    # -5.6368306E8

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v24, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    sput-object v25, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [B

    fill-array-data v6, :array_18

    const-string v7, "ceabd5"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_19

    const-string v8, "46ac59"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [B

    fill-array-data v8, :array_1a

    const-string v9, "884aab"

    const v10, 0x4dfd1e98    # 5.3083008E8f

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [B

    fill-array-data v9, :array_1b

    const-string v10, "49e4aa"

    const-wide v12, 0x41d931bf51c00000L    # 1.690762567E9

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x1e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [B

    fill-array-data v10, :array_1c

    const-string v11, "a96eee"

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x1e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v9, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [B

    fill-array-data v12, :array_1d

    const-string v13, "842f5b"

    const/16 v14, -0x57a1

    invoke-static {v12, v13, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0x14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    sget-object v11, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    sget-object v13, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_1e

    const-string v17, "9d06fd"

    const-wide v18, 0x41cb03730b800000L    # 9.06421783E8

    invoke-static/range {v16 .. v19}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0xd

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    fill-array-data v17, :array_1f

    const-string v18, "23a086"

    const-wide/32 v20, 0x4d673568

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0xd

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_20

    const-string v19, "6a13e9"

    const-wide v20, -0x3e49008c3f000000L    # -3.85840065E8

    invoke-static/range {v18 .. v21}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0xd

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_21

    const-string v20, "0947ae"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0xd

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    sget-object v18, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    fill-array-data v21, :array_22

    const-string v22, "70fcc0"

    const/16 v23, 0x1

    const/16 v24, 0x1

    invoke-static/range {v21 .. v24}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const/16 v21, 0xf

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    fill-array-data v22, :array_23

    const-string v23, "0ddad5"

    const-wide v24, 0x41d652447e000000L    # 1.497960952E9

    invoke-static/range {v22 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_24

    const-string v24, "64f6ec"

    const/16 v25, 0x5961

    invoke-static/range {v23 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0xf

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_25

    const-string v25, "6f0291"

    const-wide v26, 0x41d10280ca400000L    # 1.141506857E9

    invoke-static/range {v24 .. v27}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v25, v0

    fill-array-data v25, :array_26

    const-string v26, "a68969"

    const/16 v27, 0x2a02

    invoke-static/range {v25 .. v27}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    fill-array-data v26, :array_27

    const-string v27, "654650"

    const/16 v28, 0x6379

    invoke-static/range {v26 .. v28}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x17

    move/from16 v0, v25

    new-array v0, v0, [[Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v4, v25, v26

    const/4 v4, 0x1

    aput-object v5, v25, v4

    const/4 v4, 0x2

    aput-object v6, v25, v4

    const/4 v4, 0x3

    aput-object v7, v25, v4

    const/4 v4, 0x4

    aput-object v8, v25, v4

    const/4 v4, 0x5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_28

    const-string v8, "6cfcfe"

    const/16 v26, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v7, v8, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/4 v4, 0x6

    aput-object v10, v25, v4

    const/4 v4, 0x7

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_29

    const-string v8, "9e009d"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0x8

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_2a

    const-string v8, "fc363f"

    const/16 v9, 0x870

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v12, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0x9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_2b

    const-string v8, "48c06a"

    const-wide/32 v10, 0x48ef65cb

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0xa

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_2c

    const-string v8, "e81474"

    const v9, 0x4e5e8960

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v13, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0xb

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_2d

    const-string v8, "3c6b43"

    const-wide/32 v10, -0x6e075b3b

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0xc

    aput-object v14, v25, v4

    const/16 v4, 0xd

    aput-object v15, v25, v4

    const/16 v4, 0xe

    aput-object v16, v25, v4

    const/16 v4, 0xf

    aput-object v17, v25, v4

    const/16 v4, 0x10

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_2e

    const-string v8, "e57ddf"

    const/16 v9, -0x70e7

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v18, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v25, v4

    const/16 v4, 0x11

    aput-object v19, v25, v4

    const/16 v4, 0x12

    aput-object v20, v25, v4

    const/16 v4, 0x13

    aput-object v21, v25, v4

    const/16 v4, 0x14

    aput-object v22, v25, v4

    const/16 v4, 0x15

    aput-object v23, v25, v4

    const/16 v4, 0x16

    aput-object v24, v25, v4

    sput-object v25, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [B

    fill-array-data v6, :array_2f

    const-string v7, "fbb98f"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_30

    const-string v8, "a9ae9a"

    const v9, -0x3412cdf6    # -3.1089684E7f

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [B

    fill-array-data v8, :array_31

    const-string v9, "783d4e"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [B

    fill-array-data v9, :array_32

    const-string v10, "49aa26"

    const-wide v12, 0x41d9324c43400000L    # 1.690906893E9

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [B

    fill-array-data v10, :array_33

    const-string v11, "b40938"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [B

    fill-array-data v11, :array_34

    const-string v12, "7c5912"

    const-wide v14, -0x3e70de66b8000000L    # -6.5286953E7

    invoke-static {v11, v12, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [B

    fill-array-data v12, :array_35

    const-string v13, "bcdea5"

    const-wide/32 v14, -0x27c14aba

    invoke-static {v12, v13, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [B

    fill-array-data v13, :array_36

    const-string v14, "4fc669"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x3

    new-array v14, v14, [B

    fill-array-data v14, :array_37

    const-string v15, "d0d05b"

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v14 .. v17}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x3

    new-array v15, v15, [B

    fill-array-data v15, :array_38

    const-string v16, "3e87ed"

    const-wide/32 v18, 0x4beb8b5c

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v15, v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_39

    const-string v17, "6b9bd2"

    const/16 v18, -0x143

    invoke-static/range {v16 .. v18}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    fill-array-data v17, :array_3a

    const-string v18, "93439e"

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-static/range {v17 .. v20}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_3b

    const-string v19, "fe4b38"

    const-wide/32 v20, -0x144b6f78

    invoke-static/range {v18 .. v21}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_3c

    const-string v20, "6f1e86"

    const v21, 0x4ee2922c

    invoke-static/range {v19 .. v21}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_3d

    const-string v21, "5df65f"

    const-wide v22, -0x3e26b4a3ba800000L    # -1.697476886E9

    invoke-static/range {v20 .. v23}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    fill-array-data v21, :array_3e

    const-string v22, "159030"

    const/16 v23, -0x7ade

    invoke-static/range {v21 .. v23}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    fill-array-data v22, :array_3f

    const-string v23, "7f478d"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_40

    const-string v24, "6723c4"

    const-wide/32 v26, 0x1397b869

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_41

    const-string v25, "02bb4a"

    const-wide v26, -0x3e3b357937000000L    # -6.97634194E8

    invoke-static/range {v24 .. v27}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x6

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v25, v0

    fill-array-data v25, :array_42

    const-string v26, "afc86f"

    const/16 v27, -0x3603

    invoke-static/range {v25 .. v27}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x6

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    fill-array-data v26, :array_43

    const-string v27, "ffcf51"

    const/16 v28, -0x19e5

    invoke-static/range {v26 .. v28}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x6

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    fill-array-data v27, :array_44

    const-string v28, "6f9f8a"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x6

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    fill-array-data v28, :array_45

    const-string v29, "920ead"

    const-wide/32 v30, -0x23f8b7ca

    invoke-static/range {v28 .. v31}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    fill-array-data v29, :array_46

    const-string v30, "e6ad1f"

    const-wide v32, 0x41cd125b94000000L    # 9.75484712E8

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v30, v0

    fill-array-data v30, :array_47

    const-string v31, "ff70cf"

    const-wide v32, 0x41d5316389400000L    # 1.422233125E9

    invoke-static/range {v30 .. v33}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const/16 v30, 0x6

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    fill-array-data v31, :array_48

    const-string v32, "8817b6"

    const-wide v34, -0x3e28708149800000L    # -1.581120218E9

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x6

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v32, v0

    fill-array-data v32, :array_49

    const-string v33, "7d887e"

    const/16 v34, -0x42fe

    invoke-static/range {v32 .. v34}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    sget-object v32, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v32, v30, v31

    const/16 v31, 0x2

    const/16 v32, 0xf

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v33, v0

    fill-array-data v33, :array_4a

    const-string v34, "3fb947"

    const-wide v36, 0x41d7e4c174c00000L    # 1.603470803E9

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    sget-object v33, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const/16 v33, 0x12

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v34, v0

    fill-array-data v34, :array_4b

    const-string v35, "9df649"

    const/16 v36, -0x59b5

    invoke-static/range {v34 .. v36}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    sget-object v34, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v34, v32, v33

    const/16 v33, 0x2

    const/16 v34, 0xf

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [B

    move-object/from16 v35, v0

    fill-array-data v35, :array_4c

    const-string v36, "9b8d0b"

    const/16 v37, 0x0

    const/16 v38, 0x1

    invoke-static/range {v35 .. v38}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    sget-object v35, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v35, v33, v34

    const/16 v34, 0x2

    const/16 v35, 0x12

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [B

    move-object/from16 v36, v0

    fill-array-data v36, :array_4d

    const-string v37, "661c9d"

    const-wide/32 v38, 0x5aca2cec

    invoke-static/range {v36 .. v39}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    sget-object v36, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v36, v34, v35

    const/16 v35, 0x2

    const/16 v36, 0x1e

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x39

    move/from16 v0, v35

    new-array v0, v0, [[Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x3

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v39, v0

    fill-array-data v39, :array_4e

    const-string v40, "7f8e19"

    const/16 v41, 0x51b9

    invoke-static/range {v39 .. v41}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const/16 v39, 0x6

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v4, v35, v36

    const/4 v4, 0x2

    aput-object v5, v35, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v36, 0x0

    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [B

    move-object/from16 v37, v0

    fill-array-data v37, :array_4f

    const-string v38, "12a01f"

    const-wide v40, 0x41d6aba44f000000L    # 1.521389884E9

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-wide/from16 v2, v40

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v5, v36

    const/16 v36, 0x1

    const/16 v37, 0x6

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v5, v36

    aput-object v5, v35, v4

    const/4 v4, 0x4

    aput-object v6, v35, v4

    const/4 v4, 0x5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [B

    move-object/from16 v36, v0

    fill-array-data v36, :array_50

    const-string v37, "8339cc"

    const-wide/32 v38, 0x598e3b56

    invoke-static/range {v36 .. v39}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v5, v6

    const/4 v6, 0x1

    const/16 v36, 0x6

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v5, v6

    aput-object v5, v35, v4

    const/4 v4, 0x6

    aput-object v7, v35, v4

    const/4 v4, 0x7

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_51

    const-string v36, "40b495"

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-static {v7, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_52

    const-string v36, "f388d9"

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-static {v7, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x9

    aput-object v8, v35, v4

    const/16 v4, 0xa

    aput-object v9, v35, v4

    const/16 v4, 0xb

    aput-object v10, v35, v4

    const/16 v4, 0xc

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_53

    const-string v8, "5ae417"

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0xd

    aput-object v11, v35, v4

    const/16 v4, 0xe

    aput-object v12, v35, v4

    const/16 v4, 0xf

    aput-object v13, v35, v4

    const/16 v4, 0x10

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_54

    const-string v8, "7b117b"

    const-wide/32 v10, 0x3f7cf589

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x11

    aput-object v14, v35, v4

    const/16 v4, 0x12

    aput-object v15, v35, v4

    const/16 v4, 0x13

    aput-object v16, v35, v4

    const/16 v4, 0x14

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_55

    const-string v8, "724e42"

    const/16 v9, -0x336a

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x15

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_56

    const-string v8, "4502cf"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x16

    aput-object v17, v35, v4

    const/16 v4, 0x17

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_57

    const-string v8, "dccfe2"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x18

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_58

    const-string v8, "55ccf1"

    const v9, 0x4bb657ea    # 2.3900116E7f

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x19

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_59

    const-string v8, "4eb9e4"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x1a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_5a

    const-string v8, "cd713c"

    const v9, -0x31cb285f

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x1b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_5b

    const-string v8, "f0c95a"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x1c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_5c

    const-string v8, "f77767"

    const/16 v9, 0x7be2

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x1d

    aput-object v18, v35, v4

    const/16 v4, 0x1e

    aput-object v19, v35, v4

    const/16 v4, 0x1f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_5d

    const-string v8, "432861"

    const/16 v9, 0x7d5d

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x20

    aput-object v20, v35, v4

    const/16 v4, 0x21

    aput-object v21, v35, v4

    const/16 v4, 0x22

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_5e

    const-string v8, "4448f3"

    const-wide/32 v10, 0x154c49f5

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x23

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_5f

    const-string v8, "5c00bf"

    const v9, 0x4edfd183

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x24

    aput-object v22, v35, v4

    const/16 v4, 0x25

    aput-object v23, v35, v4

    const/16 v4, 0x26

    aput-object v24, v35, v4

    const/16 v4, 0x27

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_60

    const-string v8, "2c4e20"

    const v9, -0x316989e6

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x28

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_61

    const-string v8, "785e1f"

    const-wide/32 v10, -0x72437d63

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x29

    aput-object v25, v35, v4

    const/16 v4, 0x2a

    aput-object v26, v35, v4

    const/16 v4, 0x2b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_62

    const-string v8, "0eec7a"

    const-wide v10, 0x41c62f3d19000000L    # 7.4438917E8

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x2c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_63

    const-string v8, "0c6f98"

    const-wide/32 v10, -0x49eeef80

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x2d

    aput-object v27, v35, v4

    const/16 v4, 0x2e

    aput-object v28, v35, v4

    const/16 v4, 0x2f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_64

    const-string v8, "c07bd9"

    const-wide/32 v10, 0x543bbb3

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x30

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_65

    const-string v8, "9334ca"

    const v9, 0x4dda3721    # 4.5763075E8f

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x31

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_66

    const-string v8, "90dbfb"

    const-wide v10, 0x41de7efc86800000L    # 2.04655465E9

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x32

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_67

    const-string v8, "b71ce4"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v35, v4

    const/16 v4, 0x33

    aput-object v29, v35, v4

    const/16 v4, 0x34

    aput-object v30, v35, v4

    const/16 v4, 0x35

    aput-object v31, v35, v4

    const/16 v4, 0x36

    aput-object v32, v35, v4

    const/16 v4, 0x37

    aput-object v33, v35, v4

    const/16 v4, 0x38

    aput-object v34, v35, v4

    sput-object v35, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [B

    fill-array-data v6, :array_68

    const-string v7, "8f9030"

    const-wide v8, 0x41d5955b41800000L    # 1.448439046E9

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [B

    fill-array-data v8, :array_69

    const-string v9, "df831b"

    const v10, -0x3198099f

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    sget-object v9, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [B

    fill-array-data v12, :array_6a

    const-string v13, "806264"

    const v14, 0x4ef3382e    # 2.0402726E9f

    invoke-static {v12, v13, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    sget-object v11, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    sget-object v13, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_6b

    const-string v17, "d4e426"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    fill-array-data v17, :array_6c

    const-string v18, "9a9851"

    const v19, -0x314539ef

    invoke-static/range {v17 .. v19}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x46

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_6d

    const-string v19, "cc68d5"

    const/16 v20, 0x6672

    invoke-static/range {v18 .. v20}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const/16 v18, 0x46

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x12

    move/from16 v0, v17

    new-array v0, v0, [[Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/4 v4, 0x1

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_6e

    const-string v21, "a124d6"

    const-wide/32 v22, 0x6c394c0b

    invoke-static/range {v20 .. v23}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    const/4 v5, 0x2

    const/16 v19, 0x1e

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v18, v5

    aput-object v18, v17, v4

    const/4 v4, 0x2

    aput-object v6, v17, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_6f

    const-string v19, "2611a6"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v6

    const/4 v6, 0x1

    const/16 v18, 0xe

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v5, v6

    aput-object v5, v17, v4

    const/4 v4, 0x4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_70

    const-string v19, "1d907c"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v6

    const/4 v6, 0x1

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v17, v4

    const/4 v4, 0x5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_71

    const-string v18, "fa508a"

    const v19, 0x4ea03b92    # 1.3441293E9f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v7, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v17, v4

    const/4 v4, 0x6

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_72

    const-string v8, "7320d6"

    const v18, -0x3183f041

    move/from16 v0, v18

    invoke-static {v7, v8, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v17, v4

    const/4 v4, 0x7

    aput-object v10, v17, v4

    const/16 v4, 0x8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_73

    const-string v8, "cc550d"

    const-wide/32 v18, 0x1508167b

    move-wide/from16 v0, v18

    invoke-static {v7, v8, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v17, v4

    const/16 v4, 0x9

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_74

    const-string v8, "5560fb"

    const-wide/32 v18, -0x7819572

    move-wide/from16 v0, v18

    invoke-static {v7, v8, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v17, v4

    const/16 v4, 0xa

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_75

    const-string v8, "016a0a"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v12, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v17, v4

    const/16 v4, 0xb

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_76

    const-string v8, "148c53"

    const-wide/32 v10, 0x1962cec0

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v17, v4

    const/16 v4, 0xc

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_77

    const-string v8, "932c3f"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v13, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v17, v4

    const/16 v4, 0xd

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_78

    const-string v8, "aa58f5"

    const/16 v9, 0x7b85

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v17, v4

    const/16 v4, 0xe

    aput-object v14, v17, v4

    const/16 v4, 0xf

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_79

    const-string v8, "036a45"

    const-wide/32 v10, 0x1c99750

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v17, v4

    const/16 v4, 0x10

    aput-object v15, v17, v4

    const/16 v4, 0x11

    aput-object v16, v17, v4

    sput-object v17, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x54t
        0x51t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x56t
        0x4t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x3t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x53t
        0x5t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x3t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x53t
        0x56t
    .end array-data

    nop

    :array_7
    .array-data 1
        0xbt
        0x55t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x0t
        0x3t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x0t
        0x5t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x5ct
        0x51t
    .end array-data

    nop

    :array_b
    .array-data 1
        0xft
        0x5t
    .end array-data

    nop

    :array_c
    .array-data 1
        0xat
        0x3t
    .end array-data

    nop

    :array_d
    .array-data 1
        0xat
        0xbt
    .end array-data

    nop

    :array_e
    .array-data 1
        0x0t
        0x56t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x57t
        0x51t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x0t
        0x55t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x5t
        0x5t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x2t
        0x3t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x7t
        0x3t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x5bt
        0x3t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x5dt
        0x7t
    .end array-data

    nop

    :array_16
    .array-data 1
        0xbt
        0xet
    .end array-data

    nop

    :array_17
    .array-data 1
        0xct
        0xat
    .end array-data

    nop

    :array_18
    .array-data 1
        0x51t
        0x51t
        0x51t
    .end array-data

    :array_19
    .array-data 1
        0x6t
        0x2t
        0x50t
    .end array-data

    :array_1a
    .array-data 1
        0xat
        0xct
        0x6t
    .end array-data

    :array_1b
    .array-data 1
        0x6t
        0xct
        0x55t
    .end array-data

    :array_1c
    .array-data 1
        0x53t
        0xct
        0x7t
    .end array-data

    :array_1d
    .array-data 1
        0xat
        0x1t
        0x6t
    .end array-data

    :array_1e
    .array-data 1
        0xdt
        0x55t
        0x1t
    .end array-data

    :array_1f
    .array-data 1
        0x6t
        0x2t
        0x53t
    .end array-data

    :array_20
    .array-data 1
        0x2t
        0x50t
        0x2t
    .end array-data

    :array_21
    .array-data 1
        0x4t
        0x8t
        0x0t
    .end array-data

    :array_22
    .array-data 1
        0x3t
        0x2t
        0x57t
    .end array-data

    :array_23
    .array-data 1
        0x4t
        0x56t
        0x56t
    .end array-data

    :array_24
    .array-data 1
        0x2t
        0x6t
        0x55t
    .end array-data

    :array_25
    .array-data 1
        0x2t
        0x54t
        0x4t
    .end array-data

    :array_26
    .array-data 1
        0x55t
        0x4t
        0xdt
    .end array-data

    :array_27
    .array-data 1
        0x2t
        0x7t
        0x2t
    .end array-data

    :array_28
    .array-data 1
        0x4t
        0x56t
        0x55t
    .end array-data

    :array_29
    .array-data 1
        0xdt
        0x55t
        0x0t
    .end array-data

    :array_2a
    .array-data 1
        0x52t
        0x53t
        0x2t
    .end array-data

    :array_2b
    .array-data 1
        0x0t
        0x8t
        0x51t
    .end array-data

    :array_2c
    .array-data 1
        0x51t
        0x8t
        0x2t
    .end array-data

    :array_2d
    .array-data 1
        0x7t
        0x52t
        0x6t
    .end array-data

    :array_2e
    .array-data 1
        0x51t
        0x7t
        0x7t
    .end array-data

    :array_2f
    .array-data 1
        0x55t
        0x53t
        0x53t
    .end array-data

    :array_30
    .array-data 1
        0x52t
        0x8t
        0x53t
    .end array-data

    :array_31
    .array-data 1
        0x4t
        0x9t
        0x7t
    .end array-data

    :array_32
    .array-data 1
        0x7t
        0x8t
        0x57t
    .end array-data

    :array_33
    .array-data 1
        0x51t
        0x6t
        0x2t
    .end array-data

    :array_34
    .array-data 1
        0x4t
        0x51t
        0x6t
    .end array-data

    :array_35
    .array-data 1
        0x51t
        0x51t
        0x50t
    .end array-data

    :array_36
    .array-data 1
        0x7t
        0x54t
        0x55t
    .end array-data

    :array_37
    .array-data 1
        0x57t
        0x2t
        0x53t
    .end array-data

    :array_38
    .array-data 1
        0x0t
        0x57t
        0x0t
    .end array-data

    :array_39
    .array-data 1
        0x5t
        0x51t
        0x9t
    .end array-data

    :array_3a
    .array-data 1
        0xat
        0x0t
        0x5t
    .end array-data

    :array_3b
    .array-data 1
        0x55t
        0x56t
        0x6t
    .end array-data

    :array_3c
    .array-data 1
        0x5t
        0x55t
        0x4t
    .end array-data

    :array_3d
    .array-data 1
        0x6t
        0x50t
        0x53t
    .end array-data

    :array_3e
    .array-data 1
        0x2t
        0x1t
        0xft
    .end array-data

    :array_3f
    .array-data 1
        0x4t
        0x52t
        0xct
    .end array-data

    :array_40
    .array-data 1
        0x5t
        0x3t
        0xbt
    .end array-data

    :array_41
    .array-data 1
        0x3t
        0x7t
        0x50t
    .end array-data

    :array_42
    .array-data 1
        0x52t
        0x53t
        0x50t
    .end array-data

    :array_43
    .array-data 1
        0x55t
        0x53t
        0x57t
    .end array-data

    :array_44
    .array-data 1
        0x5t
        0x53t
        0xet
    .end array-data

    :array_45
    .array-data 1
        0xat
        0x4t
        0x0t
    .end array-data

    :array_46
    .array-data 1
        0x56t
        0x0t
        0x52t
    .end array-data

    :array_47
    .array-data 1
        0x55t
        0x50t
        0x3t
    .end array-data

    :array_48
    .array-data 1
        0xbt
        0xet
        0x8t
    .end array-data

    :array_49
    .array-data 1
        0x4t
        0x5dt
        0x8t
    .end array-data

    :array_4a
    .array-data 1
        0x0t
        0x5ft
        0x53t
    .end array-data

    :array_4b
    .array-data 1
        0xat
        0x5dt
        0x54t
    .end array-data

    :array_4c
    .array-data 1
        0xat
        0x5bt
        0xbt
    .end array-data

    :array_4d
    .array-data 1
        0x1t
        0x6t
        0x2t
    .end array-data

    :array_4e
    .array-data 1
        0x4t
        0x57t
        0x8t
    .end array-data

    :array_4f
    .array-data 1
        0x2t
        0x3t
        0x52t
    .end array-data

    :array_50
    .array-data 1
        0xbt
        0x2t
        0x6t
    .end array-data

    :array_51
    .array-data 1
        0x7t
        0x2t
        0x52t
    .end array-data

    :array_52
    .array-data 1
        0x55t
        0x1t
        0x9t
    .end array-data

    :array_53
    .array-data 1
        0x6t
        0x53t
        0x50t
    .end array-data

    :array_54
    .array-data 1
        0x4t
        0x50t
        0x8t
    .end array-data

    :array_55
    .array-data 1
        0x4t
        0x1t
        0x7t
    .end array-data

    :array_56
    .array-data 1
        0x7t
        0x6t
        0x4t
    .end array-data

    :array_57
    .array-data 1
        0x57t
        0x50t
        0x55t
    .end array-data

    :array_58
    .array-data 1
        0x6t
        0x1t
        0x53t
    .end array-data

    :array_59
    .array-data 1
        0x7t
        0x51t
        0x53t
    .end array-data

    :array_5a
    .array-data 1
        0x50t
        0x50t
        0x5t
    .end array-data

    :array_5b
    .array-data 1
        0x55t
        0x4t
        0x50t
    .end array-data

    :array_5c
    .array-data 1
        0x55t
        0x3t
        0x3t
    .end array-data

    :array_5d
    .array-data 1
        0x7t
        0x7t
        0x5t
    .end array-data

    :array_5e
    .array-data 1
        0x7t
        0x1t
        0x4t
    .end array-data

    :array_5f
    .array-data 1
        0x6t
        0x56t
        0x1t
    .end array-data

    :array_60
    .array-data 1
        0x1t
        0x56t
        0x1t
    .end array-data

    :array_61
    .array-data 1
        0x4t
        0xdt
        0x3t
    .end array-data

    :array_62
    .array-data 1
        0x3t
        0x53t
        0x54t
    .end array-data

    :array_63
    .array-data 1
        0x3t
        0x55t
        0x4t
    .end array-data

    :array_64
    .array-data 1
        0x50t
        0x6t
        0x2t
    .end array-data

    :array_65
    .array-data 1
        0xat
        0x5t
        0x5t
    .end array-data

    :array_66
    .array-data 1
        0xat
        0x6t
        0x53t
    .end array-data

    :array_67
    .array-data 1
        0x51t
        0x1t
        0x9t
    .end array-data

    :array_68
    .array-data 1
        0xft
        0x56t
        0x9t
        0x1t
    .end array-data

    :array_69
    .array-data 1
        0x53t
        0x56t
        0x8t
        0x0t
    .end array-data

    :array_6a
    .array-data 1
        0x0t
        0x0t
        0x6t
        0x7t
    .end array-data

    :array_6b
    .array-data 1
        0x5ct
        0x5t
        0x55t
        0x5t
    .end array-data

    :array_6c
    .array-data 1
        0x1t
        0x50t
        0x8t
        0x8t
    .end array-data

    :array_6d
    .array-data 1
        0x5bt
        0x51t
        0x6t
        0x8t
    .end array-data

    :array_6e
    .array-data 1
        0x56t
        0x1t
        0x2t
        0x6t
    .end array-data

    :array_6f
    .array-data 1
        0xat
        0x6t
        0x1t
        0x0t
    .end array-data

    :array_70
    .array-data 1
        0x9t
        0x54t
        0x9t
        0x2t
    .end array-data

    :array_71
    .array-data 1
        0x5et
        0x51t
        0x5t
        0x3t
    .end array-data

    :array_72
    .array-data 1
        0xft
        0x3t
        0x2t
        0x4t
    .end array-data

    :array_73
    .array-data 1
        0x5bt
        0x53t
        0x5t
        0x3t
    .end array-data

    :array_74
    .array-data 1
        0xdt
        0x5t
        0x6t
        0x7t
    .end array-data

    :array_75
    .array-data 1
        0x8t
        0x1t
        0x6t
        0x59t
    .end array-data

    :array_76
    .array-data 1
        0x9t
        0x4t
        0x9t
        0x5bt
    .end array-data

    :array_77
    .array-data 1
        0x1t
        0x3t
        0x0t
        0x53t
    .end array-data

    :array_78
    .array-data 1
        0x59t
        0x50t
        0x5t
        0x8t
    .end array-data

    :array_79
    .array-data 1
        0x8t
        0x2t
        0x6t
        0x53t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v8, :cond_1

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    aget-object v6, v5, v1

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    aget-object v0, v5, v7

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    aget-object v0, v5, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v8, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    aget-object v0, v5, v7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v8, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v10, :cond_5

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5
    invoke-virtual {p0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_8

    aget-object v5, v3, v0

    aget-object v6, v5, v1

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    aget-object v0, v5, v7

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v1, :cond_6

    aget-object v0, v5, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v10, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    aget-object v0, v5, v7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v10, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_b

    aget-object v5, v3, v0

    aget-object v6, v5, v1

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    aget-object v0, v5, v7

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v1, :cond_9

    aget-object v0, v5, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v9, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    aget-object v0, v5, v7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v9, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v9, :cond_c

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_c
    invoke-virtual {p0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    move v0, v1

    :goto_4
    if-ge v0, v4, :cond_f

    aget-object v5, v3, v0

    aget-object v6, v5, v1

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    aget-object v0, v5, v7

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    aget-object v0, v5, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v9, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    aget-object v0, v5, v7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v9, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p0, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, p0, p1

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    add-int v1, p0, p1

    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int v2, p0, p1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int v2, p0, p1

    if-ge v0, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
