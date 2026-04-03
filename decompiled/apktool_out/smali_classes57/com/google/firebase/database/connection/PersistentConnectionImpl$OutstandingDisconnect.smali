.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutstandingDisconnect"
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final data:Ljava/lang/Object;

.field private final onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->action:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->path:Ljava/util/List;

    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;)Lcom/google/firebase/database/connection/RequestResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    return-object v0
.end method

.method public getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->path:Ljava/util/List;

    return-object v0
.end method
