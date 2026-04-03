.class public Lcom/google/gson/internal/reflect/ReflectionHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;,
        Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;,
        Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;
    }
.end annotation


# static fields
.field private static final RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;-><init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;

    invoke-direct {v0, v2}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;-><init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;
    .locals 1

    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->createExceptionForRecordReflectionException(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static appendExecutableParameters(Ljava/lang/reflect/AccessibleObject;Ljava/lang/StringBuilder;)V
    .locals 5

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "43622e"

    const v4, -0x31e4b827

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :array_0
    .array-data 1
        0x18t
        0x13t
    .end array-data
.end method

.method public static constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->appendExecutableParameters(Ljava/lang/reflect/AccessibleObject;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createExceptionForRecordReflectionException(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x112

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8b42af"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :array_0
    .array-data 1
        0x6dt
        0xct
        0x51t
        0x4at
        0x11t
        0x3t
        0x5bt
        0x16t
        0x51t
        0x56t
        0x41t
        0x34t
        0x5dt
        0x4t
        0x58t
        0x57t
        0x2t
        0x12t
        0x51t
        0x14t
        0x51t
        0x7dt
        0x11t
        0x3t
        0x4at
        0x3t
        0x40t
        0x5bt
        0xet
        0x8t
        0x7dt
        0x1at
        0x57t
        0x57t
        0x11t
        0x12t
        0x51t
        0xdt
        0x5at
        0x12t
        0xet
        0x5t
        0x5bt
        0x17t
        0x46t
        0x40t
        0x4t
        0x2t
        0x18t
        0x4at
        0x73t
        0x41t
        0xet
        0x8t
        0x18t
        0x50t
        0x1at
        0x3t
        0x50t
        0x48t
        0x8t
        0x4bt
        0x1at
        0x12t
        0x35t
        0x9t
        0x18t
        0x11t
        0x41t
        0x42t
        0x11t
        0x9t
        0x4at
        0x16t
        0x14t
        0x78t
        0x0t
        0x10t
        0x59t
        0x42t
        0x46t
        0x57t
        0x2t
        0x9t
        0x4at
        0x6t
        0x47t
        0x1et
        0x41t
        0x14t
        0x5dt
        0x4t
        0x58t
        0x57t
        0x2t
        0x12t
        0x51t
        0xdt
        0x5at
        0x12t
        0x8t
        0x15t
        0x18t
        0x17t
        0x40t
        0x5bt
        0xdt
        0xft
        0x42t
        0x7t
        0x50t
        0x12t
        0x15t
        0x9t
        0x18t
        0x10t
        0x51t
        0x53t
        0x5t
        0x46t
        0x57t
        0x17t
        0x40t
        0x12t
        0x8t
        0x8t
        0x5et
        0xdt
        0x46t
        0x5ft
        0x0t
        0x12t
        0x51t
        0xdt
        0x5at
        0x12t
        0x0t
        0x4t
        0x57t
        0x17t
        0x40t
        0x12t
        0x13t
        0x3t
        0x5bt
        0xdt
        0x46t
        0x56t
        0x12t
        0x48t
        0x18t
        0x23t
        0x58t
        0x5et
        0x41t
        0x12t
        0x50t
        0x7t
        0x47t
        0x57t
        0x41t
        0xft
        0x56t
        0x14t
        0x5bt
        0x51t
        0x0t
        0x12t
        0x51t
        0xdt
        0x5at
        0x41t
        0x41t
        0xet
        0x59t
        0x12t
        0x44t
        0x57t
        0xft
        0x15t
        0x18t
        0x3t
        0x52t
        0x46t
        0x4t
        0x14t
        0x18t
        0xbt
        0x40t
        0x12t
        0x8t
        0x15t
        0x18t
        0x7t
        0x47t
        0x46t
        0x0t
        0x4t
        0x54t
        0xbt
        0x47t
        0x5at
        0x4t
        0x2t
        0x18t
        0x16t
        0x5ct
        0x53t
        0x15t
        0x46t
        0x4at
        0x7t
        0x57t
        0x5dt
        0x13t
        0x2t
        0x4bt
        0x42t
        0x51t
        0x4at
        0x8t
        0x15t
        0x4ct
        0x42t
        0x5dt
        0x5ct
        0x41t
        0x12t
        0x50t
        0x7t
        0x14t
        0x78t
        0x37t
        0x2bt
        0x16t
        0x42t
        0x60t
        0x5at
        0x8t
        0x15t
        0x18t
        0x7t
        0x4ct
        0x51t
        0x4t
        0x16t
        0x4ct
        0xbt
        0x5bt
        0x5ct
        0x41t
        0xft
        0x4bt
        0x42t
        0x41t
        0x5ct
        0x4t
        0x1et
        0x48t
        0x7t
        0x57t
        0x46t
        0x4t
        0x2t
        0x18t
        0x0t
        0x51t
        0x5at
        0x0t
        0x10t
        0x51t
        0xdt
        0x46t
        0x1ct
    .end array-data
.end method

.method public static createExceptionForUnexpectedIllegalAccess(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0xd8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3dbd68"

    const/16 v3, -0x38db

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0xat
        0x7t
        0x1ct
        0x46t
        0x5dt
        0x50t
        0x10t
        0x7t
        0x0t
        0x16t
        0x71t
        0x5ft
        0x8t
        0x7t
        0x3t
        0x57t
        0x54t
        0x72t
        0x7t
        0x1t
        0x1t
        0x45t
        0x4bt
        0x76t
        0x1ct
        0x1t
        0x1t
        0x46t
        0x4ct
        0x5at
        0xbt
        0xct
        0x44t
        0x59t
        0x5bt
        0x50t
        0x11t
        0x10t
        0x16t
        0x53t
        0x5ct
        0x13t
        0x4ct
        0x25t
        0x17t
        0x59t
        0x56t
        0x13t
        0x56t
        0x4ct
        0x55t
        0x7t
        0x16t
        0x3t
        0x4dt
        0x4ct
        0x44t
        0x75t
        0x5dt
        0x41t
        0x10t
        0x3t
        0xdt
        0x58t
        0x18t
        0x61t
        0x1t
        0x4t
        0x8t
        0x53t
        0x5bt
        0x47t
        0xdt
        0xdt
        0xat
        0x77t
        0x5bt
        0x50t
        0x1t
        0x11t
        0x17t
        0x70t
        0x51t
        0x5ft
        0x10t
        0x7t
        0x16t
        0x16t
        0x5et
        0x56t
        0x5t
        0x16t
        0x11t
        0x44t
        0x5dt
        0x40t
        0x44t
        0x10t
        0x1t
        0x47t
        0x4dt
        0x5at
        0x16t
        0x7t
        0x44t
        0x7ct
        0x59t
        0x45t
        0x5t
        0x42t
        0x5at
        0xbt
        0x18t
        0xat
        0x44t
        0x16t
        0xbt
        0x16t
        0x4ft
        0x5ct
        0x16t
        0x9t
        0x44t
        0x55t
        0x57t
        0x41t
        0x16t
        0x7t
        0x7t
        0x42t
        0x54t
        0x4at
        0x4at
        0x42t
        0x2dt
        0x50t
        0x18t
        0x4at
        0xbt
        0x17t
        0x44t
        0x57t
        0x4at
        0x56t
        0x44t
        0xct
        0xbt
        0x42t
        0x18t
        0x46t
        0x17t
        0xbt
        0xat
        0x51t
        0x18t
        0x61t
        0x1t
        0x4t
        0x8t
        0x53t
        0x5bt
        0x47t
        0xdt
        0xdt
        0xat
        0x77t
        0x5bt
        0x50t
        0x1t
        0x11t
        0x17t
        0x70t
        0x51t
        0x5ft
        0x10t
        0x7t
        0x16t
        0x1at
        0x18t
        0x41t
        0x1t
        0x12t
        0xbt
        0x44t
        0x4ct
        0x13t
        0x10t
        0xat
        0xdt
        0x45t
        0x18t
        0x47t
        0xbt
        0x42t
        0x10t
        0x5et
        0x5dt
        0x13t
        0x23t
        0x11t
        0xbt
        0x58t
        0x18t
        0x5et
        0x5t
        0xbt
        0xat
        0x42t
        0x59t
        0x5at
        0xat
        0x7t
        0x16t
        0x45t
        0x16t
    .end array-data
.end method

.method public static fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    const-string v2, "58cd2f"

    const-wide/32 v4, -0x415bf7e5

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    instance-of v0, p0, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2f0695"

    const/16 v3, 0x24c2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/reflect/Field;

    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [B

    const/16 v2, 0x11

    aput-byte v2, v1, v6

    const-string v2, "693dea"

    const/16 v3, -0x7b2f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->appendExecutableParameters(Ljava/lang/reflect/AccessibleObject;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c91437"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v7, [B

    const/16 v3, 0x12

    aput-byte v3, v2, v6

    const-string v3, "19699d"

    const-wide v4, -0x3e4964f23c000000L    # -3.79260356E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [B

    const/16 v2, 0x42

    aput-byte v2, v0, v6

    const-string v2, "e14c29"

    const-wide/32 v4, 0x510f6294

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "c677c5"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [B

    const/16 v2, 0x15

    aput-byte v2, v1, v6

    const-string v2, "223c30"

    const-wide v4, -0x3e25bb37cb800000L    # -1.762861266E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "faa07a"

    const v3, -0x3171805c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x54t
        0xft
        0x55t
        0x5at
        0x5dt
        0x15t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0xet
        0x5ct
        0x45t
        0x5ct
        0x5ct
        0x53t
        0x43t
        0x1et
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x59t
        0x59t
        0x44t
        0x17t
        0x47t
        0x16t
        0x55t
        0x43t
        0x58t
        0x11t
        0x15t
        0x44t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5at
        0x14t
        0xft
        0x5bt
        0x59t
        0xet
        0x11t
        0xft
        0x41t
        0x71t
        0x54t
        0x2t
        0x3t
        0x12t
        0x12t
        0x59t
        0x55t
        0xdt
        0x3t
        0x2et
        0x3t
        0x5at
        0x52t
        0x2t
        0x12t
        0x5ft
        0x41t
    .end array-data
.end method

.method public static getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 1
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

    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;->getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalRecordConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
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

    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    invoke-virtual {v0, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;->getCanonicalRecordConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private static getInaccessibleTroubleshootingSuffix(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "22d11f"

    const-wide v4, 0x41dc5299ab000000L    # 1.900701356E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b522aa"

    const/16 v3, 0x33d3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "dc14c2"

    const/4 v2, 0x0

    invoke-static {v0, v1, v6, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "7fdda9"

    const/16 v4, -0x2a80

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "3f4e3b"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :array_0
    .array-data 1
        0x58t
        0x53t
        0x12t
        0x50t
        0x1ft
        0xat
        0x53t
        0x5ct
        0x3t
        0x1ft
        0x43t
        0x3t
        0x54t
        0x5et
        0x1t
        0x52t
        0x45t
        0x48t
        0x7bt
        0x5ct
        0x5t
        0x52t
        0x52t
        0x3t
        0x41t
        0x41t
        0xdt
        0x53t
        0x5dt
        0x3t
        0x7dt
        0x50t
        0xet
        0x54t
        0x52t
        0x12t
        0x77t
        0x4at
        0x7t
        0x54t
        0x41t
        0x12t
        0x5bt
        0x5dt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0x5at
        0x12t
        0x5ft
        0xet
        0x5t
        0x17t
        0x59t
        0x57t
        0x12t
        0x2t
        0xet
        0xft
        0x1bt
        0x55t
        0x5dt
        0xet
        0x6t
        0xet
        0x50t
        0x1ct
        0x55t
        0x12t
        0xet
        0xct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x16t
        0x6t
        0x57t
        0x58t
        0x6t
        0x51t
        0x10t
        0xat
        0x5et
        0x5at
        0x4et
        0x5bt
        0xat
        0x2t
        0x52t
        0x57t
        0x6t
        0x41t
        0x17t
        0xat
        0x53t
        0x58t
        0x6t
        0x1ft
        0x10t
        0xct
        0x1ct
        0x59t
        0xct
        0x56t
        0x11t
        0xft
        0x54t
        0x19t
        0x4t
        0x41t
        0xbt
        0xdt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3dt
        0x35t
        0x1t
        0x1t
        0x41t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x41t
        0x3t
        0x52t
        0x9t
        0x56t
        0x1t
        0x47t
        0xft
        0x5bt
        0xbt
        0x1et
        0xbt
        0x5dt
        0x7t
        0x57t
        0x6t
        0x56t
        0x11t
        0x40t
        0xft
        0x56t
        0x9t
        0x56t
    .end array-data
.end method

.method public static getRecordComponentNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    invoke-virtual {v0, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;->getRecordComponentNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->isStatic(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecord(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    invoke-virtual {v0, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;->isRecord(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isStatic(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public static makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "df4c75"

    const-wide v6, -0x3e22d448eb000000L    # -1.957616724E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x61

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "35aafd"

    const v4, -0x31c41897

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getInaccessibleTroubleshootingSuffix(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x22t
        0x7t
        0x5dt
        0xft
        0x52t
        0x51t
        0x44t
        0xbt
        0x55t
        0x8t
        0x5et
        0x5bt
        0x3t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x13t
        0x54t
        0x2t
        0x2t
        0x3t
        0x17t
        0x40t
        0x5ct
        0x3t
        0xdt
        0x3t
        0x5ft
        0x13t
        0x50t
        0x8t
        0x15t
        0xet
        0x1t
        0x41t
        0x15t
        0x8t
        0xft
        0x5t
        0x16t
        0x56t
        0x54t
        0x12t
        0x4t
        0x46t
        0xdt
        0x47t
        0x46t
        0x41t
        0x17t
        0xft
        0x17t
        0x5at
        0x57t
        0x8t
        0xdt
        0xft
        0x10t
        0x4at
        0x15t
        0xet
        0x13t
        0x46t
        0x13t
        0x41t
        0x5ct
        0x15t
        0x4t
        0x46t
        0x5t
        0x13t
        0x56t
        0x14t
        0x12t
        0x12t
        0xbt
        0x5et
        0x15t
        0x35t
        0x18t
        0x16t
        0x1t
        0x72t
        0x51t
        0x0t
        0x11t
        0x12t
        0x1t
        0x41t
        0x15t
        0x7t
        0xet
        0x14t
        0x44t
        0x5at
        0x41t
        0x12t
        0x41t
        0x2t
        0x1t
        0x50t
        0x59t
        0x0t
        0x13t
        0xft
        0xat
        0x54t
        0x15t
        0x15t
        0x18t
        0x16t
        0x1t
        0x1dt
    .end array-data
.end method

.method public static tryMakeAccessible(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4d8b29"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x76

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "842f95"

    const v4, -0x3403a840    # -3.3075072E7f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getInaccessibleTroubleshootingSuffix(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x72t
        0x5t
        0x51t
        0xet
        0x57t
        0x5dt
        0x14t
        0x9t
        0x59t
        0x9t
        0x5bt
        0x57t
        0x53t
        0x44t
        0x5bt
        0xdt
        0x5ct
        0x4at
        0x40t
        0x16t
        0x4dt
        0x1t
        0x46t
        0x56t
        0x46t
        0x44t
        0x1ft
    .end array-data

    :array_1
    .array-data 1
        0x1ft
        0x14t
        0x53t
        0x5t
        0x5at
        0x50t
        0x4bt
        0x47t
        0x5bt
        0x4t
        0x55t
        0x50t
        0x3t
        0x14t
        0x57t
        0xft
        0x4dt
        0x5dt
        0x5dt
        0x46t
        0x12t
        0xft
        0x57t
        0x56t
        0x4at
        0x51t
        0x53t
        0x15t
        0x5ct
        0x15t
        0x51t
        0x40t
        0x41t
        0x46t
        0x4ft
        0x5ct
        0x4bt
        0x5dt
        0x50t
        0xft
        0x55t
        0x5ct
        0x4ct
        0x4dt
        0x12t
        0x9t
        0x4bt
        0x15t
        0x4ft
        0x46t
        0x5bt
        0x12t
        0x5ct
        0x15t
        0x59t
        0x14t
        0x51t
        0x13t
        0x4at
        0x41t
        0x57t
        0x59t
        0x12t
        0x2ft
        0x57t
        0x46t
        0x4ct
        0x55t
        0x5ct
        0x5t
        0x5ct
        0x76t
        0x4at
        0x51t
        0x53t
        0x12t
        0x56t
        0x47t
        0x18t
        0x5bt
        0x40t
        0x46t
        0x6dt
        0x4ct
        0x48t
        0x51t
        0x73t
        0x2t
        0x58t
        0x45t
        0x4ct
        0x51t
        0x40t
        0x46t
        0x5ft
        0x5at
        0x4at
        0x14t
        0x5bt
        0x12t
        0x4at
        0x15t
        0x5ct
        0x51t
        0x51t
        0xat
        0x58t
        0x47t
        0x51t
        0x5at
        0x55t
        0x46t
        0x4dt
        0x4ct
        0x48t
        0x51t
        0x8t
        0x46t
    .end array-data
.end method
