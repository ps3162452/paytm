.class public abstract Landroidx/constraintlayout/motion/utils/ViewOscillator;
.super Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f123f5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x58t
        0x57t
        0x44t
        0x29t
        0x46t
        0x5t
        0x58t
        0x5et
        0x5ft
        0x7t
        0x41t
        0x9t
        0x43t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;-><init>()V

    return-void
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;
    .locals 10

    const/16 v3, 0x9

    const/4 v4, 0x6

    const/16 v5, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v6, "edc289"

    const-wide v8, 0x41b67c69b5000000L    # 3.77252277E8

    invoke-static {v0, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "ef7be1"

    invoke-static {v3, v4, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "b704de"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_2
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "d0f808"

    const/16 v3, -0x2745

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    new-array v1, v3, [B

    fill-array-data v1, :array_4

    const-string v3, "820651"

    const-wide v4, 0x41dfba2093400000L    # 2.129166925E9

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_4
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "648ab3"

    const v3, -0x31692389

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    new-array v1, v5, [B

    fill-array-data v1, :array_6

    const-string v4, "57e41b"

    invoke-static {v1, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto/16 :goto_1

    :sswitch_6
    new-array v1, v4, [B

    fill-array-data v1, :array_7

    const-string v3, "92f337"

    invoke-static {v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_7
    new-array v1, v4, [B

    fill-array-data v1, :array_8

    const-string v2, "2074ee"

    const-wide/32 v6, -0x36368521

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    goto/16 :goto_1

    :sswitch_8
    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_9

    const-string v4, "4a3743"

    invoke-static {v3, v4, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_9
    new-array v1, v5, [B

    fill-array-data v1, :array_a

    const-string v2, "39430e"

    const/16 v3, -0x603d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    goto/16 :goto_1

    :sswitch_a
    new-array v1, v5, [B

    fill-array-data v1, :array_b

    const-string v2, "c6e861"

    const/16 v3, -0xd3a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_b
    new-array v1, v5, [B

    fill-array-data v1, :array_c

    const-string v2, "166c5a"

    const-wide/32 v4, -0x20420d98

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_c
    new-array v3, v3, [B

    fill-array-data v3, :array_d

    const-string v4, "a9a2da"

    invoke-static {v3, v4, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_d
    new-array v1, v3, [B

    fill-array-data v1, :array_e

    const-string v2, "50b886"

    const-wide/32 v4, -0x59566e4f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;-><init>()V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;-><init>()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;-><init>()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;-><init>()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;-><init>()V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;-><init>()V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;-><init>()V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;-><init>()V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;-><init>()V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;-><init>()V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;-><init>()V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x26t
        0x31t
        0x30t
        0x66t
        0x77t
        0x74t
    .end array-data

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2f893320 -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :array_1
    .array-data 1
        0x12t
        0x7t
        0x41t
        0x7t
        0x2at
        0x57t
        0x3t
        0x15t
        0x52t
        0x16t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x3t
        0x5bt
        0x40t
        0x5ct
        0x5t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x10t
        0x42t
        0x7t
        0x56t
        0x43t
        0x51t
        0x10t
        0x59t
        0x9t
        0x56t
        0x60t
        0x59t
        0x10t
        0x58t
        0x34t
        0x57t
        0x44t
        0x59t
        0x10t
        0x55t
    .end array-data

    :array_4
    .array-data 1
        0x5dt
        0x5et
        0x55t
        0x40t
        0x54t
        0x45t
        0x51t
        0x5dt
        0x5et
    .end array-data

    nop

    :array_5
    .array-data 1
        0x44t
        0x5bt
        0x4ct
        0x0t
        0x16t
        0x5at
        0x59t
        0x5at
    .end array-data

    :array_6
    .array-data 1
        0x42t
        0x56t
        0x13t
        0x51t
        0x67t
        0x3t
        0x47t
        0x5et
        0x0t
        0x47t
        0x73t
        0x1bt
    .end array-data

    :array_7
    .array-data 1
        0x4at
        0x51t
        0x7t
        0x5ft
        0x56t
        0x6et
    .end array-data

    nop

    :array_8
    .array-data 1
        0x41t
        0x53t
        0x56t
        0x58t
        0x0t
        0x3dt
    .end array-data

    nop

    :array_9
    .array-data 1
        0x44t
        0x13t
        0x5ct
        0x50t
        0x46t
        0x56t
        0x47t
        0x12t
    .end array-data

    :array_a
    .array-data 1
        0x47t
        0x4bt
        0x55t
        0x5dt
        0x43t
        0x9t
        0x52t
        0x4dt
        0x5dt
        0x5ct
        0x5et
        0x3ft
    .end array-data

    :array_b
    .array-data 1
        0x17t
        0x44t
        0x4t
        0x56t
        0x45t
        0x5dt
        0x2t
        0x42t
        0xct
        0x57t
        0x58t
        0x68t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x44t
        0x57t
        0xdt
        0x46t
        0xdt
        0x50t
        0x42t
        0x5ft
        0xct
        0x5bt
        0x39t
    .end array-data

    :array_d
    .array-data 1
        0x13t
        0x56t
        0x15t
        0x53t
        0x10t
        0x8t
        0xet
        0x57t
        0x38t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x47t
        0x5ft
        0x16t
        0x59t
        0x4ct
        0x5ft
        0x5at
        0x5et
        0x3at
    .end array-data
.end method


# virtual methods
.method public abstract setProperty(Landroid/view/View;F)V
.end method
