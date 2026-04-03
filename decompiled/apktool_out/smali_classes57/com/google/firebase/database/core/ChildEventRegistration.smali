.class public Lcom/google/firebase/database/core/ChildEventRegistration;
.super Lcom/google/firebase/database/core/EventRegistration;


# instance fields
.field private final eventListener:Lcom/google/firebase/database/ChildEventListener;

.field private final repo:Lcom/google/firebase/database/core/Repo;

.field private final spec:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ChildEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/EventRegistration;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    iput-object p3, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    return-void
.end method


# virtual methods
.method public clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/firebase/database/core/ChildEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ChildEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    return-object v0
.end method

.method public createEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/DataEvent;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/InternalHelpers;->createReference(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getPrevName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getPrevName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/google/firebase/database/core/view/DataEvent;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/google/firebase/database/core/view/DataEvent;-><init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/firebase/database/core/ChildEventRegistration;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v0, v0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v0, v0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v0, p1, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/QuerySpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fireCancelEvent(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ChildEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public fireEvent(Lcom/google/firebase/database/core/view/DataEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/database/core/ChildEventRegistration;->isZombied()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/firebase/database/core/ChildEventRegistration$1;->$SwitchMap$com$google$firebase$database$core$view$Event$EventType:[I

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/Event$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/ChildEventListener;->onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    return-object v0
.end method

.method getRepo()Lcom/google/firebase/database/core/Repo;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isSameListener(Lcom/google/firebase/database/core/EventRegistration;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/firebase/database/core/ChildEventRegistration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v0, p1, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public respondsTo(Lcom/google/firebase/database/core/view/Event$EventType;)Z
    .locals 1

    sget-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8a3b29"

    const-wide v2, 0x41c99aa391000000L    # 8.59129634E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7bt
        0x9t
        0x5at
        0xet
        0x56t
        0x7ct
        0x4et
        0x4t
        0x5dt
        0x16t
        0x60t
        0x5ct
        0x5ft
        0x8t
        0x40t
        0x16t
        0x40t
        0x58t
        0x4ct
        0x8t
        0x5ct
        0xct
    .end array-data
.end method
