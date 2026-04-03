.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0x9

    const/4 v9, 0x2

    const/4 v8, 0x7

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_0

    const-string v2, "b73ecb"

    const-wide/32 v4, -0x716a5672

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, " "

    aput-object v1, v0, v6

    new-array v1, v6, [B

    const/16 v2, 0x72

    aput-byte v2, v1, v7

    const-string v2, "330f34"

    const v3, 0x4dbaebb5    # 3.9200118E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-array v2, v6, [B

    const/16 v3, 0x23

    aput-byte v3, v2, v7

    const-string v3, "a6f952"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [B

    const/16 v3, 0x25

    aput-byte v3, v2, v7

    const-string v3, "f8ee44"

    const-wide v4, -0x3e27c68f1d000000L    # -1.62567054E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [B

    const/16 v3, 0x26

    aput-byte v3, v2, v7

    const-string v3, "bfb138"

    const v4, -0x3187c658

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [B

    const/16 v3, 0x23

    aput-byte v3, v2, v7

    const-string v3, "f71151"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v6, [B

    const/16 v2, 0x25

    aput-byte v2, v1, v7

    const-string v2, "c33064"

    const/16 v3, -0x6165

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v2, v6, [B

    const/16 v3, 0x72

    aput-byte v3, v2, v7

    const-string v3, "5e753f"

    invoke-static {v2, v3, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v6, [B

    const/16 v2, 0x78

    aput-byte v2, v1, v7

    const-string v2, "0895ff"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/16 v1, 0xa

    new-array v2, v6, [B

    const/16 v3, 0x79

    aput-byte v3, v2, v7

    const-string v3, "0725d8"

    invoke-static {v2, v3, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [B

    const/16 v3, 0x7b

    aput-byte v3, v2, v7

    const-string v3, "15930a"

    invoke-static {v2, v3, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [B

    const/16 v3, 0x7f

    aput-byte v3, v2, v7

    const-string v3, "470d6d"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [B

    const/16 v3, 0x2f

    aput-byte v3, v2, v7

    const-string v3, "c3593f"

    const v4, 0x4d559bc1    # 2.2398466E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [B

    const/16 v3, 0x7e

    aput-byte v3, v2, v7

    const-string v3, "3fdc93"

    const-wide v4, -0x3e2a6f1630800000L    # -1.447274302E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [B

    const/16 v3, 0x78

    aput-byte v3, v2, v7

    const-string v3, "6a788d"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [B

    const/16 v3, 0x77

    aput-byte v3, v2, v7

    const-string v3, "8f5432"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [B

    const/16 v3, 0x66

    aput-byte v3, v2, v7

    const-string v3, "6e4424"

    const/16 v4, -0x77ea

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [B

    const/16 v3, 0x63

    aput-byte v3, v2, v7

    const-string v3, "2a87c2"

    const-wide/32 v4, 0x787fb174

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [B

    const/16 v3, 0x33

    aput-byte v3, v2, v7

    const-string v3, "a4600a"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [B

    const/16 v3, 0x30

    aput-byte v3, v2, v7

    const-string v3, "cf4c68"

    const v4, -0x310eb4ac

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [B

    const/16 v3, 0x65

    aput-byte v3, v2, v7

    const-string v3, "111369"

    const/16 v4, -0x69b1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [B

    const/16 v3, 0x6c

    aput-byte v3, v2, v7

    const-string v3, "9718b6"

    const-wide/32 v4, -0x413f7375

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [B

    const/16 v3, 0x35

    aput-byte v3, v2, v7

    const-string v3, "cc9d02"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [B

    const/16 v3, 0x67

    aput-byte v3, v2, v7

    const-string v3, "0d60c2"

    const v4, 0x4db9859d    # 3.8906768E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [B

    const/16 v3, 0x3c

    aput-byte v3, v2, v7

    const-string v3, "d5e688"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [B

    const/16 v3, 0x68

    aput-byte v3, v2, v7

    const-string v3, "138ac3"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [B

    const/16 v3, 0x62

    aput-byte v3, v2, v7

    const-string v3, "803666"

    const-wide v4, -0x3e33ea4c2d800000L    # -9.42368677E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v3, "a2680a"

    const-wide/32 v4, -0x3d2c19dd

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v8, [B

    fill-array-data v2, :array_2

    const-string v3, "01a584"

    const-wide/32 v4, 0xdfcf1f5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v8, [B

    fill-array-data v2, :array_3

    const-string v3, "06d4a0"

    const/16 v4, -0x47e9

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v8, [B

    fill-array-data v2, :array_4

    const-string v3, "4c5fcf"

    const v4, -0x311d0eb5

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_5

    const-string v2, "b03655"

    const v3, -0x31c03822

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, " "

    aput-object v1, v0, v6

    new-array v1, v6, [B

    const/16 v2, 0x50

    aput-byte v2, v1, v7

    const-string v2, "1e036f"

    const-wide/32 v4, -0x4b8fe48

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-array v2, v6, [B

    const/4 v3, 0x6

    aput-byte v3, v2, v7

    const-string v3, "dd7baf"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [B

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const-string v3, "68e28f"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v7

    const-string v3, "732418"

    const v4, -0x322076e0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [B

    const/4 v3, 0x4

    aput-byte v3, v2, v7

    const-string v3, "a6d8d4"

    const-wide v4, 0x41880c9958000000L    # 5.0434859E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v6, [B

    const/16 v2, 0x5f

    aput-byte v2, v1, v7

    const-string v2, "945c41"

    const-wide v4, -0x3e474a6c2f000000L    # -4.14553041E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v2, v6, [B

    const/4 v3, 0x4

    aput-byte v3, v2, v7

    const-string v3, "c1945f"

    invoke-static {v2, v3, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v6, [B

    aput-byte v10, v1, v7

    const-string v2, "ac8ec1"

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/16 v1, 0xa

    new-array v2, v6, [B

    const/16 v3, 0xd

    aput-byte v3, v2, v7

    const-string v3, "d77627"

    const-wide v4, 0x41b29710c7000000L    # 3.11890119E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [B

    const/16 v3, 0xf

    aput-byte v3, v2, v7

    const-string v3, "e79951"

    const-wide/32 v4, 0x5dad6035

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [B

    const/16 v3, 0xf

    aput-byte v3, v2, v7

    const-string v3, "d1e27b"

    const/16 v4, -0x58c7

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v7

    const-string v3, "672e62"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [B

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const-string v3, "8cd2ac"

    const-wide v4, -0x3e2b744306400000L    # -1.378808807E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [B

    const/16 v3, 0xc

    aput-byte v3, v2, v7

    const-string v3, "b7ded8"

    const v4, 0x4dfb3f72

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [B

    const/16 v3, 0xe

    aput-byte v3, v2, v7

    const-string v3, "a88d5f"

    const/16 v4, 0x3223

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v7

    const-string v3, "74a8be"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [B

    const/16 v3, 0x10

    aput-byte v3, v2, v7

    const-string v3, "a8a234"

    const v4, 0x4e92565f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [B

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const-string v3, "392b75"

    const-wide/32 v4, -0x1eed2efd

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [B

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const-string v3, "228049"

    const/16 v4, -0x27e0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v7

    const-string v3, "85097e"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [B

    const/16 v3, 0x10

    aput-byte v3, v2, v7

    const-string v3, "e118fd"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [B

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const-string v3, "31de43"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v7

    const-string v3, "37e7c7"

    const-wide/32 v4, -0x64eabccb

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v7

    const-string v3, "414c63"

    const-wide v4, 0x41c2be7ae7000000L    # 6.28946382E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v7

    const-string v3, "3d9b77"

    const-wide/32 v4, -0x1234054c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [B

    const/16 v3, 0x1c

    aput-byte v3, v2, v7

    const-string v3, "f55d7d"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v8, [B

    fill-array-data v2, :array_6

    const-string v3, "622b25"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v8, [B

    fill-array-data v2, :array_7

    const-string v3, "cfac23"

    const-wide v4, 0x41d5f91973800000L    # 1.474586062E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v8, [B

    fill-array-data v2, :array_8

    const-string v3, "12e3ab"

    const-wide/32 v4, 0x68a42e46

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v8, [B

    fill-array-data v2, :array_9

    const-string v3, "109ebd"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_a

    const-string v2, "2263e0"

    const v3, -0x31c398b0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, " "

    aput-object v1, v0, v6

    const-string v1, "\u0001"

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const-string v2, "\u0002"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0003"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0004"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0005"

    aput-object v2, v0, v1

    const-string v1, "\u0006"

    aput-object v1, v0, v8

    const/16 v1, 0x8

    const-string v2, "\u0007"

    aput-object v2, v0, v1

    const-string v1, "\u0008"

    aput-object v1, v0, v10

    const/16 v1, 0xa

    const-string v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u000b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u000c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u001b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u001c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u001d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u001e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u001f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [B

    const/16 v3, 0x71

    aput-byte v3, v2, v7

    const-string v3, "175f22"

    const v4, -0x31ad132a    # -8.8468416E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [B

    const/16 v3, 0x38

    aput-byte v3, v2, v7

    const-string v3, "d13536"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [B

    const/16 v3, 0x38

    aput-byte v3, v2, v7

    const-string v3, "f2f99e"

    invoke-static {v2, v3, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [B

    const/16 v3, 0x6d

    aput-byte v3, v2, v7

    const-string v3, "253f43"

    const v4, 0x4ee4e3ba

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [B

    const/16 v3, 0x56

    aput-byte v3, v2, v7

    const-string v3, "650f69"

    const/16 v4, 0x16cf

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [B

    const/16 v3, 0x1a

    aput-byte v3, v2, v7

    const-string v3, "f941b2"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [B

    const/16 v3, 0x1d

    aput-byte v3, v2, v7

    const-string v3, "c934f4"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [B

    const/16 v3, 0x1b

    aput-byte v3, v2, v7

    const-string v3, "d222eb"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v8, [B

    fill-array-data v2, :array_b

    const-string v3, "49939b"

    const-wide v4, 0x41da7a4f27800000L    # 1.776893086E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v8, [B

    fill-array-data v2, :array_c

    const-string v3, "394b5b"

    const-wide v4, -0x3e29655131400000L    # -1.516944187E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v8, [B

    fill-array-data v2, :array_d

    const-string v3, "bc6a54"

    const/16 v4, -0x4a10

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v8, [B

    fill-array-data v2, :array_e

    const-string v3, "dc2b35"

    const/16 v4, -0xad1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const-string v1, "\r"

    aput-object v1, v0, v6

    const-string v1, "\r\n"

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-array v2, v9, [B

    fill-array-data v2, :array_f

    const-string v3, "52702b"

    const/16 v4, 0x475d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v9, [B

    fill-array-data v2, :array_10

    const-string v3, "fa7630"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v9, [B

    fill-array-data v2, :array_11

    const-string v3, "2aafbf"

    const/16 v4, -0x44f9

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [B

    const/16 v3, 0x14

    aput-byte v3, v2, v7

    const-string v3, "5e336b"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v6, [B

    const/16 v2, 0x1a

    aput-byte v2, v1, v7

    const-string v2, "815f50"

    const/16 v3, 0x477f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v2, v6, [B

    const/16 v3, 0x1a

    aput-byte v3, v2, v7

    const-string v3, "9cd45e"

    const/16 v4, -0x7bcd

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v6, [B

    const/16 v2, 0x11

    aput-byte v2, v1, v7

    const-string v2, "5e75da"

    const/16 v3, 0x6afc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/16 v1, 0xa

    new-array v2, v6, [B

    const/16 v3, 0x1c

    aput-byte v3, v2, v7

    const-string v3, "9eb078"

    const-wide/32 v4, -0x13cbe40d

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [B

    const/16 v3, 0x17

    aput-byte v3, v2, v7

    const-string v3, "1e86b1"

    const/16 v4, 0x2534

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [B

    const/16 v3, 0x17

    aput-byte v3, v2, v7

    const-string v3, "02c4da"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [B

    const/16 v3, 0x1b

    aput-byte v3, v2, v7

    const-string v3, "395ee8"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [B

    const/16 v3, 0x18

    aput-byte v3, v2, v7

    const-string v3, "1161b0"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [B

    const/16 v3, 0x12

    aput-byte v3, v2, v7

    const-string v3, "8c588a"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [B

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const-string v3, "defa0e"

    const-wide v4, 0x417beaf590000000L    # 2.9273945E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [B

    const/16 v3, 0x1c

    aput-byte v3, v2, v7

    const-string v3, "017f53"

    const-wide v4, -0x3e4196d668000000L    # -5.10208408E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v7

    const-string v3, "a6e019"

    const-wide v4, 0x41aa78b480000000L    # 2.22059072E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [B

    const/16 v3, 0x1d

    aput-byte v3, v2, v7

    const-string v3, "336f6d"

    const-wide v4, 0x4193e5fce4000000L    # 8.3459897E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v7

    const-string v3, "d73dd8"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [B

    aput-byte v10, v2, v7

    const-string v3, "318f70"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [B

    const/16 v3, 0xf

    aput-byte v3, v2, v7

    const-string v3, "4b8036"

    const-wide/32 v4, -0x5727dc8c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [B

    const/16 v3, 0x5d

    aput-byte v3, v2, v7

    const-string v3, "a0c730"

    const-wide/32 v4, 0x5cc160f3

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [B

    const/16 v3, 0xe

    aput-byte v3, v2, v7

    const-string v3, "3bd5f9"

    const/16 v4, -0x6a0a

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [B

    const/16 v3, 0xd

    aput-byte v3, v2, v7

    const-string v3, "312c83"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [B

    aput-byte v10, v2, v7

    const-string v3, "67dedf"

    invoke-static {v2, v3, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [B

    const/16 v3, 0x6b

    aput-byte v3, v2, v7

    const-string v3, "0bc209"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [B

    const/16 v3, 0x6b

    aput-byte v3, v2, v7

    const-string v3, "6ca01b"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [B

    const/16 v3, 0x18

    aput-byte v3, v2, v7

    const-string v3, "cfe3e5"

    const-wide v4, 0x41b1864282000000L    # 2.94011522E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [B

    const/16 v3, 0x19

    aput-byte v3, v2, v7

    const-string v3, "da67c6"

    const-wide/32 v4, -0x376574c1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v8, [B

    fill-array-data v2, :array_12

    const-string v3, "7f082f"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v8, [B

    fill-array-data v1, :array_13

    const-string v2, "b54eda"

    const/16 v3, -0x206c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, " "

    aput-object v1, v0, v6

    new-array v1, v6, [B

    aput-byte v10, v1, v7

    const-string v2, "971c3d"

    const/16 v3, -0x47

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-array v2, v6, [B

    const/16 v3, 0x8

    aput-byte v3, v2, v7

    const-string v3, "995648"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [B

    const/16 v3, 0xb

    aput-byte v3, v2, v7

    const-string v3, "9ea5b4"

    invoke-static {v2, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [B

    const/16 v3, 0xa

    aput-byte v3, v2, v7

    const-string v3, "9938f3"

    const/16 v4, 0x293a

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [B

    const/4 v3, 0x5

    aput-byte v3, v2, v7

    const-string v3, "178be5"

    const v4, -0x312cd4f6

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v6, [B

    const/16 v2, 0x56

    aput-byte v2, v1, v7

    const-string v2, "caeb19"

    const-wide/32 v4, -0x1fbc884c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v2, v6, [B

    aput-byte v9, v2, v7

    const-string v3, "46388f"

    const-wide v4, 0x41a088d0aa000000L    # 1.38700885E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v6, [B

    aput-byte v8, v1, v7

    const-string v2, "0d14a8"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/16 v1, 0xa

    new-array v2, v6, [B

    const/16 v3, 0xf

    aput-byte v3, v2, v7

    const-string v3, "79b580"

    const-wide v4, 0x41df3ad19a800000L    # 2.09579377E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [B

    const/16 v3, 0x5c

    aput-byte v3, v2, v7

    const-string v3, "e11ade"

    const/16 v4, 0x66c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const-string v3, "df5a2d"

    const/16 v4, -0x1e3d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [B

    const/16 v3, 0x19

    aput-byte v3, v2, v7

    const-string v3, "72c368"

    const-wide/32 v4, 0x65b59971

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [B

    fill-array-data v2, :array_14

    const-string v3, "de5a99"

    const/16 v4, 0x3cd1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [B

    fill-array-data v2, :array_15

    const-string v3, "6e1563"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x21t
        0x63t
        0x61t
        0x29t
        0x3ct
        0x32t
        0x31t
    .end array-data

    :array_1
    .array-data 1
        0x22t
        0x66t
        0x64t
        0x74t
        0x6ft
        0x2dt
        0x2dt
    .end array-data

    :array_2
    .array-data 1
        0x73t
        0x65t
        0x33t
        0x79t
        0x67t
        0x79t
        0x7ct
    .end array-data

    :array_3
    .array-data 1
        0x73t
        0x62t
        0x36t
        0x78t
        0x3et
        0x74t
        0x7ct
    .end array-data

    :array_4
    .array-data 1
        0x77t
        0x37t
        0x67t
        0x2at
        0x3ct
        0x24t
        0x67t
    .end array-data

    :array_5
    .array-data 1
        0x21t
        0x64t
        0x61t
        0x7at
        0x6at
        0x65t
        0x31t
    .end array-data

    :array_6
    .array-data 1
        0x75t
        0x66t
        0x60t
        0x2et
        0x6dt
        0x60t
        0x65t
    .end array-data

    :array_7
    .array-data 1
        0x20t
        0x32t
        0x33t
        0x2ft
        0x6dt
        0x7et
        0x2ft
    .end array-data

    :array_8
    .array-data 1
        0x72t
        0x66t
        0x37t
        0x7ft
        0x3et
        0x26t
        0x7dt
    .end array-data

    :array_9
    .array-data 1
        0x72t
        0x64t
        0x6bt
        0x29t
        0x3dt
        0x26t
        0x62t
    .end array-data

    :array_a
    .array-data 1
        0x71t
        0x66t
        0x64t
        0x7ft
        0x3at
        0x60t
        0x61t
    .end array-data

    :array_b
    .array-data 1
        0x77t
        0x6dt
        0x6bt
        0x7ft
        0x66t
        0x2et
        0x78t
    .end array-data

    :array_c
    .array-data 1
        0x70t
        0x6dt
        0x66t
        0x2et
        0x6at
        0x37t
        0x7ft
    .end array-data

    :array_d
    .array-data 1
        0x21t
        0x37t
        0x64t
        0x2dt
        0x6at
        0x64t
        0x2et
    .end array-data

    :array_e
    .array-data 1
        0x27t
        0x37t
        0x60t
        0x2et
        0x6ct
        0x77t
        0x37t
    .end array-data

    :array_f
    .array-data 1
        0x1bt
        0x12t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x4at
        0x41t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x8t
        0x41t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x74t
        0x32t
        0x62t
        0x74t
        0x6dt
        0x33t
        0x7bt
    .end array-data

    :array_13
    .array-data 1
        0x21t
        0x61t
        0x66t
        0x29t
        0x3bt
        0x31t
        0x31t
    .end array-data

    :array_14
    .array-data 1
        0x27t
        0x31t
        0x67t
        0x2dt
        0x66t
        0x6ct
        0x28t
    .end array-data

    :array_15
    .array-data 1
        0x75t
        0x31t
        0x63t
        0x79t
        0x69t
        0x66t
        0x65t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private correctBits([Z)[Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/4 v4, 0x2

    if-gt v0, v4, :cond_0

    const/4 v1, 0x6

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    :goto_0
    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v8

    array-length v4, p1

    div-int v6, v4, v1

    if-ge v6, v8, :cond_3

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    const/16 v1, 0xa

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :cond_3
    array-length v4, p1

    rem-int/2addr v4, v1

    new-array v9, v6, [I

    move v5, v4

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_4

    invoke-static {p1, v5, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    aput v7, v9, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v1

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v4, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    sub-int v0, v6, v8

    invoke-virtual {v4, v9, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    shl-int v0, v2, v1

    add-int/lit8 v10, v0, -0x1

    move v4, v3

    move v0, v3

    :goto_2
    if-ge v4, v8, :cond_9

    aget v5, v9, v4

    if-eqz v5, :cond_5

    if-ne v5, v10, :cond_6

    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_6
    if-eq v5, v2, :cond_7

    add-int/lit8 v6, v10, -0x1

    if-ne v5, v6, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    mul-int v4, v8, v1

    sub-int v0, v4, v0

    new-array v11, v0, [Z

    move v7, v3

    move v4, v3

    :goto_3
    if-ge v7, v8, :cond_f

    aget v12, v9, v7

    if-eq v12, v2, :cond_a

    add-int/lit8 v0, v10, -0x1

    if-ne v12, v0, :cond_d

    :cond_a
    if-le v12, v2, :cond_c

    move v0, v2

    :goto_4
    add-int v5, v4, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v11, v4, v5, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    add-int/lit8 v0, v1, -0x1

    add-int/2addr v0, v4

    :cond_b
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v0

    goto :goto_3

    :cond_c
    move v0, v3

    goto :goto_4

    :cond_d
    add-int/lit8 v0, v1, -0x1

    move v6, v0

    move v0, v4

    :goto_5
    if-ltz v6, :cond_b

    add-int/lit8 v5, v0, 0x1

    shl-int v4, v2, v6

    and-int/2addr v4, v12

    if-eqz v4, :cond_e

    move v4, v2

    :goto_6
    aput-boolean v4, v11, v0

    add-int/lit8 v0, v6, -0x1

    move v6, v0

    move v0, v5

    goto :goto_5

    :cond_e
    move v4, v3

    goto :goto_6

    :cond_f
    return-object v11
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "623677"

    const v3, 0x4e9f0ffd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 1
        0x74t
        0x53t
        0x57t
        0x16t
        0x43t
        0x56t
        0x54t
        0x5et
        0x56t
    .end array-data
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 12

    const/16 v11, 0xb

    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x5

    array-length v2, p0

    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v6

    move-object v5, v3

    move-object v3, v0

    :goto_0
    if-ge v1, v2, :cond_0

    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v5, v0, :cond_4

    sub-int v0, v2, v1

    if-ge v0, v4, :cond_1

    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p0, v1, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v0

    add-int/lit8 v1, v1, 0x5

    if-nez v0, :cond_2

    sub-int v0, v2, v1

    if-lt v0, v11, :cond_0

    invoke-static {p0, v1, v11}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    add-int/lit8 v1, v1, 0xb

    :cond_2
    move v5, v6

    :goto_1
    if-ge v5, v0, :cond_8

    sub-int v7, v2, v1

    if-ge v7, v10, :cond_3

    move v0, v2

    :goto_2
    move v1, v0

    move-object v5, v3

    goto :goto_0

    :cond_3
    invoke-static {p0, v1, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v1, 0x8

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v7

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v5, v0, :cond_6

    const/4 v0, 0x4

    :goto_3
    sub-int v7, v2, v1

    if-lt v7, v0, :cond_0

    invoke-static {p0, v1, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    add-int/2addr v1, v0

    invoke-static {v5, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v5

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v7, "885320"

    const/16 v9, 0x7706

    invoke-static {v0, v7, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v0

    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x4c

    if-ne v5, v7, :cond_5

    move-object v3, v0

    :cond_5
    :goto_4
    move-object v5, v0

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_3

    :cond_7
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v3

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_2

    :array_0
    .array-data 1
        0x7bt
        0x6ct
        0x67t
        0x7ft
        0x6dt
    .end array-data
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x44 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readCode([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x58

    :goto_0
    mul-int/lit8 v1, p0, 0x10

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0

    :cond_0
    const/16 v0, 0x70

    goto :goto_0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v10

    if-eqz v9, :cond_0

    mul-int/lit8 v3, v10, 0x4

    add-int/lit8 v3, v3, 0xb

    :goto_0
    new-array v11, v3, [I

    invoke-static {v10, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v4

    new-array v12, v4, [Z

    if-eqz v9, :cond_2

    const/4 v4, 0x0

    :goto_1
    array-length v5, v11

    if-ge v4, v5, :cond_1

    aput v4, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v3, v10, 0x4

    add-int/lit8 v3, v3, 0xe

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v7, v4

    move v8, v5

    :goto_2
    if-ge v8, v10, :cond_6

    if-eqz v9, :cond_3

    sub-int v4, v10, v8

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x9

    :goto_3
    mul-int/lit8 v13, v8, 0x2

    add-int/lit8 v5, v3, -0x1

    sub-int v14, v5, v13

    const/4 v5, 0x0

    move v6, v5

    :goto_4
    if-ge v6, v4, :cond_5

    mul-int/lit8 v15, v6, 0x2

    const/4 v5, 0x0

    :goto_5
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v5, v0, :cond_4

    add-int v16, v7, v15

    add-int v16, v16, v5

    add-int v17, v13, v5

    aget v17, v11, v17

    add-int v18, v13, v6

    aget v18, v11, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v7

    add-int v16, v16, v15

    add-int v16, v16, v5

    add-int v17, v13, v6

    aget v17, v11, v17

    sub-int v18, v14, v5

    aget v18, v11, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    mul-int/lit8 v16, v4, 0x4

    add-int v16, v16, v7

    add-int v16, v16, v15

    add-int v16, v16, v5

    sub-int v17, v14, v5

    aget v17, v11, v17

    sub-int v18, v14, v6

    aget v18, v11, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    mul-int/lit8 v16, v4, 0x6

    add-int v16, v16, v7

    add-int v16, v16, v15

    add-int v16, v16, v5

    sub-int v17, v14, v6

    aget v17, v11, v17

    add-int v18, v13, v5

    aget v18, v11, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    aput-boolean v17, v12, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_2
    div-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0xf

    div-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    div-int/lit8 v6, v4, 0x2

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_1

    div-int/lit8 v7, v4, 0xf

    add-int/2addr v7, v4

    sub-int v8, v5, v4

    add-int/lit8 v8, v8, -0x1

    sub-int v13, v6, v7

    add-int/lit8 v13, v13, -0x1

    aput v13, v11, v8

    add-int v8, v5, v4

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v11, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_3
    sub-int v4, v10, v8

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0xc

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_4

    :cond_5
    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v7

    add-int/lit8 v5, v8, 0x1

    move v7, v4

    move v8, v5

    goto/16 :goto_2

    :cond_6
    return-object v12
.end method
