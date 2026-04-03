.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion$-CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 8

    const/16 v3, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x1

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
    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "e81048"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "3f656c"

    const-wide v4, -0x3e31105f8f800000L    # -1.038041313E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "70fd5d"

    const-wide/32 v4, -0x2f66ff7f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "3f2fdb"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_4
    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v3, "37d0fe"

    invoke-static {v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_5
    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "f0ef47"

    const v3, -0x312ee9bb    # -1.7539488E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_6
    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v3, "f97449"

    const/16 v4, 0x2cb4

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto/16 :goto_0

    :sswitch_7
    new-array v1, v3, [B

    fill-array-data v1, :array_7

    const-string v2, "3a43cf"

    const-wide v4, 0x41c2d26d86800000L    # 6.31560973E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_0

    :sswitch_8
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "dc67e9"

    const v3, 0x4c517307    # 5.4905884E7f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_0

    :sswitch_9
    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "479d9b"

    const-wide v6, -0x3e2128107b000000L    # -2.069872148E9

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto/16 :goto_0

    :sswitch_a
    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const-string v2, "00f186"

    const/16 v3, -0x3f10

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const-string v2, "b119fe"

    const-wide/32 v4, -0x53e5856e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_c
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    const-string v2, "1fe012"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x264

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x263

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x262

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x261

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x260

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x25f

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x25e

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x25d

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x25c

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0x25b

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x25a

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x259

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x258

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7933ed83 -> :sswitch_c
        -0x5b54b2ac -> :sswitch_b
        -0x5b24e900 -> :sswitch_a
        -0x594e6600 -> :sswitch_9
        -0x3d700b48 -> :sswitch_8
        -0x2d70d857 -> :sswitch_7
        -0xde15873 -> :sswitch_6
        0x43dc0025 -> :sswitch_5
        0x5bbedc12 -> :sswitch_4
        0x5e65afd3 -> :sswitch_3
        0x61b6c700 -> :sswitch_2
        0x714d6c08 -> :sswitch_1
        0x7dbf63f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        0x35t
        0x59t
        0x45t
        0x58t
        0x79t
        0x57t
        0x11t
        0x51t
        0x5et
        0x5et
        0x75t
        0x4at
        0x6t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x72t
        0x8t
        0x5ft
        0x58t
        0x57t
        0x17t
        0x56t
        0x34t
        0x53t
        0x59t
        0x57t
        0x17t
        0x5at
        0x10t
        0x53t
        0x61t
        0x59t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x63t
        0x42t
        0x7t
        0xat
        0x46t
        0xdt
        0x43t
        0x59t
        0x9t
        0xat
        0x70t
        0x5t
        0x44t
        0x59t
        0x8t
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0x62t
        0x13t
        0x53t
        0x8t
        0x10t
        0xbt
        0x49t
        0x3t
        0x7bt
        0x8t
        0x10t
        0x7t
        0x41t
        0x16t
        0x5dt
        0xat
        0x5t
        0x16t
        0x5ct
        0x14t
        0x7bt
        0x22t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x62t
        0x42t
        0x5t
        0x5et
        0x12t
        0xct
        0x49t
        0x52t
        0x2dt
        0x5et
        0x12t
        0x0t
        0x41t
        0x47t
        0xbt
        0x5ct
        0x7t
        0x11t
        0x5ct
        0x45t
        0x30t
        0x49t
        0x16t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x36t
        0x5ft
        0x9t
        0x7t
        0x46t
        0x65t
        0x3t
        0x5ct
        0x4t
        0x12t
        0x5dt
        0x41t
        0x3t
        0x64t
        0xat
    .end array-data

    :array_6
    .array-data 1
        0x35t
        0x4dt
        0x56t
        0x53t
        0x53t
        0x5ct
        0x14t
    .end array-data

    :array_7
    .array-data 1
        0x77t
        0x13t
        0x55t
        0x44t
        0x33t
        0x7t
        0x47t
        0x9t
    .end array-data

    :array_8
    .array-data 1
        0x35t
        0x16t
        0x57t
        0x59t
        0x11t
        0x50t
        0x1et
        0x6t
        0x7ft
        0x59t
        0x11t
        0x5ct
        0x16t
        0x13t
        0x59t
        0x5bt
        0x4t
        0x4dt
        0xbt
        0x11t
    .end array-data

    :array_9
    .array-data 1
        0x64t
        0x56t
        0x4dt
        0xct
        0x6bt
        0xdt
        0x40t
        0x56t
        0x4dt
        0x1t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x61t
        0x45t
        0x7t
        0x5ft
        0x4ct
        0x5ft
        0x4at
        0x55t
        0x2bt
        0x5et
        0x4ct
        0x5ft
        0x5ft
        0x5et
        0x35t
        0x45t
        0x5dt
        0x46t
        0x43t
    .end array-data

    :array_b
    .array-data 1
        0x33t
        0x44t
        0x50t
        0x57t
        0x12t
        0xct
        0x18t
        0x54t
        0x7ct
        0x56t
        0x12t
        0xct
        0xdt
        0x5ft
        0x61t
        0x51t
        0x7t
        0x16t
        0x7t
    .end array-data

    :array_c
    .array-data 1
        0x70t
        0x8t
        0xct
        0x5dt
        0x50t
        0x46t
        0x54t
        0x25t
        0xct
        0x42t
        0x52t
        0x5et
        0x54t
        0x27t
        0xbt
        0x57t
        0x5dt
        0x57t
        0x65t
        0x9t
    .end array-data
.end method
