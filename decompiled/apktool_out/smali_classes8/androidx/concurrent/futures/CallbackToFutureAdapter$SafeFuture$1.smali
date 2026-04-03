.class Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;
.super Landroidx/concurrent/futures/AbstractResolvableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/concurrent/futures/AbstractResolvableFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;


# direct methods
.method constructor <init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;)V
    .locals 0

    iput-object p1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;->this$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected pendingToString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;->this$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    iget-object v0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->completerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-nez v0, :cond_0

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9a3b5b"

    const v2, -0x31e5f6fe    # -6.460704E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c548b8"

    const-wide v4, 0x41d9504198000000L    # 1.698760288E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x6e

    aput-byte v3, v0, v2

    const-string v2, "3bf2e1"

    const v3, -0x3322a491

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x7at
        0xet
        0x5et
        0x12t
        0x59t
        0x7t
        0x4dt
        0x4t
        0x41t
        0x42t
        0x5at
        0x0t
        0x53t
        0x4t
        0x50t
        0x16t
        0x15t
        0xat
        0x58t
        0x12t
        0x13t
        0x0t
        0x50t
        0x7t
        0x57t
        0x41t
        0x54t
        0x3t
        0x47t
        0x0t
        0x58t
        0x6t
        0x56t
        0x42t
        0x56t
        0xdt
        0x55t
        0xdt
        0x56t
        0x1t
        0x41t
        0x7t
        0x5dt
        0x4dt
        0x13t
        0x4t
        0x40t
        0x16t
        0x4ct
        0x13t
        0x56t
        0x42t
        0x42t
        0xbt
        0x55t
        0xdt
        0x13t
        0x4t
        0x54t
        0xbt
        0x55t
        0x41t
        0x40t
        0xdt
        0x5at
        0xct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x17t
        0x54t
        0x53t
        0x5t
        0x39t
    .end array-data
.end method
