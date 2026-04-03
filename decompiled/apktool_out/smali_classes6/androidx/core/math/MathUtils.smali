.class public Landroidx/core/math/MathUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExact(II)I
    .locals 4

    add-int v0, p0, p1

    xor-int v1, p0, v0

    xor-int v2, p1, v0

    and-int/2addr v1, v2

    if-ltz v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "42a43e"

    const v3, 0x4eed43aa

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x5dt
        0x5ct
        0x15t
        0x51t
        0x54t
        0x0t
        0x46t
        0x12t
        0xet
        0x42t
        0x56t
        0x17t
        0x52t
        0x5et
        0xet
        0x43t
    .end array-data
.end method

.method public static addExact(JJ)J
    .locals 6

    add-long v0, p0, p2

    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5ca4d5"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x59t
        0xct
        0xft
        0x53t
        0x44t
        0x5at
        0x43t
        0x6t
        0x13t
        0x52t
        0x8t
        0x5at
        0x42t
    .end array-data
.end method

.method public static clamp(DDD)D
    .locals 2

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    goto :goto_0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static clamp(JJJ)J
    .locals 2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    goto :goto_0
.end method

.method public static decrementExact(I)I
    .locals 6

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fa6ddd"

    const-wide/32 v4, -0x267f8e04

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0xft
        0xft
        0x42t
        0x1t
        0x3t
        0x1t
        0x14t
        0x41t
        0x59t
        0x12t
        0x1t
        0x16t
        0x0t
        0xdt
        0x59t
        0x13t
    .end array-data
.end method

.method public static decrementExact(J)J
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "eeda85"

    const v3, 0x4eedd661

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x9t
        0xat
        0xat
        0x6t
        0x18t
        0x5at
        0x13t
        0x0t
        0x16t
        0x7t
        0x54t
        0x5at
        0x12t
    .end array-data
.end method

.method public static incrementExact(I)I
    .locals 6

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d1a6d3"

    const-wide/32 v4, 0x5ad210a0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0xdt
        0x5ft
        0x15t
        0x53t
        0x3t
        0x56t
        0x16t
        0x11t
        0xet
        0x40t
        0x1t
        0x41t
        0x2t
        0x5dt
        0xet
        0x41t
    .end array-data
.end method

.method public static incrementExact(J)J
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ea88d4"

    const/16 v3, 0x11ff

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x9t
        0xet
        0x56t
        0x5ft
        0x44t
        0x5bt
        0x13t
        0x4t
        0x4at
        0x5et
        0x8t
        0x5bt
        0x12t
    .end array-data
.end method

.method public static multiplyExact(II)I
    .locals 6

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    long-to-int v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c489bb"

    const-wide/32 v4, 0x285221b1

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0xat
        0x5at
        0x4ct
        0x5ct
        0x5t
        0x7t
        0x11t
        0x14t
        0x57t
        0x4ft
        0x7t
        0x10t
        0x5t
        0x58t
        0x57t
        0x4et
    .end array-data
.end method

.method public static multiplyExact(JJ)J
    .locals 8

    const-wide/16 v6, 0x0

    mul-long v0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    or-long/2addr v2, v4

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    cmp-long v2, p2, v6

    if-eqz v2, :cond_0

    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-nez v2, :cond_2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2

    :cond_1
    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "860d01"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x54t
        0x59t
        0x5et
        0x3t
        0x10t
        0x5et
        0x4et
        0x53t
        0x42t
        0x2t
        0x5ct
        0x5et
        0x4ft
    .end array-data
.end method

.method public static negateExact(I)I
    .locals 4

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    neg-int v0, p0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c85875"

    const v3, 0x4e50fe68    # 8.765834E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0xat
        0x56t
        0x41t
        0x5dt
        0x50t
        0x50t
        0x11t
        0x18t
        0x5at
        0x4et
        0x52t
        0x47t
        0x5t
        0x54t
        0x5at
        0x4ft
    .end array-data
.end method

.method public static negateExact(J)J
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    neg-long v0, p0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "99a903"

    const/16 v3, -0x23e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x55t
        0x56t
        0xft
        0x5et
        0x10t
        0x5ct
        0x4ft
        0x5ct
        0x13t
        0x5ft
        0x5ct
        0x5ct
        0x4et
    .end array-data
.end method

.method public static subtractExact(II)I
    .locals 4

    sub-int v0, p0, p1

    xor-int v1, p0, p1

    xor-int v2, p0, v0

    and-int/2addr v1, v2

    if-ltz v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "566acd"

    const v3, 0x4de38dc2    # 4.772148E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x5ct
        0x58t
        0x42t
        0x4t
        0x4t
        0x1t
        0x47t
        0x16t
        0x59t
        0x17t
        0x6t
        0x16t
        0x53t
        0x5at
        0x59t
        0x16t
    .end array-data
.end method

.method public static subtractExact(JJ)J
    .locals 8

    const/4 v6, 0x0

    sub-long v0, p0, p2

    xor-long v2, p0, p2

    xor-long v4, p0, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "50676c"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x59t
        0x5ft
        0x58t
        0x50t
        0x16t
        0xct
        0x43t
        0x55t
        0x44t
        0x51t
        0x5at
        0xct
        0x42t
    .end array-data
.end method

.method public static toIntExact(J)I
    .locals 6

    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    long-to-int v0, p0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e13d22"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0xct
        0x5ft
        0x47t
        0x1t
        0x55t
        0x57t
        0x17t
        0x11t
        0x5ct
        0x12t
        0x57t
        0x40t
        0x3t
        0x5dt
        0x5ct
        0x13t
    .end array-data
.end method
