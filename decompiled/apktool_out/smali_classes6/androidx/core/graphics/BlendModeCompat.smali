.class public final enum Landroidx/core/graphics/BlendModeCompat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/core/graphics/BlendModeCompat;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/core/graphics/BlendModeCompat;

.field public static final enum CLEAR:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DARKEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum HUE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum MODULATE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum OVERLAY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum PLUS:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SATURATION:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SCREEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum XOR:Landroidx/core/graphics/BlendModeCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    const/4 v5, 0x5

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "4ea5c6"

    const v7, -0x31fbac69

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    new-instance v5, Landroidx/core/graphics/BlendModeCompat;

    const/4 v6, 0x3

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    const-string v7, "d192af"

    const-wide v8, 0x41837bddc8000000L    # 4.0860601E7

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/core/graphics/BlendModeCompat;->SRC:Landroidx/core/graphics/BlendModeCompat;

    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_2

    const-string v8, "c60db3"

    const-wide v10, -0x3e3e95693d800000L    # -5.84396165E8

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->DST:Landroidx/core/graphics/BlendModeCompat;

    new-instance v7, Landroidx/core/graphics/BlendModeCompat;

    const/16 v8, 0x8

    new-array v8, v8, [B

    fill-array-data v8, :array_3

    const-string v9, "5a0580"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/core/graphics/BlendModeCompat;->SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

    new-instance v8, Landroidx/core/graphics/BlendModeCompat;

    const/16 v9, 0x8

    new-array v9, v9, [B

    fill-array-data v9, :array_4

    const-string v10, "1cd118"

    const-wide v12, -0x3e3573bbfa800000L    # -8.90800139E8

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroidx/core/graphics/BlendModeCompat;->DST_OVER:Landroidx/core/graphics/BlendModeCompat;

    new-instance v9, Landroidx/core/graphics/BlendModeCompat;

    const/4 v10, 0x6

    new-array v10, v10, [B

    fill-array-data v10, :array_5

    const-string v11, "36d119"

    const-wide/32 v12, 0x4bab3959

    invoke-static {v10, v11, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    invoke-direct {v9, v10, v11}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    new-instance v10, Landroidx/core/graphics/BlendModeCompat;

    const/4 v11, 0x6

    new-array v11, v11, [B

    fill-array-data v11, :array_6

    const-string v12, "a6278c"

    const v13, -0x314263c1

    invoke-static {v11, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    invoke-direct {v10, v11, v12}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroidx/core/graphics/BlendModeCompat;->DST_IN:Landroidx/core/graphics/BlendModeCompat;

    new-instance v11, Landroidx/core/graphics/BlendModeCompat;

    const/4 v12, 0x7

    new-array v12, v12, [B

    fill-array-data v12, :array_7

    const-string v13, "154aee"

    const-wide v14, 0x41af41d7ea000000L    # 2.62204405E8

    invoke-static {v12, v13, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x7

    invoke-direct {v11, v12, v13}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/core/graphics/BlendModeCompat;->SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

    new-instance v12, Landroidx/core/graphics/BlendModeCompat;

    const/4 v13, 0x7

    new-array v13, v13, [B

    fill-array-data v13, :array_8

    const-string v14, "85852b"

    const-wide/32 v16, 0x64b20a42

    move-wide/from16 v0, v16

    invoke-static {v13, v14, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x8

    invoke-direct {v12, v13, v14}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Landroidx/core/graphics/BlendModeCompat;->DST_OUT:Landroidx/core/graphics/BlendModeCompat;

    new-instance v13, Landroidx/core/graphics/BlendModeCompat;

    const/16 v14, 0x8

    new-array v14, v14, [B

    fill-array-data v14, :array_9

    const-string v15, "b393b9"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9

    invoke-direct {v13, v14, v15}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    const/16 v15, 0x8

    new-array v15, v15, [B

    fill-array-data v15, :array_a

    const-string v16, "65b2b3"

    const v17, -0x330b1a5f

    invoke-static/range {v15 .. v17}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xa

    invoke-direct/range {v14 .. v16}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/core/graphics/BlendModeCompat;->DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_b

    const-string v17, "77bec5"

    const-wide v18, 0x41dadc178cc00000L    # 1.802526259E9

    invoke-static/range {v16 .. v19}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0xb

    invoke-direct/range {v15 .. v17}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/core/graphics/BlendModeCompat;->XOR:Landroidx/core/graphics/BlendModeCompat;

    new-instance v16, Landroidx/core/graphics/BlendModeCompat;

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    fill-array-data v17, :array_c

    const-string v18, "0b225f"

    const-wide/32 v20, -0x3767cd13

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xc

    invoke-direct/range {v16 .. v18}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v16, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    new-instance v17, Landroidx/core/graphics/BlendModeCompat;

    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_d

    const-string v19, "4b3e14"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v17, Landroidx/core/graphics/BlendModeCompat;->MODULATE:Landroidx/core/graphics/BlendModeCompat;

    new-instance v18, Landroidx/core/graphics/BlendModeCompat;

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_e

    const-string v20, "3aab13"

    const-wide/32 v22, -0x3977ee56

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0xe

    invoke-direct/range {v18 .. v20}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v18, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    new-instance v19, Landroidx/core/graphics/BlendModeCompat;

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v20, :array_f

    const-string v21, "b1ee3a"

    const-wide/32 v22, 0x7653b13

    invoke-static/range {v20 .. v23}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0xf

    invoke-direct/range {v19 .. v21}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v19, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    new-instance v20, Landroidx/core/graphics/BlendModeCompat;

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    fill-array-data v21, :array_10

    const-string v22, "f22e1e"

    const/16 v23, -0x546f

    invoke-static/range {v21 .. v23}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x10

    invoke-direct/range {v20 .. v22}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v20, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    new-instance v21, Landroidx/core/graphics/BlendModeCompat;

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    fill-array-data v22, :array_11

    const-string v23, "ab48fa"

    const-wide/32 v24, -0x5574233e

    invoke-static/range {v22 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x11

    invoke-direct/range {v21 .. v23}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v21, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    new-instance v22, Landroidx/core/graphics/BlendModeCompat;

    const/16 v23, 0xb

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_12

    const-string v24, "2cfa23"

    const-wide/32 v26, 0x26170092

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x12

    invoke-direct/range {v22 .. v24}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v22, Landroidx/core/graphics/BlendModeCompat;->COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

    new-instance v23, Landroidx/core/graphics/BlendModeCompat;

    const/16 v24, 0xa

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_13

    const-string v25, "abbeff"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x13

    invoke-direct/range {v23 .. v25}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v23, Landroidx/core/graphics/BlendModeCompat;->COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

    new-instance v24, Landroidx/core/graphics/BlendModeCompat;

    const/16 v25, 0xa

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v25, v0

    fill-array-data v25, :array_14

    const-string v26, "9b0d95"

    const v27, 0x4e5decaf    # 9.30819E8f

    invoke-static/range {v25 .. v27}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x14

    invoke-direct/range {v24 .. v26}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v24, Landroidx/core/graphics/BlendModeCompat;->HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    new-instance v25, Landroidx/core/graphics/BlendModeCompat;

    const/16 v26, 0xa

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    fill-array-data v26, :array_15

    const-string v27, "84de58"

    const v28, -0x313ef4ba

    invoke-static/range {v26 .. v28}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x15

    invoke-direct/range {v25 .. v27}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v25, Landroidx/core/graphics/BlendModeCompat;->SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    new-instance v26, Landroidx/core/graphics/BlendModeCompat;

    const/16 v27, 0xa

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    fill-array-data v27, :array_16

    const-string v28, "53c19a"

    const-wide/32 v30, 0x41e86a31

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x16

    invoke-direct/range {v26 .. v28}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v26, Landroidx/core/graphics/BlendModeCompat;->DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

    new-instance v27, Landroidx/core/graphics/BlendModeCompat;

    const/16 v28, 0x9

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    fill-array-data v28, :array_17

    const-string v29, "735726"

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v28 .. v31}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x17

    invoke-direct/range {v27 .. v29}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v27, Landroidx/core/graphics/BlendModeCompat;->EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

    new-instance v28, Landroidx/core/graphics/BlendModeCompat;

    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    fill-array-data v29, :array_18

    const-string v30, "db505e"

    const/16 v31, 0x1

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x18

    invoke-direct/range {v28 .. v30}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v28, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    new-instance v29, Landroidx/core/graphics/BlendModeCompat;

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v30, v0

    fill-array-data v30, :array_19

    const-string v31, "512aad"

    const/16 v32, 0x0

    const/16 v33, 0x1

    invoke-static/range {v30 .. v33}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x19

    invoke-direct/range {v29 .. v31}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v29, Landroidx/core/graphics/BlendModeCompat;->HUE:Landroidx/core/graphics/BlendModeCompat;

    new-instance v30, Landroidx/core/graphics/BlendModeCompat;

    const/16 v31, 0xa

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    fill-array-data v31, :array_1a

    const-string v32, "2c753e"

    const/16 v33, -0x5b3c

    invoke-static/range {v31 .. v33}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1a

    invoke-direct/range {v30 .. v32}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v30, Landroidx/core/graphics/BlendModeCompat;->SATURATION:Landroidx/core/graphics/BlendModeCompat;

    new-instance v31, Landroidx/core/graphics/BlendModeCompat;

    const/16 v32, 0x5

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v32, v0

    fill-array-data v32, :array_1b

    const-string v33, "4dffcc"

    const-wide v34, -0x3e2b8c0388000000L    # -1.372582368E9

    invoke-static/range {v32 .. v35}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1b

    invoke-direct/range {v31 .. v33}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v31, Landroidx/core/graphics/BlendModeCompat;->COLOR:Landroidx/core/graphics/BlendModeCompat;

    new-instance v32, Landroidx/core/graphics/BlendModeCompat;

    const/16 v33, 0xa

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v33, v0

    fill-array-data v33, :array_1c

    const-string v34, "5301bc"

    const-wide v36, 0x41c2351d53800000L    # 6.10941607E8

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1c

    invoke-direct/range {v32 .. v34}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v32, Landroidx/core/graphics/BlendModeCompat;->LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

    const/16 v33, 0x1d

    move/from16 v0, v33

    new-array v0, v0, [Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v4, v33, v34

    const/4 v4, 0x1

    aput-object v5, v33, v4

    const/4 v4, 0x2

    aput-object v6, v33, v4

    const/4 v4, 0x3

    aput-object v7, v33, v4

    const/4 v4, 0x4

    aput-object v8, v33, v4

    const/4 v4, 0x5

    aput-object v9, v33, v4

    const/4 v4, 0x6

    aput-object v10, v33, v4

    const/4 v4, 0x7

    aput-object v11, v33, v4

    const/16 v4, 0x8

    aput-object v12, v33, v4

    const/16 v4, 0x9

    aput-object v13, v33, v4

    const/16 v4, 0xa

    aput-object v14, v33, v4

    const/16 v4, 0xb

    aput-object v15, v33, v4

    const/16 v4, 0xc

    aput-object v16, v33, v4

    const/16 v4, 0xd

    aput-object v17, v33, v4

    const/16 v4, 0xe

    aput-object v18, v33, v4

    const/16 v4, 0xf

    aput-object v19, v33, v4

    const/16 v4, 0x10

    aput-object v20, v33, v4

    const/16 v4, 0x11

    aput-object v21, v33, v4

    const/16 v4, 0x12

    aput-object v22, v33, v4

    const/16 v4, 0x13

    aput-object v23, v33, v4

    const/16 v4, 0x14

    aput-object v24, v33, v4

    const/16 v4, 0x15

    aput-object v25, v33, v4

    const/16 v4, 0x16

    aput-object v26, v33, v4

    const/16 v4, 0x17

    aput-object v27, v33, v4

    const/16 v4, 0x18

    aput-object v28, v33, v4

    const/16 v4, 0x19

    aput-object v29, v33, v4

    const/16 v4, 0x1a

    aput-object v30, v33, v4

    const/16 v4, 0x1b

    aput-object v31, v33, v4

    const/16 v4, 0x1c

    aput-object v32, v33, v4

    sput-object v33, Landroidx/core/graphics/BlendModeCompat;->$VALUES:[Landroidx/core/graphics/BlendModeCompat;

    return-void

    nop

    :array_0
    .array-data 1
        0x77t
        0x29t
        0x24t
        0x74t
        0x31t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x37t
        0x63t
        0x7at
    .end array-data

    :array_2
    .array-data 1
        0x27t
        0x65t
        0x64t
    .end array-data

    :array_3
    .array-data 1
        0x66t
        0x33t
        0x73t
        0x6at
        0x77t
        0x66t
        0x70t
        0x33t
    .end array-data

    :array_4
    .array-data 1
        0x75t
        0x30t
        0x30t
        0x6et
        0x7et
        0x6et
        0x74t
        0x31t
    .end array-data

    :array_5
    .array-data 1
        0x60t
        0x64t
        0x27t
        0x6et
        0x78t
        0x77t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x25t
        0x65t
        0x66t
        0x68t
        0x71t
        0x2dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x62t
        0x67t
        0x77t
        0x3et
        0x2at
        0x30t
        0x65t
    .end array-data

    :array_8
    .array-data 1
        0x7ct
        0x66t
        0x6ct
        0x6at
        0x7dt
        0x37t
        0x6ct
    .end array-data

    :array_9
    .array-data 1
        0x31t
        0x61t
        0x7at
        0x6ct
        0x23t
        0x6dt
        0x2dt
        0x63t
    .end array-data

    :array_a
    .array-data 1
        0x72t
        0x66t
        0x36t
        0x6dt
        0x23t
        0x67t
        0x79t
        0x65t
    .end array-data

    :array_b
    .array-data 1
        0x6ft
        0x78t
        0x30t
    .end array-data

    :array_c
    .array-data 1
        0x60t
        0x2et
        0x67t
        0x61t
    .end array-data

    :array_d
    .array-data 1
        0x79t
        0x2dt
        0x77t
        0x30t
        0x7dt
        0x75t
        0x60t
        0x27t
    .end array-data

    :array_e
    .array-data 1
        0x60t
        0x22t
        0x33t
        0x27t
        0x74t
        0x7dt
    .end array-data

    nop

    :array_f
    .array-data 1
        0x2dt
        0x67t
        0x20t
        0x37t
        0x7ft
        0x20t
        0x3bt
    .end array-data

    :array_10
    .array-data 1
        0x22t
        0x73t
        0x60t
        0x2et
        0x74t
        0x2bt
    .end array-data

    nop

    :array_11
    .array-data 1
        0x2dt
        0x2bt
        0x73t
        0x70t
        0x32t
        0x24t
        0x2ft
    .end array-data

    :array_12
    .array-data 1
        0x71t
        0x2ct
        0x2at
        0x2et
        0x60t
        0x6ct
        0x76t
        0x2ct
        0x22t
        0x26t
        0x77t
    .end array-data

    :array_13
    .array-data 1
        0x22t
        0x2dt
        0x2et
        0x2at
        0x34t
        0x39t
        0x23t
        0x37t
        0x30t
        0x2bt
    .end array-data

    nop

    :array_14
    .array-data 1
        0x71t
        0x23t
        0x62t
        0x20t
        0x66t
        0x79t
        0x70t
        0x25t
        0x78t
        0x30t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x6bt
        0x7bt
        0x22t
        0x31t
        0x6at
        0x74t
        0x71t
        0x73t
        0x2ct
        0x31t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x71t
        0x7at
        0x25t
        0x77t
        0x7ct
        0x33t
        0x70t
        0x7dt
        0x20t
        0x74t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x72t
        0x6bt
        0x76t
        0x7bt
        0x67t
        0x65t
        0x7et
        0x7ct
        0x7bt
    .end array-data

    nop

    :array_18
    .array-data 1
        0x29t
        0x37t
        0x79t
        0x64t
        0x7ct
        0x35t
        0x28t
        0x3bt
    .end array-data

    :array_19
    .array-data 1
        0x7dt
        0x64t
        0x77t
    .end array-data

    :array_1a
    .array-data 1
        0x61t
        0x22t
        0x63t
        0x60t
        0x61t
        0x24t
        0x66t
        0x2at
        0x78t
        0x7bt
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x77t
        0x2bt
        0x2at
        0x29t
        0x31t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x79t
        0x66t
        0x7dt
        0x78t
        0x2ct
        0x2ct
        0x66t
        0x7at
        0x64t
        0x68t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    const-class v0, Landroidx/core/graphics/BlendModeCompat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/core/graphics/BlendModeCompat;

    return-object v0
.end method

.method public static values()[Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->$VALUES:[Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v0}, [Landroidx/core/graphics/BlendModeCompat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/graphics/BlendModeCompat;

    return-object v0
.end method
