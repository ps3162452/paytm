.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition$-CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 6

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, -0x1

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
    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5bfc68"

    const-wide/32 v4, 0x46e02e69

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "64f218"

    const v3, 0x4e5acdde    # 9.177312E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    new-array v2, v3, [B

    fill-array-data v2, :array_2

    const-string v3, "716c52"

    const/16 v4, 0x2809

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_3
    new-array v1, v2, [B

    fill-array-data v1, :array_3

    const-string v3, "7f64bb"

    const-wide/32 v4, 0x5094da70

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_4
    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v4, "212c8d"

    invoke-static {v2, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_5
    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "04f369"

    const-wide v4, 0x41d56a146d400000L    # 1.437094325E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_0

    :sswitch_6
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "77381d"

    const/16 v3, 0x17ea

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :sswitch_7
    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "513c81"

    const/16 v3, 0x35fb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x2c3

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x2c2

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x2c1

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x2c0

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x1fd

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x2be

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x2bd

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x2bc

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x770661ce -> :sswitch_7
        -0x76bbb26c -> :sswitch_6
        -0x50ef8463 -> :sswitch_5
        -0x4d5ee79c -> :sswitch_4
        0xe7b -> :sswitch_3
        0x3017aa -> :sswitch_2
        0x4e203417 -> :sswitch_1
        0x6da0e50c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        0x16t
        0x7t
        0x4t
        0x51t
        0x5dt
        0x47t
        0x7t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x55t
        0x12t
        0x5at
        0x7ct
        0x57t
        0x42t
        0x5dt
        0x9t
        0x5ct
        0x70t
        0x4at
        0x55t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x51t
        0x43t
        0x59t
        0xet
    .end array-data

    :array_3
    .array-data 1
        0x43t
        0x9t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x53t
        0x44t
        0x46t
        0xct
        0x6ct
        0x16t
        0x53t
        0x5ft
        0x41t
        0xat
        0x4ct
        0xdt
        0x5dt
        0x5ft
    .end array-data

    nop

    :array_5
    .array-data 1
        0x5dt
        0x5bt
        0x12t
        0x5at
        0x59t
        0x57t
        0x79t
        0x5at
        0x12t
        0x56t
        0x44t
        0x49t
        0x5ft
        0x58t
        0x7t
        0x47t
        0x59t
        0x4bt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x53t
        0x42t
        0x41t
        0x59t
        0x45t
        0xdt
        0x58t
        0x59t
    .end array-data

    :array_7
    .array-data 1
        0x41t
        0x43t
        0x52t
        0xdt
        0x4bt
        0x58t
        0x41t
        0x58t
        0x5ct
        0xdt
        0x7et
        0x5dt
        0x54t
        0x56t
        0x40t
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
        0x1fd -> :sswitch_2
        0x2bc -> :sswitch_2
        0x2bd -> :sswitch_1
        0x2be -> :sswitch_1
        0x2c1 -> :sswitch_1
        0x2c2 -> :sswitch_0
        0x2c3 -> :sswitch_1
    .end sparse-switch
.end method
