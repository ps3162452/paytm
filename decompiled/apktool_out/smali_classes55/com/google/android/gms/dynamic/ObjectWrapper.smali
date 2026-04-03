.class public final Lcom/google/android/gms/dynamic/ObjectWrapper;
.super Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/ObjectWrapper;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;
    .locals 10
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ")TT;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v3, 0x0

    instance-of v0, p0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/ObjectWrapper;->zza:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    const/4 v2, 0x0

    move v0, v3

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v1, v6, v4

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_1

    :cond_1
    if-ne v0, v9, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v4, "f430b9"

    invoke-static {v2, v4, v9, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "3219a8"

    const-wide/32 v4, 0x5a8ace57

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "91d3b0"

    const v3, -0x31ff43ba

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "6b0171"

    const-wide v4, 0x41d857ff87c00000L    # 1.633680927E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v1, v2

    goto/16 :goto_2

    nop

    :array_0
    .array-data 1
        0x25t
        0x5bt
        0x46t
        0x5ct
        0x6t
        0x19t
        0x8t
        0x5bt
        0x47t
        0x10t
        0x3t
        0x5at
        0x5t
        0x51t
        0x40t
        0x43t
        0x42t
        0x4dt
        0xet
        0x51t
        0x13t
        0x56t
        0xbt
        0x5ct
        0xat
        0x50t
        0x13t
        0x59t
        0xct
        0x19t
        0x14t
        0x51t
        0x5et
        0x5ft
        0x16t
        0x5ct
        0x24t
        0x5dt
        0x5dt
        0x54t
        0x7t
        0x4bt
        0x48t
    .end array-data

    :array_1
    .array-data 1
        0x71t
        0x5bt
        0x5ft
        0x5dt
        0x4t
        0x4at
        0x13t
        0x5dt
        0x53t
        0x53t
        0x4t
        0x5bt
        0x47t
        0x12t
        0x58t
        0x4at
        0x41t
        0x56t
        0x46t
        0x5et
        0x5dt
        0x17t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x70t
        0x7et
        0x6t
        0x59t
        0x7t
        0x53t
        0x4dt
        0x66t
        0x16t
        0x52t
        0x12t
        0x40t
        0x5ct
        0x43t
        0x44t
        0x57t
        0x7t
        0x53t
        0x55t
        0x50t
        0x16t
        0x56t
        0x6t
        0x10t
        0x5ft
        0x58t
        0x1t
        0x5ft
        0x6t
        0x10t
        0x57t
        0x5et
        0x10t
        0x13t
        0x12t
        0x42t
        0x50t
        0x47t
        0x5t
        0x47t
        0x7t
        0x11t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x63t
        0xct
        0x55t
        0x49t
        0x47t
        0x54t
        0x55t
        0x16t
        0x55t
        0x55t
        0x17t
        0x5ft
        0x43t
        0xft
        0x52t
        0x54t
        0x45t
        0x11t
        0x59t
        0x4t
        0x10t
        0x78t
        0x78t
        0x53t
        0x5ct
        0x7t
        0x53t
        0x45t
        0x60t
        0x43t
        0x57t
        0x12t
        0x40t
        0x54t
        0x45t
        0x11t
        0x52t
        0x7t
        0x53t
        0x5dt
        0x56t
        0x43t
        0x53t
        0x6t
        0x10t
        0x57t
        0x5et
        0x54t
        0x5at
        0x6t
        0x43t
        0xbt
        0x17t
    .end array-data
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
