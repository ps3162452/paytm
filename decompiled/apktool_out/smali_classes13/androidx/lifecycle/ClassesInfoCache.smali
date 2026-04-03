.class final Landroidx/lifecycle/ClassesInfoCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;,
        Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CALL_TYPE_NO_ARG:I = 0x0

.field private static final CALL_TYPE_PROVIDER:I = 0x1

.field private static final CALL_TYPE_PROVIDER_WITH_EVENT:I = 0x2

.field static sInstance:Landroidx/lifecycle/ClassesInfoCache;


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasLifecycleMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/ClassesInfoCache;

    invoke-direct {v0}, Landroidx/lifecycle/ClassesInfoCache;-><init>()V

    sput-object v0, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    return-void
.end method

.method private createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    move v5, v3

    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v0, v7, v5

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    iget-object v0, v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v6, v1, v0, p1}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    :goto_2
    array-length v7, p2

    move v1, v3

    move v5, v3

    :goto_3
    if-ge v5, v7, :cond_a

    aget-object v8, p2, v5

    const-class v0, Landroidx/lifecycle/OnLifecycleEvent;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/OnLifecycleEvent;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1}, Landroidx/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p2

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v1, v9

    if-lez v1, :cond_b

    aget-object v1, v9, v3

    const-class v10, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    invoke-interface {v0}, Landroidx/lifecycle/OnLifecycleEvent;->value()Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v0

    array-length v10, v9

    if-le v10, v2, :cond_5

    aget-object v1, v9, v2

    const-class v10, Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne v0, v1, :cond_7

    move v1, v4

    :cond_5
    array-length v9, v9

    if-gt v9, v4, :cond_9

    new-instance v9, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    invoke-direct {v9, v1, v8}, Landroidx/lifecycle/ClassesInfoCache$MethodReference;-><init>(ILjava/lang/reflect/Method;)V

    invoke-direct {p0, v6, v9, v0, p1}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    move v0, v2

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x41

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "097548"

    const-wide v4, 0x41dbae3fc2400000L    # 1.857617673E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "7f7586"

    invoke-static {v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x33

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "f1b313"

    const-wide/32 v4, 0x2eedee0a    # 3.890000695E-315

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v4, "9aa4a5"

    invoke-static {v1, v4, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    invoke-direct {v0, v6}, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_b
    move v1, v3

    goto/16 :goto_5

    nop

    :array_0
    .array-data 1
        0x59t
        0x57t
        0x41t
        0x54t
        0x58t
        0x51t
        0x54t
        0x19t
        0x47t
        0x54t
        0x46t
        0x59t
        0x5dt
        0x5ct
        0x43t
        0x50t
        0x46t
        0x18t
        0x44t
        0x40t
        0x47t
        0x50t
        0x1at
        0x18t
        0x7dt
        0x4ct
        0x44t
        0x41t
        0x14t
        0x5at
        0x55t
        0x19t
        0x58t
        0x5bt
        0x51t
        0x18t
        0x51t
        0x57t
        0x53t
        0x15t
        0x5dt
        0x56t
        0x43t
        0x4dt
        0x56t
        0x5bt
        0x57t
        0x5dt
        0x5ft
        0x5ft
        0x17t
        0x79t
        0x5dt
        0x5et
        0x55t
        0x5at
        0x4et
        0x56t
        0x58t
        0x5dt
        0x7ft
        0x4et
        0x59t
        0x50t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x64t
        0x3t
        0x54t
        0x5at
        0x56t
        0x52t
        0x17t
        0x7t
        0x45t
        0x52t
        0x18t
        0x5ft
        0x44t
        0x46t
        0x44t
        0x40t
        0x48t
        0x46t
        0x58t
        0x14t
        0x43t
        0x50t
        0x5ct
        0x16t
        0x58t
        0x8t
        0x5bt
        0x4ct
        0x18t
        0x50t
        0x58t
        0x14t
        0x17t
        0x7at
        0x76t
        0x69t
        0x76t
        0x28t
        0x6et
        0x15t
        0x4et
        0x57t
        0x5bt
        0x13t
        0x52t
    .end array-data

    nop

    :array_2
    .array-data 1
        0xft
        0x5ft
        0x14t
        0x52t
        0x5dt
        0x5at
        0x2t
        0x11t
        0x12t
        0x52t
        0x43t
        0x52t
        0xbt
        0x54t
        0x16t
        0x56t
        0x43t
        0x13t
        0x12t
        0x48t
        0x12t
        0x56t
        0x1ft
        0x13t
        0x15t
        0x54t
        0x1t
        0x5ct
        0x5ft
        0x57t
        0x46t
        0x50t
        0x10t
        0x54t
        0x11t
        0x5et
        0x13t
        0x42t
        0x16t
        0x13t
        0x53t
        0x56t
        0x46t
        0x50t
        0xct
        0x13t
        0x54t
        0x45t
        0x3t
        0x5ft
        0x16t
    .end array-data

    :array_3
    .array-data 1
        0x5at
        0x0t
        0xft
        0x5at
        0xet
        0x41t
        0x19t
        0x9t
        0x0t
        0x42t
        0x4t
        0x15t
        0x54t
        0xet
        0x13t
        0x51t
        0x41t
        0x41t
        0x51t
        0x0t
        0xft
        0x14t
        0x53t
        0x15t
        0x49t
        0x0t
        0x13t
        0x55t
        0xct
        0x46t
    .end array-data
.end method

.method private getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x140

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "141adc"

    const v4, -0x33fb4619    # -3.4793372E7f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 1
        0x65t
        0x5ct
        0x54t
        0x41t
        0xbt
        0x1t
        0x42t
        0x51t
        0x43t
        0x17t
        0x1t
        0x11t
        0x11t
        0x57t
        0x5dt
        0x0t
        0x17t
        0x10t
        0x11t
        0x5ct
        0x50t
        0x12t
        0x44t
        0x10t
        0x5et
        0x59t
        0x54t
        0x41t
        0x9t
        0x6t
        0x45t
        0x5ct
        0x5et
        0x5t
        0x17t
        0x43t
        0x45t
        0x5ct
        0x50t
        0x15t
        0x44t
        0x16t
        0x42t
        0x51t
        0x11t
        0xft
        0x1t
        0x14t
        0x54t
        0x46t
        0x11t
        0x20t
        0x34t
        0x2at
        0x42t
        0x14t
        0x46t
        0x9t
        0xdt
        0x0t
        0x59t
        0x14t
        0x50t
        0x13t
        0x1t
        0x43t
        0x5ft
        0x5bt
        0x45t
        0x41t
        0x5t
        0x15t
        0x50t
        0x5dt
        0x5dt
        0x0t
        0x6t
        0xft
        0x54t
        0x14t
        0x58t
        0xft
        0x44t
        0x17t
        0x59t
        0x51t
        0x11t
        0x2t
        0x11t
        0x11t
        0x43t
        0x51t
        0x5ft
        0x15t
        0x44t
        0x2ct
        0x62t
        0x14t
        0x47t
        0x4t
        0x16t
        0x10t
        0x58t
        0x5bt
        0x5ft
        0x4ft
        0x44t
        0x2ft
        0x58t
        0x52t
        0x54t
        0x2t
        0x1dt
        0x0t
        0x5dt
        0x51t
        0x42t
        0x41t
        0x7t
        0x2t
        0x5ft
        0x5at
        0x5et
        0x15t
        0x44t
        0x2t
        0x52t
        0x57t
        0x54t
        0x12t
        0x17t
        0x43t
        0x54t
        0x42t
        0x54t
        0xft
        0x44t
        0xct
        0x45t
        0x5ct
        0x54t
        0x13t
        0x44t
        0xet
        0x54t
        0x40t
        0x59t
        0xet
        0x0t
        0x10t
        0x11t
        0x47t
        0x5et
        0x41t
        0x1dt
        0xct
        0x44t
        0x14t
        0x42t
        0x9t
        0xbt
        0x16t
        0x5dt
        0x50t
        0x11t
        0xct
        0x5t
        0x8t
        0x54t
        0x14t
        0x42t
        0x14t
        0x16t
        0x6t
        0x11t
        0x40t
        0x59t
        0x0t
        0x10t
        0x43t
        0x48t
        0x5bt
        0x44t
        0x13t
        0x44t
        0xct
        0x53t
        0x47t
        0x54t
        0x13t
        0x12t
        0x6t
        0x43t
        0x14t
        0x52t
        0xdt
        0x5t
        0x10t
        0x42t
        0x51t
        0x42t
        0x41t
        0xbt
        0xdt
        0x5dt
        0x4dt
        0x11t
        0x0t
        0x7t
        0x0t
        0x54t
        0x47t
        0x42t
        0x41t
        0x2t
        0x11t
        0x50t
        0x59t
        0x54t
        0x16t
        0xbt
        0x11t
        0x5at
        0x14t
        0x52t
        0xdt
        0x5t
        0x10t
        0x42t
        0x51t
        0x42t
        0x41t
        0x10t
        0xbt
        0x50t
        0x40t
        0x11t
        0x0t
        0x16t
        0x6t
        0x11t
        0x55t
        0x47t
        0x0t
        0xdt
        0xft
        0x50t
        0x56t
        0x5dt
        0x4t
        0x44t
        0xat
        0x5ft
        0x14t
        0x48t
        0xet
        0x11t
        0x11t
        0x11t
        0x59t
        0x58t
        0xft
        0x44t
        0x22t
        0x61t
        0x7dt
        0x11t
        0xdt
        0x1t
        0x15t
        0x54t
        0x58t
        0x11t
        0x2et
        0x36t
        0x43t
        0x44t
        0x47t
        0x54t
        0x41t
        0x8t
        0xat
        0x57t
        0x51t
        0x52t
        0x18t
        0x7t
        0xft
        0x54t
        0xet
        0x52t
        0xet
        0x9t
        0x13t
        0x58t
        0x58t
        0x54t
        0x13t
        0x44t
        0x2t
        0x5ft
        0x5at
        0x5et
        0x15t
        0x5t
        0x17t
        0x58t
        0x5bt
        0x5ft
        0x41t
        0x14t
        0x11t
        0x5et
        0x57t
        0x54t
        0x12t
        0x17t
        0xct
        0x43t
        0x1at
    .end array-data
.end method

.method private verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroidx/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;",
            "Landroidx/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    if-eqz v0, :cond_0

    if-ne p3, v0, :cond_2

    :cond_0
    if-nez v0, :cond_1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p2, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "252a56"

    const-wide/32 v6, -0xa49180f

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "d2782d"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x49

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "b76de4"

    const/4 v5, 0x1

    invoke-static {v3, v4, v8, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v3, "a22c8c"

    const-wide/32 v4, -0x34790bc1

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x7ft
        0x50t
        0x46t
        0x9t
        0x5at
        0x52t
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x5bt
        0x59t
        0x18t
    .end array-data

    :array_2
    .array-data 1
        0x42t
        0x56t
        0x5at
        0x16t
        0x0t
        0x55t
        0x6t
        0x4et
        0x16t
        0x0t
        0x0t
        0x57t
        0xet
        0x56t
        0x44t
        0x1t
        0x1t
        0x14t
        0x15t
        0x5et
        0x42t
        0xct
        0x45t
        0x50t
        0xbt
        0x51t
        0x50t
        0x1t
        0x17t
        0x51t
        0xct
        0x43t
        0x16t
        0x24t
        0x2at
        0x5at
        0x2et
        0x5et
        0x50t
        0x1t
        0x6t
        0x4dt
        0x1t
        0x5bt
        0x53t
        0x21t
        0x13t
        0x51t
        0xct
        0x43t
        0x16t
        0x12t
        0x4t
        0x58t
        0x17t
        0x52t
        0xct
        0x44t
        0x15t
        0x46t
        0x7t
        0x41t
        0x5ft
        0xbt
        0x10t
        0x47t
        0x42t
        0x41t
        0x57t
        0x8t
        0x10t
        0x51t
        0x42t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4dt
        0x12t
        0x5ct
        0x6t
        0x4ft
        0x43t
        0x17t
        0x53t
        0x5et
        0x16t
        0x5dt
        0x43t
    .end array-data
.end method


# virtual methods
.method getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    goto :goto_0
.end method

.method hasLifecycleMethods(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    const-class v5, Landroidx/lifecycle/OnLifecycleEvent;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/OnLifecycleEvent;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v3}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0
.end method
