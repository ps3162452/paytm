.class public final Lcom/google/android/material/shape/AbsoluteCornerSize;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final size:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

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
    instance-of v2, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    iget v2, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    iget v3, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCornerSize()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return v0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .locals 1

    iget v0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
