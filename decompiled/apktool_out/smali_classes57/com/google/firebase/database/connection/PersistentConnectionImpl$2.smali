.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v7, [B

    const/16 v2, 0x45

    aput-byte v2, v0, v6

    const-string v2, "6a8011"

    invoke-static {v0, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v2, v8, [B

    fill-array-data v2, :array_0

    const-string v3, "3b4b24"

    const-wide/32 v4, 0x710b0dce

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v1, v7, [B

    aput-byte v8, v1, v6

    const-string v2, "fa5d2d"

    const-wide/32 v4, -0x5e64ed5f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5ct
        0x9t
    .end array-data
.end method
