.class Lcom/google/firebase/database/core/persistence/TrackedQueryManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/persistence/TrackedQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/Predicate",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/google/firebase/database/core/view/QueryParams;",
        "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$1;->evaluate(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public evaluate(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/database/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
