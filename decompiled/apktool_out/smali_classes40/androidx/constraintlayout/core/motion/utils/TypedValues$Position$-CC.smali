.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$Position$-CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const-string v3, "6e80fc"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "80d712"

    const/16 v3, 0x519e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "775788"

    const-wide v4, -0x3e280c17d1400000L    # -1.607442619E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    new-array v3, v4, [B

    fill-array-data v3, :array_3

    const-string v4, "dcfd7f"

    invoke-static {v3, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_4
    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v3, "fae210"

    invoke-static {v1, v3, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "a808fd"

    const-wide v4, -0x3e38c14372000000L    # -7.7997494E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_6
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v3, "434bc2"

    const/16 v4, -0x4274

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x1fb

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x1fa

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x1f9

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x1f8

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x1f7

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x1f6

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x1f5

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_6
        -0x4330437f -> :sswitch_5
        -0x3ca72634 -> :sswitch_4
        -0x314b3c77 -> :sswitch_3
        -0xbefb6fc -> :sswitch_2
        0x198424b3 -> :sswitch_1
        0x198424b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        0x0t
        0x4at
        0x53t
        0x3t
        0xdt
        0x42t
        0x3ct
    .end array-data

    :array_1
    .array-data 1
        0x48t
        0x55t
        0x16t
        0x54t
        0x54t
        0x5ct
        0x4ct
        0x68t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x5et
        0x4ft
        0x52t
        0x68t
        0x5dt
        0x45t
        0x54t
        0x50t
        0x59t
        0x4ct
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x11t
        0x7t
        0x13t
        0x67t
        0x7t
        0x10t
        0xbt
    .end array-data

    :array_4
    .array-data 1
        0x16t
        0x4t
        0x17t
        0x51t
        0x54t
        0x5et
        0x12t
        0x29t
        0x0t
        0x5bt
        0x56t
        0x58t
        0x12t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x11t
        0x5dt
        0x42t
        0x5bt
        0x3t
        0xat
        0x15t
        0x6ft
        0x59t
        0x5ct
        0x12t
        0xct
    .end array-data

    :array_6
    .array-data 1
        0x40t
        0x41t
        0x55t
        0xct
        0x10t
        0x5bt
        0x40t
        0x5at
        0x5bt
        0xct
        0x26t
        0x53t
        0x47t
        0x5at
        0x5at
        0x5t
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
        0x1f5 -> :sswitch_1
        0x1f6 -> :sswitch_1
        0x1f7 -> :sswitch_0
        0x1f8 -> :sswitch_0
        0x1f9 -> :sswitch_0
        0x1fa -> :sswitch_0
        0x1fb -> :sswitch_0
        0x1fc -> :sswitch_2
    .end sparse-switch
.end method
