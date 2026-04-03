.class public Lcom/airbnb/lottie/model/content/GradientColor;
.super Ljava/lang/Object;


# instance fields
.field private final colors:[I

.field private final positions:[F


# direct methods
.method public constructor <init>([F[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    return-object v0
.end method

.method public getPositions()[F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v0, v0

    return v0
.end method

.method public lerp(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;F)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v1, v1

    iget-object v2, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x34

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "b63416"

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "00b948"

    invoke-static {v3, v4, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [B

    const/16 v4, 0x4b

    aput-byte v4, v3, v0

    const-string v4, "b45360"

    invoke-static {v3, v4, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    iget-object v2, p1, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    aget v2, v2, v0

    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    aget v3, v3, v0

    invoke-static {v2, v3, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    iget-object v2, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    aget v2, v2, v0

    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    aget v3, v3, v0

    invoke-static {p3, v2, v3}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x21t
        0x57t
        0x5dt
        0x5at
        0x5et
        0x42t
        0x42t
        0x5ft
        0x5dt
        0x40t
        0x54t
        0x44t
        0x12t
        0x59t
        0x5ft
        0x55t
        0x45t
        0x53t
        0x42t
        0x54t
        0x56t
        0x40t
        0x46t
        0x53t
        0x7t
        0x58t
        0x13t
        0x53t
        0x43t
        0x57t
        0x6t
        0x5ft
        0x56t
        0x5at
        0x45t
        0x45t
        0x4ct
        0x16t
        0x7ft
        0x51t
        0x5ft
        0x51t
        0x16t
        0x5et
        0x40t
        0x14t
        0x47t
        0x57t
        0x10t
        0x4ft
        0x13t
        0x1ct
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x46t
        0x11t
        0x19t
    .end array-data
.end method
