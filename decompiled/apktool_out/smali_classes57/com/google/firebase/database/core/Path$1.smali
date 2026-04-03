.class Lcom/google/firebase/database/core/Path$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/firebase/database/snapshot/ChildKey;",
        ">;"
    }
.end annotation


# instance fields
.field offset:I

.field final this$0:Lcom/google/firebase/database/core/Path;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Path;)V
    .locals 1

    iput-object p1, p0, Lcom/google/firebase/database/core/Path$1;->this$0:Lcom/google/firebase/database/core/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/database/core/Path;->access$000(Lcom/google/firebase/database/core/Path;)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    iget-object v1, p0, Lcom/google/firebase/database/core/Path$1;->this$0:Lcom/google/firebase/database/core/Path;

    invoke-static {v1}, Lcom/google/firebase/database/core/Path;->access$100(Lcom/google/firebase/database/core/Path;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 5

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/Path$1;->this$0:Lcom/google/firebase/database/core/Path;

    invoke-static {v0}, Lcom/google/firebase/database/core/Path;->access$200(Lcom/google/firebase/database/core/Path;)[Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    aget-object v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "544063"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7bt
        0x5bt
        0x14t
        0x5dt
        0x59t
        0x41t
        0x50t
        0x14t
        0x51t
        0x5ct
        0x53t
        0x5et
        0x50t
        0x5at
        0x40t
        0x43t
        0x18t
    .end array-data
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path$1;->next()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "20d63a"

    const/16 v3, -0x1b20

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x71t
        0x51t
        0xat
        0x11t
        0x47t
        0x41t
        0x40t
        0x55t
        0x9t
        0x59t
        0x45t
        0x4t
        0x12t
        0x53t
        0xbt
        0x5bt
        0x43t
        0xet
        0x5ct
        0x55t
        0xat
        0x42t
        0x13t
        0x7t
        0x40t
        0x5ft
        0x9t
        0x16t
        0x5at
        0xct
        0x5ft
        0x45t
        0x10t
        0x57t
        0x51t
        0xdt
        0x57t
        0x10t
        0x34t
        0x57t
        0x47t
        0x9t
        0x13t
    .end array-data
.end method
