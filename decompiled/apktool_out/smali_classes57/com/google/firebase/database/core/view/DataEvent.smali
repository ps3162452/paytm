.class public Lcom/google/firebase/database/core/view/DataEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/view/Event;


# instance fields
.field private final eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field private final eventType:Lcom/google/firebase/database/core/view/Event$EventType;

.field private final prevName:Ljava/lang/String;

.field private final snapshot:Lcom/google/firebase/database/DataSnapshot;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    iput-object p2, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iput-object p3, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    iput-object p4, p0, Lcom/google/firebase/database/core/view/DataEvent;->prevName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fire()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/core/EventRegistration;->fireEvent(Lcom/google/firebase/database/core/view/DataEvent;)V

    return-void
.end method

.method public getEventType()Lcom/google/firebase/database/core/view/Event$EventType;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviousName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->prevName:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshot()Lcom/google/firebase/database/DataSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/DataEvent;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "8b8593"

    const-wide v4, 0x41d32688b9800000L    # 1.285169894E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "2a6ccf"

    const v3, 0x4ea73e0e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v1, v6}, Lcom/google/firebase/database/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/DataEvent;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const-string v2, "5085bb"

    const-wide v4, -0x3e36b0c857000000L    # -8.49243986E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "ce89c1"

    const-wide/32 v4, -0x65a44d5b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [B

    fill-array-data v1, :array_4

    const-string v2, "30d0be"

    const-wide/32 v4, 0x34b52a02

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v1, v6}, Lcom/google/firebase/database/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [B

    fill-array-data v1, :array_5

    const-string v2, "e409a8"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x2t
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x8t
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0xft
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x59t
        0x45t
        0x43t
        0x19t
    .end array-data

    :array_4
    .array-data 1
        0x9t
        0x10t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x45t
        0x49t
    .end array-data
.end method
