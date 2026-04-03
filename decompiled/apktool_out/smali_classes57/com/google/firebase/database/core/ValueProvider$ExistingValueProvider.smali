.class public Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;
.super Lcom/google/firebase/database/core/ValueProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/ValueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExistingValueProvider"
.end annotation


# instance fields
.field private final node:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/ValueProvider;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;->node:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method


# virtual methods
.method public getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/ValueProvider;
    .locals 2

    new-instance v0, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;

    iget-object v1, p0, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1, p1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public node()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;->node:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method
