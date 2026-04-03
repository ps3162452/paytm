.class public Lcom/google/firebase/database/core/ZombieEventManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/EventRegistrationZombieListener;


# static fields
.field static final $assertionsDisabled:Z

.field private static defaultInstance:Lcom/google/firebase/database/core/ZombieEventManager;


# instance fields
.field final globalEventRegistrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/core/ZombieEventManager;

    invoke-direct {v0}, Lcom/google/firebase/database/core/ZombieEventManager;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/ZombieEventManager;->defaultInstance:Lcom/google/firebase/database/core/ZombieEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/database/core/ZombieEventManager;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/core/ZombieEventManager;->defaultInstance:Lcom/google/firebase/database/core/ZombieEventManager;

    return-object v0
.end method

.method private unRecordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/EventRegistration;->clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v3

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onZombied(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/ZombieEventManager;->unRecordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-void
.end method

.method public recordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 4

    iget-object v1, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/EventRegistration;->clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/EventRegistration;->setIsUserInitiated(Z)V

    invoke-virtual {p1, p0}, Lcom/google/firebase/database/core/EventRegistration;->setOnZombied(Lcom/google/firebase/database/core/EventRegistrationZombieListener;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zombifyForRemove(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 6

    iget-object v3, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/EventRegistration;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/EventRegistration;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
