.class final Lcom/budiyev/android/codescanner/Point;
.super Ljava/lang/Object;


# instance fields
.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/budiyev/android/codescanner/Point;->mX:I

    iput p2, p0, Lcom/budiyev/android/codescanner/Point;->mY:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/budiyev/android/codescanner/Point;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/budiyev/android/codescanner/Point;

    iget v2, p0, Lcom/budiyev/android/codescanner/Point;->mX:I

    iget v3, p1, Lcom/budiyev/android/codescanner/Point;->mX:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/budiyev/android/codescanner/Point;->mY:I

    iget v3, p1, Lcom/budiyev/android/codescanner/Point;->mY:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/Point;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/Point;->mY:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/budiyev/android/codescanner/Point;->mX:I

    iget v1, p0, Lcom/budiyev/android/codescanner/Point;->mY:I

    ushr-int/lit8 v2, v1, 0x10

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v6, [B

    const/16 v2, 0x1e

    aput-byte v2, v1, v3

    const-string v2, "6621a3"

    const-wide v4, 0x41540ad280000000L    # 5253962.0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/budiyev/android/codescanner/Point;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "39ef87"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/budiyev/android/codescanner/Point;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    const/16 v2, 0x11

    aput-byte v2, v1, v3

    const-string v2, "82f0cb"

    const-wide/32 v4, -0x6b104b2a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x8t
        0x19t
    .end array-data
.end method
