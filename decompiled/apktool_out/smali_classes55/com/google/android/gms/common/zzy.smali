.class final Lcom/google/android/gms/common/zzy;
.super Ljava/lang/Object;


# direct methods
.method static zza(I)I
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-ne v2, p0, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    throw v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method
