.class public abstract Lcom/google/gson/internal/UnsafeAllocator;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertInstantiable(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "96ceda"

    const v4, 0x4e03d79c    # 5.529864E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x32

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "721043"

    const/16 v4, -0x104f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x70t
        0x58t
        0x17t
        0x0t
        0x16t
        0x7t
        0x58t
        0x55t
        0x6t
        0x45t
        0x7t
        0x0t
        0x57t
        0x11t
        0x17t
        0x45t
        0x6t
        0x4t
        0x19t
        0x5ft
        0xdt
        0x16t
        0x10t
        0x0t
        0x57t
        0x42t
        0xat
        0x4t
        0x10t
        0x4t
        0x5dt
        0x17t
        0x43t
        0x2ct
        0xat
        0x15t
        0x5ct
        0x44t
        0x5t
        0x4t
        0x7t
        0x4t
        0x19t
        0x58t
        0x2t
        0x8t
        0x1t
        0x5bt
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x76t
        0x50t
        0x42t
        0x44t
        0x46t
        0x52t
        0x54t
        0x46t
        0x11t
        0x53t
        0x58t
        0x52t
        0x44t
        0x41t
        0x11t
        0x53t
        0x55t
        0x5dt
        0x10t
        0x46t
        0x11t
        0x52t
        0x51t
        0x13t
        0x5et
        0x5ct
        0x42t
        0x44t
        0x55t
        0x5dt
        0x43t
        0x5bt
        0x50t
        0x44t
        0x51t
        0x57t
        0x16t
        0x12t
        0x72t
        0x5ct
        0x55t
        0x40t
        0x44t
        0x12t
        0x5ft
        0x51t
        0x59t
        0x56t
        0xdt
        0x12t
    .end array-data
.end method

.method public static create()Lcom/google/gson/internal/UnsafeAllocator;
    .locals 6

    const/16 v0, 0xf

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "820010"

    const v2, -0x320c869b    # -5.106024E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "26ab28"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "0bb3e8"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-instance v0, Lcom/google/gson/internal/UnsafeAllocator$1;

    invoke-direct {v0, v2, v1}, Lcom/google/gson/internal/UnsafeAllocator$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-class v0, Ljava/io/ObjectStreamClass;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "e0c387"

    const-wide v4, 0x41d624cbe3c00000L    # 1.486040975E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-class v0, Ljava/io/ObjectStreamClass;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "0c06e4"

    const-wide v4, 0x41d5c3ed7e400000L    # 1.460647417E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Lcom/google/gson/internal/UnsafeAllocator$2;

    invoke-direct {v0, v2, v1}, Lcom/google/gson/internal/UnsafeAllocator$2;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-class v0, Ljava/io/ObjectInputStream;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "4396a0"

    const-wide v4, -0x3e460ece0c000000L    # -4.35237364E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Lcom/google/gson/internal/UnsafeAllocator$3;

    invoke-direct {v0, v1}, Lcom/google/gson/internal/UnsafeAllocator$3;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v0, Lcom/google/gson/internal/UnsafeAllocator$4;

    invoke-direct {v0}, Lcom/google/gson/internal/UnsafeAllocator$4;-><init>()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x5et
        0x1et
        0x5ct
        0x59t
        0x4bt
        0x51t
        0x1et
        0x65t
        0x5ft
        0x43t
        0x59t
        0x54t
        0x55t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x5et
        0x4t
        0x37t
        0x5ct
        0x4bt
        0x53t
        0x50t
        0x4t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x51t
        0xet
        0xet
        0x5ct
        0x6t
        0x59t
        0x44t
        0x7t
        0x2bt
        0x5dt
        0x16t
        0x4ct
        0x51t
        0xct
        0x1t
        0x56t
    .end array-data

    :array_3
    .array-data 1
        0x2t
        0x55t
        0x17t
        0x70t
        0x57t
        0x59t
        0x16t
        0x44t
        0x11t
        0x46t
        0x5bt
        0x43t
        0xat
        0x42t
        0x2at
        0x57t
    .end array-data

    :array_4
    .array-data 1
        0x5et
        0x6t
        0x47t
        0x7ft
        0xbt
        0x47t
        0x44t
        0x2t
        0x5et
        0x55t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x5at
        0x56t
        0x4et
        0x7ft
        0xft
        0x43t
        0x40t
        0x52t
        0x57t
        0x55t
        0x4t
    .end array-data
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
