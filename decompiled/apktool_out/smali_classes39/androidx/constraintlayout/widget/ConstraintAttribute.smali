.class public Landroidx/constraintlayout/widget/ConstraintAttribute;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field private mMethod:Z

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "378193"

    const-wide/32 v2, -0x54d6cb4c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x67t
        0x45t
        0x59t
        0x5ft
        0x4at
        0x5at
        0x47t
        0x5et
        0x57t
        0x5ft
        0x75t
        0x52t
        0x4at
        0x58t
        0x4dt
        0x45t
    .end array-data
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    iput-boolean p4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static clamp(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x1f

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    add-int/lit16 v0, v0, -0xff

    shr-int/lit8 v1, v0, 0x1f

    and-int/2addr v0, v1

    add-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static extractAttributes(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    const/16 v2, 0xf

    :try_start_0
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v6, "dfd6ca"

    const-wide v8, 0x41a328c994000000L    # 1.60720074E8

    invoke-static {v2, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    new-instance v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    const-string v7, "9a6356"

    const-wide/32 v8, -0x2dbe7cdd

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-direct {v6, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    const-string v7, "ca8972"

    const v8, 0x4ebf532b

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    return-object v3

    :array_0
    .array-data 1
        0x26t
        0x7t
        0x7t
        0x5dt
        0x4t
        0x13t
        0xbt
        0x13t
        0xat
        0x52t
        0x20t
        0xet
        0x8t
        0x9t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x5et
        0x4t
        0x42t
        0x7et
        0x54t
        0x46t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4t
        0x4t
        0x4ct
        0x74t
        0x56t
        0x42t
    .end array-data
.end method

.method public static parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute:[I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    :goto_0
    if-ge v5, v7, :cond_b

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_attributeName:I

    if-ne v8, v1, :cond_0

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v4

    move-object v10, v1

    move v1, v2

    move-object v2, v10

    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    goto :goto_0

    :cond_0
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_methodName:I

    if-ne v8, v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v4

    goto :goto_1

    :cond_1
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customBoolean:I

    if-ne v8, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v6, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move v10, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v10

    goto :goto_1

    :cond_2
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customColorValue:I

    if-ne v8, v1, :cond_3

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v1, 0x0

    invoke-virtual {v6, v8, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move v10, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v10

    goto :goto_1

    :cond_3
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customColorDrawableValue:I

    if-ne v8, v1, :cond_4

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v1, 0x0

    invoke-virtual {v6, v8, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move v10, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v10

    goto :goto_1

    :cond_4
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customPixelDimension:I

    if-ne v8, v1, :cond_5

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v6, v8, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v1, v4, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move v10, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v10

    goto :goto_1

    :cond_5
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customDimension:I

    if-ne v8, v1, :cond_6

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v1, 0x0

    invoke-virtual {v6, v8, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move v10, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_1

    :cond_6
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customFloatValue:I

    if-ne v8, v1, :cond_7

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v6, v8, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move v10, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_1

    :cond_7
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customIntegerValue:I

    if-ne v8, v1, :cond_8

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v1, -0x1

    invoke-virtual {v6, v8, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move v10, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_1

    :cond_8
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customStringValue:I

    if-ne v8, v1, :cond_9

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v10, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_1

    :cond_9
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customReference:I

    if-ne v8, v1, :cond_d

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v0, -0x1

    invoke-virtual {v6, v8, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_a

    const/4 v0, -0x1

    invoke-virtual {v6, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v10, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_1

    :cond_b
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-direct {v1, v3, v0, v4, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V

    invoke-virtual {p2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_d
    move v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1

    :cond_e
    move-object v3, v4

    move-object v10, v1

    move v1, v2

    move-object v2, v10

    goto/16 :goto_1
.end method

.method public static setAttributes(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "a87a03"

    const v7, 0x4eac6f28

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    :try_start_0
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v6, v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x13

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    const-string v7, "34231b"

    const v8, -0x3112a32d

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v6, "f3c18e"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v0, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v5, "9128cc"

    const-wide v6, -0x3e46cc56ee000000L    # -4.22816018E8

    invoke-static {v0, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "80e3be"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x13

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    const-string v7, "ddac65"

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v6, "a5a73c"

    const/16 v7, -0x12eb

    invoke-static {v0, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2
    const/4 v5, 0x1

    :try_start_2
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x13

    new-array v6, v6, [B

    fill-array-data v6, :array_7

    const-string v7, "d24c5c"

    const-wide/32 v8, -0x3b553b94

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v6, "12e9a3"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v0, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_3
    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_4
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    invoke-virtual {v5, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_5
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_6
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_7
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v1, v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x12t
        0x5dt
        0x43t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_1
    .array-data 1
        0x13t
        0x77t
        0x47t
        0x40t
        0x45t
        0xdt
        0x5et
        0x14t
        0x73t
        0x47t
        0x45t
        0x10t
        0x5at
        0x56t
        0x47t
        0x47t
        0x54t
        0x42t
        0x11t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x13t
        0xdt
        0x5et
        0x4ct
        0x45t
        0x0t
        0x5ct
        0x16t
        0x5ft
        0x5ct
        0x45t
        0x9t
        0x5dt
        0x43t
    .end array-data

    :array_3
    .array-data 1
        0x19t
        0x5ct
        0x47t
        0x4bt
        0x17t
        0x43t
        0x51t
        0x50t
        0x44t
        0x5dt
        0x43t
        0x2t
        0x19t
        0x5ct
        0x57t
        0x4ct
        0xbt
        0xct
        0x5dt
        0x11t
    .end array-data

    :array_4
    .array-data 1
        0x4bt
        0x55t
        0x11t
    .end array-data

    :array_5
    .array-data 1
        0x44t
        0x27t
        0x14t
        0x10t
        0x42t
        0x5at
        0x9t
        0x44t
        0x20t
        0x17t
        0x42t
        0x47t
        0xdt
        0x6t
        0x14t
        0x17t
        0x53t
        0x15t
        0x46t
    .end array-data

    :array_6
    .array-data 1
        0x43t
        0x15t
        0xft
        0x58t
        0x47t
        0x43t
        0x7t
        0x5at
        0x14t
        0x59t
        0x57t
        0x43t
        0xet
        0x5bt
        0x41t
    .end array-data

    :array_7
    .array-data 1
        0x44t
        0x71t
        0x41t
        0x10t
        0x41t
        0xct
        0x9t
        0x12t
        0x75t
        0x17t
        0x41t
        0x11t
        0xdt
        0x50t
        0x41t
        0x17t
        0x50t
        0x43t
        0x46t
    .end array-data

    :array_8
    .array-data 1
        0x13t
        0x12t
        0xbt
        0x56t
        0x15t
        0x13t
        0x57t
        0x5dt
        0x10t
        0x57t
        0x5t
        0x13t
        0x5et
        0x5ct
        0x45t
    .end array-data
.end method


# virtual methods
.method public applyCustom(Landroid/view/View;)V
    .locals 11

    const/4 v4, 0x3

    const/16 v10, 0x13

    const/16 v9, 0xf

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v4, "bca9d9"

    const v5, 0x4eb9d869

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v4

    aget v0, v0, v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v4, "504a15"

    const/16 v5, -0xf70

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v5, v10, [B

    fill-array-data v5, :array_2

    const-string v6, "cc934e"

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [B

    fill-array-data v2, :array_3

    const-string v5, "918668"

    const-wide/32 v6, -0x5708bf4c

    invoke-static {v2, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v3, "1fa89a"

    const/16 v4, 0x75c5

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v4, v10, [B

    fill-array-data v4, :array_5

    const-string v5, "db5534"

    invoke-static {v4, v5, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [B

    fill-array-data v2, :array_6

    const-string v4, "a27223"

    const v5, -0x31505b7f

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v4, v10, [B

    fill-array-data v4, :array_7

    const-string v5, "7c6dc3"

    const-wide/32 v6, -0x6527dabe

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [B

    fill-array-data v2, :array_8

    const-string v4, "66aade"

    const-wide v6, -0x3e5f9ffe52000000L    # -1.37363671E8

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :cond_1
    move-object v1, v2

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x11t
        0x6t
        0x15t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_1
    .array-data 1
        0x46t
        0x55t
        0x40t
    .end array-data

    :array_2
    .array-data 1
        0x43t
        0x20t
        0x4ct
        0x40t
        0x40t
        0xat
        0xet
        0x43t
        0x78t
        0x47t
        0x40t
        0x17t
        0xat
        0x1t
        0x4ct
        0x47t
        0x51t
        0x45t
        0x41t
    .end array-data

    :array_3
    .array-data 1
        0x1bt
        0x11t
        0x56t
        0x59t
        0x42t
        0x18t
        0x5ft
        0x5et
        0x4dt
        0x58t
        0x52t
        0x18t
        0x56t
        0x5ft
        0x18t
    .end array-data

    :array_4
    .array-data 1
        0x11t
        0xbt
        0x14t
        0x4bt
        0x4dt
        0x41t
        0x59t
        0x7t
        0x17t
        0x5dt
        0x19t
        0x0t
        0x11t
        0xbt
        0x4t
        0x4ct
        0x51t
        0xet
        0x55t
        0x46t
    .end array-data

    :array_5
    .array-data 1
        0x44t
        0x21t
        0x40t
        0x46t
        0x47t
        0x5bt
        0x9t
        0x42t
        0x74t
        0x41t
        0x47t
        0x46t
        0xdt
        0x0t
        0x40t
        0x41t
        0x56t
        0x14t
        0x46t
    .end array-data

    :array_6
    .array-data 1
        0x43t
        0x12t
        0x59t
        0x5dt
        0x46t
        0x13t
        0x7t
        0x5dt
        0x42t
        0x5ct
        0x56t
        0x13t
        0xet
        0x5ct
        0x17t
    .end array-data

    :array_7
    .array-data 1
        0x17t
        0x20t
        0x43t
        0x17t
        0x17t
        0x5ct
        0x5at
        0x43t
        0x77t
        0x10t
        0x17t
        0x41t
        0x5et
        0x1t
        0x43t
        0x10t
        0x6t
        0x13t
        0x15t
    .end array-data

    :array_8
    .array-data 1
        0x14t
        0x16t
        0xft
        0xet
        0x10t
        0x45t
        0x50t
        0x59t
        0x14t
        0xft
        0x0t
        0x45t
        0x59t
        0x58t
        0x41t
    .end array-data
.end method

.method public diff(Landroidx/constraintlayout/widget/ConstraintAttribute;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    goto :goto_0

    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_4
    iget-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    iget-boolean v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_5
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-object v0
.end method

.method public getValueToInterpolate()F
    .locals 6

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    int-to-float v0, v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "afb742"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "fb95ba"

    const-wide v4, 0x41d372d5afc00000L    # 1.305171647E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x22t
        0x9t
        0xet
        0x58t
        0x46t
        0x12t
        0x5t
        0x9t
        0x7t
        0x44t
        0x14t
        0x5ct
        0xet
        0x12t
        0x42t
        0x5ft
        0x55t
        0x44t
        0x4t
        0x46t
        0x3t
        0x17t
        0x47t
        0x5bt
        0xft
        0x1t
        0xet
        0x52t
        0x14t
        0x51t
        0xet
        0xat
        0xdt
        0x45t
        0x14t
        0x46t
        0xet
        0x46t
        0xbt
        0x59t
        0x40t
        0x57t
        0x13t
        0x16t
        0xdt
        0x5bt
        0x55t
        0x46t
        0x4t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x25t
        0x3t
        0x57t
        0x5bt
        0xdt
        0x15t
        0x46t
        0xbt
        0x57t
        0x41t
        0x7t
        0x13t
        0x16t
        0xdt
        0x55t
        0x54t
        0x16t
        0x4t
        0x46t
        0x31t
        0x4dt
        0x47t
        0xbt
        0xft
        0x1t
    .end array-data
.end method

.method public getValuesToInterpolate([F)V
    .locals 11

    const/4 v10, 0x1

    const-wide v8, 0x400199999999999aL    # 2.2

    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v6, 0x0

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    aput v0, p1, v6

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    aput v0, p1, v6

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    int-to-float v0, v0

    aput v0, p1, v6

    goto :goto_0

    :pswitch_3
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v7

    float-to-double v2, v1

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v7

    float-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    and-int/lit16 v3, v0, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v7

    float-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    aput v1, p1, v6

    aput v2, p1, v10

    const/4 v1, 0x2

    aput v3, p1, v1

    const/4 v1, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v7

    aput v0, p1, v1

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "400aef"

    invoke-static {v1, v2, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    aput v0, p1, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x77t
        0x5ft
        0x5ct
        0xet
        0x17t
        0x46t
        0x50t
        0x5ft
        0x55t
        0x12t
        0x45t
        0x8t
        0x5bt
        0x44t
        0x10t
        0x9t
        0x4t
        0x10t
        0x51t
        0x10t
        0x51t
        0x41t
        0x16t
        0xft
        0x5at
        0x57t
        0x5ct
        0x4t
        0x45t
        0x5t
        0x5bt
        0x5ct
        0x5ft
        0x13t
        0x45t
        0x12t
        0x5bt
        0x10t
        0x59t
        0xft
        0x11t
        0x3t
        0x46t
        0x40t
        0x5ft
        0xdt
        0x4t
        0x12t
        0x51t
    .end array-data
.end method

.method public isContinuous()Z
    .locals 2

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public numberOfInterpolatedValues()I
    .locals 2

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setColorValue(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    return-void
.end method

.method public setFloatValue(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    return-void
.end method

.method public setIntValue(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    return-void
.end method

.method public setInterpolatedValue(Landroid/view/View;[F)V
    .locals 11

    const/4 v5, 0x3

    const/high16 v10, 0x437f0000    # 255.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v5, [B

    fill-array-data v3, :array_0

    const-string v5, "7ab8bd"

    invoke-static {v3, v5, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    :try_start_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v5

    aget v0, v0, v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    const-string v5, "09faaf"

    const-wide/32 v6, -0x25421c37

    invoke-static {v3, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v5

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0xa

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    const-string v7, "a2d3e3"

    const/16 v8, -0x3695

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v6, "41a3ca"

    const-wide/32 v8, -0x5463f9da

    invoke-static {v3, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [B

    const/16 v3, 0x40

    aput-byte v3, v1, v2

    const-string v2, "b05102"

    const-wide v6, -0x3e432499f1000000L    # -4.84140559E8

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_1
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v5

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x20

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x15

    new-array v6, v6, [B

    fill-array-data v6, :array_4

    const-string v7, "5692a7"

    invoke-static {v6, v7, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v6, "c3d3dd"

    invoke-static {v3, v6, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [B

    const/16 v3, 0x17

    aput-byte v3, v1, v2

    const-string v2, "5c73dd"

    const/16 v3, 0x2eed

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintAttribute;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v5

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, p2, v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/drawable/Drawable;

    aput-object v6, v0, v5

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    aget v4, p2, v4

    float-to-double v4, v4

    const-wide v6, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-static {v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v4

    const/4 v5, 0x1

    aget v5, p2, v5

    float-to-double v6, v5

    const-wide v8, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v5, v10

    float-to-int v5, v5

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v5

    const/4 v6, 0x2

    aget v6, p2, v6

    float-to-double v6, v6

    const-wide v8, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v6

    const/4 v7, 0x3

    aget v7, p2, v7

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-static {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    shl-int/lit8 v7, v7, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v7

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v5

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    aget v4, p2, v4

    float-to-double v4, v4

    const-wide v6, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-static {v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v4

    const/4 v5, 0x1

    aget v5, p2, v5

    float-to-double v6, v5

    const-wide v8, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v5, v10

    float-to-int v5, v5

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v5

    const/4 v6, 0x2

    aget v6, p2, v6

    float-to-double v6, v6

    const-wide v8, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x3

    aget v9, p2, v9

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v9

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v0, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_5
    new-instance v4, Ljava/lang/RuntimeException;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x1e

    new-array v5, v5, [B

    fill-array-data v5, :array_6

    const-string v6, "82a7cb"

    const-wide v8, 0x415450e2c0000000L    # 5325707.0

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v0, Ljava/lang/String;

    const/16 v5, 0x1e

    new-array v5, v5, [B

    fill-array-data v5, :array_7

    const-string v6, "456cd5"

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v5

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    aget v0, p2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    move v0, v1

    :goto_3
    const/4 v5, 0x1

    :try_start_5
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0x44t
        0x4t
        0x16t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x2
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
        0x43t
        0x5ct
        0x12t
    .end array-data

    :array_2
    .array-data 1
        0xft
        0x5dt
        0x44t
        0x5et
        0x0t
        0x47t
        0x9t
        0x5dt
        0x0t
        0x13t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x14t
        0x5et
        0xft
        0x13t
        0x35t
        0x8t
        0x51t
        0x46t
        0x41t
        0x11t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x56t
        0x57t
        0x57t
        0x5ct
        0xet
        0x43t
        0x15t
        0x57t
        0x5at
        0x51t
        0x4t
        0x44t
        0x46t
        0x16t
        0x54t
        0x57t
        0x15t
        0x5ft
        0x5at
        0x52t
        0x19t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x43t
        0x5ct
        0xat
        0x13t
        0x32t
        0xdt
        0x6t
        0x44t
        0x44t
        0x11t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x4dt
        0x5ct
        0x0t
        0x55t
        0xft
        0x7t
        0x18t
        0x46t
        0xet
        0x17t
        0xat
        0xct
        0x4ct
        0x57t
        0x13t
        0x47t
        0xct
        0xet
        0x59t
        0x46t
        0x4t
        0x17t
        0x10t
        0x16t
        0x4at
        0x5bt
        0xft
        0x50t
        0x10t
        0x42t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x41t
        0x5bt
        0x57t
        0x1t
        0x8t
        0x50t
        0x14t
        0x41t
        0x59t
        0x43t
        0xdt
        0x5bt
        0x40t
        0x50t
        0x44t
        0x13t
        0xbt
        0x59t
        0x55t
        0x41t
        0x53t
        0x43t
        0x17t
        0x41t
        0x46t
        0x5ct
        0x58t
        0x4t
        0x17t
        0x15t
    .end array-data
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValue([F)V
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    aget v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_1
    aget v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4cba33"

    invoke-static {v2, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    aget v1, p1, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    goto :goto_0

    :pswitch_5
    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x77t
        0xct
        0xet
        0xet
        0x41t
        0x13t
        0x50t
        0xct
        0x7t
        0x12t
        0x13t
        0x5dt
        0x5bt
        0x17t
        0x42t
        0x9t
        0x52t
        0x45t
        0x51t
        0x43t
        0x3t
        0x41t
        0x40t
        0x5at
        0x5at
        0x4t
        0xet
        0x4t
        0x13t
        0x50t
        0x5bt
        0xft
        0xdt
        0x13t
        0x13t
        0x47t
        0x5bt
        0x43t
        0xbt
        0xft
        0x47t
        0x56t
        0x46t
        0x13t
        0xdt
        0xdt
        0x52t
        0x47t
        0x51t
    .end array-data
.end method
