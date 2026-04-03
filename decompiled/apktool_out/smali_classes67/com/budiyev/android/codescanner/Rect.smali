.class final Lcom/budiyev/android/codescanner/Rect;
.super Ljava/lang/Object;


# instance fields
.field private final mBottom:I

.field private final mLeft:I

.field private final mRight:I

.field private final mTop:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    iput p2, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    iput p3, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    iput p4, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    return-void
.end method


# virtual methods
.method public bound(IIII)Lcom/budiyev/android/codescanner/Rect;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    iget v2, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    iget v3, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    if-lt v0, p1, :cond_0

    if-lt v1, p2, :cond_0

    if-gt v2, p3, :cond_0

    if-gt v3, p4, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lcom/budiyev/android/codescanner/Rect;

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/budiyev/android/codescanner/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/budiyev/android/codescanner/Rect;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/budiyev/android/codescanner/Rect;

    iget v2, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    iget v3, p1, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    iget v3, p1, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    iget v3, p1, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    iget v3, p1, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fitIn(Lcom/budiyev/android/codescanner/Rect;)Lcom/budiyev/android/codescanner/Rect;
    .locals 12
    .param p1    # Lcom/budiyev/android/codescanner/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v5, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    iget v7, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    iget v3, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/Rect;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/budiyev/android/codescanner/Rect;->getHeight()I

    move-result v9

    iget v4, p1, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    iget v0, p1, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    iget v6, p1, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    iget v2, p1, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    invoke-virtual {p1}, Lcom/budiyev/android/codescanner/Rect;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Lcom/budiyev/android/codescanner/Rect;->getHeight()I

    move-result v11

    if-lt v5, v4, :cond_0

    if-lt v1, v0, :cond_0

    if-gt v7, v6, :cond_0

    if-gt v3, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v5, v4, :cond_1

    add-int v5, v4, v8

    :goto_1
    if-ge v1, v0, :cond_2

    add-int v1, v0, v9

    :goto_2
    new-instance p0, Lcom/budiyev/android/codescanner/Rect;

    invoke-direct {p0, v4, v0, v5, v1}, Lcom/budiyev/android/codescanner/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    if-le v7, v6, :cond_4

    sub-int v4, v6, v8

    move v5, v6

    goto :goto_1

    :cond_2
    if-le v3, v2, :cond_3

    sub-int v0, v2, v9

    move v1, v2

    goto :goto_2

    :cond_3
    move v0, v1

    move v1, v3

    goto :goto_2

    :cond_4
    move v4, v5

    move v5, v7

    goto :goto_1
.end method

.method public getBottom()I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    return v0
.end method

.method public getRight()I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    return v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isPointInside(II)Z
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    if-ge v0, p1, :cond_0

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    if-ge v0, p2, :cond_0

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    if-le v0, p1, :cond_0

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    if-le v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rotate(FFF)Lcom/budiyev/android/codescanner/Rect;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x4

    new-array v4, v1, [F

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    int-to-float v1, v1

    aput v1, v4, v2

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    int-to-float v1, v1

    aput v1, v4, v3

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    int-to-float v1, v1

    aput v1, v4, v5

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    int-to-float v1, v1

    aput v1, v4, v6

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v4, v2

    float-to-int v2, v0

    aget v0, v4, v3

    float-to-int v1, v0

    aget v0, v4, v5

    float-to-int v3, v0

    aget v0, v4, v6

    float-to-int v0, v0

    if-le v2, v3, :cond_1

    :goto_0
    if-le v1, v0, :cond_0

    :goto_1
    new-instance v4, Lcom/budiyev/android/codescanner/Rect;

    invoke-direct {v4, v3, v0, v2, v1}, Lcom/budiyev/android/codescanner/Rect;-><init>(IIII)V

    return-object v4

    :cond_0
    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_1
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_0
.end method

.method public sort()Lcom/budiyev/android/codescanner/Rect;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v2, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    iget v0, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    iget v3, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    if-gt v2, v3, :cond_0

    if-gt v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-le v2, v3, :cond_2

    :goto_1
    if-le v0, v1, :cond_1

    :goto_2
    new-instance p0, Lcom/budiyev/android/codescanner/Rect;

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/budiyev/android/codescanner/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_2
    move v4, v3

    move v3, v2

    move v2, v4

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v2, "114b17"

    const v3, -0x3170a232

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "121d95"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "080fa2"

    const/16 v3, -0x2af4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v1, v4, [B

    fill-array-data v1, :array_3

    const-string v2, "5e5f5d"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/budiyev/android/codescanner/Rect;->mBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v1, v4, [B

    fill-array-data v1, :array_4

    const-string v2, "4e24f3"

    const/16 v3, 0x6acf

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x6at
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xat
        0x12t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x19t
        0x18t
        0x1dt
        0x46t
        0x49t
    .end array-data

    nop

    :array_3
    .array-data 1
        0xet
        0x45t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1dt
        0x38t
    .end array-data
.end method
