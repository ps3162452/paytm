.class public Landroidx/fragment/app/FragmentFactory;
.super Ljava/lang/Object;


# static fields
.field private static final sClassCacheMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/fragment/app/FragmentFactory;->sClassCacheMap:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    const-class v0, Landroidx/fragment/app/Fragment;

    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentFactory;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget-object v1, Landroidx/fragment/app/FragmentFactory;->sClassCacheMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    invoke-virtual {v1, p0, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    const/16 v2, 0x1f

    :try_start_0
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentFactory;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "8fa73e"

    const v4, -0x313ca6ae

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "7d0a2b"

    const-wide/32 v4, -0x2d748a1c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "a9e008"

    const v4, -0x31cc1bbc    # -7.545203E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "6b7f00"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x6dt
        0x8t
        0x0t
        0x55t
        0x5ft
        0x0t
        0x18t
        0x12t
        0xet
        0x17t
        0x5at
        0xbt
        0x4bt
        0x12t
        0x0t
        0x59t
        0x47t
        0xct
        0x59t
        0x12t
        0x4t
        0x17t
        0x55t
        0x17t
        0x59t
        0x1t
        0xct
        0x52t
        0x5dt
        0x11t
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0x44t
        0x5dt
        0x0t
        0x59t
        0x7t
        0x17t
        0x17t
        0x45t
        0x13t
        0x57t
        0x42t
        0x54t
        0x8t
        0x51t
        0x12t
        0x41t
        0x42t
        0x5et
        0x17t
        0x10t
        0x0t
        0x12t
        0x14t
        0x56t
        0x8t
        0x59t
        0x5t
        0x12t
        0x11t
        0x42t
        0x6t
        0x53t
        0xdt
        0x53t
        0x11t
        0x44t
        0x44t
        0x5ft
        0x7t
        0x12t
        0x24t
        0x45t
        0x5t
        0x57t
        0xct
        0x57t
        0xct
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x34t
        0x57t
        0x4t
        0x52t
        0x5ct
        0x5dt
        0x41t
        0x4dt
        0xat
        0x10t
        0x59t
        0x56t
        0x12t
        0x4dt
        0x4t
        0x5et
        0x44t
        0x51t
        0x0t
        0x4dt
        0x0t
        0x10t
        0x56t
        0x4at
        0x0t
        0x5et
        0x8t
        0x55t
        0x5et
        0x4ct
        0x41t
    .end array-data

    :array_3
    .array-data 1
        0xct
        0x42t
        0x5at
        0x7t
        0x5bt
        0x55t
        0x16t
        0x11t
        0x42t
        0x14t
        0x55t
        0x10t
        0x55t
        0xet
        0x56t
        0x15t
        0x43t
        0x10t
        0x58t
        0x3t
        0x5at
        0x3t
        0x10t
        0x55t
        0x4et
        0xbt
        0x44t
        0x12t
        0x43t
    .end array-data
.end method


# virtual methods
.method public instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 7

    const/16 v6, 0x55

    const/16 v2, 0x1f

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, p2}, Landroidx/fragment/app/FragmentFactory;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c5caa0"

    const-wide/32 v4, -0x649110d9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "2e4bb0"

    const-wide v4, -0x3e2aa2d817c00000L    # -1.433706401E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "f8658f"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "c95520"

    const v4, 0x4e3d9301    # 7.9513197E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "a7a614"

    const/16 v4, -0x5658

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_5

    const-string v3, "248f21"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "65bc97"

    const-wide v4, 0x41d873d9fbc00000L    # 1.640982511E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    fill-array-data v2, :array_7

    const-string v3, "b827f3"

    const-wide v4, 0x41d2ec44a3800000L    # 1.269895822E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :array_0
    .array-data 1
        0x36t
        0x5bt
        0x2t
        0x3t
        0xdt
        0x55t
        0x43t
        0x41t
        0xct
        0x41t
        0x8t
        0x5et
        0x10t
        0x41t
        0x2t
        0xft
        0x15t
        0x59t
        0x2t
        0x41t
        0x6t
        0x41t
        0x7t
        0x42t
        0x2t
        0x52t
        0xet
        0x4t
        0xft
        0x44t
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x8t
        0x45t
        0x57t
        0x3t
        0xet
        0x5ct
        0x5bt
        0xbt
        0x53t
        0x42t
        0x24t
        0x42t
        0x53t
        0x2t
        0x59t
        0x7t
        0xct
        0x44t
        0x12t
        0x6t
        0x5bt
        0xct
        0x11t
        0x44t
        0x40t
        0x10t
        0x57t
        0x16t
        0xdt
        0x42t
        0x12t
        0x6t
        0x55t
        0x17t
        0x11t
        0x55t
        0x56t
        0x45t
        0x55t
        0xct
        0x42t
        0x55t
        0x4at
        0x6t
        0x51t
        0x12t
        0x16t
        0x59t
        0x5dt
        0xbt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x33t
        0x56t
        0x57t
        0x57t
        0x54t
        0x3t
        0x46t
        0x4ct
        0x59t
        0x15t
        0x51t
        0x8t
        0x15t
        0x4ct
        0x57t
        0x5bt
        0x4ct
        0xft
        0x7t
        0x4ct
        0x53t
        0x15t
        0x5et
        0x14t
        0x7t
        0x5ft
        0x5bt
        0x50t
        0x56t
        0x12t
        0x46t
    .end array-data

    :array_3
    .array-data 1
        0x59t
        0x19t
        0x56t
        0x5at
        0x47t
        0x5ct
        0x7t
        0x19t
        0x5bt
        0x5at
        0x46t
        0x10t
        0x5t
        0x50t
        0x5bt
        0x51t
        0x12t
        0x76t
        0x11t
        0x58t
        0x52t
        0x58t
        0x57t
        0x5et
        0x17t
        0x19t
        0x56t
        0x5at
        0x5ct
        0x43t
        0x17t
        0x4bt
        0x40t
        0x56t
        0x46t
        0x5ft
        0x11t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x34t
        0x59t
        0x0t
        0x54t
        0x5dt
        0x51t
        0x41t
        0x43t
        0xet
        0x16t
        0x58t
        0x5at
        0x12t
        0x43t
        0x0t
        0x58t
        0x45t
        0x5dt
        0x0t
        0x43t
        0x4t
        0x16t
        0x57t
        0x46t
        0x0t
        0x50t
        0xct
        0x53t
        0x5ft
        0x40t
        0x41t
    .end array-data

    :array_5
    .array-data 1
        0x8t
        0x14t
        0x55t
        0x7t
        0x59t
        0x54t
        0x12t
        0x47t
        0x4dt
        0x14t
        0x57t
        0x11t
        0x51t
        0x58t
        0x59t
        0x15t
        0x41t
        0x11t
        0x5ct
        0x55t
        0x55t
        0x3t
        0x12t
        0x54t
        0x4at
        0x5dt
        0x4bt
        0x12t
        0x41t
        0x1dt
        0x12t
        0x5dt
        0x4bt
        0x46t
        0x42t
        0x44t
        0x50t
        0x58t
        0x51t
        0x5t
        0x1et
        0x11t
        0x53t
        0x5at
        0x5ct
        0x46t
        0x5at
        0x50t
        0x41t
        0x14t
        0x59t
        0x8t
        0x12t
        0x54t
        0x5ft
        0x44t
        0x4ct
        0x1ft
        0x12t
        0x52t
        0x5dt
        0x5at
        0x4bt
        0x12t
        0x40t
        0x44t
        0x51t
        0x40t
        0x57t
        0x14t
        0x12t
        0x45t
        0x5at
        0x55t
        0x4ct
        0x46t
        0x5bt
        0x42t
        0x12t
        0x44t
        0x4dt
        0x4t
        0x5et
        0x58t
        0x51t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x63t
        0x5bt
        0x3t
        0x1t
        0x55t
        0x52t
        0x16t
        0x41t
        0xdt
        0x43t
        0x50t
        0x59t
        0x45t
        0x41t
        0x3t
        0xdt
        0x4dt
        0x5et
        0x57t
        0x41t
        0x7t
        0x43t
        0x5ft
        0x45t
        0x57t
        0x52t
        0xft
        0x6t
        0x57t
        0x43t
        0x16t
    .end array-data

    :array_7
    .array-data 1
        0x58t
        0x18t
        0x5ft
        0x56t
        0xdt
        0x56t
        0x42t
        0x4bt
        0x47t
        0x45t
        0x3t
        0x13t
        0x1t
        0x54t
        0x53t
        0x44t
        0x15t
        0x13t
        0xct
        0x59t
        0x5ft
        0x52t
        0x46t
        0x56t
        0x1at
        0x51t
        0x41t
        0x43t
        0x15t
        0x1ft
        0x42t
        0x51t
        0x41t
        0x17t
        0x16t
        0x46t
        0x0t
        0x54t
        0x5bt
        0x54t
        0x4at
        0x13t
        0x3t
        0x56t
        0x56t
        0x17t
        0xet
        0x52t
        0x11t
        0x18t
        0x53t
        0x59t
        0x46t
        0x56t
        0xft
        0x48t
        0x46t
        0x4et
        0x46t
        0x50t
        0xdt
        0x56t
        0x41t
        0x43t
        0x14t
        0x46t
        0x1t
        0x4ct
        0x5dt
        0x45t
        0x46t
        0x47t
        0xat
        0x59t
        0x46t
        0x17t
        0xft
        0x40t
        0x42t
        0x48t
        0x47t
        0x55t
        0xat
        0x5at
        0x1t
    .end array-data
.end method
