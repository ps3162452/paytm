.class public Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;
.super Lcom/google/firebase/database/core/ValueProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/ValueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredValueProvider"
.end annotation


# instance fields
.field private final path:Lcom/google/firebase/database/core/Path;

.field private final syncTree:Lcom/google/firebase/database/core/SyncTree;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/ValueProvider;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;->syncTree:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;->path:Lcom/google/firebase/database/core/Path;

    return-void
.end method


# virtual methods
.method public getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/ValueProvider;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;

    iget-object v2, p0, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;->syncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;)V

    return-object v1
.end method

.method public node()Lcom/google/firebase/database/snapshot/Node;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;->syncTree:Lcom/google/firebase/database/core/SyncTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;->path:Lcom/google/firebase/database/core/Path;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/core/SyncTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method
