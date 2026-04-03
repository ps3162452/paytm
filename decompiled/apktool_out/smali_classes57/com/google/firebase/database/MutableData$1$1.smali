.class Lcom/google/firebase/database/MutableData$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/MutableData$1;->iterator()Ljava/util/Iterator;
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
        "Lcom/google/firebase/database/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field final this$1:Lcom/google/firebase/database/MutableData$1;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/MutableData$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/MutableData$1$1;->this$1:Lcom/google/firebase/database/MutableData$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/google/firebase/database/MutableData;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData$1$1;->next()Lcom/google/firebase/database/MutableData;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8bce51"

    const-wide v4, 0x41c5be52f7000000L    # 7.2958923E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x4at
        0x7t
        0xet
        0xat
        0x43t
        0x54t
        0x18t
        0x1t
        0x2t
        0x9t
        0x59t
        0x54t
        0x5ct
        0x42t
        0xct
        0xbt
        0x15t
        0x58t
        0x55t
        0xft
        0x16t
        0x11t
        0x54t
        0x53t
        0x54t
        0x7t
        0x43t
        0x6t
        0x5at
        0x5dt
        0x54t
        0x7t
        0x0t
        0x11t
        0x5ct
        0x5et
        0x56t
    .end array-data
.end method
