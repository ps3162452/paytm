.class public abstract Landroidx/constraintlayout/motion/utils/ViewSpline;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8408ba"

    const-wide v2, -0x3e368b677c000000L    # -8.5414324E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/utils/ViewSpline;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x6et
        0x5dt
        0x55t
        0x4ft
        0x31t
        0x11t
        0x54t
        0x5dt
        0x5et
        0x5dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    return-void
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;"
        }
    .end annotation

    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;
    .locals 6

    const/4 v2, 0x6

    const/16 v3, 0x9

    const/16 v4, 0xc

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a32d53"

    const-wide/32 v2, 0x6af47bdf

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "0b044f"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "43ce8d"

    invoke-static {v1, v2, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    new-array v2, v3, [B

    fill-array-data v2, :array_3

    const-string v3, "652c28"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "afd255"

    const-wide v2, -0x3e20f7e977800000L    # -2.08249501E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "cf531f"

    const-wide v4, 0x41d4334920000000L    # 1.355621504E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "7d32a3"

    const/16 v2, 0x179c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v4, [B

    fill-array-data v0, :array_7

    const-string v1, "42e20e"

    const/16 v2, 0x70e2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v2, [B

    fill-array-data v0, :array_8

    const-string v2, "47eb1a"

    invoke-static {v0, v2, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_0

    :sswitch_9
    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v3, "ca4b4a"

    invoke-static {v2, v3, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "e0aeb8"

    const-wide/32 v2, -0x5f835ec2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v4, [B

    fill-array-data v0, :array_b

    const-string v1, "c4ce51"

    const/16 v2, -0x631b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v4, [B

    fill-array-data v0, :array_c

    const-string v1, "862d8d"

    const/16 v2, 0x6db1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v4, [B

    fill-array-data v0, :array_d

    const-string v1, "4f7ed7"

    const-wide/32 v2, -0x4a49fd32

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_0

    :sswitch_e
    new-array v1, v3, [B

    fill-array-data v1, :array_e

    const-string v2, "4a8d20"

    invoke-static {v1, v2, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_f
    new-array v0, v3, [B

    fill-array-data v0, :array_f

    const-string v1, "b02741"

    const-wide v2, 0x41d7df3060400000L    # 1.602011521E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;-><init>()V

    goto/16 :goto_1

    :pswitch_1
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;-><init>()V

    goto/16 :goto_1

    :pswitch_2
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;-><init>()V

    goto/16 :goto_1

    :pswitch_3
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;-><init>()V

    goto/16 :goto_1

    :pswitch_4
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto/16 :goto_1

    :pswitch_5
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto/16 :goto_1

    :pswitch_6
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;-><init>()V

    goto/16 :goto_1

    :pswitch_7
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;-><init>()V

    goto/16 :goto_1

    :pswitch_8
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;-><init>()V

    goto/16 :goto_1

    :pswitch_9
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;-><init>()V

    goto/16 :goto_1

    :pswitch_a
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;-><init>()V

    goto/16 :goto_1

    :pswitch_b
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;-><init>()V

    goto/16 :goto_1

    :pswitch_c
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;-><init>()V

    goto/16 :goto_1

    :pswitch_d
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;-><init>()V

    goto/16 :goto_1

    :pswitch_e
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;-><init>()V

    goto/16 :goto_1

    :pswitch_f
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
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
        0x16t
        0x52t
        0x44t
        0x1t
        0x7at
        0x55t
        0x7t
        0x40t
        0x57t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0xet
        0x40t
        0x5ct
        0x55t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x40t
        0x41t
        0x2t
        0xbt
        0x4bt
        0xdt
        0x40t
        0x5at
        0xct
        0xbt
        0x68t
        0x5t
        0x40t
        0x5bt
        0x31t
        0xat
        0x4ct
        0x5t
        0x40t
        0x56t
    .end array-data

    :array_3
    .array-data 1
        0x53t
        0x59t
        0x57t
        0x15t
        0x53t
        0x4ct
        0x5ft
        0x5at
        0x5ct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x13t
        0x9t
        0x10t
        0x53t
        0x41t
        0x5ct
        0xet
        0x8t
    .end array-data

    :array_5
    .array-data 1
        0x17t
        0x14t
        0x54t
        0x5dt
        0x42t
        0x0t
        0xct
        0x14t
        0x58t
        0x63t
        0x58t
        0x10t
        0xct
        0x12t
        0x6ct
    .end array-data

    :array_6
    .array-data 1
        0x43t
        0x16t
        0x52t
        0x5ct
        0x12t
        0x55t
        0x58t
        0x16t
        0x5et
        0x62t
        0x8t
        0x45t
        0x58t
        0x10t
        0x6bt
    .end array-data

    :array_7
    .array-data 1
        0x43t
        0x53t
        0x13t
        0x57t
        0x66t
        0x4t
        0x46t
        0x5bt
        0x0t
        0x41t
        0x72t
        0x1ct
    .end array-data

    :array_8
    .array-data 1
        0x47t
        0x54t
        0x4t
        0xet
        0x54t
        0x38t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x10t
        0x2t
        0x55t
        0xet
        0x51t
        0x39t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x15t
        0x42t
        0xet
        0x2t
        0x10t
        0x5dt
        0x16t
        0x43t
    .end array-data

    :array_b
    .array-data 1
        0x17t
        0x46t
        0x2t
        0xbt
        0x46t
        0x5dt
        0x2t
        0x40t
        0xat
        0xat
        0x5bt
        0x6bt
    .end array-data

    :array_c
    .array-data 1
        0x4ct
        0x44t
        0x53t
        0xat
        0x4bt
        0x8t
        0x59t
        0x42t
        0x5bt
        0xbt
        0x56t
        0x3dt
    .end array-data

    :array_d
    .array-data 1
        0x40t
        0x14t
        0x56t
        0xbt
        0x17t
        0x5bt
        0x55t
        0x12t
        0x5et
        0xat
        0xat
        0x6ft
    .end array-data

    :array_e
    .array-data 1
        0x46t
        0xet
        0x4ct
        0x5t
        0x46t
        0x59t
        0x5bt
        0xft
        0x61t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x10t
        0x5ft
        0x46t
        0x56t
        0x40t
        0x58t
        0xdt
        0x5et
        0x6at
    .end array-data
.end method


# virtual methods
.method public abstract setProperty(Landroid/view/View;F)V
.end method
