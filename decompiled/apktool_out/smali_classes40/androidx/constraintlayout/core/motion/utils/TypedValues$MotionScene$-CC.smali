.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene$-CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b9a7c0"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "bc1bc3"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x259

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x258

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5cb6f5 -> :sswitch_1
        0x3d519dc0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0xet
        0x58t
        0x18t
        0x58t
        0x16t
        0x44t
        0x26t
        0x4ct
        0x13t
        0x5et
        0xdt
        0x57t
        0x36t
        0x4bt
        0x0t
        0x59t
        0x10t
        0x59t
        0x16t
        0x50t
        0xet
        0x59t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6t
        0x6t
        0x57t
        0x3t
        0x16t
        0x5ft
        0x16t
        0x27t
        0x44t
        0x10t
        0x2t
        0x47t
        0xbt
        0xct
        0x5ft
    .end array-data
.end method

.method public static getType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
