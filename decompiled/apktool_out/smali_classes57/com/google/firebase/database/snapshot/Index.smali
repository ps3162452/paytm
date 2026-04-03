.class public abstract Lcom/google/firebase/database/snapshot/Index;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/firebase/database/snapshot/NamedNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromQueryDefinition(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/Index;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2eefe5"

    const-wide v2, -0x3e2d4d8ee4c00000L    # -1.254737005E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/database/snapshot/ValueIndex;->getInstance()Lcom/google/firebase/database/snapshot/ValueIndex;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "cb0af0"

    const/16 v2, 0x469a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "060fd3"

    const/16 v2, -0x15fd

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/firebase/database/snapshot/PathIndex;

    new-instance v1, Lcom/google/firebase/database/core/Path;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/database/snapshot/PathIndex;-><init>(Lcom/google/firebase/database/core/Path;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "c6caad"

    const/16 v3, -0x4b2d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x1ct
        0x13t
        0x4t
        0xat
        0x10t
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4dt
        0x9t
        0x55t
        0x18t
    .end array-data

    :array_2
    .array-data 1
        0x1et
        0x46t
        0x42t
        0xft
        0xbt
        0x41t
        0x59t
        0x42t
        0x49t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x12t
        0x43t
        0x6t
        0x13t
        0x18t
        0x20t
        0x6t
        0x50t
        0xat
        0xft
        0x8t
        0x10t
        0xat
        0x59t
        0xdt
        0x41t
        0x12t
        0xct
        0xct
        0x43t
        0xft
        0x5t
        0xft
        0x43t
        0x17t
        0x16t
        0x6t
        0x17t
        0x4t
        0x16t
        0x43t
        0x54t
        0x6t
        0x41t
        0x4ft
        0x14t
        0x11t
        0x5ft
        0xct
        0x13t
        0x8t
        0x10t
        0x1at
        0x16t
        0x10t
        0x8t
        0xft
        0x7t
        0x6t
        0x16t
        0xat
        0x15t
        0x46t
        0x17t
        0x43t
        0x42t
        0xbt
        0x4t
        0x41t
        0x0t
        0x6t
        0x50t
        0x2t
        0x14t
        0xdt
        0x10t
    .end array-data
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public abstract getQueryDefinition()Ljava/lang/String;
.end method

.method public indexedValueChanged(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Z
    .locals 3

    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z
.end method

.method public abstract makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;
.end method

.method public abstract maxPost()Lcom/google/firebase/database/snapshot/NamedNode;
.end method

.method public minPost()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 1

    invoke-static {}, Lcom/google/firebase/database/snapshot/NamedNode;->getMinNode()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method
