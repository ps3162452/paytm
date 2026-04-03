.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger$-CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 6

    const/16 v3, 0x9

    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e559d3"

    const v3, -0x3242794a    # -3.9746528E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_1
    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "5a4900"

    const v3, -0x31498a5f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "533cf8"

    const v4, 0x4dffae34    # 5.3620083E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_3
    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "d9de22"

    const v3, -0x313add1e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    new-array v1, v2, [B

    fill-array-data v1, :array_4

    const-string v2, "3ab5f1"

    const-wide/32 v4, -0x2c87ea7c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_5
    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "fbc56b"

    const-wide v4, 0x41b07dabc1000000L    # 2.76671425E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_6
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v3, "316772"

    const-wide/32 v4, -0x337b184f

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto/16 :goto_0

    :sswitch_7
    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "1a5e39"

    const/16 v4, -0x172b

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_0

    :sswitch_8
    new-array v1, v3, [B

    fill-array-data v1, :array_8

    const-string v2, "22c9c6"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_9
    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "43a739"

    const-wide/32 v4, -0x52cb0685

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_0

    :sswitch_a
    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "73a695"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto/16 :goto_0

    :sswitch_b
    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const-string v2, "ac5ea9"

    const-wide/32 v4, -0x2e32a0b2

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x138

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x137

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x136

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x135

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x134

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x133

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x132

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x131

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x130

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0x12f

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x12e

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x12d

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_b
        -0x399a6b12 -> :sswitch_a
        -0x2ee3a4eb -> :sswitch_9
        -0x26ab2f2d -> :sswitch_8
        -0x26090af5 -> :sswitch_7
        -0x4880de1 -> :sswitch_6
        -0x94d7ce -> :sswitch_5
        0x3d6a020 -> :sswitch_4
        0x15b9acb8 -> :sswitch_3
        0x4d99e267 -> :sswitch_2
        0x538787ea -> :sswitch_1
        0x5b846bc7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        0x11t
        0x47t
        0x5ct
        0x5et
        0x3t
        0x56t
        0x17t
        0x67t
        0x50t
        0x5at
        0x1t
        0x5at
        0x13t
        0x50t
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x45t
        0xet
        0x47t
        0x4dt
        0x7ct
        0x51t
        0x4ct
        0xet
        0x41t
        0x4dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x43t
        0x5at
        0x56t
        0x14t
        0x32t
        0x4at
        0x54t
        0x5dt
        0x40t
        0xat
        0x12t
        0x51t
        0x5at
        0x5dt
        0x7ct
        0xdt
        0x25t
        0x4at
        0x5at
        0x40t
        0x40t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x10t
        0x4bt
        0xdt
        0x2t
        0x55t
        0x57t
        0x16t
        0x6at
        0x8t
        0x4t
        0x51t
        0x59t
    .end array-data

    :array_4
    .array-data 1
        0x70t
        0x33t
        0x2dt
        0x66t
        0x35t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x10t
        0xbt
        0x6t
        0x42t
        0x62t
        0x10t
        0x7t
        0xct
        0x10t
        0x5ct
        0x42t
        0xbt
        0x9t
        0xct
        0x2ct
        0x5bt
        0x78t
        0x7t
        0x1t
        0x3t
        0x17t
        0x5ct
        0x40t
        0x7t
        0x25t
        0x10t
        0xct
        0x46t
        0x45t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x47t
        0x43t
        0x5ft
        0x50t
        0x50t
        0x57t
        0x41t
        0x72t
        0x59t
        0x5bt
        0x5bt
        0x5bt
        0x40t
        0x58t
        0x59t
        0x59t
        0x61t
        0x5bt
        0x56t
        0x46t
    .end array-data

    :array_7
    .array-data 1
        0x5ft
        0x4t
        0x52t
        0x4t
        0x47t
        0x50t
        0x47t
        0x4t
        0x76t
        0x17t
        0x5ct
        0x4at
        0x42t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x46t
        0x40t
        0xat
        0x5et
        0x4t
        0x53t
        0x40t
        0x7bt
        0x27t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x40t
        0x41t
        0x8t
        0x50t
        0x54t
        0x5ct
        0x46t
        0x70t
        0xet
        0x5bt
        0x5ft
        0x50t
        0x47t
        0x5at
        0xet
        0x59t
        0x7at
        0x5dt
    .end array-data

    nop

    :array_a
    .array-data 1
        0x41t
        0x5at
        0x4t
        0x41t
        0x6dt
        0x47t
        0x56t
        0x5dt
        0x12t
        0x5ft
        0x4dt
        0x5ct
        0x58t
        0x5dt
        0x2et
        0x58t
        0x69t
        0x5at
        0x44t
        0x5at
        0x15t
        0x5ft
        0x4ft
        0x50t
        0x74t
        0x41t
        0xet
        0x45t
        0x4at
    .end array-data

    nop

    :array_b
    .array-data 1
        0x11t
        0xct
        0x46t
        0xct
        0x15t
        0x50t
        0x17t
        0x6t
        0x76t
        0x17t
        0xet
        0x4at
        0x12t
    .end array-data
.end method
