.class Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;
.super Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/reflect/ReflectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordSupportedHelper"
.end annotation


# instance fields
.field private final getName:Ljava/lang/reflect/Method;

.field private final getRecordComponents:Ljava/lang/reflect/Method;

.field private final getType:Ljava/lang/reflect/Method;

.field private final isRecord:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;-><init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V

    const-class v0, Ljava/lang/Class;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "07344f"

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->isRecord:Ljava/lang/reflect/Method;

    const-class v0, Ljava/lang/Class;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "707e8f"

    const v3, 0x4ea58b9b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getRecordComponents:Ljava/lang/reflect/Method;

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "0ddcdb"

    const v2, 0x4dbd3253    # 3.9677398E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v8, [B

    fill-array-data v1, :array_3

    const-string v2, "3c095d"

    const-wide/32 v4, 0x348e4e1f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getName:Ljava/lang/reflect/Method;

    new-array v1, v8, [B

    fill-array-data v1, :array_4

    const-string v2, "de31ac"

    invoke-static {v1, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getType:Ljava/lang/reflect/Method;

    return-void

    :array_0
    .array-data 1
        0x59t
        0x44t
        0x61t
        0x51t
        0x57t
        0x9t
        0x42t
        0x53t
    .end array-data

    :array_1
    .array-data 1
        0x50t
        0x55t
        0x43t
        0x37t
        0x5dt
        0x5t
        0x58t
        0x42t
        0x53t
        0x26t
        0x57t
        0xbt
        0x47t
        0x5ft
        0x59t
        0x0t
        0x56t
        0x12t
        0x44t
    .end array-data

    :array_2
    .array-data 1
        0x5at
        0x5t
        0x12t
        0x2t
        0x4at
        0xet
        0x51t
        0xat
        0x3t
        0x4dt
        0x16t
        0x7t
        0x56t
        0x8t
        0x1t
        0x0t
        0x10t
        0x4ct
        0x62t
        0x1t
        0x7t
        0xct
        0x16t
        0x6t
        0x73t
        0xbt
        0x9t
        0x13t
        0xbt
        0xct
        0x55t
        0xat
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x54t
        0x6t
        0x44t
        0x77t
        0x54t
        0x9t
        0x56t
    .end array-data

    :array_4
    .array-data 1
        0x3t
        0x0t
        0x47t
        0x65t
        0x18t
        0x13t
        0x1t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->access$300(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getCanonicalRecordConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getRecordComponents:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Class;

    move v2, v1

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getType:Ljava/lang/reflect/Method;

    aget-object v4, v0, v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->access$300(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method getRecordComponentNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getRecordComponents:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/String;

    move v2, v1

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getName:Ljava/lang/reflect/Method;

    aget-object v4, v0, v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->access$300(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v3
.end method

.method isRecord(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->isRecord:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->access$300(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
