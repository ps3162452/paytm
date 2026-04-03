.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$Cycle$-CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Cycle;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 6

    const/16 v3, 0xc

    const/16 v2, 0x9

    const/4 v0, 0x1

    const/4 v4, 0x6

    const/4 v1, 0x0

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
    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "423be8"

    invoke-static {v2, v3, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "38a19c"

    const-wide v2, 0x41c8df85e2000000L    # 8.34603972E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "e755da"

    const-wide/32 v4, 0x202db8e2

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "042bcc"

    invoke-static {v2, v3, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    new-array v0, v4, [B

    fill-array-data v0, :array_4

    const-string v2, "9294c0"

    invoke-static {v0, v2, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_5
    new-array v0, v4, [B

    fill-array-data v0, :array_5

    const-string v1, "b86aab"

    const/16 v3, -0x5d8c

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v4, [B

    fill-array-data v0, :array_6

    const-string v1, "570190"

    const-wide v4, 0x41d3015f0f400000L    # 1.275427901E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v4, [B

    fill-array-data v0, :array_7

    const-string v1, "d88e66"

    const/16 v2, 0x97e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_8
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "a7e9c0"

    invoke-static {v1, v2, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v3, [B

    fill-array-data v0, :array_9

    const-string v1, "78dd86"

    const-wide v2, 0x41c7a625ac800000L    # 7.93529177E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_a
    new-array v2, v3, [B

    fill-array-data v2, :array_a

    const-string v3, "7cf40e"

    invoke-static {v2, v3, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v3, [B

    fill-array-data v0, :array_b

    const-string v1, "ce0fa5"

    const-wide v2, -0x3e46b835c8000000L    # -4.24135224E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v2, [B

    fill-array-data v0, :array_c

    const-string v1, "69fd37"

    const/16 v2, 0x3ce2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v2, [B

    fill-array-data v0, :array_d

    const-string v1, "55e660"

    const v2, 0x4da49386    # 3.4514144E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_e
    new-array v0, v2, [B

    fill-array-data v0, :array_e

    const-string v1, "8e1a25"

    const-wide v2, 0x41c04d8797000000L    # 5.47032878E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_0

    :sswitch_f
    new-array v0, v4, [B

    fill-array-data v0, :array_f

    const-string v1, "c9a199"

    const/16 v2, 0x25ef

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x1a4

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x1a0

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x13b

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x13a

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x139

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x138

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x137

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x136

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x135

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0x134

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x132

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x131

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x130

    goto/16 :goto_1

    :pswitch_d
    const/16 v0, 0x193

    goto/16 :goto_1

    :pswitch_e
    const/16 v0, 0x192

    goto/16 :goto_1

    :pswitch_f
    const/16 v0, 0x191

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_f
        -0x4a771f66 -> :sswitch_e
        -0x4a771f65 -> :sswitch_d
        -0x4a771f64 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3ae243aa -> :sswitch_7
        -0x3ae243a9 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        0x589b15e -> :sswitch_3
        0x2283b8a2 -> :sswitch_2
        0x2fdfbde0 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        0x42t
        0x5bt
        0x40t
        0xbt
        0x7t
        0x51t
        0x58t
        0x5bt
        0x47t
        0x1bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x43t
        0x59t
        0x15t
        0x59t
        0x6bt
        0xct
        0x47t
        0x59t
        0x15t
        0x54t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6t
        0x42t
        0x47t
        0x43t
        0x1t
        0x27t
        0xct
        0x43t
    .end array-data

    :array_3
    .array-data 1
        0x51t
        0x58t
        0x42t
        0xat
        0x2t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x4at
        0x51t
        0x58t
        0x58t
        0x6t
        0x69t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x11t
        0x5bt
        0x57t
        0xdt
        0x4t
        0x3at
    .end array-data

    nop

    :array_6
    .array-data 1
        0x45t
        0x5et
        0x46t
        0x5et
        0x4dt
        0x69t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x14t
        0x51t
        0x4et
        0xat
        0x42t
        0x6et
    .end array-data

    nop

    :array_8
    .array-data 1
        0x11t
        0x45t
        0xat
        0x5et
        0x11t
        0x55t
        0x12t
        0x44t
    .end array-data

    :array_9
    .array-data 1
        0x43t
        0x4at
        0x5t
        0xat
        0x4bt
        0x5at
        0x56t
        0x4ct
        0xdt
        0xbt
        0x56t
        0x6ct
    .end array-data

    :array_a
    .array-data 1
        0x43t
        0x11t
        0x7t
        0x5at
        0x43t
        0x9t
        0x56t
        0x17t
        0xft
        0x5bt
        0x5et
        0x3ct
    .end array-data

    :array_b
    .array-data 1
        0x17t
        0x17t
        0x51t
        0x8t
        0x12t
        0x59t
        0x2t
        0x11t
        0x59t
        0x9t
        0xft
        0x6dt
    .end array-data

    :array_c
    .array-data 1
        0x44t
        0x56t
        0x12t
        0x5t
        0x47t
        0x5et
        0x59t
        0x57t
        0x3ct
    .end array-data

    nop

    :array_d
    .array-data 1
        0x47t
        0x5at
        0x11t
        0x57t
        0x42t
        0x59t
        0x5at
        0x5bt
        0x3ct
    .end array-data

    nop

    :array_e
    .array-data 1
        0x4at
        0xat
        0x45t
        0x0t
        0x46t
        0x5ct
        0x57t
        0xbt
        0x69t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x6t
        0x58t
        0x12t
        0x58t
        0x57t
        0x5et
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
        0x191 -> :sswitch_2
        0x192 -> :sswitch_2
        0x193 -> :sswitch_0
        0x1a0 -> :sswitch_0
        0x1a4 -> :sswitch_1
        0x1a5 -> :sswitch_1
        0x1a7 -> :sswitch_0
        0x1a8 -> :sswitch_0
        0x1a9 -> :sswitch_0
    .end sparse-switch
.end method
