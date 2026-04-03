.class public Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mappers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7c4a10"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->mappers:Ljava/util/concurrent/ConcurrentMap;

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0xft
        0x55t
        0x12t
        0x42t
        0x7dt
        0x56t
        0x13t
        0x44t
        0x4t
        0x43t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static convertBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;

    move-result-object v0

    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->expectMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->deserialize(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b440ac"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "591023"

    const-wide v4, 0x41d2021255000000L    # 1.208502612E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x21t
        0x55t
        0x5at
        0x17t
        0x15t
        0x43t
        0x1t
        0x5bt
        0x5at
        0x46t
        0x4t
        0x11t
        0x16t
        0x14t
        0x5bt
        0x52t
        0xbt
        0x6t
        0x1t
        0x40t
        0x14t
        0x5ft
        0x7t
        0x43t
        0x16t
        0x4dt
        0x44t
        0x55t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x4dt
        0x5et
        0x10t
        0x46t
        0x4at
        0x45t
        0x5ct
        0x11t
    .end array-data
.end method

.method private static convertBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 6

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d9605f"

    const v4, -0x315796b2

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "880f00"

    const-wide/32 v4, 0x671758f7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x22t
        0x58t
        0x5ft
        0x5ct
        0x50t
        0x2t
        0x44t
        0x4dt
        0x59t
        0x10t
        0x56t
        0x9t
        0xat
        0x4ft
        0x53t
        0x42t
        0x41t
        0x46t
        0x12t
        0x58t
        0x5at
        0x45t
        0x50t
        0x46t
        0xbt
        0x5ft
        0x16t
        0x44t
        0x4ct
        0x16t
        0x1t
        0x19t
    .end array-data

    :array_1
    .array-data 1
        0x18t
        0x4ct
        0x5ft
        0x46t
        0x52t
        0x5ft
        0x57t
        0x54t
        0x55t
        0x7t
        0x5et
    .end array-data
.end method

.method private static convertDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    move-object v1, p0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "eea3e6"

    const-wide v4, 0x417db5d200000000L    # 3.115344E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "0b8038"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Double;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "d17570"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "b922f2"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x29t
        0xat
        0x12t
        0x40t
        0x45t
        0x59t
        0x3t
        0x45t
        0x11t
        0x41t
        0x0t
        0x55t
        0xct
        0x16t
        0x8t
        0x5ct
        0xbt
        0x16t
        0x12t
        0xdt
        0x8t
        0x5ft
        0x0t
        0x16t
        0x6t
        0xat
        0xft
        0x45t
        0x0t
        0x44t
        0x11t
        0xct
        0xft
        0x54t
        0x45t
        0x58t
        0x10t
        0x8t
        0x3t
        0x56t
        0x17t
        0x16t
        0x11t
        0xat
        0x41t
        0x57t
        0xat
        0x43t
        0x7t
        0x9t
        0x4t
        0x9t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1et
        0x42t
        0x7ct
        0x59t
        0x57t
        0x18t
        0x49t
        0xdt
        0x4dt
        0x10t
        0x5et
        0x5dt
        0x51t
        0xct
        0x18t
        0x44t
        0x5ct
        0x18t
        0x45t
        0x11t
        0x5dt
        0x10t
        0x52t
        0x18t
        0x6t
        0x56t
        0x15t
        0x52t
        0x5at
        0x4ct
        0x10t
        0xet
        0x57t
        0x5et
        0x54t
        0x18t
        0x59t
        0xct
        0x4bt
        0x44t
        0x56t
        0x59t
        0x54t
        0x5dt
    .end array-data

    :array_2
    .array-data 1
        0x22t
        0x50t
        0x5et
        0x59t
        0x52t
        0x54t
        0x44t
        0x45t
        0x58t
        0x15t
        0x54t
        0x5ft
        0xat
        0x47t
        0x52t
        0x47t
        0x43t
        0x10t
        0x5t
        0x11t
        0x41t
        0x54t
        0x5bt
        0x45t
        0x1t
        0x11t
        0x58t
        0x53t
        0x17t
        0x44t
        0x1dt
        0x41t
        0x52t
        0x15t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x42t
        0x4dt
        0x5dt
        0x12t
        0x2t
        0x5dt
        0x17t
        0x5bt
        0x5et
        0x57t
    .end array-data
.end method

.method private static convertInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 9

    const/4 v8, 0x1

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "6e7f67"

    invoke-static {v2, v3, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "b0735d"

    const v4, 0x4e533c04

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v2, Lcom/google/firebase/database/DatabaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2b

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "4984eb"

    const-wide v6, 0x41dafb564e400000L    # 1.810716985E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x39

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v3, "def38e"

    invoke-static {v1, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v2

    :array_0
    .array-data 1
        0x70t
        0x4t
        0x5et
        0xat
        0x53t
        0x53t
        0x16t
        0x11t
        0x58t
        0x46t
        0x55t
        0x58t
        0x58t
        0x13t
        0x52t
        0x14t
        0x42t
        0x17t
        0x57t
        0x45t
        0x41t
        0x7t
        0x5at
        0x42t
        0x53t
        0x45t
        0x58t
        0x0t
        0x16t
        0x43t
        0x4ft
        0x15t
        0x52t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x42t
        0x44t
        0x58t
        0x13t
        0x5ct
        0xat
        0x16t
    .end array-data

    :array_2
    .array-data 1
        0x7at
        0x4ct
        0x55t
        0x51t
        0x17t
        0xbt
        0x57t
        0x19t
        0x4et
        0x55t
        0x9t
        0x17t
        0x51t
        0x19t
        0x57t
        0x41t
        0x11t
        0x42t
        0x5bt
        0x5ft
        0x18t
        0x7t
        0x57t
        0x4ft
        0x56t
        0x50t
        0x4ct
        0x14t
        0xct
        0xct
        0x40t
        0x5ct
        0x5ft
        0x51t
        0x17t
        0x42t
        0x46t
        0x58t
        0x56t
        0x53t
        0x0t
        0x58t
        0x14t
    .end array-data

    :array_3
    .array-data 1
        0x4at
        0x45t
        0x22t
        0x5at
        0x5ct
        0x45t
        0x1dt
        0xat
        0x13t
        0x13t
        0x55t
        0x0t
        0x5t
        0xbt
        0x46t
        0x47t
        0x57t
        0x45t
        0x11t
        0x16t
        0x3t
        0x13t
        0x59t
        0x45t
        0x8t
        0xat
        0x8t
        0x54t
        0x18t
        0xat
        0x16t
        0x45t
        0x2t
        0x5ct
        0x4dt
        0x7t
        0x8t
        0x0t
        0x46t
        0x5at
        0x56t
        0x16t
        0x10t
        0x0t
        0x7t
        0x57t
        0x18t
        0xat
        0x2t
        0x45t
        0x7t
        0x5dt
        0x18t
        0xct
        0xat
        0x11t
        0x59t
    .end array-data
.end method

.method private static convertLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d73a82"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c232b5"

    const-wide v4, -0x3e2a263f8d400000L    # -1.466368459E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "11c1fc"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "fc436b"

    invoke-static {v2, v3, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2at
        0x42t
        0x5et
        0x4t
        0x4at
        0x5bt
        0x7t
        0x17t
        0x45t
        0x0t
        0x54t
        0x47t
        0x1t
        0x17t
        0x5ct
        0x14t
        0x4ct
        0x12t
        0xbt
        0x51t
        0x13t
        0x57t
        0xct
        0x1ft
        0x6t
        0x5et
        0x47t
        0x41t
        0x54t
        0x5dt
        0xat
        0x50t
        0x13t
        0x13t
        0x59t
        0x5ct
        0x3t
        0x52t
        0x9t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x4dt
        0x12t
        0x77t
        0x5bt
        0x6t
        0x15t
        0x1at
        0x5dt
        0x46t
        0x12t
        0xft
        0x50t
        0x2t
        0x5ct
        0x13t
        0x46t
        0xdt
        0x15t
        0x16t
        0x41t
        0x56t
        0x12t
        0x3t
        0x15t
        0x7t
        0x5dt
        0x46t
        0x50t
        0xet
        0x50t
        0x43t
        0x5bt
        0x5dt
        0x41t
        0x16t
        0x50t
        0x2t
        0x56t
        0x13t
        0x5dt
        0x4t
        0x15t
        0x2t
        0x12t
        0x5ft
        0x5dt
        0xct
        0x52t
        0x5ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x77t
        0x50t
        0xat
        0x5dt
        0x3t
        0x7t
        0x11t
        0x45t
        0xct
        0x11t
        0x5t
        0xct
        0x5ft
        0x47t
        0x6t
        0x43t
        0x12t
        0x43t
        0x50t
        0x11t
        0x15t
        0x50t
        0xat
        0x16t
        0x54t
        0x11t
        0xct
        0x57t
        0x46t
        0x17t
        0x48t
        0x41t
        0x6t
        0x11t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x46t
        0x17t
        0x5bt
        0x13t
        0x5at
        0xdt
        0x8t
        0x4t
    .end array-data
.end method

.method private static convertString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0588d8"

    const-wide v4, 0x41db93684d400000L    # 1.850581301E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "6f4c39"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x76t
        0x54t
        0x51t
        0x54t
        0x1t
        0x5ct
        0x10t
        0x41t
        0x57t
        0x18t
        0x7t
        0x57t
        0x5et
        0x43t
        0x5dt
        0x4at
        0x10t
        0x18t
        0x46t
        0x54t
        0x54t
        0x4dt
        0x1t
        0x18t
        0x5ft
        0x53t
        0x18t
        0x4ct
        0x1dt
        0x48t
        0x55t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x12t
        0x5bt
        0x43t
        0x60t
        0x4dt
        0x44t
        0xft
        0x5at
        0x4t
    .end array-data
.end method

.method public static convertToCustomClass(Ljava/lang/Object;Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/GenericTypeIndicator",
            "<TT;>;)TT;"
        }
    .end annotation

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v3, Lcom/google/firebase/database/GenericTypeIndicator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {p0, v0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    const-string v4, "33b875"

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v4, [B

    fill-array-data v3, :array_1

    const-string v4, "56eee6"

    const-wide/32 v6, -0x5c79c5f3

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7dt
        0x5ct
        0x16t
        0x18t
        0x56t
        0x15t
        0x57t
        0x5at
        0x10t
        0x5dt
        0x54t
        0x41t
        0x13t
        0x40t
        0x17t
        0x5at
        0x54t
        0x59t
        0x52t
        0x40t
        0x11t
        0x18t
        0x58t
        0x53t
        0x13t
        0x74t
        0x7t
        0x56t
        0x52t
        0x47t
        0x5at
        0x50t
        0x36t
        0x41t
        0x47t
        0x50t
        0x7at
        0x5dt
        0x6t
        0x51t
        0x54t
        0x54t
        0x47t
        0x5ct
        0x10t
        0x2t
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x7bt
        0x59t
        0x11t
        0x45t
        0x4t
        0x16t
        0x51t
        0x5ft
        0x17t
        0x0t
        0x6t
        0x42t
        0x15t
        0x45t
        0x10t
        0x7t
        0x6t
        0x5at
        0x54t
        0x45t
        0x16t
        0x45t
        0xat
        0x50t
        0x15t
        0x71t
        0x0t
        0xbt
        0x0t
        0x44t
        0x5ct
        0x55t
        0x31t
        0x1ct
        0x15t
        0x53t
        0x7ct
        0x58t
        0x1t
        0xct
        0x6t
        0x57t
        0x41t
        0x59t
        0x17t
        0x5ft
        0x45t
    .end array-data
.end method

.method public static convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToClass(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convertToPlainJavaTypes(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static deserializeToClass(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_6

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9ee4e9"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x45

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "52f97c"

    const-wide v4, 0x41db5ff9d9000000L    # 1.837098852E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x3e

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "3c809b"

    const v3, -0x316f271e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7at
        0x9t
        0x4t
        0x47t
        0x16t
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x5at
        0x7t
        0x4at
        0x17t
        0x4t
        0x50t
        0x5ct
        0x3t
        0x4bt
        0x5et
        0x0t
        0x15t
        0x46t
        0x1ft
        0x49t
        0x52t
        0x43t
        0x45t
        0x53t
        0x14t
        0x58t
        0x5at
        0x6t
        0x41t
        0x57t
        0x14t
        0x4at
        0x1bt
        0x43t
        0x45t
        0x5et
        0x3t
        0x58t
        0x44t
        0x6t
        0x15t
        0x47t
        0x15t
        0x5ct
        0x17t
        0x24t
        0x50t
        0x5ct
        0x3t
        0x4bt
        0x5et
        0x0t
        0x61t
        0x4bt
        0x16t
        0x5ct
        0x7et
        0xdt
        0x51t
        0x5bt
        0x5t
        0x58t
        0x43t
        0xct
        0x47t
        0x12t
        0xft
        0x57t
        0x44t
        0x17t
        0x50t
        0x53t
        0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x70t
        0xct
        0x56t
        0x46t
        0x5ct
        0x10t
        0x47t
        0xat
        0x56t
        0x57t
        0x19t
        0x16t
        0x5ct
        0x43t
        0x79t
        0x42t
        0x4bt
        0x3t
        0x4at
        0x10t
        0x18t
        0x59t
        0x4at
        0x42t
        0x5dt
        0xct
        0x4ct
        0x10t
        0x4at
        0x17t
        0x43t
        0x13t
        0x57t
        0x42t
        0x4dt
        0x7t
        0x57t
        0x4ft
        0x18t
        0x40t
        0x55t
        0x7t
        0x52t
        0x10t
        0x5dt
        0x10t
        0x4ct
        0x11t
        0x56t
        0x43t
        0x74t
        0x59t
        0x4at
        0x16t
        0x40t
        0xat
        0x56t
        0x43t
        0x4dt
        0x7t
        0x52t
        0x7t
    .end array-data
.end method

.method private static deserializeToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "84ec8d"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "a5896c"

    const v4, 0x4e988470

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [B

    const/16 v3, 0x41

    aput-byte v3, v2, v6

    const-string v3, "c7d49a"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "e626c3"

    const-wide v4, 0x41b868f150000000L    # 4.09530704E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "c55d51"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7bt
        0x5bt
        0x10t
        0xft
        0x5ct
        0x44t
        0x56t
        0x5bt
        0x11t
        0x43t
        0x5et
        0xdt
        0x56t
        0x50t
        0x45t
        0x6t
        0x56t
        0x11t
        0x55t
        0x14t
        0x13t
        0x2t
        0x54t
        0x11t
        0x5dt
        0x14t
        0xat
        0x5t
        0x18t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x53t
        0x57t
        0x4bt
        0x16t
        0x15t
        0x0t
        0x59t
        0x4dt
        0x5ct
        0x16t
        0x41t
    .end array-data

    :array_2
    .array-data 1
        0x20t
        0x4et
        0x42t
        0x53t
        0x0t
        0x47t
        0x0t
        0x52t
        0x12t
        0x57t
        0x43t
        0x60t
        0x11t
        0x44t
        0x5bt
        0x58t
        0x4t
        0x13t
        0x12t
        0x5et
        0x5bt
        0x5at
        0x6t
        0x13t
        0x1t
        0x53t
        0x41t
        0x53t
        0x11t
        0x5at
        0x4t
        0x5at
        0x5bt
        0x4ct
        0xat
        0x5dt
        0x2t
        0x16t
        0x46t
        0x59t
        0x43t
        0x56t
        0xbt
        0x43t
        0x5ft
        0x16t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x43t
        0x57t
        0x40t
        0x10t
        0x15t
        0x56t
        0xct
        0x41t
        0x15t
        0x5t
        0x15t
    .end array-data
.end method

.method private static deserializeToParameterizedType(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v1, v0, v1

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "8a6744"

    const v4, -0x32c909dc

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->expectMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x46

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "99e523"

    const-wide/32 v6, -0x5744b013

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->expectMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->access$000(Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    array-length v0, v6

    array-length v7, v5

    if-ne v0, v7, :cond_7

    move v0, v1

    :goto_3
    array-length v1, v5

    if-ge v0, v1, :cond_6

    aget-object v1, v5, v0

    aget-object v7, v6, v0

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v2, v4}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->deserialize(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "f88097"

    const v3, 0x4e38af64    # 7.7462554E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x37

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "2ce944"

    const/16 v3, -0x2a39

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7dt
        0x19t
        0x46t
        0x52t
        0x57t
        0x40t
        0x5dt
        0x5t
        0x16t
        0x56t
        0x14t
        0x78t
        0x51t
        0x12t
        0x42t
        0x17t
        0x43t
        0x5ct
        0x51t
        0xdt
        0x53t
        0x17t
        0x50t
        0x51t
        0x4bt
        0x4t
        0x44t
        0x5et
        0x55t
        0x58t
        0x51t
        0x1bt
        0x5ft
        0x59t
        0x53t
        0x18t
        0x18t
        0x3t
        0x43t
        0x43t
        0x14t
        0x53t
        0x57t
        0x15t
        0x16t
        0x56t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x76t
        0x57t
        0x9t
        0x4ct
        0x12t
        0x7et
        0x58t
        0x49t
        0x16t
        0x15t
        0x45t
        0x5at
        0x4dt
        0x51t
        0x45t
        0x46t
        0x46t
        0x41t
        0x50t
        0x57t
        0x2t
        0x15t
        0x59t
        0x56t
        0x40t
        0x4at
        0x45t
        0x54t
        0x40t
        0x56t
        0x19t
        0x4at
        0x10t
        0x45t
        0x42t
        0x5ct
        0x4bt
        0x4dt
        0x0t
        0x51t
        0x1et
        0x13t
        0x5bt
        0x4ct
        0x11t
        0x15t
        0x54t
        0x5ct
        0x4ct
        0x57t
        0x1t
        0x15t
        0x7ft
        0x52t
        0x49t
        0x19t
        0x12t
        0x5ct
        0x46t
        0x5bt
        0x19t
        0x52t
        0x0t
        0x4ct
        0x12t
        0x47t
        0x40t
        0x49t
        0x0t
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2bt
        0x51t
        0x4bt
        0x5dt
        0x58t
        0x43t
        0x5t
        0x50t
        0x5dt
        0x54t
        0x19t
        0x5bt
        0x3t
        0x56t
        0x5ft
        0x44t
        0x51t
        0x44t
        0x46t
        0x5et
        0x57t
        0x42t
        0x19t
        0x43t
        0x1ft
        0x48t
        0x5dt
        0x10t
        0x4ft
        0x56t
        0x14t
        0x51t
        0x59t
        0x52t
        0x55t
        0x52t
        0x15t
        0x18t
        0x59t
        0x5et
        0x5dt
        0x17t
        0x7t
        0x5bt
        0x4ct
        0x45t
        0x58t
        0x5bt
        0x46t
        0x4ct
        0x41t
        0x40t
        0x5ct
        0x44t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x71t
        0xct
        0x9t
        0x55t
        0x51t
        0x57t
        0x46t
        0xat
        0xat
        0x57t
        0x47t
        0x14t
        0x53t
        0x11t
        0x0t
        0x19t
        0x5at
        0x5bt
        0x46t
        0x43t
        0x16t
        0x4ct
        0x44t
        0x44t
        0x5dt
        0x11t
        0x11t
        0x5ct
        0x50t
        0x18t
        0x12t
        0x13t
        0x9t
        0x5ct
        0x55t
        0x47t
        0x57t
        0x43t
        0x10t
        0x4at
        0x51t
        0x14t
        0x7et
        0xat
        0x16t
        0x4dt
        0x47t
        0x14t
        0x5bt
        0xdt
        0x16t
        0x4dt
        0x51t
        0x55t
        0x56t
    .end array-data
.end method

.method private static deserializeToPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1e9926"

    const v3, 0x4d989e5f    # 3.2006448E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x0t
        0x4at
        0x5ct
        0x40t
        0x5ft
        0x50t
        0x9t
        0x50t
        0x43t
        0x5bt
        0x58t
        0x56t
        0x45t
        0x4ft
        0x58t
        0x5et
        0x43t
        0x54t
        0x16t
        0x19t
        0x4dt
        0x5dt
        0x16t
        0x14t
        0x16t
        0x19t
        0x50t
        0x41t
        0x16t
        0x5ft
        0xat
        0x4dt
        0x19t
        0x41t
        0x43t
        0x41t
        0x15t
        0x56t
        0x4bt
        0x46t
        0x53t
        0x55t
    .end array-data
.end method

.method private static deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/16 v7, 0x16

    const/16 v4, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToParameterizedType(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToClass(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v0, v3

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "4dff85"

    const/16 v6, -0x1cbe

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v4, v7, [B

    fill-array-data v4, :array_1

    const-string v5, "8ad03c"

    const/16 v6, 0x4683

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    aget-object v0, v3, v2

    invoke-static {p0, v0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v3, 0x36

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "111235"

    invoke-static {v3, v4, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_6

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "7b6277"

    const/16 v6, -0x3059

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v7, [B

    fill-array-data v4, :array_4

    const-string v5, "c2daf5"

    const/16 v6, -0x379e

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v2, 0x3a

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "30d022"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "02d850"

    const-wide/32 v4, 0x50c8e258

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x63t
        0xdt
        0xat
        0x2t
        0x5bt
        0x54t
        0x46t
        0x0t
        0x46t
        0x12t
        0x41t
        0x45t
        0x51t
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x18t
        0x8t
        0x17t
        0x10t
        0x5dt
        0xct
        0x4ct
        0x41t
        0x11t
        0x40t
        0x43t
        0x6t
        0x4at
        0x41t
        0x6t
        0x5ft
        0x46t
        0xdt
        0x5ct
        0x4t
        0x0t
        0x1et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x76t
        0x54t
        0x5ft
        0x57t
        0x41t
        0x5ct
        0x52t
        0x11t
        0x5dt
        0x5dt
        0x44t
        0x50t
        0x43t
        0x1ct
        0x53t
        0x5dt
        0x46t
        0x5bt
        0x55t
        0x54t
        0x55t
        0x12t
        0x44t
        0x5ct
        0x5dt
        0x55t
        0x52t
        0x53t
        0x41t
        0x51t
        0x11t
        0x45t
        0x48t
        0x42t
        0x56t
        0x46t
        0x11t
        0x50t
        0x43t
        0x57t
        0x13t
        0x5bt
        0x5et
        0x45t
        0x11t
        0x41t
        0x46t
        0x45t
        0x41t
        0x5et
        0x43t
        0x46t
        0x56t
        0x51t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x60t
        0xbt
        0x5at
        0x56t
        0x54t
        0x56t
        0x45t
        0x6t
        0x16t
        0x46t
        0x4et
        0x47t
        0x52t
        0x42t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x43t
        0x5bt
        0x17t
        0x41t
        0x8t
        0x5at
        0x17t
        0x12t
        0x11t
        0x11t
        0x16t
        0x50t
        0x11t
        0x12t
        0x6t
        0xet
        0x13t
        0x5bt
        0x7t
        0x57t
        0x0t
        0x4ft
    .end array-data

    nop

    :array_5
    .array-data 1
        0x74t
        0x55t
        0xat
        0x55t
        0x40t
        0x5bt
        0x50t
        0x10t
        0x25t
        0x42t
        0x40t
        0x53t
        0x4at
        0x43t
        0x44t
        0x51t
        0x40t
        0x57t
        0x13t
        0x5et
        0xbt
        0x44t
        0x12t
        0x41t
        0x46t
        0x40t
        0x14t
        0x5ft
        0x40t
        0x46t
        0x56t
        0x54t
        0x48t
        0x10t
        0x42t
        0x5et
        0x56t
        0x51t
        0x17t
        0x55t
        0x12t
        0x47t
        0x40t
        0x55t
        0x44t
        0x7ct
        0x5bt
        0x41t
        0x47t
        0x43t
        0x44t
        0x59t
        0x5ct
        0x41t
        0x47t
        0x55t
        0x5t
        0x54t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x65t
        0x5ct
        0xft
        0x56t
        0x5at
        0x47t
        0x5et
        0x12t
        0x10t
        0x41t
        0x45t
        0x55t
        0x10t
        0x57t
        0xat
        0x5bt
        0x5at
        0x45t
        0x5et
        0x46t
        0x1t
        0x4at
        0x50t
        0x54t
        0xat
        0x12t
    .end array-data
.end method

.method private static expectMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ee3de1"

    const-wide v4, 0x41d20803e5400000L    # 1.210060693E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x20t
        0x1dt
        0x43t
        0x1t
        0x6t
        0x45t
        0x0t
        0x1t
        0x13t
        0x5t
        0x45t
        0x7ct
        0x4t
        0x15t
        0x13t
        0x13t
        0xdt
        0x58t
        0x9t
        0x0t
        0x13t
        0x0t
        0x0t
        0x42t
        0x0t
        0x17t
        0x5at
        0x5t
        0x9t
        0x58t
        0x1ft
        0xct
        0x5dt
        0x3t
        0x49t
        0x11t
        0x7t
        0x10t
        0x47t
        0x44t
        0x2t
        0x5et
        0x11t
        0x45t
        0x52t
        0x44t
    .end array-data
.end method

.method private static loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper",
            "<TT;>;"
        }
    .end annotation

    sget-object v1, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->mappers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_5

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_4

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v2, v2, v0

    if-nez v2, :cond_4

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x4e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "da5703"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_e

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_6

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1d4121"

    invoke-static {v1, v2, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object p0, v2

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_a

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    move-object p0, v0

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "0e6c6d"

    const-wide/32 v4, -0xc3914be

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_d

    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_c

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->serialize(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x3d

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "2397a7"

    const-wide/32 v4, 0x3744f6a0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "b17d34"

    const/16 v3, -0x67fd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2at
        0x14t
        0x58t
        0x55t
        0x55t
        0x41t
        0x17t
        0x41t
        0x5at
        0x51t
        0x10t
        0x47t
        0x1dt
        0x11t
        0x50t
        0x17t
        0x15t
        0x40t
        0x44t
        0x0t
        0x47t
        0x52t
        0x10t
        0x5dt
        0xbt
        0x15t
        0x15t
        0x44t
        0x45t
        0x43t
        0x14t
        0xet
        0x47t
        0x43t
        0x55t
        0x57t
        0x48t
        0x41t
        0x45t
        0x5bt
        0x55t
        0x52t
        0x17t
        0x4t
        0x15t
        0x42t
        0x43t
        0x56t
        0x44t
        0x0t
        0x5bt
        0x17t
        0x59t
        0x5dt
        0x10t
        0x4dt
        0x15t
        0x5bt
        0x5ft
        0x5dt
        0x3t
        0x4dt
        0x15t
        0x51t
        0x5ct
        0x5ct
        0x5t
        0x15t
        0x15t
        0x58t
        0x42t
        0x13t
        0x0t
        0xet
        0x40t
        0x55t
        0x5ct
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7ct
        0x5t
        0x44t
        0x42t
        0x12t
        0x46t
        0x58t
        0x10t
        0x5ct
        0x11t
        0x5ct
        0x5et
        0x5ft
        0x49t
        0x47t
        0x45t
        0x40t
        0x58t
        0x5ft
        0x3t
        0x14t
        0x5at
        0x57t
        0x48t
        0x42t
        0x44t
        0x55t
        0x43t
        0x57t
        0x11t
        0x5ft
        0xbt
        0x40t
        0x11t
        0x41t
        0x44t
        0x41t
        0x14t
        0x5bt
        0x43t
        0x46t
        0x54t
        0x55t
    .end array-data

    :array_2
    .array-data 1
        0x63t
        0x0t
        0x44t
        0xat
        0x57t
        0x8t
        0x59t
        0x1ft
        0x5ft
        0xdt
        0x51t
        0x44t
        0x73t
        0xat
        0x5at
        0xft
        0x53t
        0x7t
        0x44t
        0xct
        0x59t
        0xdt
        0x45t
        0x44t
        0x59t
        0x16t
        0x16t
        0xdt
        0x59t
        0x10t
        0x10t
        0x16t
        0x43t
        0x13t
        0x46t
        0xbt
        0x42t
        0x11t
        0x53t
        0x7t
        0x1at
        0x44t
        0x40t
        0x9t
        0x53t
        0x2t
        0x45t
        0x1t
        0x10t
        0x10t
        0x45t
        0x6t
        0x16t
        0x28t
        0x59t
        0x16t
        0x42t
        0x10t
        0x16t
        0xdt
        0x5et
        0x16t
        0x42t
        0x6t
        0x57t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x61t
        0x56t
        0x4bt
        0x5et
        0x0t
        0x5bt
        0x5bt
        0x49t
        0x50t
        0x59t
        0x6t
        0x17t
        0x73t
        0x41t
        0x4bt
        0x56t
        0x18t
        0x44t
        0x12t
        0x5at
        0x4at
        0x17t
        0xft
        0x58t
        0x46t
        0x13t
        0x4at
        0x42t
        0x11t
        0x47t
        0x5dt
        0x41t
        0x4dt
        0x52t
        0x5t
        0x1bt
        0x12t
        0x43t
        0x55t
        0x52t
        0x0t
        0x44t
        0x57t
        0x13t
        0x4ct
        0x44t
        0x4t
        0x17t
        0x7et
        0x5at
        0x4at
        0x43t
        0x12t
        0x17t
        0x5bt
        0x5dt
        0x4at
        0x43t
        0x4t
        0x56t
        0x56t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x21t
        0x59t
        0x56t
        0x16t
        0x52t
        0x57t
        0x16t
        0x54t
        0x45t
        0x17t
        0x13t
        0x55t
        0x10t
        0x54t
        0x17t
        0xat
        0x5ct
        0x40t
        0x42t
        0x42t
        0x42t
        0x14t
        0x43t
        0x5bt
        0x10t
        0x45t
        0x52t
        0x0t
        0x1ft
        0x14t
        0x12t
        0x5dt
        0x52t
        0x5t
        0x40t
        0x51t
        0x42t
        0x44t
        0x44t
        0x1t
        0x13t
        0x67t
        0x16t
        0x43t
        0x5et
        0xat
        0x54t
        0x47t
    .end array-data
.end method
