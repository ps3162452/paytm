.class final Landroidx/savedstate/Recreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/Recreator$SavedStateProvider;
    }
.end annotation


# static fields
.field static final CLASSES_KEY:Ljava/lang/String;

.field static final COMPONENT_KEY:Ljava/lang/String;


# instance fields
.field private final mOwner:Landroidx/savedstate/SavedStateRegistryOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b2b040"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/Recreator;->CLASSES_KEY:Ljava/lang/String;

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "5573ee"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/Recreator;->COMPONENT_KEY:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x5et
        0x3t
        0x43t
        0x47t
        0x55t
        0x11t
        0x6dt
        0x16t
        0x5ft
        0x6bt
        0x42t
        0x7t
        0x41t
        0x16t
        0x5ft
        0x46t
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x54t
        0x5bt
        0x53t
        0x41t
        0xat
        0xct
        0x51t
        0x4dt
        0x19t
        0x40t
        0x4t
        0x13t
        0x50t
        0x51t
        0x44t
        0x47t
        0x4t
        0x11t
        0x50t
        0x1bt
        0x65t
        0x56t
        0x16t
        0x11t
        0x54t
        0x47t
        0x43t
        0x56t
        0x17t
    .end array-data
.end method

.method constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/Recreator;->mOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    return-void
.end method

.method private reflectiveNew(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroidx/savedstate/Recreator;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/savedstate/SavedStateRegistry$AutoRecreated;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v1, 0x0

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/savedstate/SavedStateRegistry$AutoRecreated;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v1, p0, Landroidx/savedstate/Recreator;->mOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v0, v1}, Landroidx/savedstate/SavedStateRegistry$AutoRecreated;->onRecreated(Landroidx/savedstate/SavedStateRegistryOwner;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c05aba"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "812484"

    invoke-static {v3, v4, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x45

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v3, "9e3ebe"

    const/16 v4, 0x7b95

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "c1dba5"

    const-wide v4, -0x3e23d6f9ad400000L    # -1.889802571E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "8b3734"

    const/16 v4, 0x132b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :array_0
    .array-data 1
        0x25t
        0x51t
        0x5ct
        0xdt
        0x7t
        0x5t
        0x43t
        0x44t
        0x5at
        0x41t
        0xbt
        0xft
        0x10t
        0x44t
        0x54t
        0xft
        0x16t
        0x8t
        0x2t
        0x44t
        0x50t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7bt
        0x5dt
        0x53t
        0x47t
        0x4bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x19t
        0x8t
        0x46t
        0x16t
        0x16t
        0x45t
        0x51t
        0x4t
        0x45t
        0x0t
        0x42t
        0x1t
        0x5ct
        0x3t
        0x52t
        0x10t
        0xet
        0x11t
        0x19t
        0x6t
        0x5ct
        0xbt
        0x11t
        0x11t
        0x4bt
        0x10t
        0x50t
        0x11t
        0xdt
        0x17t
        0x19t
        0xct
        0x5dt
        0x45t
        0xdt
        0x17t
        0x5dt
        0x0t
        0x41t
        0x45t
        0x16t
        0xat
        0x19t
        0x7t
        0x56t
        0x45t
        0x3t
        0x10t
        0x4dt
        0xat
        0x5et
        0x4t
        0x16t
        0xct
        0x5at
        0x4t
        0x5ft
        0x9t
        0x1bt
        0x45t
        0x4bt
        0x0t
        0x50t
        0x17t
        0x7t
        0x4t
        0x4dt
        0x0t
        0x57t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x20t
        0x5dt
        0x5t
        0x11t
        0x12t
        0x15t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x18t
        0x15t
        0x52t
        0x44t
        0x5dt
        0x13t
        0x4ct
        0x42t
        0x55t
        0x58t
        0x46t
        0x5at
        0x5ct
    .end array-data
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_3

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Landroidx/savedstate/Recreator;->mOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v0}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    sget-object v1, Landroidx/savedstate/Recreator;->COMPONENT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v1, Landroidx/savedstate/Recreator;->CLASSES_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/savedstate/Recreator;->reflectiveNew(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x89

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a1056f"

    const v3, -0x314c2503

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "174658"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :array_0
    .array-data 1
        0x23t
        0x44t
        0x5et
        0x51t
        0x5at
        0x3t
        0x41t
        0x46t
        0x59t
        0x41t
        0x5et
        0x46t
        0x13t
        0x54t
        0x43t
        0x41t
        0x59t
        0x14t
        0x4t
        0x55t
        0x10t
        0x46t
        0x42t
        0x7t
        0x15t
        0x54t
        0x10t
        0x53t
        0x59t
        0x14t
        0x41t
        0x45t
        0x58t
        0x50t
        0x16t
        0x5t
        0xet
        0x5ct
        0x40t
        0x5at
        0x58t
        0x3t
        0xft
        0x45t
        0x10t
        0x17t
        0x57t
        0x8t
        0x5t
        0x43t
        0x5ft
        0x5ct
        0x52t
        0x1et
        0x4ft
        0x42t
        0x51t
        0x43t
        0x53t
        0x2t
        0x12t
        0x45t
        0x51t
        0x41t
        0x53t
        0x48t
        0x33t
        0x54t
        0x43t
        0x41t
        0x57t
        0x14t
        0x15t
        0x54t
        0x42t
        0x17t
        0x16t
        0xbt
        0x14t
        0x42t
        0x44t
        0x15t
        0x55t
        0x9t
        0xft
        0x45t
        0x51t
        0x5ct
        0x58t
        0x46t
        0xdt
        0x58t
        0x43t
        0x41t
        0x16t
        0x9t
        0x7t
        0x11t
        0x43t
        0x41t
        0x44t
        0xft
        0xft
        0x56t
        0x43t
        0x15t
        0x54t
        0x1ft
        0x41t
        0x45t
        0x58t
        0x50t
        0x16t
        0xdt
        0x4t
        0x48t
        0x10t
        0x17t
        0x55t
        0xat
        0x0t
        0x42t
        0x43t
        0x50t
        0x45t
        0x39t
        0x15t
        0x5et
        0x6ft
        0x47t
        0x53t
        0x15t
        0x15t
        0x5et
        0x42t
        0x50t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7ft
        0x52t
        0x4ct
        0x42t
        0x15t
        0x5dt
        0x47t
        0x52t
        0x5at
        0x42t
        0x15t
        0x55t
        0x44t
        0x44t
        0x40t
        0x16t
        0x57t
        0x5dt
        0x11t
        0x78t
        0x7at
        0x69t
        0x76t
        0x6at
        0x74t
        0x76t
        0x60t
        0x73t
    .end array-data
.end method
