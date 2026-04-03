.class public abstract Lcom/google/firebase/database/core/EventRegistration;
.super Ljava/lang/Object;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private isUserInitiated:Z

.field private listener:Lcom/google/firebase/database/core/EventRegistrationZombieListener;

.field private zombied:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/database/core/EventRegistration;->zombied:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/google/firebase/database/core/EventRegistration;->isUserInitiated:Z

    return-void
.end method


# virtual methods
.method public abstract clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;
.end method

.method public abstract createEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/DataEvent;
.end method

.method public abstract fireCancelEvent(Lcom/google/firebase/database/DatabaseError;)V
.end method

.method public abstract fireEvent(Lcom/google/firebase/database/core/view/DataEvent;)V
.end method

.method public abstract getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;
.end method

.method getRepo()Lcom/google/firebase/database/core/Repo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isSameListener(Lcom/google/firebase/database/core/EventRegistration;)Z
.end method

.method public isUserInitiated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/core/EventRegistration;->isUserInitiated:Z

    return v0
.end method

.method public isZombied()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/EventRegistration;->zombied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract respondsTo(Lcom/google/firebase/database/core/view/Event$EventType;)Z
.end method

.method public setIsUserInitiated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/database/core/EventRegistration;->isUserInitiated:Z

    return-void
.end method

.method public setOnZombied(Lcom/google/firebase/database/core/EventRegistrationZombieListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/EventRegistration;->listener:Lcom/google/firebase/database/core/EventRegistrationZombieListener;

    return-void
.end method

.method public zombify()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/EventRegistration;->zombied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/EventRegistration;->listener:Lcom/google/firebase/database/core/EventRegistrationZombieListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/firebase/database/core/EventRegistrationZombieListener;->onZombied(Lcom/google/firebase/database/core/EventRegistration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/core/EventRegistration;->listener:Lcom/google/firebase/database/core/EventRegistrationZombieListener;

    :cond_0
    return-void
.end method
