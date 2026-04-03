.class public final Lcom/google/android/gms/common/internal/Preconditions;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "89268b"

    const v3, -0x339e9fb5    # -5.9081004E7f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6dt
        0x57t
        0x5bt
        0x58t
        0x4bt
        0x16t
        0x59t
        0x57t
        0x46t
        0x5ft
        0x59t
        0x0t
        0x54t
        0x5ct
    .end array-data
.end method

.method public static checkArgument(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgumentInRange(DDDLjava/lang/String;)D
    .locals 10

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    cmpg-double v0, p0, p2

    if-ltz v0, :cond_1

    cmpl-double v0, p0, p4

    if-gtz v0, :cond_0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "60f067"

    const-wide v4, -0x3e2bef1eeec00000L    # -1.346602053E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p6, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "59a433"

    invoke-static {v1, v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p6, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x13t
        0x43t
        0x46t
        0x59t
        0x45t
        0x17t
        0x59t
        0x45t
        0x12t
        0x10t
        0x59t
        0x51t
        0x16t
        0x42t
        0x7t
        0x5et
        0x51t
        0x52t
        0x16t
        0x5ft
        0x0t
        0x10t
        0x6dt
        0x12t
        0x50t
        0x1ct
        0x46t
        0x15t
        0x50t
        0x6at
        0x16t
        0x18t
        0x12t
        0x5ft
        0x59t
        0x17t
        0x5et
        0x59t
        0x1t
        0x58t
        0x1ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x10t
        0x4at
        0x41t
        0x5dt
        0x40t
        0x13t
        0x5at
        0x4ct
        0x15t
        0x14t
        0x5ct
        0x55t
        0x15t
        0x4bt
        0x0t
        0x5at
        0x54t
        0x56t
        0x15t
        0x56t
        0x7t
        0x14t
        0x68t
        0x16t
        0x53t
        0x15t
        0x41t
        0x11t
        0x55t
        0x6et
        0x15t
        0x11t
        0x15t
        0x5bt
        0x5ct
        0x13t
        0x59t
        0x56t
        0x16t
        0x1dt
    .end array-data
.end method

.method public static checkArgumentInRange(FFFLjava/lang/String;)F
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    cmpg-float v0, p0, p1

    if-ltz v0, :cond_1

    cmpl-float v0, p0, p2

    if-gtz v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a380ae"

    const-wide/32 v4, -0x5e8f6986

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "911cc2"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x44t
        0x40t
        0x18t
        0x59t
        0x12t
        0x45t
        0xet
        0x46t
        0x4ct
        0x10t
        0xet
        0x3t
        0x41t
        0x41t
        0x59t
        0x5et
        0x6t
        0x0t
        0x41t
        0x5ct
        0x5et
        0x10t
        0x3at
        0x40t
        0x7t
        0x1ft
        0x18t
        0x15t
        0x7t
        0x38t
        0x41t
        0x1bt
        0x4ct
        0x5ft
        0xet
        0x45t
        0x9t
        0x5at
        0x5ft
        0x58t
        0x48t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ct
        0x42t
        0x11t
        0xat
        0x10t
        0x12t
        0x56t
        0x44t
        0x45t
        0x43t
        0xct
        0x54t
        0x19t
        0x43t
        0x50t
        0xdt
        0x4t
        0x57t
        0x19t
        0x5et
        0x57t
        0x43t
        0x38t
        0x17t
        0x5ft
        0x1dt
        0x11t
        0x46t
        0x5t
        0x6ft
        0x19t
        0x19t
        0x45t
        0xct
        0xct
        0x12t
        0x55t
        0x5et
        0x46t
        0x4at
    .end array-data
.end method

.method public static checkArgumentInRange(IIILjava/lang/String;)I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt p0, p1, :cond_1

    if-gt p0, p2, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "05b13b"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "10ad69"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x15t
        0x46t
        0x42t
        0x58t
        0x40t
        0x42t
        0x5ft
        0x40t
        0x16t
        0x11t
        0x5ct
        0x4t
        0x10t
        0x47t
        0x3t
        0x5ft
        0x54t
        0x7t
        0x10t
        0x5at
        0x4t
        0x11t
        0x68t
        0x47t
        0x54t
        0x19t
        0x42t
        0x14t
        0x57t
        0x3ft
        0x10t
        0x1dt
        0x16t
        0x5et
        0x5ct
        0x42t
        0x58t
        0x5ct
        0x5t
        0x59t
        0x1at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x14t
        0x43t
        0x41t
        0xdt
        0x45t
        0x19t
        0x5et
        0x45t
        0x15t
        0x44t
        0x59t
        0x5ft
        0x11t
        0x42t
        0x0t
        0xat
        0x51t
        0x5ct
        0x11t
        0x5ft
        0x7t
        0x44t
        0x6dt
        0x1ct
        0x55t
        0x1ct
        0x41t
        0x41t
        0x52t
        0x64t
        0x11t
        0x18t
        0x15t
        0xbt
        0x59t
        0x19t
        0x5dt
        0x5ft
        0x16t
        0x4dt
    .end array-data
.end method

.method public static checkArgumentInRange(JJJLjava/lang/String;)J
    .locals 6

    cmp-long v0, p0, p2

    if-ltz v0, :cond_1

    cmp-long v0, p0, p4

    if-gtz v0, :cond_0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "79aaea"

    const-wide v4, 0x41b17544bc000000L    # 2.9289798E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p6, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "bc9167"

    const/16 v3, -0x2646

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p6, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x12t
        0x4at
        0x41t
        0x8t
        0x16t
        0x41t
        0x58t
        0x4ct
        0x15t
        0x41t
        0xat
        0x7t
        0x17t
        0x4bt
        0x0t
        0xft
        0x2t
        0x4t
        0x17t
        0x56t
        0x7t
        0x41t
        0x3et
        0x44t
        0x53t
        0x15t
        0x41t
        0x44t
        0x1t
        0x3ct
        0x17t
        0x11t
        0x15t
        0xet
        0xat
        0x41t
        0x5ft
        0x50t
        0x6t
        0x9t
        0x4ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x47t
        0x10t
        0x19t
        0x58t
        0x45t
        0x17t
        0xdt
        0x16t
        0x4dt
        0x11t
        0x59t
        0x51t
        0x42t
        0x11t
        0x58t
        0x5ft
        0x51t
        0x52t
        0x42t
        0xct
        0x5ft
        0x11t
        0x6dt
        0x12t
        0x6t
        0x4ft
        0x19t
        0x14t
        0x52t
        0x6at
        0x42t
        0x4bt
        0x4dt
        0x5et
        0x59t
        0x17t
        0xet
        0xct
        0x4et
        0x18t
    .end array-data
.end method

.method public static checkHandlerThread(Landroid/os/Handler;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "d3681b"

    const/16 v5, -0x662e

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "dfd958"

    const/16 v4, 0x5436

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x48

    aput-byte v1, v0, v6

    const-string v1, "f1828e"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "18cbac"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x29t
        0x46t
        0x45t
        0x4ct
        0x11t
        0x0t
        0x1t
        0x13t
        0x55t
        0x59t
        0x5dt
        0xet
        0x1t
        0x57t
        0x16t
        0x57t
        0x5ft
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x44t
        0x12t
        0xct
        0x4bt
        0x50t
        0x59t
        0x0t
        0x4at
        0x44t
        0x5bt
        0x40t
        0x4ct
        0x44t
        0x1t
        0xbt
        0x4dt
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5ft
        0x4dt
        0xft
        0xet
        0x41t
        0x0t
        0x44t
        0x4at
        0x11t
        0x7t
        0xft
        0x17t
        0x11t
        0x54t
        0xct
        0xdt
        0x11t
        0x6t
        0x43t
    .end array-data
.end method

.method public static checkHandlerThread(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkMainThread()V
    .locals 3

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6a2e46"

    const/16 v2, -0x221e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x7bt
        0x14t
        0x41t
        0x11t
        0x14t
        0x54t
        0x53t
        0x41t
        0x51t
        0x4t
        0x58t
        0x5at
        0x53t
        0x5t
        0x12t
        0xat
        0x5at
        0x16t
        0x42t
        0x9t
        0x57t
        0x45t
        0x59t
        0x57t
        0x5ft
        0xft
        0x12t
        0x4t
        0x44t
        0x46t
        0x5at
        0x8t
        0x51t
        0x4t
        0x40t
        0x5ft
        0x59t
        0xft
        0x12t
        0x11t
        0x5ct
        0x44t
        0x53t
        0x0t
        0x56t
    .end array-data
.end method

.method public static checkMainThread(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "aa3283"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x26t
        0x8t
        0x45t
        0x57t
        0x56t
        0x13t
        0x32t
        0x15t
        0x41t
        0x5bt
        0x56t
        0x54t
        0x41t
        0x8t
        0x40t
        0x12t
        0x5dt
        0x5et
        0x11t
        0x15t
        0x4at
        0x12t
        0x57t
        0x41t
        0x41t
        0xft
        0x46t
        0x5et
        0x54t
    .end array-data
.end method

.method public static checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotMainThread()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8f38b2"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x75t
        0x13t
        0x40t
        0x4ct
        0x42t
        0x5ct
        0x57t
        0x12t
        0x13t
        0x5at
        0x7t
        0x12t
        0x5bt
        0x7t
        0x5ft
        0x54t
        0x7t
        0x56t
        0x18t
        0x9t
        0x5dt
        0x18t
        0x16t
        0x5at
        0x5dt
        0x46t
        0x5et
        0x59t
        0xbt
        0x5ct
        0x18t
        0x7t
        0x43t
        0x48t
        0xet
        0x5bt
        0x5bt
        0x7t
        0x47t
        0x51t
        0xdt
        0x5ct
        0x18t
        0x12t
        0x5bt
        0x4at
        0x7t
        0x53t
        0x5ct
    .end array-data
.end method

.method public static checkNotMainThread(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e77978"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0xbt
        0x42t
        0x5bt
        0x55t
        0x17t
        0x4at
        0x0t
        0x51t
        0x52t
        0x4bt
        0x52t
        0x56t
        0x6t
        0x52t
    .end array-data
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotZero(I)I
    .locals 6

    if-eqz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4124ee"

    const-wide v4, -0x3e27719f88800000L    # -1.647935966E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x73t
        0x58t
        0x44t
        0x51t
        0xbt
        0x45t
        0x7dt
        0x5ft
        0x46t
        0x51t
        0x2t
        0x0t
        0x46t
        0x11t
        0x5bt
        0x47t
        0x45t
        0x1ft
        0x51t
        0x43t
        0x5dt
    .end array-data
.end method

.method public static checkNotZero(ILjava/lang/Object;)I
    .locals 2

    if-eqz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotZero(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c20b12"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x24t
        0x5bt
        0x46t
        0x7t
        0x5ft
        0x12t
        0x2ft
        0x5dt
        0x5et
        0x5t
        0x11t
        0x5bt
        0x10t
        0x12t
        0x4at
        0x7t
        0x43t
        0x5dt
    .end array-data
.end method

.method public static checkNotZero(JLjava/lang/Object;)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static checkState(ZLjava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs checkState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static varargs zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v9, :cond_0

    new-array v4, v8, [B

    fill-array-data v4, :array_0

    const-string v5, "994e96"

    const-wide/32 v6, -0x5336c534

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v2, v9, :cond_3

    new-array v0, v8, [B

    fill-array-data v0, :array_1

    const-string v4, "03732f"

    const/16 v5, -0xb2f

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v0, v9, :cond_2

    new-array v2, v8, [B

    fill-array-data v2, :array_2

    const-string v4, "7f4c92"

    invoke-static {v2, v4, v10, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v10, [B

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const-string v1, "f213b6"

    const-wide v4, -0x3e26d2aa36800000L    # -1.689605926E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x1ct
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x10t
        0x68t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1bt
        0x46t
    .end array-data
.end method
