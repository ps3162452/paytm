.class final Lcom/google/android/gms/common/api/internal/zaap;
.super Lcom/google/android/gms/common/api/internal/zaav;


# instance fields
.field final zaa:Lcom/google/android/gms/common/api/internal/zaaw;

.field private final zac:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaaw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zaav;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/internal/zaau;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaap;->zac:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zak(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabi;->zag:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaw;->zao(Lcom/google/android/gms/common/api/internal/zaaw;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zabe;->zad:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaap;->zac:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaaw;->zam(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaaw;->zak(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabi;->zag:Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabe;->zad:Ljava/util/Set;

    invoke-interface {v0, v5, v4}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
