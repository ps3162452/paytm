.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$Attributes$-CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Attributes;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 6

    const/16 v3, 0xc

    const/16 v4, 0x9

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :sswitch_0
    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0cf75d"

    const-wide/32 v4, -0x541828a4

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_1
    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b9da59"

    invoke-static {v1, v2, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :sswitch_2
    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "381929"

    invoke-static {v1, v2, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v2, "653abd"

    invoke-static {v0, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "9f5e93"

    const/16 v2, 0x5373

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "a7330d"

    const v2, 0x4e8a3e4f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_6
    new-array v1, v4, [B

    fill-array-data v1, :array_6

    const-string v3, "df6a86"

    invoke-static {v1, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v2, [B

    fill-array-data v0, :array_7

    const-string v1, "d3ee67"

    const/16 v2, -0x6d7d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v2, [B

    fill-array-data v0, :array_8

    const-string v1, "22e694"

    const/16 v2, 0x209b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v2, [B

    fill-array-data v0, :array_9

    const-string v1, "86b213"

    const-wide v2, 0x41bd500cc5000000L    # 4.91785413E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v2, [B

    fill-array-data v0, :array_a

    const-string v2, "0f1d04"

    invoke-static {v0, v2, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v2, [B

    fill-array-data v0, :array_b

    const-string v1, "bdd145"

    const-wide/32 v4, -0x2309ef83

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v2, "d71dc3"

    invoke-static {v0, v2, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v3, [B

    fill-array-data v0, :array_d

    const-string v1, "6cc662"

    const-wide v2, -0x3e2bcae7c8800000L    # -1.35609571E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_e
    new-array v2, v3, [B

    fill-array-data v2, :array_e

    const-string v3, "0c6478"

    invoke-static {v2, v3, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_f
    new-array v0, v3, [B

    fill-array-data v0, :array_f

    const-string v1, "8f76fd"

    const-wide v2, -0x3e40967bdd000000L    # -5.27008803E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_10
    new-array v1, v4, [B

    fill-array-data v1, :array_10

    const-string v2, "9e7f3b"

    invoke-static {v1, v2, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_0

    :sswitch_11
    new-array v0, v4, [B

    fill-array-data v0, :array_11

    const-string v1, "67f836"

    const v2, -0x313fd5c2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_12
    new-array v1, v4, [B

    fill-array-data v1, :array_12

    const-string v2, "f2bde1"

    invoke-static {v1, v2, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_13
    new-array v1, v2, [B

    fill-array-data v1, :array_13

    const-string v2, "c38b2f"

    invoke-static {v1, v2, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x13e

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x65

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x64

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x13d

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x13c

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x13b

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x13a

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x139

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x138

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0x137

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x136

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x135

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x134

    goto/16 :goto_1

    :pswitch_d
    const/16 v0, 0x133

    goto/16 :goto_1

    :pswitch_e
    const/16 v0, 0x132

    goto/16 :goto_1

    :pswitch_f
    const/16 v0, 0x131

    goto/16 :goto_1

    :pswitch_10
    const/16 v0, 0x130

    goto/16 :goto_1

    :pswitch_11
    const/16 v0, 0x12f

    goto/16 :goto_1

    :pswitch_12
    const/16 v0, 0x12e

    goto/16 :goto_1

    :pswitch_13
    const/16 v0, 0x12d

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_13
        -0x4a771f66 -> :sswitch_12
        -0x4a771f65 -> :sswitch_11
        -0x4a771f64 -> :sswitch_10
        -0x490b9c39 -> :sswitch_f
        -0x490b9c38 -> :sswitch_e
        -0x490b9c37 -> :sswitch_d
        -0x3bab3dd3 -> :sswitch_c
        -0x3ae243aa -> :sswitch_b
        -0x3ae243a9 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x34818e6f -> :sswitch_7
        -0x42d1a3 -> :sswitch_6
        0x589b15e -> :sswitch_5
        0x5d2a96d -> :sswitch_4
        0x2283b8a2 -> :sswitch_3
        0x2fdfbde0 -> :sswitch_2
        0x45917073 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x46t
        0xat
        0x15t
        0x5et
        0x57t
        0xdt
        0x5ct
        0xat
        0x12t
        0x4et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0x50t
        0x12t
        0xet
        0x41t
        0x6dt
        0x3t
        0x4bt
        0x3t
        0x4t
        0x41t
    .end array-data

    :array_2
    .array-data 1
        0x43t
        0x59t
        0x45t
        0x51t
        0x60t
        0x56t
        0x47t
        0x59t
        0x45t
        0x5ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x55t
        0x40t
        0x41t
        0x17t
        0x7t
        0x22t
        0x5ft
        0x41t
    .end array-data

    :array_4
    .array-data 1
        0x5ft
        0x14t
        0x54t
        0x8t
        0x5ct
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x5bt
        0x43t
        0x5bt
        0x51t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x1t
        0xat
        0x53t
        0x17t
        0x59t
        0x42t
        0xdt
        0x9t
        0x58t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x10t
        0x52t
        0x17t
        0x2t
        0x53t
        0x43t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x41t
        0x51t
        0x4t
        0x5at
        0x5ct
        0x6dt
    .end array-data

    nop

    :array_9
    .array-data 1
        0x4bt
        0x55t
        0x3t
        0x5et
        0x54t
        0x6bt
    .end array-data

    nop

    :array_a
    .array-data 1
        0x40t
        0xft
        0x47t
        0xbt
        0x44t
        0x6dt
    .end array-data

    nop

    :array_b
    .array-data 1
        0x12t
        0xdt
        0x12t
        0x5et
        0x40t
        0x6dt
    .end array-data

    nop

    :array_c
    .array-data 1
        0x14t
        0x45t
        0x5et
        0x3t
        0x11t
        0x56t
        0x17t
        0x44t
    .end array-data

    :array_d
    .array-data 1
        0x42t
        0x11t
        0x2t
        0x58t
        0x45t
        0x5et
        0x57t
        0x17t
        0xat
        0x59t
        0x58t
        0x68t
    .end array-data

    :array_e
    .array-data 1
        0x44t
        0x11t
        0x57t
        0x5at
        0x44t
        0x54t
        0x51t
        0x17t
        0x5ft
        0x5bt
        0x59t
        0x61t
    .end array-data

    :array_f
    .array-data 1
        0x4ct
        0x14t
        0x56t
        0x58t
        0x15t
        0x8t
        0x59t
        0x12t
        0x5et
        0x59t
        0x8t
        0x3ct
    .end array-data

    :array_10
    .array-data 1
        0x4bt
        0xat
        0x43t
        0x7t
        0x47t
        0xbt
        0x56t
        0xbt
        0x6dt
    .end array-data

    nop

    :array_11
    .array-data 1
        0x44t
        0x58t
        0x12t
        0x59t
        0x47t
        0x5ft
        0x59t
        0x59t
        0x3ft
    .end array-data

    nop

    :array_12
    .array-data 1
        0x14t
        0x5dt
        0x16t
        0x5t
        0x11t
        0x58t
        0x9t
        0x5ct
        0x3at
    .end array-data

    nop

    :array_13
    .array-data 1
        0x6t
        0x52t
        0x4bt
        0xbt
        0x5ct
        0x1t
    .end array-data
.end method

.method public static getType(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x131 -> :sswitch_0
        0x132 -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_0
        0x135 -> :sswitch_0
        0x136 -> :sswitch_0
        0x137 -> :sswitch_0
        0x138 -> :sswitch_0
        0x139 -> :sswitch_0
        0x13a -> :sswitch_0
        0x13b -> :sswitch_0
        0x13c -> :sswitch_0
        0x13d -> :sswitch_1
        0x13e -> :sswitch_1
    .end sparse-switch
.end method
