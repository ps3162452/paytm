.class public Landroidx/transition/TransitionInflater;
.super Ljava/lang/Object;


# static fields
.field private static final CONSTRUCTORS:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/transition/TransitionInflater;->CONSTRUCTORS:Landroidx/collection/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "427004"

    invoke-static {v1, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "a4635f"

    const-wide v4, -0x3e4383cf2c000000L    # -4.77901012E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    sget-object v2, Landroidx/transition/TransitionInflater;->CONSTRUCTORS:Landroidx/collection/ArrayMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Landroidx/transition/TransitionInflater;->CONSTRUCTORS:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_1

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v0, Landroidx/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    sget-object v3, Landroidx/transition/TransitionInflater;->CONSTRUCTORS:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x16

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "725bbd"

    const-wide v6, 0x41d4774bf6400000L    # 1.373450201E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "57df0d"

    invoke-static {v4, v5, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x57t
        0x5et
        0x56t
        0x43t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x40t
        0x57t
        0x54t
        0x15t
        0xbt
        0x14t
        0x47t
        0x42t
        0x13t
        0x5dt
        0x7t
        0x17t
        0x51t
        0x16t
        0x52t
        0x15t
        0x41t
        0x2t
        0x58t
        0x57t
        0x40t
        0x46t
        0x41t
        0x41t
        0x55t
        0x42t
        0x47t
        0x47t
        0xft
        0x3t
        0x41t
        0x42t
        0x56t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x74t
        0x5dt
        0x40t
        0xet
        0x6t
        0x44t
        0x59t
        0x5dt
        0x41t
        0x42t
        0xbt
        0xat
        0x44t
        0x46t
        0x54t
        0xct
        0x16t
        0xdt
        0x56t
        0x46t
        0x50t
        0x42t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x15t
        0x54t
        0x8t
        0x7t
        0x43t
        0x17t
        0x15t
    .end array-data
.end method

.method private createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)Landroidx/transition/Transition;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    instance-of v0, p3, Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Landroidx/transition/TransitionSet;

    move-object v2, v1

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v3, :cond_17

    :cond_1
    const/4 v4, 0x1

    if-eq v0, v4, :cond_17

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "551932"

    const v6, -0x314fa084

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v2, Landroidx/transition/Fade;

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Landroidx/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_18

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p2, v0}, Landroidx/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)Landroidx/transition/Transition;

    :cond_2
    if-eqz v1, :cond_16

    invoke-virtual {v1, v0}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_4
    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "f878a6"

    const v6, 0x4e74c483

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v2, Landroidx/transition/ChangeBounds;

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Landroidx/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    goto :goto_1

    :cond_5
    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "eb360a"

    const-wide/32 v6, 0x4abfc3c

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v2, Landroidx/transition/Slide;

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Landroidx/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    goto :goto_1

    :cond_6
    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "5be825"

    const/16 v6, 0x18c3

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v2, Landroidx/transition/Explode;

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Landroidx/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    goto :goto_1

    :cond_7
    const/16 v4, 0x14

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "91dbda"

    const-wide/32 v6, -0x56366987

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v2, Landroidx/transition/ChangeImageTransform;

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Landroidx/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0xf

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    const-string v5, "a12cc8"

    const-wide/32 v6, 0x5b4e60d2

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v2, Landroidx/transition/ChangeTransform;

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Landroidx/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    const-string v5, "c0d866"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v2, Landroidx/transition/ChangeClipBounds;

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Landroidx/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_a
    const/16 v4, 0xe

    new-array v4, v4, [B

    fill-array-data v4, :array_7

    const-string v5, "aafeed"

    const/16 v6, 0x6e03

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v2, Landroidx/transition/AutoTransition;

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Landroidx/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_b
    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_8

    const-string v5, "eab5fe"

    const-wide/32 v6, -0x6874082f

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v2, Landroidx/transition/ChangeScroll;

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Landroidx/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0xd

    new-array v4, v4, [B

    fill-array-data v4, :array_9

    const-string v5, "8d9714"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v2, Landroidx/transition/TransitionSet;

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Landroidx/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_a

    const-string v5, "4aa7b0"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-class v0, Landroidx/transition/Transition;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_b

    const-string v4, "6c79ff"

    const v5, -0x323f73c5

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Landroidx/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Transition;

    goto/16 :goto_1

    :cond_e
    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_c

    const-string v5, "3febe0"

    const-wide/32 v6, -0x67210839

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_f
    const/16 v4, 0x9

    new-array v4, v4, [B

    fill-array-data v4, :array_d

    const-string v5, "dc768c"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-nez p3, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_e

    const-string v2, "e90051"

    const-wide/32 v4, -0x17ff569a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Landroidx/transition/ArcMotion;

    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p2}, Landroidx/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v0}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_11
    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_f

    const-string v5, "3c716c"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-nez p3, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_10

    const-string v2, "4d464d"

    const/16 v3, -0x2373

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-class v0, Landroidx/transition/PathMotion;

    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_11

    const-string v5, "820ed8"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v0, v4}, Landroidx/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/PathMotion;

    invoke-virtual {p3, v0}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_13
    const/16 v4, 0x11

    new-array v4, v4, [B

    fill-array-data v4, :array_12

    const-string v5, "f4cf83"

    const-wide/32 v6, 0x6c7a8136

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p3, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_13

    const-string v2, "647ecb"

    const/16 v3, 0x69f6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Landroidx/transition/PatternPathMotion;

    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p2}, Landroidx/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v0}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_14

    const-string v3, "c3c0bc"

    const v4, -0x3198ae4d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-eqz p3, :cond_18

    new-instance v0, Landroid/view/InflateException;

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_15

    const-string v2, "1abe8c"

    const-wide/32 v4, 0x21cfe3bd

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    return-object v2

    :cond_18
    move-object v2, v0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x53t
        0x54t
        0x55t
        0x5ct
    .end array-data

    :array_1
    .array-data 1
        0x5t
        0x50t
        0x56t
        0x56t
        0x6t
        0x53t
        0x24t
        0x57t
        0x42t
        0x56t
        0x5t
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        0xet
        0x5at
        0x52t
        0x55t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x50t
        0x1at
        0x15t
        0x54t
        0x5dt
        0x51t
        0x50t
    .end array-data

    :array_4
    .array-data 1
        0x5at
        0x59t
        0x5t
        0xct
        0x3t
        0x4t
        0x70t
        0x5ct
        0x5t
        0x5t
        0x1t
        0x35t
        0x4bt
        0x50t
        0xat
        0x11t
        0x2t
        0xet
        0x4bt
        0x5ct
    .end array-data

    :array_5
    .array-data 1
        0x2t
        0x59t
        0x53t
        0xdt
        0x4t
        0x5dt
        0x35t
        0x43t
        0x53t
        0xdt
        0x10t
        0x5et
        0xet
        0x43t
        0x5ft
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x58t
        0x5t
        0x56t
        0x51t
        0x53t
        0x20t
        0x5ct
        0xdt
        0x48t
        0x74t
        0x59t
        0x16t
        0x5et
        0x0t
        0x4bt
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x14t
        0x12t
        0xat
        0x31t
        0x16t
        0x0t
        0xft
        0x15t
        0xct
        0x11t
        0xdt
        0xet
        0xft
    .end array-data

    nop

    :array_8
    .array-data 1
        0x6t
        0x9t
        0x3t
        0x5bt
        0x1t
        0x0t
        0x36t
        0x2t
        0x10t
        0x5at
        0xat
        0x9t
    .end array-data

    :array_9
    .array-data 1
        0x4ct
        0x16t
        0x58t
        0x59t
        0x42t
        0x5dt
        0x4ct
        0xdt
        0x56t
        0x59t
        0x62t
        0x51t
        0x4ct
    .end array-data

    nop

    :array_a
    .array-data 1
        0x40t
        0x13t
        0x0t
        0x59t
        0x11t
        0x59t
        0x40t
        0x8t
        0xet
        0x59t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x42t
        0x11t
        0x56t
        0x57t
        0x15t
        0xft
        0x42t
        0xat
        0x58t
        0x57t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x47t
        0x7t
        0x17t
        0x5t
        0x0t
        0x44t
        0x40t
    .end array-data

    :array_d
    .array-data 1
        0x5t
        0x11t
        0x54t
        0x7bt
        0x57t
        0x17t
        0xdt
        0xct
        0x59t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x2ct
        0x57t
        0x46t
        0x51t
        0x59t
        0x58t
        0x1t
        0x19t
        0x45t
        0x43t
        0x50t
        0x11t
        0xat
        0x5ft
        0x10t
        0x51t
        0x47t
        0x52t
        0x28t
        0x56t
        0x44t
        0x59t
        0x5at
        0x5ft
        0x45t
        0x5ct
        0x5ct
        0x55t
        0x58t
        0x54t
        0xbt
        0x4dt
    .end array-data

    :array_f
    .array-data 1
        0x43t
        0x2t
        0x43t
        0x59t
        0x7bt
        0xct
        0x47t
        0xat
        0x58t
        0x5ft
    .end array-data

    nop

    :array_10
    .array-data 1
        0x7dt
        0xat
        0x42t
        0x57t
        0x58t
        0xdt
        0x50t
        0x44t
        0x41t
        0x45t
        0x51t
        0x44t
        0x5bt
        0x2t
        0x14t
        0x46t
        0x55t
        0x10t
        0x5ct
        0x29t
        0x5bt
        0x42t
        0x5dt
        0xbt
        0x5at
        0x44t
        0x51t
        0x5at
        0x51t
        0x9t
        0x51t
        0xat
        0x40t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x48t
        0x53t
        0x44t
        0xdt
        0x29t
        0x57t
        0x4ct
        0x5bt
        0x5ft
        0xbt
    .end array-data

    nop

    :array_12
    .array-data 1
        0x16t
        0x55t
        0x17t
        0x12t
        0x5dt
        0x41t
        0x8t
        0x64t
        0x2t
        0x12t
        0x50t
        0x7et
        0x9t
        0x40t
        0xat
        0x9t
        0x56t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x7ft
        0x5at
        0x41t
        0x4t
        0xft
        0xbt
        0x52t
        0x14t
        0x42t
        0x16t
        0x6t
        0x42t
        0x59t
        0x52t
        0x17t
        0x15t
        0x2t
        0x16t
        0x42t
        0x51t
        0x45t
        0xbt
        0x33t
        0x3t
        0x42t
        0x5ct
        0x7at
        0xat
        0x17t
        0xbt
        0x59t
        0x5at
        0x17t
        0x0t
        0xft
        0x7t
        0x5bt
        0x51t
        0x59t
        0x11t
    .end array-data

    :array_14
    .array-data 1
        0x36t
        0x5dt
        0x8t
        0x5et
        0xdt
        0x14t
        0xdt
        0x13t
        0x10t
        0x53t
        0x7t
        0xdt
        0x6t
        0x13t
        0xdt
        0x51t
        0xft
        0x6t
        0x59t
        0x13t
    .end array-data

    :array_15
    .array-data 1
        0x72t
        0xet
        0x17t
        0x9t
        0x5ct
        0x43t
        0x5ft
        0xet
        0x16t
        0x45t
        0x59t
        0x7t
        0x55t
        0x41t
        0x16t
        0x17t
        0x59t
        0xdt
        0x42t
        0x8t
        0x16t
        0xct
        0x57t
        0xdt
        0x11t
        0x15t
        0xdt
        0x45t
        0x59t
        0xdt
        0x5et
        0x15t
        0xat
        0x0t
        0x4at
        0x43t
        0x45t
        0x13t
        0x3t
        0xbt
        0x4bt
        0xat
        0x45t
        0x8t
        0xdt
        0xbt
        0x16t
    .end array-data
.end method

.method private createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroidx/transition/TransitionManager;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_4

    :cond_1
    if-eq v2, v8, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "c406db"

    const-wide v6, -0x3e2f3f0d4d400000L    # -1.124321995E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Landroidx/transition/TransitionManager;

    invoke-direct {v0}, Landroidx/transition/TransitionManager;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "f2b708"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0, p2, p1, p3, v0}, Landroidx/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroidx/transition/TransitionManager;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "b0520e"

    const-wide/32 v4, 0x194ac85b

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v0

    :array_0
    .array-data 1
        0x17t
        0x46t
        0x51t
        0x58t
        0x17t
        0xbt
        0x17t
        0x5dt
        0x5ft
        0x58t
        0x29t
        0x3t
        0xdt
        0x55t
        0x57t
        0x53t
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0x40t
        0x3t
        0x59t
        0x43t
        0x51t
        0x12t
        0x5bt
        0xdt
        0x59t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x37t
        0x5et
        0x5et
        0x5ct
        0x5ft
        0x12t
        0xct
        0x10t
        0x46t
        0x51t
        0x55t
        0xbt
        0x7t
        0x10t
        0x5bt
        0x53t
        0x5dt
        0x0t
        0x58t
        0x10t
    .end array-data
.end method

.method public static from(Landroid/content/Context;)Landroidx/transition/TransitionInflater;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/transition/TransitionInflater;

    invoke-direct {v0, p0}, Landroidx/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0xb

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-ne v1, v9, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_9

    :cond_1
    if-eq v1, v6, :cond_9

    if-ne v1, v8, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "eaad87"

    const-wide v4, -0x3e40bc9c9b000000L    # -5.24510053E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v2, Landroidx/transition/Styleable;->TRANSITION_TARGET:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "3db5d9"

    const-wide v4, 0x41d02d47c3c00000L    # 1.085611791E9

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3, v1}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v3, "5fc26a"

    invoke-static {v1, v3, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1, v8, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3, v1, v6}, Landroidx/transition/Transition;->excludeTarget(IZ)Landroidx/transition/Transition;

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v3, "0d00ae"

    const-wide/32 v4, 0x1ee82527

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v2, p1, v1, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p3, v1}, Landroidx/transition/Transition;->addTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    goto :goto_1

    :cond_5
    new-array v1, v10, [B

    fill-array-data v1, :array_4

    const-string v3, "73d589"

    const-wide v4, -0x3e34c9491f800000L    # -9.13141185E8

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v2, p1, v1, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p3, v1, v6}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;

    goto :goto_1

    :cond_6
    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v3, "dd3b6a"

    invoke-static {v1, v3, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p3, v3, v4}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x11

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    const-string v5, "b6ff97"

    const v6, -0x321de466

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    const/16 v3, 0xb

    :try_start_1
    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const-string v4, "86b4c5"

    const/16 v5, 0x3732

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroidx/transition/Transition;->addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_8

    const-string v3, "f3f524"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void

    :array_0
    .array-data 1
        0x11t
        0x0t
        0x13t
        0x3t
        0x5dt
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x47t
        0x5t
        0x10t
        0x52t
        0x1t
        0x4dt
        0x7at
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x50t
        0x1et
        0x0t
        0x5et
        0x43t
        0x5t
        0x50t
        0x2ft
        0x7t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x44t
        0x5t
        0x42t
        0x57t
        0x4t
        0x11t
        0x7et
        0x5t
        0x5dt
        0x55t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x52t
        0x4bt
        0x7t
        0x59t
        0x4dt
        0x5dt
        0x52t
        0x7dt
        0x5t
        0x58t
        0x5dt
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1ct
        0x50t
        0xet
        0x43t
        0x5t
        0x1t
        0x27t
        0x5ft
        0x3t
        0x45t
        0x12t
    .end array-data

    :array_6
    .array-data 1
        0x21t
        0x59t
        0x13t
        0xat
        0x5dt
        0x17t
        0xct
        0x59t
        0x12t
        0x46t
        0x5at
        0x45t
        0x7t
        0x57t
        0x12t
        0x3t
        0x19t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x4ct
        0x57t
        0x10t
        0x53t
        0x6t
        0x41t
        0x7bt
        0x5at
        0x3t
        0x47t
        0x10t
    .end array-data

    :array_8
    .array-data 1
        0x33t
        0x5dt
        0xdt
        0x5bt
        0x5dt
        0x43t
        0x8t
        0x13t
        0x15t
        0x56t
        0x57t
        0x5at
        0x3t
        0x13t
        0x8t
        0x54t
        0x5ft
        0x51t
        0x5ct
        0x13t
    .end array-data
.end method

.method private loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroidx/transition/TransitionManager;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v2, Landroidx/transition/Styleable;->TRANSITION_MANAGER:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "c3652b"

    invoke-static {v0, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v2, p2, v0, v3, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v4, "96c3a2"

    const/16 v5, -0x5056

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p2, v0, v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, v1

    :goto_0
    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "e971d5"

    invoke-static {v4, v5, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, p2, v4, v5, v7}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    if-gez v4, :cond_1

    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {p0, v3}, Landroidx/transition/TransitionInflater;->inflateTransition(I)Landroidx/transition/Transition;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v4, "50a2f2"

    invoke-static {v2, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p3, v0, v4}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p3, v4, v1}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {p4, v1, v4}, Landroidx/transition/TransitionManager;->setTransition(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_4
    invoke-virtual {p4, v0, v1, v4}, Landroidx/transition/TransitionManager;->setTransition(Landroidx/transition/Scene;Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x17t
        0x41t
        0x57t
        0x5bt
        0x41t
        0xbt
        0x17t
        0x5at
        0x59t
        0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5ft
        0x44t
        0xct
        0x5et
        0x32t
        0x51t
        0x5ct
        0x58t
        0x6t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x11t
        0x56t
        0x64t
        0x52t
        0x1t
        0x5bt
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x7bt
        0x5ft
        0x41t
        0x46t
        0x9t
        0x61t
        0x56t
        0x55t
        0xft
        0x57t
        0x46t
        0x54t
        0x5at
        0x42t
        0x41t
        0x46t
        0x14t
        0x53t
        0x5bt
        0x43t
        0x8t
        0x46t
        0xft
        0x5dt
        0x5bt
        0x10t
        0x28t
        0x76t
        0x46t
    .end array-data
.end method


# virtual methods
.method public inflateTransition(I)Landroidx/transition/Transition;
    .locals 7

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroidx/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)Landroidx/transition/Transition;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "08c7f2"

    const v6, -0x31c6b84b

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :array_0
    .array-data 1
        0xat
        0x18t
    .end array-data
.end method

.method public inflateTransitionManager(ILandroid/view/ViewGroup;)Landroidx/transition/TransitionManager;
    .locals 7

    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Landroidx/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroidx/transition/TransitionManager;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "c2245b"

    const v6, -0x31870590

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :array_0
    .array-data 1
        0x59t
        0x12t
    .end array-data
.end method
