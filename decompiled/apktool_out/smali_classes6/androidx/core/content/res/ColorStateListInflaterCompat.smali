.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;


# static fields
.field private static final sTempTypedValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
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

    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "656f97"

    const v3, 0x4edf4880

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x78t
        0x5at
        0x16t
        0x15t
        0x4dt
        0x56t
        0x44t
        0x41t
        0x16t
        0x12t
        0x58t
        0x50t
        0x16t
        0x53t
        0x59t
        0x13t
        0x57t
        0x53t
    .end array-data
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "187a09"

    const-wide v4, -0x3e2fcad20b400000L    # -1.087682515E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/res/ColorStateListInflaterCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ef4ff0"

    const/16 v4, -0x3753

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x42t
        0x5dt
        0x5bt
        0x4t
        0x53t
        0x4dt
        0x5et
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x5ft
        0x46t
        0x5dt
        0x8t
        0x10t
        0x51t
        0x9t
        0xft
        0x50t
        0x46t
        0x5t
        0x5ft
        0x9t
        0x9t
        0x46t
        0x46t
        0x15t
        0x44t
        0x4t
        0x12t
        0x51t
        0x46t
        0xat
        0x59t
        0x16t
        0x12t
        0x14t
        0x12t
        0x7t
        0x57t
        0x45t
    .end array-data
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 2

    sget-object v1, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9bb54e"

    const-wide v4, -0x3e41b15835000000L    # -5.08471243E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "baae9e"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x7at
        0x31t
        0x2et
        0x76t
        0x5bt
        0x8t
        0x49t
        0x3t
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x24t
        0x0t
        0x8t
        0x9t
        0x5ct
        0x1t
        0x42t
        0x15t
        0xet
        0x45t
        0x50t
        0xbt
        0x4t
        0xdt
        0x0t
        0x11t
        0x5ct
        0x45t
        0x21t
        0xet
        0xdt
        0xat
        0x4bt
        0x36t
        0x16t
        0x0t
        0x15t
        0x0t
        0x75t
        0xct
        0x11t
        0x15t
        0x4ft
    .end array-data
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    add-int/lit8 v12, v3, 0x1

    const/16 v3, 0x14

    new-array v5, v3, [[I

    array-length v3, v5

    new-array v4, v3, [I

    const/4 v3, 0x0

    move-object v6, v5

    move-object/from16 v16, v4

    move v4, v3

    move-object/from16 v3, v16

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ge v7, v12, :cond_1

    const/4 v8, 0x3

    if-eq v5, v8, :cond_8

    :cond_1
    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    if-gt v7, v12, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    const-string v8, "b9897a"

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/core/R$styleable;->ColorStateListItem:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v5}, Landroidx/core/content/res/ColorStateListInflaterCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    sget v5, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const/4 v7, -0x1

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroidx/core/content/res/ColorStateListInflaterCompat;->isColorInt(Landroid/content/res/Resources;I)Z

    move-result v7

    if-nez v7, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    sget v8, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    sget v7, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v9, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    :cond_2
    :goto_2
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v8

    if-eqz v8, :cond_5

    sget v8, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_5

    sget v8, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v9, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    :goto_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v10, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v13

    new-array v14, v13, [I

    const/4 v9, 0x0

    move v11, v9

    :goto_4
    if-ge v11, v13, :cond_7

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v9

    const v15, 0x10101a5

    if-eq v9, v15, :cond_9

    const v15, 0x101031f

    if-eq v9, v15, :cond_9

    sget v15, Landroidx/core/R$attr;->alpha:I

    if-eq v9, v15, :cond_9

    sget v15, Landroidx/core/R$attr;->lStar:I

    if-eq v9, v15, :cond_9

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    if-eqz v15, :cond_6

    :goto_5
    aput v9, v14, v10

    add-int/lit8 v9, v10, 0x1

    :goto_6
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    move v10, v9

    goto :goto_4

    :catch_0
    move-exception v5

    sget v5, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const v7, -0xff01

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    goto :goto_1

    :cond_3
    sget v5, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const v7, -0xff01

    invoke-virtual {v9, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    goto :goto_1

    :cond_4
    sget v8, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    sget v7, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v9, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    goto :goto_2

    :cond_5
    sget v8, Landroidx/core/R$styleable;->ColorStateListItem_lStar:I

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v9, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    goto :goto_3

    :cond_6
    neg-int v9, v9

    goto :goto_5

    :cond_7
    invoke-static {v14, v10}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v9

    invoke-static {v5, v7, v8}, Landroidx/core/content/res/ColorStateListInflaterCompat;->modulateColorAlpha(IFF)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v5

    invoke-static {v6, v4, v9}, Landroidx/core/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    add-int/lit8 v4, v4, 0x1

    move-object v6, v3

    move-object v3, v5

    goto/16 :goto_0

    :cond_8
    new-array v5, v4, [I

    new-array v7, v4, [[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v8, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v3, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v7, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3

    :cond_9
    move v9, v10

    goto :goto_6

    :array_0
    .array-data 1
        0xbt
        0x4dt
        0x5dt
        0x54t
    .end array-data
.end method

.method private static isColorInt(Landroid/content/res/Resources;I)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Landroidx/core/content/res/ColorStateListInflaterCompat;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    iget v1, v1, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static modulateColorAlpha(IFF)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0xff

    invoke-static {v2, v1, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/content/res/CamColor;->getHue()F

    move-result v2

    invoke-virtual {v0}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v0

    invoke-static {v2, v0, p2}, Landroidx/core/content/res/CamColor;->toColor(FFF)I

    move-result p0

    :cond_2
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, v1, 0x18

    or-int p0, v0, v1

    goto :goto_1
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method
