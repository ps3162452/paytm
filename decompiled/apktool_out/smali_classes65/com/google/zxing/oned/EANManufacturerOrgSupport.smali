.class final Lcom/google/zxing/oned/EANManufacturerOrgSupport;
.super Ljava/lang/Object;


# instance fields
.field private final countryIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    return-void
.end method

.method private add([ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initIfNeeded()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e345af"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "072834"

    const v3, 0x4e5efa1d    # 9.3523334E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "1861d1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "d8bccf"

    const v3, 0x4ed25dd6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17c

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "5e01dd"

    const-wide/32 v4, 0x6c7dfa3e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17f

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "0457f4"

    const-wide/32 v4, 0x3aa0853

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x181

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const-string v2, "e78a04"

    const v3, 0x4e7ea426

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x183

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const-string v2, "154e8b"

    const/16 v3, 0x74c9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v2, "44a84f"

    const-wide v4, 0x41a108796c000000L    # 1.42884022E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_f

    const-string v2, "4af93a"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_11

    const-string v2, "c7bb03"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1d7

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_12

    const-string v2, "e5af78"

    const-wide/32 v4, 0xf300772

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1da

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_13

    const-string v2, "64eea2"

    const/16 v3, 0x59ff

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1db

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_14

    const-string v2, "7c30c5"

    const-wide/32 v4, -0x1422f974

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1dc

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_15

    const-string v2, "f49ba5"

    const/16 v3, 0x5ff1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1dd

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_16

    const-string v2, "50182a"

    const-wide v4, -0x3e582832bc000000L    # -2.00009378E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1de

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_17

    const-string v2, "9fc3ec"

    const/16 v3, 0x3310

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1df

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_18

    const-string v2, "b27f8b"

    const-wide v4, -0x3e3d71a9db800000L    # -6.22636105E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e0

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_19

    const-string v2, "eb7814"

    const/16 v3, 0x31e0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e1

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_1a

    const-string v2, "154d0b"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e2

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_1b

    const-string v2, "458de7"

    const-wide/32 v4, 0x4f5f6db3

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e4

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_1c

    const-string v2, "2cb418"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e5

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_1d

    const-string v2, "b8fde7"

    const-wide/32 v4, -0x32bdbf6

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e6

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_1e

    const-string v2, "b256c2"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e7

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_1f

    const-string v2, "3294c4"

    const-wide/32 v4, 0x5366c272

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e9

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_20

    const-string v2, "e8afe8"

    const-wide v4, 0x41a5b348d0000000L    # 1.8203556E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_21

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_22

    const-string v2, "73bb16"

    const-wide v4, -0x3e3446f78b800000L    # -9.30222313E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_23

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_24

    const-string v2, "f7e6cd"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x208

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_25

    const-string v2, "7816a2"

    const/16 v3, -0x7db9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x210

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_26

    const-string v2, "e0f6c6"

    const/16 v3, -0x3a6e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x211

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_27

    const-string v2, "a0d347"

    const-wide v4, -0x3e35022ccd000000L    # -9.05684582E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x213

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_28

    const-string v2, "fe555e"

    const/16 v3, 0x184

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x217

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_29

    const-string v2, "6a4f4c"

    const-wide/32 v4, -0x46314851

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x21b

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_2a

    const-string v2, "709d27"

    const-wide v4, -0x3e39154723800000L    # -7.68963001E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2b

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_2c

    const-string v2, "444079"

    const v3, -0x31566e21

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x230

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_2d

    const-string v2, "4fa7ec"

    const-wide v4, -0x3e304c604c800000L    # -1.063731047E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x239

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_2e

    const-string v2, "c99a5c"

    const-wide v4, 0x41d848877ac00000L    # 1.629625835E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2f

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_30

    const-string v2, "59d2ac"

    const/16 v3, -0x5e6d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x24e

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_31

    const-string v2, "b579c8"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x252

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_32

    const-string v2, "808c9e"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x257

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_33

    const-string v2, "b94590"

    const v3, 0x4ee3795e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_35

    const-string v2, "2f0f34"

    const/16 v3, -0x244b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25b

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_36

    const-string v2, "7a8c68"

    const/16 v3, -0x6598

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x260

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_37

    const-string v2, "8f243a"

    const/16 v3, 0x3d5f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x261

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_38

    const-string v2, "22501e"

    const v3, 0x4e42713e    # 8.1555034E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x263

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_39

    const-string v2, "f945dc"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x265

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_3a

    const-string v2, "3bb424"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x268

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_3b

    const-string v2, "68b9c4"

    const-wide/32 v4, -0x28d78a7d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26a

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_3c

    const-string v2, "1588ee"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26b

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_3d

    const-string v2, "4a9bd7"

    const/16 v3, -0x1a5e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26d

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_3e

    const-string v2, "f49dc7"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26e

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_3f

    const-string v2, "7dfa5d"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x270

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_40

    const-string v2, "e5f361"

    const v3, 0x4eb2eaa9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x271

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_41

    const-string v2, "3a7571"

    const/16 v3, -0x6ea9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x272

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_42

    const-string v2, "2ed790"

    const-wide v4, 0x41cba2806e800000L    # 9.27269085E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x273

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_43

    const-string v2, "ea5ebc"

    const-wide v4, -0x3e2e42a4fd400000L    # -1.190489099E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x274

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_44

    const-string v2, "21cb13"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x275

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_45

    const-string v2, "4ca02a"

    const-wide/32 v4, 0x54bd444d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_46

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_47

    const-string v2, "97836f"

    const v3, 0x4e88f345

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_49

    const-string v2, "377bf4"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_4b

    const-string v2, "f5842c"

    const v3, 0x4d6fa670    # 2.512914E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2d9

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_4c

    const-string v2, "541707"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4d

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_4e

    const-string v2, "daadf1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e4

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_4f

    const-string v2, "529e6a"

    const-wide/32 v4, 0x15c97cf

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e5

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_50

    const-string v2, "0b984a"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e6

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_51

    const-string v2, "e57b9c"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e7

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_52

    const-string v2, "8e4191"

    const/16 v3, 0x2713

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e8

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_53

    const-string v2, "747ab3"

    const-wide/32 v4, 0x7af3d9f0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e9

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_54

    const-string v2, "9633a7"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2ea

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_55

    const-string v2, "24feed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2ee

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_56

    const-string v2, "f73dc8"

    const v3, -0x325c3887

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_57

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_58

    const-string v2, "88d0a7"

    const-wide/32 v4, -0x79bfec25

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2f7

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_59

    const-string v2, "217b12"

    const/16 v3, -0x2cd5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_5b

    const-string v2, "d8f876"

    const-wide v4, 0x41ce1201d6800000L    # 1.008993197E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x302

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_5c

    const-string v2, "52cb6c"

    const-wide/32 v4, -0x1fcc2d7d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x305

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_5d

    const-string v2, "d9ec48"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x307

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_5e

    const-string v2, "b29bb1"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x309

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_5f

    const-string v2, "bb18b7"

    const-wide v4, 0x41b23935a4000000L    # 3.05739172E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x30b

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_60

    const-string v2, "5f77a0"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x30c

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_61

    const-string v2, "0548dc"

    const-wide/32 v4, 0x1da0d327

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x310

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_62

    const-string v2, "b1f54a"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x311

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_63

    const-string v2, "e33b34"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x312

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_64

    const-string v2, "050cd0"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_65

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_66

    const-string v2, "340662"

    const v3, 0x4eed2896

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_67

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_68

    const-string v2, "3e8695"

    const v3, -0x31054204

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_69

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_6a

    const-string v2, "c3ffe7"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x352

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_6b

    const-string v2, "9e6834"

    const-wide v4, -0x3e42dd3d1a000000L    # -4.88817382E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x35a

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_6c

    const-string v2, "4e0bbf"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x35b

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_6d

    const-string v2, "4407e1"

    const v3, -0x312406c6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x35c

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_6e

    const-string v2, "aeee7d"

    const-wide/32 v4, -0x54407d68

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x361

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_6f

    const-string v2, "8311d4"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x363

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_70

    const-string v2, "12c21a"

    const-wide v4, 0x41d42c4eab400000L    # 1.353792173E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_71

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_72

    const-string v2, "8e9d9d"

    const-wide v4, 0x41bf4f8262000000L    # 5.25304418E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_73

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_74

    const-string v2, "27388b"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x370

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_75

    const-string v2, "5f8b7f"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x375

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_76

    const-string v2, "5e3a12"

    const-wide/32 v4, -0x1d0114d2

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x378

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_77

    const-string v2, "0e525b"

    const v3, -0x32adf82f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x37a

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_78

    const-string v2, "75c861"

    const v3, 0x4ec92826

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x37d

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_79

    const-string v2, "140fc0"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x380

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_7a

    const-string v2, "7ef7f5"

    const v3, 0x4dbb788e    # 3.93155E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x383

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_7b

    const-string v2, "3add56"

    const/16 v3, 0x5fd6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_7d

    const-string v2, "1ff53a"

    const v3, 0x4e9e258f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_7e

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_7f

    const-string v2, "677cb3"

    const v3, -0x32aabfd9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_80

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_81

    const-string v2, "f86603"

    const/16 v3, -0x5883

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3bb

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_82

    const-string v2, "966fb8"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3be

    aput v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_83

    const-string v2, "41cd1d"

    const v3, -0x312ab82b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :array_0
    .array-data 4
        0x0
        0x13
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x60t
        0x1bt
        0x76t
        0x20t
    .end array-data

    nop

    :array_2
    .array-data 4
        0x1e
        0x27
    .end array-data

    :array_3
    .array-data 1
        0x65t
        0x64t
    .end array-data

    nop

    :array_4
    .array-data 4
        0x3c
        0x8b
    .end array-data

    :array_5
    .array-data 1
        0x64t
        0x6bt
        0x19t
        0x72t
        0x25t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x12c
        0x17b
    .end array-data

    :array_7
    .array-data 1
        0x22t
        0x6at
    .end array-data

    nop

    :array_8
    .array-data 1
        0x77t
        0x22t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x63t
        0x7dt
    .end array-data

    nop

    :array_a
    .array-data 1
        0x2dt
        0x65t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x73t
        0x74t
    .end array-data

    nop

    :array_c
    .array-data 4
        0x190
        0x1b8
    .end array-data

    :array_d
    .array-data 1
        0x70t
        0x71t
    .end array-data

    nop

    :array_e
    .array-data 4
        0x1c2
        0x1cb
    .end array-data

    :array_f
    .array-data 1
        0x7et
        0x31t
    .end array-data

    nop

    :array_10
    .array-data 4
        0x1cc
        0x1d5
    .end array-data

    :array_11
    .array-data 1
        0x31t
        0x62t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x31t
        0x62t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x73t
        0x71t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x7bt
        0x35t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x27t
        0x6et
    .end array-data

    nop

    :array_16
    .array-data 1
        0x79t
        0x64t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x6ct
        0x3ct
    .end array-data

    nop

    :array_18
    .array-data 1
        0x2et
        0x79t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x35t
        0x2at
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x73t
        0x6ct
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x61t
        0x74t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x7ft
        0x27t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x23t
        0x75t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x25t
        0x77t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x78t
        0x68t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x2dt
        0x73t
    .end array-data

    nop

    :array_21
    .array-data 4
        0x1ea
        0x1f3
    .end array-data

    :array_22
    .array-data 1
        0x7dt
        0x63t
    .end array-data

    nop

    :array_23
    .array-data 4
        0x1f4
        0x1fd
    .end array-data

    :array_24
    .array-data 1
        0x21t
        0x75t
    .end array-data

    nop

    :array_25
    .array-data 1
        0x70t
        0x6at
    .end array-data

    nop

    :array_26
    .array-data 1
        0x29t
        0x72t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x22t
        0x69t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x2bt
        0x2et
    .end array-data

    nop

    :array_29
    .array-data 1
        0x7bt
        0x35t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x7et
        0x75t
    .end array-data

    nop

    :array_2b
    .array-data 4
        0x21c
        0x225
    .end array-data

    :array_2c
    .array-data 1
        0x76t
        0x71t
        0x1bt
        0x7ct
        0x62t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x64t
        0x32t
    .end array-data

    nop

    :array_2e
    .array-data 1
        0x2at
        0x6at
    .end array-data

    nop

    :array_2f
    .array-data 4
        0x23a
        0x243
    .end array-data

    :array_30
    .array-data 1
        0x71t
        0x72t
    .end array-data

    nop

    :array_31
    .array-data 1
        0x32t
        0x79t
    .end array-data

    nop

    :array_32
    .array-data 1
        0x6at
        0x7ft
    .end array-data

    nop

    :array_33
    .array-data 1
        0x2at
        0x6ct
    .end array-data

    nop

    :array_34
    .array-data 4
        0x258
        0x259
    .end array-data

    :array_35
    .array-data 1
        0x68t
        0x27t
    .end array-data

    nop

    :array_36
    .array-data 1
        0x70t
        0x29t
    .end array-data

    nop

    :array_37
    .array-data 1
        0x7at
        0x2et
    .end array-data

    nop

    :array_38
    .array-data 1
        0x7ft
        0x67t
    .end array-data

    nop

    :array_39
    .array-data 1
        0x2bt
        0x78t
    .end array-data

    nop

    :array_3a
    .array-data 1
        0x77t
        0x38t
    .end array-data

    nop

    :array_3b
    .array-data 1
        0x7dt
        0x7dt
    .end array-data

    nop

    :array_3c
    .array-data 1
        0x72t
        0x7ct
    .end array-data

    nop

    :array_3d
    .array-data 1
        0x60t
        0x2ft
    .end array-data

    nop

    :array_3e
    .array-data 1
        0x35t
        0x6dt
    .end array-data

    nop

    :array_3f
    .array-data 1
        0x72t
        0x23t
    .end array-data

    nop

    :array_40
    .array-data 1
        0x29t
        0x6ct
    .end array-data

    nop

    :array_41
    .array-data 1
        0x79t
        0x2et
    .end array-data

    nop

    :array_42
    .array-data 1
        0x7bt
        0x37t
    .end array-data

    nop

    :array_43
    .array-data 1
        0x2et
        0x36t
    .end array-data

    nop

    :array_44
    .array-data 1
        0x61t
        0x70t
    .end array-data

    nop

    :array_45
    .array-data 1
        0x75t
        0x26t
    .end array-data

    nop

    :array_46
    .array-data 4
        0x280
        0x289
    .end array-data

    :array_47
    .array-data 1
        0x7ft
        0x7et
    .end array-data

    nop

    :array_48
    .array-data 4
        0x2b2
        0x2b7
    .end array-data

    :array_49
    .array-data 1
        0x70t
        0x79t
    .end array-data

    nop

    :array_4a
    .array-data 4
        0x2bc
        0x2c5
    .end array-data

    :array_4b
    .array-data 1
        0x28t
        0x7at
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x7ct
        0x78t
    .end array-data

    nop

    :array_4d
    .array-data 4
        0x2da
        0x2e3
    .end array-data

    :array_4e
    .array-data 1
        0x37t
        0x24t
    .end array-data

    nop

    :array_4f
    .array-data 1
        0x72t
        0x66t
    .end array-data

    nop

    :array_50
    .array-data 1
        0x63t
        0x34t
    .end array-data

    nop

    :array_51
    .array-data 1
        0x2dt
        0x7bt
    .end array-data

    nop

    :array_52
    .array-data 1
        0x76t
        0x2ct
    .end array-data

    nop

    :array_53
    .array-data 1
        0x74t
        0x66t
    .end array-data

    nop

    :array_54
    .array-data 1
        0x69t
        0x77t
    .end array-data

    nop

    :array_55
    .array-data 1
        0x76t
        0x7bt
    .end array-data

    nop

    :array_56
    .array-data 1
        0x2bt
        0x6ft
    .end array-data

    nop

    :array_57
    .array-data 4
        0x2f2
        0x2f3
    .end array-data

    :array_58
    .array-data 1
        0x7bt
        0x79t
    .end array-data

    nop

    :array_59
    .array-data 1
        0x64t
        0x74t
    .end array-data

    nop

    :array_5a
    .array-data 4
        0x2f8
        0x301
    .end array-data

    :array_5b
    .array-data 1
        0x27t
        0x70t
    .end array-data

    nop

    :array_5c
    .array-data 1
        0x76t
        0x7dt
    .end array-data

    nop

    :array_5d
    .array-data 1
        0x31t
        0x60t
    .end array-data

    nop

    :array_5e
    .array-data 1
        0x32t
        0x77t
    .end array-data

    nop

    :array_5f
    .array-data 1
        0x20t
        0x2dt
    .end array-data

    nop

    :array_60
    .array-data 1
        0x74t
        0x34t
    .end array-data

    nop

    :array_61
    .array-data 1
        0x73t
        0x79t
    .end array-data

    nop

    :array_62
    .array-data 1
        0x32t
        0x68t
    .end array-data

    nop

    :array_63
    .array-data 1
        0x35t
        0x76t
    .end array-data

    nop

    :array_64
    .array-data 1
        0x75t
        0x76t
    .end array-data

    nop

    :array_65
    .array-data 4
        0x315
        0x316
    .end array-data

    :array_66
    .array-data 1
        0x71t
        0x66t
    .end array-data

    nop

    :array_67
    .array-data 4
        0x320
        0x347
    .end array-data

    :array_68
    .array-data 1
        0x7at
        0x31t
    .end array-data

    nop

    :array_69
    .array-data 4
        0x348
        0x351
    .end array-data

    :array_6a
    .array-data 1
        0x26t
        0x60t
    .end array-data

    nop

    :array_6b
    .array-data 1
        0x7at
        0x30t
    .end array-data

    nop

    :array_6c
    .array-data 1
        0x67t
        0x2et
    .end array-data

    nop

    :array_6d
    .array-data 1
        0x77t
        0x6et
    .end array-data

    nop

    :array_6e
    .array-data 1
        0x38t
        0x30t
    .end array-data

    nop

    :array_6f
    .array-data 1
        0x75t
        0x7dt
    .end array-data

    nop

    :array_70
    .array-data 1
        0x7at
        0x62t
    .end array-data

    nop

    :array_71
    .array-data 4
        0x364
        0x365
    .end array-data

    :array_72
    .array-data 1
        0x6ct
        0x37t
    .end array-data

    nop

    :array_73
    .array-data 4
        0x366
        0x36f
    .end array-data

    :array_74
    .array-data 1
        0x7ct
        0x7bt
    .end array-data

    nop

    :array_75
    .array-data 1
        0x7et
        0x34t
    .end array-data

    nop

    :array_76
    .array-data 1
        0x61t
        0x2dt
    .end array-data

    nop

    :array_77
    .array-data 1
        0x63t
        0x22t
    .end array-data

    nop

    :array_78
    .array-data 1
        0x7et
        0x7bt
    .end array-data

    nop

    :array_79
    .array-data 1
        0x67t
        0x7at
    .end array-data

    nop

    :array_7a
    .array-data 1
        0x67t
        0x2et
    .end array-data

    nop

    :array_7b
    .array-data 1
        0x7at
        0x25t
    .end array-data

    nop

    :array_7c
    .array-data 4
        0x384
        0x397
    .end array-data

    :array_7d
    .array-data 1
        0x70t
        0x32t
    .end array-data

    nop

    :array_7e
    .array-data 4
        0x3a2
        0x3ab
    .end array-data

    :array_7f
    .array-data 1
        0x77t
        0x62t
    .end array-data

    nop

    :array_80
    .array-data 4
        0x3ac
        0x3b5
    .end array-data

    :array_81
    .array-data 1
        0x27t
        0x62t
    .end array-data

    nop

    :array_82
    .array-data 1
        0x74t
        0x6ft
    .end array-data

    nop

    :array_83
    .array-data 1
        0x79t
        0x7et
    .end array-data
.end method


# virtual methods
.method lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->initIfNeeded()V

    const/4 v0, 0x3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_3

    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v4, v0, v3

    if-ge v5, v4, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    array-length v7, v0

    if-ne v7, v8, :cond_1

    move v0, v4

    :goto_2
    if-gt v5, v0, :cond_2

    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    aget v0, v0, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
