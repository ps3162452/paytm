.class Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;
.super Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/reflect/ReflectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordNotSupportedHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;-><init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 4
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

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9c269a"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6bt
        0x6t
        0x51t
        0x59t
        0x4bt
        0x5t
        0x4at
        0x43t
        0x53t
        0x44t
        0x5ct
        0x41t
        0x57t
        0xct
        0x46t
        0x16t
        0x4at
        0x14t
        0x49t
        0x13t
        0x5dt
        0x44t
        0x4dt
        0x4t
        0x5dt
        0x43t
        0x5dt
        0x58t
        0x19t
        0x15t
        0x51t
        0xat
        0x41t
        0x16t
        0x73t
        0x37t
        0x74t
        0x4ft
        0x12t
        0x42t
        0x51t
        0x8t
        0x4at
        0x43t
        0x5ft
        0x53t
        0x4dt
        0x9t
        0x56t
        0x7t
        0x12t
        0x45t
        0x51t
        0xet
        0x4ct
        0xft
        0x56t
        0x16t
        0x57t
        0xet
        0x4dt
        0x43t
        0x50t
        0x53t
        0x19t
        0x2t
        0x58t
        0xft
        0x5et
        0x53t
        0x5dt
    .end array-data
.end method

.method getCanonicalRecordConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "caba91"

    const/16 v3, -0x5baa

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x4t
        0x1t
        0xet
        0x4bt
        0x55t
        0x10t
        0x41t
        0x3t
        0x13t
        0x5ct
        0x11t
        0xdt
        0xet
        0x16t
        0x41t
        0x4at
        0x44t
        0x13t
        0x11t
        0xdt
        0x13t
        0x4dt
        0x54t
        0x7t
        0x41t
        0xdt
        0xft
        0x19t
        0x45t
        0xbt
        0x8t
        0x11t
        0x41t
        0x73t
        0x67t
        0x2et
        0x4dt
        0x42t
        0x15t
        0x51t
        0x58t
        0x10t
        0x41t
        0xft
        0x4t
        0x4dt
        0x59t
        0xct
        0x5t
        0x42t
        0x12t
        0x51t
        0x5et
        0x16t
        0xdt
        0x6t
        0x41t
        0x57t
        0x5et
        0x17t
        0x41t
        0x0t
        0x4t
        0x19t
        0x52t
        0x2t
        0xdt
        0xet
        0x4t
        0x5dt
    .end array-data
.end method

.method getRecordComponentNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "070455"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x62t
        0x52t
        0x53t
        0x5bt
        0x47t
        0x51t
        0x43t
        0x17t
        0x51t
        0x46t
        0x50t
        0x15t
        0x5et
        0x58t
        0x44t
        0x14t
        0x46t
        0x40t
        0x40t
        0x47t
        0x5ft
        0x46t
        0x41t
        0x50t
        0x54t
        0x17t
        0x5ft
        0x5at
        0x15t
        0x41t
        0x58t
        0x5et
        0x43t
        0x14t
        0x7ft
        0x63t
        0x7dt
        0x1bt
        0x10t
        0x40t
        0x5dt
        0x5ct
        0x43t
        0x17t
        0x5dt
        0x51t
        0x41t
        0x5dt
        0x5ft
        0x53t
        0x10t
        0x47t
        0x5dt
        0x5at
        0x45t
        0x5bt
        0x54t
        0x14t
        0x5bt
        0x5at
        0x44t
        0x17t
        0x52t
        0x51t
        0x15t
        0x56t
        0x51t
        0x5bt
        0x5ct
        0x51t
        0x51t
    .end array-data
.end method

.method isRecord(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
