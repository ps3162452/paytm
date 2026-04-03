.class public Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x12

    const/16 v10, 0x16

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_c

    :cond_1
    if-eq v2, v9, :cond_c

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-array v3, v11, [B

    fill-array-data v3, :array_0

    const-string v4, "ff3ea8"

    const/16 v5, -0x6453

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0

    :cond_2
    new-array v3, v10, [B

    fill-array-data v3, :array_1

    const-string v4, "eeae6c"

    invoke-static {v3, v4, v9, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, p0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_3
    new-array v3, v10, [B

    fill-array-data v3, :array_2

    const-string v4, "f9bdb7"

    const-wide/32 v6, 0x6eda9fff

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, p0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_4
    const/16 v3, 0x20

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "05863b"

    const-wide v6, 0x41df76172cc00000L    # 2.111331507E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "2a29b6"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v0, p0, v2}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :cond_6
    new-array v3, v10, [B

    fill-array-data v3, :array_5

    const-string v4, "9fc028"

    const/16 v5, 0x285d

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0, p0, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v4, "7c6c82"

    const-wide v6, -0x3e6c970014000000L    # -8.1412091E7

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, p0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x1f

    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const-string v4, "22d5ec"

    const-wide/32 v6, -0x7db4be82

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v0, p0, v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_0

    :cond_9
    new-array v3, v11, [B

    fill-array-data v3, :array_8

    const-string v4, "e65a63"

    const v5, 0x4efac444

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_9

    const-string v4, "41058f"

    const-wide v6, 0x41d00dd236800000L    # 1.077364954E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;

    invoke-direct {v0, p0, v2, p3}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "c1e629"

    invoke-static {v2, v3, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-object v0

    nop

    :array_0
    .array-data 1
        0xat
        0xft
        0x5dt
        0x0t
        0x0t
        0x4at
        0x2ft
        0x8t
        0x47t
        0x0t
        0x13t
        0x48t
        0x9t
        0xat
        0x52t
        0x11t
        0xet
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x6t
        0x2t
        0x0t
        0x5at
        0x6t
        0x17t
        0x4t
        0x15t
        0x0t
        0x7ft
        0xdt
        0x11t
        0x0t
        0x13t
        0x15t
        0x59t
        0xft
        0x4t
        0x11t
        0xet
        0x17t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x5ct
        0x1t
        0x1t
        0xet
        0x52t
        0x14t
        0x58t
        0x16t
        0x1t
        0x2bt
        0x59t
        0x12t
        0x5ct
        0x10t
        0x14t
        0xdt
        0x5bt
        0x7t
        0x4dt
        0xdt
        0x16t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x51t
        0x56t
        0x5bt
        0x53t
        0x5ft
        0x7t
        0x42t
        0x54t
        0x4ct
        0x53t
        0x77t
        0x7t
        0x53t
        0x50t
        0x54t
        0x53t
        0x41t
        0x3t
        0x44t
        0x50t
        0x71t
        0x58t
        0x47t
        0x7t
        0x42t
        0x45t
        0x57t
        0x5at
        0x52t
        0x16t
        0x5ft
        0x47t
    .end array-data

    :array_4
    .array-data 1
        0x51t
        0x18t
        0x51t
        0x55t
        0x7t
        0x7ft
        0x5ct
        0x15t
        0x57t
        0x4bt
        0x12t
        0x59t
        0x5et
        0x0t
        0x46t
        0x56t
        0x10t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x58t
        0x8t
        0x17t
        0x59t
        0x51t
        0x51t
        0x49t
        0x7t
        0x17t
        0x55t
        0x7bt
        0x56t
        0x4dt
        0x3t
        0x11t
        0x40t
        0x5dt
        0x54t
        0x58t
        0x12t
        0xct
        0x42t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x58t
        0x15t
        0x53t
        0x11t
        0x4bt
        0x5at
        0x58t
        0xct
        0x42t
        0x2at
        0x56t
        0x46t
        0x52t
        0x11t
        0x46t
        0xct
        0x54t
        0x53t
        0x43t
        0xct
        0x44t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x53t
        0x5ct
        0x10t
        0x5ct
        0x6t
        0xat
        0x42t
        0x53t
        0x10t
        0x50t
        0x2at
        0x15t
        0x57t
        0x40t
        0x17t
        0x5dt
        0xat
        0xct
        0x46t
        0x7bt
        0xat
        0x41t
        0x0t
        0x11t
        0x42t
        0x5dt
        0x8t
        0x54t
        0x11t
        0xct
        0x40t
    .end array-data

    :array_8
    .array-data 1
        0x7t
        0x59t
        0x40t
        0xft
        0x55t
        0x56t
        0x2ct
        0x58t
        0x41t
        0x4t
        0x44t
        0x43t
        0xat
        0x5at
        0x54t
        0x15t
        0x59t
        0x41t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x44t
        0x50t
        0x44t
        0x5dt
        0x71t
        0x8t
        0x40t
        0x54t
        0x42t
        0x45t
        0x57t
        0xat
        0x55t
        0x45t
        0x5ft
        0x47t
    .end array-data

    :array_a
    .array-data 1
        0x36t
        0x5ft
        0xet
        0x58t
        0x5dt
        0x4et
        0xdt
        0x11t
        0xct
        0x58t
        0x46t
        0x5ct
        0x11t
        0x41t
        0xat
        0x5at
        0x53t
        0x4dt
        0xct
        0x43t
        0x45t
        0x58t
        0x53t
        0x54t
        0x6t
        0xbt
        0x45t
    .end array-data
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const v0, 0x10c000f

    if-ne p1, v0, :cond_3

    :try_start_0
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x24

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "81ce8f"

    const-wide v6, 0x41ccaef44d000000L    # 9.62455706E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v0

    :cond_3
    const v0, 0x10c000d

    if-ne p1, v0, :cond_4

    :try_start_2
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x24

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "ec0551"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    const v0, 0x10c000e

    if-ne p1, v0, :cond_5

    :try_start_4
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {p0, v0, v2, v1}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->createInterpolatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x7bt
        0x50t
        0xdt
        0x42t
        0x4ct
        0x46t
        0x54t
        0x5et
        0x2t
        0x1t
        0x18t
        0x7t
        0x56t
        0x58t
        0xet
        0x4t
        0x4ct
        0xft
        0x57t
        0x5ft
        0x43t
        0x17t
        0x5dt
        0x15t
        0x57t
        0x44t
        0x11t
        0x6t
        0x5dt
        0x46t
        0x71t
        0x75t
        0x43t
        0x46t
        0x8t
        0x1et
    .end array-data

    :array_1
    .array-data 1
        0x26t
        0x2t
        0x5et
        0x12t
        0x41t
        0x11t
        0x9t
        0xct
        0x51t
        0x51t
        0x15t
        0x50t
        0xbt
        0xat
        0x5dt
        0x54t
        0x41t
        0x58t
        0xat
        0xdt
        0x10t
        0x47t
        0x50t
        0x42t
        0xat
        0x16t
        0x42t
        0x56t
        0x50t
        0x11t
        0x2ct
        0x27t
        0x10t
        0x16t
        0x5t
        0x49t
    .end array-data
.end method
