.class public Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.super Landroidx/appcompat/graphics/drawable/StateListDrawable;

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    }
.end annotation


# static fields
.field private static final ELEMENT_ITEM:Ljava/lang/String;

.field private static final ELEMENT_TRANSITION:Ljava/lang/String;

.field private static final ITEM_MISSING_DRAWABLE_ERROR:Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String;

.field private static final TRANSITION_MISSING_DRAWABLE_ERROR:Ljava/lang/String;

.field private static final TRANSITION_MISSING_FROM_TO_ID:Ljava/lang/String;


# instance fields
.field private mMutated:Z

.field private mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

.field private mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

.field private mTransitionFromIndex:I

.field private mTransitionToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "858dc6"

    const/16 v2, 0x2c91

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->ELEMENT_ITEM:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "5e004b"

    const-wide v2, -0x3e2c9fbfb4400000L    # -1.300300079E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->ELEMENT_TRANSITION:Ljava/lang/String;

    const/16 v0, 0x4d

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "2072b1"

    const-wide v2, -0x3e4a415321000000L    # -3.64817631E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->ITEM_MISSING_DRAWABLE_ERROR:Ljava/lang/String;

    const/16 v0, 0x53

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "e5ee10"

    const-wide/32 v2, -0x10f4a3b8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->TRANSITION_MISSING_DRAWABLE_ERROR:Ljava/lang/String;

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "a7e6fc"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->TRANSITION_MISSING_FROM_TO_ID:Ljava/lang/String;

    const-class v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x51t
        0x41t
        0x5dt
        0x9t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x17t
        0x51t
        0x5et
        0x47t
        0xbt
        0x41t
        0xct
        0x5ft
        0x5et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x8t
        0x10t
        0xbt
        0x5bt
        0x16t
        0x54t
        0x5ft
        0xet
        0x17t
        0x46t
        0x3t
        0x56t
        0x12t
        0x42t
        0x52t
        0x43t
        0x17t
        0x58t
        0x40t
        0x55t
        0x44t
        0x12t
        0x3t
        0x11t
        0x15t
        0x54t
        0x45t
        0x53t
        0x15t
        0x50t
        0x50t
        0x5ct
        0x52t
        0x15t
        0x42t
        0x50t
        0x46t
        0x44t
        0x45t
        0x5bt
        0x0t
        0x44t
        0x46t
        0x55t
        0x17t
        0x5dt
        0x10t
        0x11t
        0x51t
        0x58t
        0x5et
        0x5et
        0x6t
        0x11t
        0x46t
        0x51t
        0x50t
        0x12t
        0x6t
        0x54t
        0x54t
        0x59t
        0x59t
        0x5bt
        0xct
        0x56t
        0x12t
        0x51t
        0x17t
        0x56t
        0x10t
        0x50t
        0x45t
        0x51t
        0x55t
        0x5et
        0x7t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5ft
        0x15t
        0x59t
        0x11t
        0x43t
        0x51t
        0xbt
        0x46t
        0xct
        0x11t
        0x58t
        0x5ft
        0xbt
        0xbt
        0x45t
        0x11t
        0x50t
        0x57t
        0x45t
        0x47t
        0x0t
        0x14t
        0x44t
        0x59t
        0x17t
        0x50t
        0x16t
        0x45t
        0x50t
        0x10t
        0x42t
        0x51t
        0x17t
        0x4t
        0x46t
        0x51t
        0x7t
        0x59t
        0x0t
        0x42t
        0x11t
        0x51t
        0x11t
        0x41t
        0x17t
        0xct
        0x53t
        0x45t
        0x11t
        0x50t
        0x45t
        0xat
        0x43t
        0x10t
        0x6t
        0x5dt
        0xct
        0x9t
        0x55t
        0x10t
        0x11t
        0x54t
        0x2t
        0x45t
        0x55t
        0x55t
        0x3t
        0x5ct
        0xbt
        0xct
        0x5ft
        0x57t
        0x45t
        0x54t
        0x45t
        0x1t
        0x43t
        0x51t
        0x12t
        0x54t
        0x7t
        0x9t
        0x54t
    .end array-data

    :array_4
    .array-data 1
        0x5bt
        0x17t
        0x59t
        0x42t
        0x14t
        0x2t
        0xft
        0x44t
        0xct
        0x42t
        0xft
        0xct
        0xft
        0x9t
        0x45t
        0x42t
        0x7t
        0x4t
        0x41t
        0x45t
        0x0t
        0x47t
        0x13t
        0xat
        0x13t
        0x52t
        0x16t
        0x16t
        0x41t
        0x5t
        0x13t
        0x58t
        0x8t
        0x7ft
        0x2t
        0x44t
        0x41t
        0x11t
        0x45t
        0x11t
        0x12t
        0xct
        0x28t
        0x53t
        0x42t
        0x16t
        0x7t
        0x17t
        0x15t
        0x45t
        0xct
        0x54t
        0x13t
        0x17t
        0x4t
        0x44t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;)V

    iput v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    iput v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    return-void
.end method

.method public static create(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    .locals 7

    const/16 v6, 0xc

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v5, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :cond_1
    if-ne v3, v5, :cond_2

    invoke-static {p0, v0, v1, v2, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "62f4da"

    const v3, -0x312350b5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "3a1ce2"

    const/16 v4, -0x5315

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    new-array v2, v6, [B

    fill-array-data v2, :array_2

    const-string v3, "7daec3"

    const v4, 0x4ebf9c63

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x78t
        0x5dt
        0x46t
        0x47t
        0x10t
        0x0t
        0x44t
        0x46t
        0x46t
        0x40t
        0x5t
        0x6t
        0x16t
        0x54t
        0x9t
        0x41t
        0xat
        0x5t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x43t
        0x0t
        0x43t
        0x10t
        0x0t
        0x40t
        0x13t
        0x4t
        0x43t
        0x11t
        0xat
        0x40t
    .end array-data

    :array_2
    .array-data 1
        0x47t
        0x5t
        0x13t
        0x16t
        0x6t
        0x41t
        0x17t
        0x1t
        0x13t
        0x17t
        0xct
        0x41t
    .end array-data
.end method

.method public static createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c15921"

    const-wide/32 v4, -0x7c3c57ba

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "7db1f8"

    const-wide v4, 0x41da41ac4d400000L    # 1.762046261E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

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
        0x2t
        0x5ft
        0x5ct
        0x54t
        0x53t
        0x45t
        0x6t
        0x55t
        0x18t
        0x4at
        0x57t
        0x5dt
        0x6t
        0x52t
        0x41t
        0x56t
        0x40t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0x44t
        0xbt
        0x5ft
        0x10t
        0x59t
        0x5bt
        0xdt
        0x6t
        0x11t
        0x7t
        0x56t
        0x5et
        0x9t
        0x3t
        0x45t
        0x3t
        0x5ct
        0x1at
        0x17t
        0x7t
        0x5dt
        0x3t
        0x5bt
        0x43t
        0xbt
        0x10t
        0x11t
        0x12t
        0x59t
        0x50t
        0x44t
    .end array-data
.end method

.method private inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ge v2, v0, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    if-gt v2, v0, :cond_0

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->ELEMENT_ITEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->parseItem(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->ELEMENT_TRANSITION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->parseTransition(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    return-void
.end method

.method private parseItem(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v0, 0x0

    sget v3, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_drawable:I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v1

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "c4c0a4"

    const-wide v6, 0x41d17eee12800000L    # 1.174124618E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2, p3, p4, p5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v3, v1, v0, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_4

    invoke-static {p2, p3, p4, p5}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->ITEM_MISSING_DRAWABLE_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->ITEM_MISSING_DRAWABLE_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x15t
        0x51t
        0x0t
        0x44t
        0xet
        0x46t
    .end array-data
.end method

.method private parseTransition(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, -0x1

    sget-object v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_fromId:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v0, 0x0

    sget v4, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    sget v4, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v5, "fd7c23"

    const-wide/32 v6, -0x6477fdb0

    invoke-static {v1, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    if-eq v2, v8, :cond_6

    if-eq v3, v8, :cond_6

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    move-result v0

    return v0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    invoke-static {p2, p3, p4, p5}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->TRANSITION_MISSING_DRAWABLE_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->TRANSITION_MISSING_FROM_TO_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->TRANSITION_MISSING_DRAWABLE_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x7t
        0xat
        0x5et
        0xet
        0x53t
        0x47t
        0x3t
        0x0t
        0x1at
        0x15t
        0x57t
        0x50t
        0x12t
        0xbt
        0x45t
    .end array-data
.end method

.method private selectTransition(I)Z
    .locals 9

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    if-eqz v1, :cond_3

    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    if-ne p1, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->reverse()V

    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    iput p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    move v0, v3

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->stop()V

    move v1, v0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    iput v4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    iput v4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v4, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v5

    invoke-virtual {v4, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_4

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrentIndex()I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->indexOfTransition(II)I

    move-result v0

    if-gez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->transitionHasReversibleFlag(II)Z

    move-result v7

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v8, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_6

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v4

    new-instance v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2, v0, v4, v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    move-object v0, v2

    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->start()V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    iput v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    iput p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    move v0, v3

    goto :goto_0

    :cond_6
    instance-of v4, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v4, :cond_7

    new-instance v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v2, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    move-object v0, v2

    goto :goto_2

    :cond_7
    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_8

    new-instance v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-direct {v2, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;-><init>(Landroid/graphics/drawable/Animatable;)V

    move-object v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mChangingConfigurations:I

    invoke-static {p1}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mChangingConfigurations:I

    :cond_0
    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mVariablePadding:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setVariablePadding(Z)V

    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mConstantSize:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setConstantSize(Z)V

    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mEnterFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setEnterFadeDuration(I)V

    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mExitFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setExitFadeDuration(I)V

    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mDither:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->setDither(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public addState([ILandroid/graphics/drawable/Drawable;I)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f172f2"

    const/16 v3, -0x748f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x22t
        0x43t
        0x56t
        0x45t
        0x7t
        0x50t
        0xat
        0x54t
        0x17t
        0x5ft
        0x13t
        0x41t
        0x12t
        0x11t
        0x59t
        0x5dt
        0x12t
        0x12t
        0x4t
        0x54t
        0x17t
        0x5ct
        0x13t
        0x5et
        0xat
    .end array-data
.end method

.method public addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/graphics/drawable/Animatable;",
            ">(IITT;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1325da"

    const v3, -0x32609005

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x65t
        0x41t
        0x53t
        0x5bt
        0x17t
        0x8t
        0x45t
        0x5at
        0x5dt
        0x5bt
        0x44t
        0x5t
        0x43t
        0x52t
        0x45t
        0x54t
        0x6t
        0xdt
        0x54t
        0x13t
        0x5ft
        0x40t
        0x17t
        0x15t
        0x11t
        0x5dt
        0x5dt
        0x41t
        0x44t
        0x3t
        0x54t
        0x13t
        0x5ct
        0x40t
        0x8t
        0xdt
    .end array-data
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public bridge synthetic canApplyTheme()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method clearMutated()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    return-void
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    .locals 3

    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->cloneConstantState()Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->cloneConstantState()Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChangingConfigurations()I
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOutline(Landroid/graphics/Outline;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    sget-object v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_visible:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->setVisible(ZZ)Z

    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->updateDensity(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->init()V

    return-void
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    iput v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    iput v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mutate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method public bridge synthetic onLayoutDirectionChanged(I)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->indexOfKeyframe([I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrentIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectTransition(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    :cond_0
    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setDither(Z)V

    return-void
.end method

.method public bridge synthetic setEnterFadeDuration(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setEnterFadeDuration(I)V

    return-void
.end method

.method public bridge synthetic setExitFadeDuration(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->start()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    goto :goto_0
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
