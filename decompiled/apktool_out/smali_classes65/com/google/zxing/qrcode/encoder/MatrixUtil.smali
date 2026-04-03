.class final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    const/4 v4, 0x7

    new-array v4, v4, [[I

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_4

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    aput-object v2, v4, v1

    const/4 v1, 0x5

    aput-object v3, v4, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    aput-object v2, v4, v1

    sput-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    const/4 v2, 0x5

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    aput-object v3, v2, v1

    sput-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_f

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_10

    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_11

    const/4 v7, 0x7

    new-array v7, v7, [I

    fill-array-data v7, :array_12

    const/4 v8, 0x7

    new-array v8, v8, [I

    fill-array-data v8, :array_13

    const/4 v9, 0x7

    new-array v9, v9, [I

    fill-array-data v9, :array_14

    const/4 v10, 0x7

    new-array v10, v10, [I

    fill-array-data v10, :array_15

    const/4 v11, 0x7

    new-array v11, v11, [I

    fill-array-data v11, :array_16

    const/4 v12, 0x7

    new-array v12, v12, [I

    fill-array-data v12, :array_17

    const/4 v13, 0x7

    new-array v13, v13, [I

    fill-array-data v13, :array_18

    const/4 v14, 0x7

    new-array v14, v14, [I

    fill-array-data v14, :array_19

    const/4 v15, 0x7

    new-array v15, v15, [I

    fill-array-data v15, :array_1a

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_1b

    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1c

    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_1d

    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_1e

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_1f

    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_20

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_21

    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_22

    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_23

    const/16 v25, 0x7

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_24

    const/16 v26, 0x7

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_25

    const/16 v27, 0x7

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_26

    const/16 v28, 0x7

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_27

    const/16 v29, 0x7

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_28

    const/16 v30, 0x7

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    fill-array-data v30, :array_29

    const/16 v31, 0x7

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    fill-array-data v31, :array_2a

    const/16 v32, 0x7

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    fill-array-data v32, :array_2b

    const/16 v33, 0x28

    move/from16 v0, v33

    new-array v0, v0, [[I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x7

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    fill-array-data v35, :array_2c

    aput-object v35, v33, v34

    const/16 v34, 0x1

    const/16 v35, 0x7

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    fill-array-data v35, :array_2d

    aput-object v35, v33, v34

    const/16 v34, 0x2

    aput-object v1, v33, v34

    const/4 v1, 0x3

    aput-object v2, v33, v1

    const/4 v1, 0x4

    aput-object v3, v33, v1

    const/4 v1, 0x5

    aput-object v4, v33, v1

    const/4 v1, 0x6

    aput-object v5, v33, v1

    const/4 v1, 0x7

    aput-object v6, v33, v1

    const/16 v1, 0x8

    aput-object v7, v33, v1

    const/16 v1, 0x9

    aput-object v8, v33, v1

    const/16 v1, 0xa

    aput-object v9, v33, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_2e

    aput-object v2, v33, v1

    const/16 v1, 0xc

    aput-object v10, v33, v1

    const/16 v1, 0xd

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_2f

    aput-object v2, v33, v1

    const/16 v1, 0xe

    aput-object v11, v33, v1

    const/16 v1, 0xf

    aput-object v12, v33, v1

    const/16 v1, 0x10

    aput-object v13, v33, v1

    const/16 v1, 0x11

    aput-object v14, v33, v1

    const/16 v1, 0x12

    aput-object v15, v33, v1

    const/16 v1, 0x13

    aput-object v16, v33, v1

    const/16 v1, 0x14

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_30

    aput-object v2, v33, v1

    const/16 v1, 0x15

    aput-object v17, v33, v1

    const/16 v1, 0x16

    aput-object v18, v33, v1

    const/16 v1, 0x17

    aput-object v19, v33, v1

    const/16 v1, 0x18

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_31

    aput-object v2, v33, v1

    const/16 v1, 0x19

    aput-object v20, v33, v1

    const/16 v1, 0x1a

    aput-object v21, v33, v1

    const/16 v1, 0x1b

    aput-object v22, v33, v1

    const/16 v1, 0x1c

    aput-object v23, v33, v1

    const/16 v1, 0x1d

    aput-object v24, v33, v1

    const/16 v1, 0x1e

    aput-object v25, v33, v1

    const/16 v1, 0x1f

    aput-object v26, v33, v1

    const/16 v1, 0x20

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_32

    aput-object v2, v33, v1

    const/16 v1, 0x21

    aput-object v27, v33, v1

    const/16 v1, 0x22

    aput-object v28, v33, v1

    const/16 v1, 0x23

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_33

    aput-object v2, v33, v1

    const/16 v1, 0x24

    aput-object v29, v33, v1

    const/16 v1, 0x25

    aput-object v30, v33, v1

    const/16 v1, 0x26

    aput-object v31, v33, v1

    const/16 v1, 0x27

    aput-object v32, v33, v1

    sput-object v33, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_34

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_35

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_36

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_37

    const/16 v5, 0xf

    new-array v5, v5, [[I

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_38

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_39

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3a

    aput-object v2, v5, v1

    const/4 v1, 0x5

    aput-object v3, v5, v1

    const/4 v1, 0x6

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3b

    aput-object v2, v5, v1

    const/4 v1, 0x7

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3c

    aput-object v2, v5, v1

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3d

    aput-object v2, v5, v1

    const/16 v1, 0x9

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3e

    aput-object v2, v5, v1

    const/16 v1, 0xa

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3f

    aput-object v2, v5, v1

    const/16 v1, 0xb

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_40

    aput-object v2, v5, v1

    const/16 v1, 0xc

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_41

    aput-object v2, v5, v1

    const/16 v1, 0xd

    aput-object v4, v5, v1

    const/16 v1, 0xe

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_42

    aput-object v2, v5, v1

    sput-object v5, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data

    :array_2c
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2f
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_30
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_31
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_32
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_33
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_34
    .array-data 4
        0x8
        0x0
    .end array-data

    :array_35
    .array-data 4
        0x8
        0x1
    .end array-data

    :array_36
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_37
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_38
    .array-data 4
        0x8
        0x2
    .end array-data

    :array_39
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_3b
    .array-data 4
        0x8
        0x7
    .end array-data

    :array_3c
    .array-data 4
        0x8
        0x8
    .end array-data

    :array_3d
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_3e
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_3f
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_40
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_41
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_42
    .array-data 4
        0x0
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-static {p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p0, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method static calculateBCHCode(II)I
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "75b0e2"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    shl-int v0, p0, v0

    :goto_0
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v2

    if-lt v2, v1, :cond_1

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v2

    sub-int/2addr v2, v1

    shl-int v2, p1, v2

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0

    :array_0
    .array-data 1
        0x7t
        0x15t
        0x12t
        0x5ft
        0x9t
        0x4bt
        0x59t
        0x5at
        0xft
        0x59t
        0x4t
        0x5et
    .end array-data
.end method

.method static clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    return-void
.end method

.method static embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    return-void
.end method

.method static embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v7

    move v3, v2

    :goto_0
    if-lez v1, :cond_6

    const/4 v4, 0x6

    if-ne v1, v4, :cond_8

    add-int/lit8 v1, v1, -0x1

    move v4, v0

    move v5, v1

    move v0, v3

    :goto_1
    if-ltz v4, :cond_5

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    if-ge v4, v1, :cond_5

    move v3, v2

    :goto_2
    const/4 v1, 0x2

    if-ge v3, v1, :cond_4

    sub-int v8, v5, v3

    invoke-virtual {p2, v8, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    :goto_4
    if-eq p1, v7, :cond_1

    invoke-static {p1, v8, v4}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->getDataMaskBit(III)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :cond_1
    :goto_5
    invoke-virtual {p2, v8, v4, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_3

    :cond_2
    move v1, v2

    goto :goto_4

    :cond_3
    move v1, v2

    goto :goto_5

    :cond_4
    add-int v1, v4, v6

    move v4, v1

    goto :goto_1

    :cond_5
    neg-int v6, v6

    add-int v1, v4, v6

    add-int/lit8 v3, v5, -0x2

    move v10, v1

    move v1, v3

    move v3, v0

    move v0, v10

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    if-eq v3, v0, :cond_7

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x17

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "ac31df"

    invoke-static {v4, v5, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void

    :cond_8
    move v4, v0

    move v5, v1

    move v0, v3

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x2ft
        0xct
        0x47t
        0x11t
        0x5t
        0xat
        0xdt
        0x43t
        0x51t
        0x58t
        0x10t
        0x15t
        0x41t
        0x0t
        0x5ct
        0x5ft
        0x17t
        0x13t
        0xct
        0x6t
        0x57t
        0xbt
        0x44t
    .end array-data
.end method

.method private static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    add-int v2, p0, v0

    invoke-virtual {p2, v2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_0
    add-int v2, p0, v0

    invoke-virtual {p2, v2, p1, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    add-int v3, p0, v0

    add-int v4, p1, v2

    sget-object v5, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v5, v5, v2

    aget v5, v5, v0

    invoke-virtual {p2, v3, v4, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7

    const/4 v6, 0x7

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    add-int v3, p0, v0

    add-int v4, p1, v2

    sget-object v5, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v5, v5, v2

    aget v5, v5, v0

    invoke-virtual {p2, v3, v4, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v2, 0x0

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    invoke-static {v2, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v2, v0, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {v2, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {v0, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {v2, v0, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {v3, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-static {v3, v0, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method private static embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    const/4 v3, 0x6

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_0
    invoke-virtual {p0, v3, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v7, 0x8

    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {p0, p1, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    sget-object v5, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {p2, v4, v5, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    if-ge v0, v7, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4, v7, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v5, v0, -0x8

    add-int/2addr v4, v5

    invoke-virtual {p2, v7, v4, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    add-int v2, p1, v0

    invoke-virtual {p2, p0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_0
    add-int v2, p1, v0

    invoke-virtual {p2, p0, v2, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static findMSBSet(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static isEmpty(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v2, 0xf

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/zxing/WriterException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b06b29"

    const v3, -0x31b56758

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p1

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v1, 0x537

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p2, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/16 v1, 0x5412

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ee72eb"

    const/16 v4, 0x20e5

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x2bt
        0x5et
        0x40t
        0x3t
        0x5et
        0x50t
        0x6t
        0x10t
        0x5bt
        0x3t
        0x41t
        0x52t
        0x42t
        0x40t
        0x57t
        0x16t
        0x46t
        0x5ct
        0x10t
        0x5et
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0xdt
        0x58t
        0x47t
        0x9t
        0x6t
        0x45t
        0xbt
        0x58t
        0x46t
        0x45t
        0xat
        0x4t
        0x15t
        0x47t
        0x57t
        0xbt
        0x42t
        0x7t
        0x10t
        0x43t
        0x12t
        0x12t
        0x7t
        0x45t
        0x2t
        0x58t
        0x46t
        0x5ft
        0x42t
    .end array-data
.end method

.method static makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/16 v1, 0x1f25

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9d8651"

    const-wide v4, -0x3e43c997cf000000L    # -4.73327665E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x4at
        0xct
        0x57t
        0x43t
        0x59t
        0x55t
        0x19t
        0xat
        0x57t
        0x42t
        0x15t
        0x59t
        0x58t
        0x14t
        0x48t
        0x53t
        0x5bt
        0x11t
        0x5bt
        0x11t
        0x4ct
        0x16t
        0x42t
        0x54t
        0x19t
        0x3t
        0x57t
        0x42t
        0xft
        0x11t
    .end array-data
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v3, v2, v0

    sget-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v0, v2, v0

    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget v5, v3, v2

    aget v6, v3, v0

    if-eq v6, v8, :cond_2

    if-ne v5, v8, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v6, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v5, v5, -0x2

    invoke-static {v6, v5, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method static maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {p0, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V

    const/16 v0, 0x11

    move v3, v1

    :goto_0
    const/4 v2, 0x6

    if-ge v3, v2, :cond_0

    move v2, v0

    move v0, v1

    :goto_1
    const/4 v5, 0x3

    if-ge v0, v5, :cond_2

    invoke-virtual {v4, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0xb

    add-int/2addr v6, v0

    invoke-virtual {p1, v3, v6, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0xb

    add-int/2addr v6, v0

    invoke-virtual {p1, v6, v3, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0
.end method
