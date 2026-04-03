.class public final Lcom/google/android/material/shape/AdjustedCornerSize;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final adjustment:F

.field private final other:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method public constructor <init>(FLcom/google/android/material/shape/CornerSize;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p2

    :goto_0
    instance-of v1, v0, Lcom/google/android/material/shape/AdjustedCornerSize;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/shape/AdjustedCornerSize;

    iget-object v1, v0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    move-object v0, v1

    check-cast v0, Lcom/google/android/material/shape/AdjustedCornerSize;

    iget v0, v0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    add-float/2addr p1, v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    iput p1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/material/shape/AdjustedCornerSize;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/material/shape/AdjustedCornerSize;

    iget-object v2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    iget-object v3, p1, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    iget v3, p1, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    invoke-interface {v1, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
