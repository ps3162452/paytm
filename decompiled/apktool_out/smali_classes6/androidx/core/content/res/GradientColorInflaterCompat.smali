.class final Landroidx/core/content/res/GradientColorInflaterCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    }
.end annotation


# static fields
.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkColors(Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    new-instance p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {p0, p1, p4, p2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {p0, p1, p2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    goto :goto_0
.end method

.method static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    if-ne v1, v3, :cond_2

    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/GradientColorInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "071422"

    const-wide/32 v4, 0x38382efa

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7et
        0x58t
        0x11t
        0x47t
        0x46t
        0x53t
        0x42t
        0x43t
        0x11t
        0x40t
        0x53t
        0x55t
        0x10t
        0x51t
        0x5et
        0x41t
        0x5ct
        0x56t
    .end array-data
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "a959bf"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v4, Landroidx/core/R$styleable;->GradientColor:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "a6f000"

    const-wide/32 v8, -0x2948334b

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    sget v6, Landroidx/core/R$styleable;->GradientColor_android_startX:I

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    const-string v7, "8819f2"

    const v8, 0x4e5f5036    # 9.36644E8f

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    sget v7, Landroidx/core/R$styleable;->GradientColor_android_startY:I

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6, v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_3

    const-string v8, "b358a9"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    sget v8, Landroidx/core/R$styleable;->GradientColor_android_endX:I

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v0, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    const/4 v8, 0x4

    new-array v8, v8, [B

    fill-array-data v8, :array_4

    const-string v9, "930286"

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    sget v9, Landroidx/core/R$styleable;->GradientColor_android_endY:I

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v0, v8, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    const/4 v9, 0x7

    new-array v9, v9, [B

    fill-array-data v9, :array_5

    const-string v10, "9c0db6"

    const-wide v12, -0x3e2cf8ea13800000L    # -1.276925874E9

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    sget v10, Landroidx/core/R$styleable;->GradientColor_android_centerX:I

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v0, v9, v10, v11}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    const/4 v9, 0x7

    new-array v9, v9, [B

    fill-array-data v9, :array_6

    const-string v10, "d38d80"

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v9

    sget v10, Landroidx/core/R$styleable;->GradientColor_android_centerY:I

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v0, v9, v10, v12}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v12

    const/4 v9, 0x4

    new-array v9, v9, [B

    fill-array-data v9, :array_7

    const-string v10, "674dff"

    const-wide v14, -0x3e2c6f7dbe800000L    # -1.312950534E9

    invoke-static {v9, v10, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    sget v10, Landroidx/core/R$styleable;->GradientColor_android_type:I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v0, v9, v10, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    const/16 v10, 0xa

    new-array v10, v10, [B

    fill-array-data v10, :array_8

    const-string v13, "c7f7fd"

    const-wide v14, 0x41803275e8000000L    # 3.3967805E7

    invoke-static {v10, v13, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v10

    sget v13, Landroidx/core/R$styleable;->GradientColor_android_startColor:I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v0, v10, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v10

    const/16 v13, 0xb

    new-array v13, v13, [B

    fill-array-data v13, :array_9

    const-string v14, "9e1686"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    const/16 v14, 0xb

    new-array v14, v14, [B

    fill-array-data v14, :array_a

    const-string v15, "0ce1a1"

    const v16, 0x4edeff00

    invoke-static/range {v14 .. v16}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v14

    sget v15, Landroidx/core/R$styleable;->GradientColor_android_centerColor:I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v4, v0, v14, v15, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v14

    const/16 v15, 0x8

    new-array v15, v15, [B

    fill-array-data v15, :array_b

    const-string v16, "630992"

    const-wide v18, 0x41d0daa236000000L    # 1.13105532E9

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v15, v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v15

    sget v16, Landroidx/core/R$styleable;->GradientColor_android_endColor:I

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v4, v0, v15, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_c

    const-string v17, "bfd378"

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v16

    sget v17, Landroidx/core/R$styleable;->GradientColor_android_tileMode:I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v4, v0, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v16

    const/16 v17, 0xe

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    fill-array-data v17, :array_d

    const-string v18, "69b1a5"

    const/16 v19, 0x6862

    invoke-static/range {v17 .. v19}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    sget v18, Landroidx/core/R$styleable;->GradientColor_android_gradientRadius:I

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v4, v0, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v17

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p0 .. p3}, Landroidx/core/content/res/GradientColorInflaterCompat;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v4

    invoke-static {v4, v10, v15, v13, v14}, Landroidx/core/content/res/GradientColorInflaterCompat;->checkColors(Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v10

    packed-switch v9, :pswitch_data_0

    new-instance v4, Landroid/graphics/LinearGradient;

    iget-object v9, v10, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v10, v10, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    invoke-static/range {v16 .. v16}, Landroidx/core/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_0
    return-object v4

    :pswitch_0
    new-instance v4, Landroid/graphics/SweepGradient;

    iget-object v5, v10, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v6, v10, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    invoke-direct {v4, v11, v12, v5, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    cmpg-float v4, v17, v4

    if-lez v4, :cond_0

    new-instance v4, Landroid/graphics/RadialGradient;

    iget-object v8, v10, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v9, v10, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    invoke-static/range {v16 .. v16}, Landroidx/core/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v10

    move v5, v11

    move v6, v12

    move/from16 v7, v17

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const/16 v5, 0x43

    new-array v5, v5, [B

    fill-array-data v5, :array_e

    const-string v6, "56773c"

    const/16 v7, -0x539c

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x1d

    new-array v6, v6, [B

    fill-array-data v6, :array_f

    const-string v7, "2f3bc8"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :array_0
    .array-data 1
        0x6t
        0x4bt
        0x54t
        0x5dt
        0xbt
        0x3t
        0xft
        0x4dt
    .end array-data

    :array_1
    .array-data 1
        0x12t
        0x42t
        0x7t
        0x42t
        0x44t
        0x68t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4bt
        0x4ct
        0x50t
        0x4bt
        0x12t
        0x6bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7t
        0x5dt
        0x51t
        0x60t
    .end array-data

    :array_4
    .array-data 1
        0x5ct
        0x5dt
        0x54t
        0x6bt
    .end array-data

    :array_5
    .array-data 1
        0x5at
        0x6t
        0x5et
        0x10t
        0x7t
        0x44t
        0x61t
    .end array-data

    :array_6
    .array-data 1
        0x7t
        0x56t
        0x56t
        0x10t
        0x5dt
        0x42t
        0x3dt
    .end array-data

    :array_7
    .array-data 1
        0x42t
        0x4et
        0x44t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0x10t
        0x43t
        0x7t
        0x45t
        0x12t
        0x27t
        0xct
        0x5bt
        0x9t
        0x45t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x5at
        0x0t
        0x5ft
        0x42t
        0x5dt
        0x44t
        0x7at
        0xat
        0x5dt
        0x59t
        0x4at
    .end array-data

    :array_a
    .array-data 1
        0x53t
        0x6t
        0xbt
        0x45t
        0x4t
        0x43t
        0x73t
        0xct
        0x9t
        0x5et
        0x13t
    .end array-data

    :array_b
    .array-data 1
        0x53t
        0x5dt
        0x54t
        0x7at
        0x56t
        0x5et
        0x59t
        0x41t
    .end array-data

    :array_c
    .array-data 1
        0x16t
        0xft
        0x8t
        0x56t
        0x7at
        0x57t
        0x6t
        0x3t
    .end array-data

    :array_d
    .array-data 1
        0x51t
        0x4bt
        0x3t
        0x55t
        0x8t
        0x50t
        0x58t
        0x4dt
        0x30t
        0x50t
        0x5t
        0x5ct
        0x43t
        0x4at
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_e
    .array-data 1
        0x9t
        0x51t
        0x45t
        0x56t
        0x57t
        0xat
        0x50t
        0x58t
        0x43t
        0x9t
        0x13t
        0x17t
        0x54t
        0x51t
        0x17t
        0x45t
        0x56t
        0x12t
        0x40t
        0x5ft
        0x45t
        0x52t
        0x40t
        0x43t
        0x12t
        0x51t
        0x45t
        0x56t
        0x57t
        0xat
        0x50t
        0x58t
        0x43t
        0x65t
        0x52t
        0x7t
        0x5ct
        0x43t
        0x44t
        0x10t
        0x13t
        0x2t
        0x41t
        0x42t
        0x45t
        0x5et
        0x51t
        0x16t
        0x41t
        0x53t
        0x17t
        0x40t
        0x5at
        0x17t
        0x5dt
        0x16t
        0x45t
        0x56t
        0x57t
        0xat
        0x54t
        0x5at
        0x17t
        0x43t
        0x4at
        0x13t
        0x50t
    .end array-data

    :array_f
    .array-data 1
        0x8t
        0x46t
        0x5at
        0xct
        0x15t
        0x59t
        0x5et
        0xft
        0x57t
        0x42t
        0x4t
        0x4at
        0x53t
        0x2t
        0x5at
        0x7t
        0xdt
        0x4ct
        0x12t
        0x5t
        0x5ct
        0xet
        0xct
        0x4at
        0x12t
        0x12t
        0x52t
        0x5t
        0x43t
    .end array-data
.end method

.method private static inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x14

    const/4 v7, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v7, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v0, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    if-gt v4, v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "2d3f51"

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/core/R$styleable;->GradientColorItem:[I

    invoke-static {p0, p3, p2, v3}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v4, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    sget v5, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    sget v4, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    sget v5, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x43

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ead055"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v0, v2, v1}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x5bt
        0x10t
        0x56t
        0xbt
    .end array-data

    :array_1
    .array-data 1
        0x5ft
        0x41t
        0x58t
        0x59t
        0x41t
        0x50t
        0x8t
        0x5ft
        0x44t
        0x44t
        0x54t
        0x52t
        0x45t
        0x13t
        0x1t
        0x41t
        0x40t
        0x5ct
        0x17t
        0x4t
        0x17t
        0x10t
        0x54t
        0x15t
        0x42t
        0x2t
        0xbt
        0x5ct
        0x5at
        0x47t
        0x42t
        0x41t
        0x5t
        0x44t
        0x41t
        0x47t
        0xct
        0x3t
        0x11t
        0x44t
        0x50t
        0x15t
        0x4t
        0xft
        0x0t
        0x10t
        0x54t
        0x15t
        0x42t
        0xet
        0x2t
        0x56t
        0x46t
        0x50t
        0x11t
        0x46t
        0x44t
        0x51t
        0x41t
        0x41t
        0x17t
        0x8t
        0x6t
        0x45t
        0x41t
        0x50t
        0x44t
    .end array-data
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
