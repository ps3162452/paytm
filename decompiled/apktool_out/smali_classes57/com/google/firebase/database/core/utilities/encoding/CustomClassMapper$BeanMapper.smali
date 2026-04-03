.class Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BeanMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final getters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final setters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final throwOnUnknownProperties:Z

.field private final warnOnUnknownProperties:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    const-class v0, Lcom/google/firebase/database/ThrowOnExtraProperties;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->throwOnUnknownProperties:Z

    const-class v0, Lcom/google/firebase/database/IgnoreExtraProperties;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->warnOnUnknownProperties:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->shouldIncludeGetter(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->addProperty(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v6, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "38cd66"

    const v5, 0x4eb9c96e

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->shouldIncludeField(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->addProperty(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move-object v1, p1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_8

    aget-object v6, v4, v3

    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->shouldIncludeSetter(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_6

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_6
    invoke-static {v6, v0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->isSetterOverride(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x27

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "980108"

    const-wide v8, 0x41dd442c61c00000L    # 1.964028295E9

    invoke-static {v4, v5, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x11

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "ebfb1a"

    const-wide v6, -0x3e4f608e4b000000L    # -2.78884789E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "914f74"

    const-wide v6, -0x3e399888e4000000L    # -7.51758904E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v10, [B

    const/16 v4, 0x1f

    aput-byte v4, v3, v2

    const-string v2, "648a8b"

    const-wide v4, -0x3e21a4f8c7400000L    # -2.037128419E9

    invoke-static {v3, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "e89b2e"

    invoke-static {v3, v4, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_5
    if-ge v0, v4, :cond_a

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v7, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_b

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2a

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "866eff"

    const/16 v4, -0x269b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

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

    :cond_d
    move-object v1, v0

    goto/16 :goto_3

    :array_0
    .array-data 1
        0x75t
        0x57t
        0x16t
        0xat
        0x52t
        0x16t
        0x50t
        0x57t
        0xdt
        0x2t
        0x5at
        0x5ft
        0x50t
        0x4ct
        0xat
        0xat
        0x51t
        0x16t
        0x54t
        0x5dt
        0x17t
        0x10t
        0x53t
        0x44t
        0x40t
        0x18t
        0x5t
        0xbt
        0x44t
        0x16t
        0x5dt
        0x59t
        0xet
        0x1t
        0xct
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x7ft
        0x57t
        0x45t
        0x5ft
        0x54t
        0x18t
        0x58t
        0x18t
        0x53t
        0x5et
        0x5et
        0x5et
        0x55t
        0x51t
        0x53t
        0x45t
        0x59t
        0x56t
        0x5et
        0x18t
        0x43t
        0x54t
        0x44t
        0x4ct
        0x5ct
        0x4at
        0x43t
        0x11t
        0x47t
        0x51t
        0x4dt
        0x50t
        0x10t
        0x5ft
        0x51t
        0x55t
        0x5ct
        0x2t
        0x10t
    .end array-data

    :array_2
    .array-data 1
        0x45t
        0x4at
        0x5t
        0xdt
        0x5ft
        0x7t
        0x9t
        0xbt
        0x5t
        0x16t
        0x42t
        0x41t
        0x12t
        0xbt
        0x12t
        0xat
        0x11t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x19t
        0x55t
        0x51t
        0x0t
        0x5et
        0x5at
        0x5ct
        0x55t
        0x14t
        0x9t
        0x59t
        0x14t
    .end array-data

    :array_4
    .array-data 1
        0x23t
        0x57t
        0x4ct
        0xct
        0x56t
        0x45t
        0x16t
        0x5dt
        0x4dt
        0x16t
        0x57t
        0x17t
        0x45t
        0x4ft
        0x50t
        0x16t
        0x5at
        0x45t
        0xct
        0x56t
        0x4ft
        0x3t
        0x5et
        0xct
        0x1t
        0x18t
        0x5at
        0x3t
        0x41t
        0x0t
        0x48t
        0x4bt
        0x5ct
        0xct
        0x41t
        0xct
        0x11t
        0x51t
        0x4ft
        0x7t
        0x12t
        0xbt
        0x4t
        0x55t
        0x5ct
        0x58t
        0x12t
    .end array-data

    :array_5
    .array-data 1
        0x76t
        0x59t
        0x16t
        0x15t
        0x14t
        0x9t
        0x48t
        0x53t
        0x44t
        0x11t
        0xft
        0x3t
        0x4bt
        0x16t
        0x42t
        0xat
        0x46t
        0x15t
        0x5dt
        0x44t
        0x5ft
        0x4t
        0xat
        0xft
        0x42t
        0x53t
        0x16t
        0x3t
        0x9t
        0x13t
        0x56t
        0x52t
        0x16t
        0xat
        0x8t
        0x46t
        0x5bt
        0x5at
        0x57t
        0x16t
        0x15t
        0x46t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method private addProperty(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4c

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a2ce67"

    const-wide/32 v4, -0x5b619c3b

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x27t
        0x5dt
        0x16t
        0xbt
        0x52t
        0x17t
        0x15t
        0x45t
        0xct
        0x45t
        0x51t
        0x52t
        0x15t
        0x46t
        0x6t
        0x17t
        0x45t
        0x17t
        0xet
        0x40t
        0x43t
        0x3t
        0x5ft
        0x52t
        0xdt
        0x56t
        0x10t
        0x45t
        0x41t
        0x5et
        0x15t
        0x5at
        0x43t
        0x6t
        0x59t
        0x59t
        0x7t
        0x5et
        0xat
        0x6t
        0x42t
        0x5et
        0xft
        0x55t
        0x43t
        0x6t
        0x57t
        0x44t
        0x4t
        0x12t
        0x10t
        0x0t
        0x58t
        0x44t
        0x8t
        0x46t
        0xat
        0x13t
        0x5ft
        0x43t
        0x18t
        0x12t
        0x5t
        0xat
        0x44t
        0x17t
        0x11t
        0x40t
        0xct
        0x15t
        0x53t
        0x45t
        0x15t
        0x4bt
        0x59t
        0x45t
    .end array-data
.end method

.method private static annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/google/firebase/database/PropertyName;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/google/firebase/database/PropertyName;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/PropertyName;

    invoke-interface {v0}, Lcom/google/firebase/database/PropertyName;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSetterOverride(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 10

    const/16 v9, 0x1e

    const/16 v8, 0x19

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v3, 0x23

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "e04f37"

    const-wide v6, 0x41b89327eb000000L    # 4.12297195E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-array v3, v8, [B

    fill-array-data v3, :array_1

    const-string v4, "2a1808"

    const v5, 0x4efd4e69

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-array v3, v8, [B

    fill-array-data v3, :array_2

    const-string v4, "282387"

    const-wide/32 v6, -0x73ce94e2

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v0, v3

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    new-array v5, v9, [B

    fill-array-data v5, :array_3

    const-string v6, "852353"

    invoke-static {v5, v6, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    array-length v0, v4

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    new-array v5, v9, [B

    fill-array-data v5, :array_4

    const-string v6, "fb3563"

    const v7, 0x4e94d981

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v3, v2

    aget-object v3, v4, v2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x20t
        0x48t
        0x44t
        0x3t
        0x50t
        0x43t
        0x0t
        0x54t
        0x14t
        0x9t
        0x45t
        0x52t
        0x17t
        0x42t
        0x5dt
        0x2t
        0x56t
        0x17t
        0x3t
        0x42t
        0x5bt
        0xbt
        0x13t
        0x56t
        0x45t
        0x52t
        0x55t
        0x15t
        0x56t
        0x17t
        0x6t
        0x5ct
        0x55t
        0x15t
        0x40t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x19t
        0x41t
        0x5dt
        0x53t
        0x4ct
        0x57t
        0x5t
        0x11t
        0x4et
        0x5ft
        0x51t
        0x56t
        0x41t
        0x43t
        0x5dt
        0x44t
        0x4dt
        0x40t
        0xft
        0x11t
        0x4ct
        0x49t
        0x48t
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x77t
        0x40t
        0x42t
        0x56t
        0x5bt
        0x43t
        0x57t
        0x5ct
        0x12t
        0x45t
        0x57t
        0x5et
        0x56t
        0x18t
        0x40t
        0x56t
        0x4ct
        0x42t
        0x40t
        0x56t
        0x12t
        0x47t
        0x41t
        0x47t
        0x57t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7dt
        0x4dt
        0x42t
        0x56t
        0x56t
        0x47t
        0x5dt
        0x51t
        0x12t
        0x56t
        0x4dt
        0x52t
        0x5bt
        0x41t
        0x5et
        0x4at
        0x15t
        0x5ct
        0x56t
        0x50t
        0x12t
        0x43t
        0x54t
        0x41t
        0x59t
        0x58t
        0x57t
        0x47t
        0x50t
        0x41t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x23t
        0x1at
        0x43t
        0x50t
        0x55t
        0x47t
        0x3t
        0x6t
        0x13t
        0x50t
        0x4et
        0x52t
        0x5t
        0x16t
        0x5ft
        0x4ct
        0x16t
        0x5ct
        0x8t
        0x7t
        0x13t
        0x45t
        0x57t
        0x41t
        0x7t
        0xft
        0x56t
        0x41t
        0x53t
        0x41t
    .end array-data
.end method

.method private static propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->serializedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "1cc18f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p1

    goto :goto_0

    :array_0
    .array-data 1
        0x72t
        0xct
        0x16t
        0x5dt
        0x5ct
        0x46t
        0x5ft
        0xct
        0x17t
        0x11t
        0x4at
        0x3t
        0x42t
        0xct
        0xft
        0x47t
        0x5dt
        0x46t
        0x45t
        0x1at
        0x13t
        0x54t
        0x18t
    .end array-data
.end method

.method private static serializedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x3

    const/4 v2, 0x0

    new-array v4, v5, [Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "a4814b"

    const v3, 0x4e546a84    # 8.909376E8f

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    const-string v1, "78a6be"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "d3bc72"

    const v3, -0x311caca9

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v1, 0x0

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move v0, v2

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-char v2, v1, v0

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-char v2, v1, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x20

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "1780ce"

    invoke-static {v3, v4, v7, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :array_0
    .array-data 1
        0x6t
        0x51t
        0x4ct
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x5dt
        0x15t
    .end array-data

    :array_2
    .array-data 1
        0xdt
        0x40t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x64t
        0x59t
        0x53t
        0x5et
        0xct
        0x12t
        0x5ft
        0x17t
        0x7at
        0x55t
        0x2t
        0xbt
        0x11t
        0x47t
        0x4at
        0x55t
        0x5t
        0xct
        0x49t
        0x17t
        0x5et
        0x5ft
        0x11t
        0x45t
        0x5ct
        0x52t
        0x4ct
        0x58t
        0xct
        0x1t
        0xbt
        0x17t
    .end array-data
.end method

.method private static shouldIncludeField(Ljava/lang/reflect/Field;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/google/firebase/database/Exclude;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static shouldIncludeGetter(Ljava/lang/reflect/Method;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "49a414"

    const-wide v6, 0x41764ebe80000000L    # 2.3391208E7

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "23c774"

    invoke-static {v3, v4, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    const-class v2, Lcom/google/firebase/database/Exclude;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x53t
        0x5ct
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0x40t
    .end array-data
.end method

.method private static shouldIncludeSetter(Ljava/lang/reflect/Method;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "b5f216"

    const v5, -0x31a6f412

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v1, :cond_0

    const-class v2, Lcom/google/firebase/database/Exclude;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x11t
        0x50t
        0x12t
    .end array-data
.end method


# virtual methods
.method public deserialize(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->deserialize(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;",
            "Ljava/lang/reflect/Type;",
            ">;)TT;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v8, :cond_1

    aget-object v4, v4, v7

    invoke-direct {p0, v4, p2}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->access$100(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2f518a"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->access$100(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    :try_start_2
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x14

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "4492c9"

    const/16 v6, 0x5a96

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "4c6df1"

    const v6, -0x3124dc59

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v4, "4153e9"

    const v5, 0x4e0698e6    # 5.645418E8f

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-boolean v1, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->throwOnUnknownProperties:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->warnOnUnknownProperties:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v4, "ad1b20"

    invoke-static {v1, v4, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "630de8"

    const-wide v4, 0x41d4a1b314000000L    # 1.38456584E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x75

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "78857b"

    const-wide/32 v4, -0x1f0ad4ec

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-object v2

    :array_0
    .array-data 1
        0x61t
        0x3t
        0x41t
        0x45t
        0x5dt
        0x13t
        0x12t
        0x2t
        0x5at
        0x54t
        0x4bt
        0x41t
        0x5ct
        0x9t
        0x41t
        0x11t
        0x50t
        0x0t
        0x44t
        0x3t
        0x15t
        0x54t
        0x40t
        0x0t
        0x51t
        0x12t
        0x59t
        0x48t
        0x18t
        0xet
        0x5ct
        0x3t
        0x15t
        0x41t
        0x59t
        0x13t
        0x53t
        0xbt
        0x50t
        0x45t
        0x5dt
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7at
        0x5bt
        0x19t
        0x41t
        0x6t
        0x4dt
        0x40t
        0x51t
        0x4bt
        0x1dt
        0x5t
        0x50t
        0x51t
        0x58t
        0x5dt
        0x12t
        0x5t
        0x56t
        0x46t
        0x14t
    .end array-data

    :array_2
    .array-data 1
        0x14t
        0x5t
        0x59t
        0x11t
        0x8t
        0x55t
        0x14t
        0xct
        0x58t
        0x44t
        0x5t
        0x5dt
        0x55t
        0x10t
        0x45t
        0x44t
    .end array-data

    :array_3
    .array-data 1
        0x14t
        0x19t
        0x53t
        0x5at
        0x0t
        0x55t
        0x50t
        0x42t
        0x1at
        0x40t
        0x0t
        0x4dt
        0x40t
        0x54t
        0x47t
        0x40t
        0x45t
        0x58t
        0x46t
        0x54t
        0x15t
        0x50t
        0x4t
        0x4at
        0x51t
        0x11t
        0x46t
        0x56t
        0xbt
        0x4at
        0x5dt
        0x45t
        0x5ct
        0x45t
        0x0t
        0x18t
        0x1dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x22t
        0x8t
        0x50t
        0x11t
        0x41t
        0x7dt
        0x0t
        0x14t
        0x41t
        0x7t
        0x40t
    .end array-data

    :array_5
    .array-data 1
        0x75t
        0x5ft
        0x51t
        0x17t
        0x16t
        0x18t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x17t
        0x5ct
        0x57t
        0x50t
        0x44t
        0x42t
        0x59t
        0x57t
        0x4ct
        0x15t
        0x53t
        0x7t
        0x51t
        0x51t
        0x56t
        0x50t
        0x17t
        0x3t
        0x17t
        0x56t
        0x57t
        0x18t
        0x56t
        0x10t
        0x50t
        0x4dt
        0x55t
        0x50t
        0x59t
        0x16t
        0x17t
        0x5bt
        0x57t
        0x5bt
        0x44t
        0x16t
        0x45t
        0x4dt
        0x5bt
        0x41t
        0x58t
        0x10t
        0x19t
        0x18t
        0x71t
        0x53t
        0x17t
        0x1bt
        0x58t
        0x4dt
        0x18t
        0x54t
        0x45t
        0x7t
        0x17t
        0x4dt
        0x4bt
        0x5ct
        0x59t
        0x5t
        0x17t
        0x68t
        0x4at
        0x5at
        0x70t
        0x17t
        0x56t
        0x4at
        0x5ct
        0x19t
        0x17t
        0xft
        0x56t
        0x53t
        0x5dt
        0x15t
        0x44t
        0x17t
        0x45t
        0x5dt
        0x18t
        0x41t
        0x5ft
        0x7t
        0x44t
        0x5dt
        0x18t
        0x56t
        0x58t
        0xct
        0x44t
        0x4ct
        0x4at
        0x40t
        0x54t
        0x16t
        0x58t
        0x4at
        0x4bt
        0x15t
        0x56t
        0x10t
        0x52t
        0x18t
        0x56t
        0x5at
        0x43t
        0x42t
        0x44t
        0x4ct
        0x4at
        0x5ct
        0x47t
        0x12t
        0x52t
        0x5ct
        0x16t
    .end array-data
.end method

.method public serialize(Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x26

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "6b5356"

    const-wide v6, 0x41d949d2b8c00000L    # 1.697073891E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "14ab66"

    const/16 v4, -0x20c9

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "f1f374"

    const/16 v4, 0x2854

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v2

    nop

    :array_0
    .array-data 1
        0x74t
        0x7t
        0x54t
        0x5dt
        0x15t
        0x46t
        0x44t
        0xdt
        0x45t
        0x56t
        0x47t
        0x42t
        0x4ft
        0x42t
        0x42t
        0x5at
        0x41t
        0x5et
        0x59t
        0x17t
        0x41t
        0x13t
        0x53t
        0x5ft
        0x53t
        0xet
        0x51t
        0x13t
        0x5at
        0x44t
        0x16t
        0x5t
        0x50t
        0x47t
        0x41t
        0x53t
        0x44t
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x72t
        0x55t
        0xft
        0x45t
        0x42t
        0x16t
        0x42t
        0x51t
        0x13t
        0xbt
        0x57t
        0x5at
        0x58t
        0x4et
        0x4t
        0x42t
        0x59t
        0x54t
        0x5bt
        0x51t
        0x2t
        0x16t
        0x16t
        0x59t
        0x57t
        0x14t
        0x2t
        0xet
        0x57t
        0x45t
        0x42t
        0x14t
    .end array-data

    :array_2
    .array-data 1
        0x46t
        0x46t
        0xft
        0x47t
        0x5ft
        0x14t
        0x24t
        0x54t
        0x7t
        0x5dt
        0x7at
        0x55t
        0x16t
        0x41t
        0x3t
        0x41t
        0x17t
        0x52t
        0x9t
        0x43t
        0x46t
        0x50t
        0x5bt
        0x55t
        0x15t
        0x42t
        0x46t
    .end array-data
.end method
