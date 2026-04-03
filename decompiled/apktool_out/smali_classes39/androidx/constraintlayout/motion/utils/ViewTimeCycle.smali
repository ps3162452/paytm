.class public abstract Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.super Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0214ab"

    const/16 v2, 0x69e0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x66t
        0x5bt
        0x54t
        0x43t
        0x35t
        0xbt
        0x5dt
        0x57t
        0x72t
        0x4dt
        0x2t
        0xet
        0x55t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;-><init>()V

    return-void
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;"
        }
    .end annotation

    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    .locals 7

    const/16 v4, 0x8

    const/4 v2, 0x6

    const/4 v0, 0x0

    const/16 v3, 0x9

    const/4 v1, 0x1

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
    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "55ecf5"

    const/16 v3, 0x1a02

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "fa63ee"

    invoke-static {v0, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const-string v2, "0ac81e"

    const v3, -0x312f8313

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    new-array v2, v4, [B

    fill-array-data v2, :array_3

    const-string v3, "036d16"

    invoke-static {v2, v3, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "dc55e7"

    invoke-static {v2, v3, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    new-array v0, v2, [B

    fill-array-data v0, :array_5

    const-string v1, "bbc415"

    const-wide v4, -0x3e27994b4dc00000L    # -1.637536457E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v4, [B

    fill-array-data v0, :array_6

    const-string v1, "bf6d5f"

    const-wide v2, 0x41c69dd427800000L    # 7.58884431E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "6e8282"

    const-wide v2, 0x41de38186dc00000L    # 2.027970999E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "ac20a6"

    const-wide/32 v4, -0x52d10ef0

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "3321a3"

    const v2, 0x4e0dbc97    # 5.944867E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v3, [B

    fill-array-data v0, :array_a

    const-string v1, "f390c8"

    const-wide/32 v2, 0x364cc1b8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v3, [B

    fill-array-data v0, :array_b

    const-string v1, "6e015b"

    const-wide v2, 0x41cd113d47000000L    # 9.75338126E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;-><init>()V

    :goto_2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setStartTime(J)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;-><init>()V

    goto :goto_2

    :pswitch_2
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;-><init>()V

    goto :goto_2

    :pswitch_3
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;-><init>()V

    goto :goto_2

    :pswitch_4
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;-><init>()V

    goto :goto_2

    :pswitch_5
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;-><init>()V

    goto :goto_2

    :pswitch_6
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;-><init>()V

    goto :goto_2

    :pswitch_7
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;-><init>()V

    goto :goto_2

    :pswitch_8
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;-><init>()V

    goto :goto_2

    :pswitch_9
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;-><init>()V

    goto :goto_2

    :pswitch_a
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;-><init>()V

    goto :goto_2

    :pswitch_b
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>()V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_b
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_9
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
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
        0x54t
        0x59t
        0x15t
        0xbt
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0x13t
        0x57t
        0x5dt
        0x16t
        0xct
        0x12t
        0x8t
        0x59t
        0x5dt
        0x35t
        0x4t
        0x12t
        0x9t
        0x64t
        0x5ct
        0x11t
        0x4t
        0x12t
        0x4t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0xdt
        0x6t
        0x4et
        0x50t
        0x11t
        0x59t
        0xet
        0xdt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x42t
        0x5ct
        0x42t
        0x5t
        0x45t
        0x5ft
        0x5ft
        0x5dt
    .end array-data

    :array_4
    .array-data 1
        0x17t
        0x0t
        0x54t
        0x59t
        0x0t
        0x6et
    .end array-data

    nop

    :array_5
    .array-data 1
        0x11t
        0x1t
        0x2t
        0x58t
        0x54t
        0x6dt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x12t
        0x14t
        0x59t
        0x3t
        0x47t
        0x3t
        0x11t
        0x15t
    .end array-data

    :array_7
    .array-data 1
        0x42t
        0x17t
        0x59t
        0x5ct
        0x4bt
        0x5et
        0x57t
        0x11t
        0x51t
        0x5dt
        0x56t
        0x68t
    .end array-data

    :array_8
    .array-data 1
        0x15t
        0x11t
        0x53t
        0x5et
        0x12t
        0x5at
        0x0t
        0x17t
        0x5bt
        0x5ft
        0xft
        0x6ft
    .end array-data

    :array_9
    .array-data 1
        0x47t
        0x41t
        0x53t
        0x5ft
        0x12t
        0x5ft
        0x52t
        0x47t
        0x5bt
        0x5et
        0xft
        0x6bt
    .end array-data

    :array_a
    .array-data 1
        0x14t
        0x5ct
        0x4dt
        0x51t
        0x17t
        0x51t
        0x9t
        0x5dt
        0x60t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x44t
        0xat
        0x44t
        0x50t
        0x41t
        0xbt
        0x59t
        0xbt
        0x68t
    .end array-data
.end method


# virtual methods
.method public get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v2, p1

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p5, p4, v1, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    iget v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    :cond_1
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_time:J

    iget v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    float-to-double v4, v1

    sub-long v2, p2, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v2, v8

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-virtual {p5, p4, v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V

    iput-wide p2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_time:J

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->calcWave(F)F

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    mul-float v0, v1, v2

    add-float/2addr v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
.end method
