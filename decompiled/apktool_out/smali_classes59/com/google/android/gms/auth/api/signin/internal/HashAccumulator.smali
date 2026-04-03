.class public Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
.super Ljava/lang/Object;


# instance fields
.field private zaa:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    return-void
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .locals 2

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public hash()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    return v0
.end method

.method public final zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    return-object p0
.end method
