.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom$-CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "c7c359"

    const-wide/32 v4, -0x3e9a0ae7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_1
    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "d6d909"

    const-wide v4, 0x41df6d9e17800000L    # 2.109110366E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const-string v2, "7e46de"

    const-wide/32 v4, 0x69f6fcda

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    new-array v1, v5, [B

    fill-array-data v1, :array_3

    const-string v2, "af5ca2"

    const/16 v3, 0x6c1b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v3, "8cd719"

    const-wide/32 v4, 0x2a2a1a55

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_5
    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "a61d43"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_0

    :sswitch_6
    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "eaa28c"

    const-wide v4, -0x3e274f3295800000L    # -1.656960426E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x38a

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x389

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x388

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x387

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x386

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x385

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x384

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x4144929a -> :sswitch_6
        -0x352a9fef -> :sswitch_5
        -0x2a604a76 -> :sswitch_4
        0x3db6c28 -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x74b5813e -> :sswitch_0
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
        0xat
        0x59t
        0x17t
        0x56t
        0x52t
        0x5ct
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x2t
        0x5at
        0xbt
        0x58t
        0x44t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x54t
        0xat
        0x58t
        0x59t
        0x16t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3t
        0x9t
        0x5at
        0xft
        0x4t
        0x53t
        0xft
    .end array-data

    :array_4
    .array-data 1
        0x4at
        0x6t
        0x2t
        0x45t
        0x54t
        0x57t
        0x5bt
        0x6t
    .end array-data

    :array_5
    .array-data 1
        0x12t
        0x42t
        0x43t
        0xdt
        0x5at
        0x54t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x1t
        0x8t
        0xct
        0x57t
        0x56t
        0x10t
        0xct
        0xet
        0xft
    .end array-data
.end method
