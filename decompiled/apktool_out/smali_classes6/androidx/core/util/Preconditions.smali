.class public final Landroidx/core/util/Preconditions;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .locals 6

    cmpg-double v0, p0, p2

    if-ltz v0, :cond_1

    cmpl-double v0, p0, p4

    if-gtz v0, :cond_0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "db5fa8"

    const-wide/32 v4, -0x3cf4210a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p6, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "71aae0"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p6, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x41t
        0x11t
        0x15t
        0xft
        0x12t
        0x18t
        0xbt
        0x17t
        0x41t
        0x46t
        0xet
        0x5et
        0x44t
        0x10t
        0x54t
        0x8t
        0x6t
        0x5dt
        0x44t
        0xdt
        0x53t
        0x46t
        0x3at
        0x1dt
        0x2t
        0x4et
        0x15t
        0x43t
        0x7t
        0x65t
        0x44t
        0x4at
        0x41t
        0x9t
        0xet
        0x18t
        0xct
        0xbt
        0x52t
        0xet
        0x48t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0x42t
        0x41t
        0x8t
        0x16t
        0x10t
        0x58t
        0x44t
        0x15t
        0x41t
        0xat
        0x56t
        0x17t
        0x43t
        0x0t
        0xft
        0x2t
        0x55t
        0x17t
        0x5et
        0x7t
        0x41t
        0x3et
        0x15t
        0x51t
        0x1dt
        0x41t
        0x44t
        0x3t
        0x6dt
        0x17t
        0x19t
        0x15t
        0xet
        0xat
        0x10t
        0x5bt
        0x5et
        0x16t
        0x48t
    .end array-data
.end method

.method public static checkArgumentInRange(FFFLjava/lang/String;)F
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    cmpg-float v0, p0, p1

    if-ltz v0, :cond_1

    cmpl-float v0, p0, p2

    if-gtz v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b922bd"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "b2d599"

    const/16 v4, 0x7657

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x47t
        0x4at
        0x12t
        0x5bt
        0x11t
        0x44t
        0xdt
        0x4ct
        0x46t
        0x12t
        0xdt
        0x2t
        0x42t
        0x4bt
        0x53t
        0x5ct
        0x5t
        0x1t
        0x42t
        0x56t
        0x54t
        0x12t
        0x39t
        0x41t
        0x4t
        0x15t
        0x12t
        0x17t
        0x4t
        0x39t
        0x42t
        0x11t
        0x46t
        0x5dt
        0xdt
        0x44t
        0xat
        0x50t
        0x55t
        0x5at
        0x4bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x47t
        0x41t
        0x44t
        0x5ct
        0x4at
        0x19t
        0xdt
        0x47t
        0x10t
        0x15t
        0x56t
        0x5ft
        0x42t
        0x40t
        0x5t
        0x5bt
        0x5et
        0x5ct
        0x42t
        0x5dt
        0x2t
        0x15t
        0x62t
        0x1ct
        0x4t
        0x1et
        0x44t
        0x10t
        0x5ft
        0x64t
        0x42t
        0x1at
        0x10t
        0x5at
        0x56t
        0x19t
        0xet
        0x5dt
        0x13t
        0x1ct
    .end array-data
.end method

.method public static checkArgumentInRange(IIILjava/lang/String;)I
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-lt p0, p1, :cond_1

    if-gt p0, p2, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "1489f1"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "bfa4de"

    const/16 v4, -0x76b2

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x14t
        0x47t
        0x18t
        0x50t
        0x15t
        0x11t
        0x5et
        0x41t
        0x4ct
        0x19t
        0x9t
        0x57t
        0x11t
        0x46t
        0x59t
        0x57t
        0x1t
        0x54t
        0x11t
        0x5bt
        0x5et
        0x19t
        0x3dt
        0x14t
        0x55t
        0x18t
        0x18t
        0x1ct
        0x2t
        0x6ct
        0x11t
        0x1ct
        0x4ct
        0x56t
        0x9t
        0x11t
        0x59t
        0x5dt
        0x5ft
        0x51t
        0x4ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x47t
        0x15t
        0x41t
        0x5dt
        0x17t
        0x45t
        0xdt
        0x13t
        0x15t
        0x14t
        0xbt
        0x3t
        0x42t
        0x14t
        0x0t
        0x5at
        0x3t
        0x0t
        0x42t
        0x9t
        0x7t
        0x14t
        0x3ft
        0x40t
        0x6t
        0x4at
        0x41t
        0x11t
        0x0t
        0x38t
        0x42t
        0x4et
        0x15t
        0x5bt
        0xbt
        0x45t
        0xet
        0x9t
        0x16t
        0x1dt
    .end array-data
.end method

.method public static checkArgumentInRange(JJJLjava/lang/String;)J
    .locals 10

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_1

    cmp-long v0, p0, p4

    if-gtz v0, :cond_0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "599c2c"

    const v4, 0x4ed12b99    # 1.7546477E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p6, v3, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "072f78"

    const/16 v4, -0x3b69

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p6, v3, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x10t
        0x4at
        0x19t
        0xat
        0x41t
        0x43t
        0x5at
        0x4ct
        0x4dt
        0x43t
        0x5dt
        0x5t
        0x15t
        0x4bt
        0x58t
        0xdt
        0x55t
        0x6t
        0x15t
        0x56t
        0x5ft
        0x43t
        0x69t
        0x46t
        0x51t
        0x15t
        0x19t
        0x46t
        0x56t
        0x3et
        0x15t
        0x11t
        0x4dt
        0xct
        0x5dt
        0x43t
        0x5dt
        0x50t
        0x5et
        0xbt
        0x1bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x44t
        0x12t
        0xft
        0x44t
        0x18t
        0x5ft
        0x42t
        0x46t
        0x46t
        0x58t
        0x5et
        0x10t
        0x45t
        0x53t
        0x8t
        0x50t
        0x5dt
        0x10t
        0x58t
        0x54t
        0x46t
        0x6ct
        0x1dt
        0x54t
        0x1bt
        0x12t
        0x43t
        0x53t
        0x65t
        0x10t
        0x1ft
        0x46t
        0x9t
        0x58t
        0x18t
        0x5ct
        0x58t
        0x45t
        0x4ft
    .end array-data
.end method

.method public static checkArgumentNonnegative(I)I
    .locals 1

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static checkArgumentNonnegative(ILjava/lang/String;)I
    .locals 1

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkFlagsArgument(II)I
    .locals 6

    and-int v0, p0, p1

    if-ne v0, p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bbf5b2"

    const-wide/32 v4, 0x41ff878

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "0787ae"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "427a1c"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x30t
        0x7t
        0x17t
        0x40t
        0x7t
        0x41t
        0x16t
        0x7t
        0x2t
        0x15t
        0x4t
        0x5et
        0x3t
        0x5t
        0x15t
        0x15t
        0x52t
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ct
        0x17t
        0x5at
        0x42t
        0x15t
        0x45t
        0x5ft
        0x59t
        0x54t
        0x4et
        0x41t
        0x55t
        0x48t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x14t
        0x53t
        0x45t
        0x4t
        0x11t
        0x2t
        0x58t
        0x5et
        0x58t
        0x16t
        0x54t
        0x7t
    .end array-data
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
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

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public static checkState(ZLjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
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

.method public static varargs checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
