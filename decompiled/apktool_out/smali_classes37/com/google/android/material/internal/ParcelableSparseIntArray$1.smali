.class Lcom/google/android/material/internal/ParcelableSparseIntArray$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ParcelableSparseIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/material/internal/ParcelableSparseIntArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/ParcelableSparseIntArray;
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Lcom/google/android/material/internal/ParcelableSparseIntArray;

    invoke-direct {v2, v1}, Lcom/google/android/material/internal/ParcelableSparseIntArray;-><init>(I)V

    new-array v3, v1, [I

    new-array v4, v1, [I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readIntArray([I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v5, v3, v0

    aget v6, v4, v0

    invoke-virtual {v2, v5, v6}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ParcelableSparseIntArray$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/ParcelableSparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/material/internal/ParcelableSparseIntArray;
    .locals 1

    new-array v0, p1, [Lcom/google/android/material/internal/ParcelableSparseIntArray;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ParcelableSparseIntArray$1;->newArray(I)[Lcom/google/android/material/internal/ParcelableSparseIntArray;

    move-result-object v0

    return-object v0
.end method
