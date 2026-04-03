.class Lcom/google/firebase/database/core/Repo$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->deferredInitialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/core/Repo;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$2;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenChange()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$2;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$100(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f40cde"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$2;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/connection/PersistentConnection;->refreshAuthToken()V

    return-void

    :array_0
    .array-data 1
        0x27t
        0x41t
        0x44t
        0xbt
        0x44t
        0x11t
        0x9t
        0x5ft
        0x55t
        0xdt
        0x44t
        0x6t
        0xet
        0x55t
        0x5et
        0x4t
        0x1t
        0x1t
        0x4at
        0x14t
        0x44t
        0x11t
        0xdt
        0x2t
        0x1t
        0x51t
        0x42t
        0xat
        0xat
        0x2t
        0x46t
        0x55t
        0x45t
        0x17t
        0xct
        0x45t
        0x12t
        0x5bt
        0x5bt
        0x6t
        0xat
        0x45t
        0x14t
        0x51t
        0x56t
        0x11t
        0x1t
        0x16t
        0xet
    .end array-data
.end method

.method public onTokenChange(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$2;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$100(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9aaeb6"

    const-wide/32 v4, 0x519d0e6e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$2;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/PersistentConnection;->refreshAuthToken(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x78t
        0x14t
        0x15t
        0xdt
        0x42t
        0x42t
        0x56t
        0xat
        0x4t
        0xbt
        0x42t
        0x55t
        0x51t
        0x0t
        0xft
        0x2t
        0x7t
        0x52t
        0x15t
        0x41t
        0x15t
        0x17t
        0xbt
        0x51t
        0x5et
        0x4t
        0x13t
        0xct
        0xct
        0x51t
        0x19t
        0x0t
        0x14t
        0x11t
        0xat
        0x16t
        0x4dt
        0xet
        0xat
        0x0t
        0xct
        0x16t
        0x4bt
        0x4t
        0x7t
        0x17t
        0x7t
        0x45t
        0x51t
    .end array-data
.end method
