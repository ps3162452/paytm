.class public Lcom/google/firebase/database/core/view/CancelEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/view/Event;


# instance fields
.field private final error:Lcom/google/firebase/database/DatabaseError;

.field private final eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field private final path:Lcom/google/firebase/database/core/Path;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/view/CancelEvent;->eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iput-object p3, p0, Lcom/google/firebase/database/core/view/CancelEvent;->path:Lcom/google/firebase/database/core/Path;

    iput-object p2, p0, Lcom/google/firebase/database/core/view/CancelEvent;->error:Lcom/google/firebase/database/DatabaseError;

    return-void
.end method


# virtual methods
.method public fire()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/core/view/CancelEvent;->eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/core/view/CancelEvent;->error:Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/EventRegistration;->fireCancelEvent(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/view/CancelEvent;->path:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/CancelEvent;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ec94fa"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5ft
        0x20t
        0x78t
        0x7at
        0x25t
        0x24t
        0x29t
    .end array-data
.end method
