.class Lcom/dz/scanner/RequestNetworkController$3;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/RequestNetworkController;->execute(Lcom/dz/scanner/RequestNetwork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dz/scanner/RequestNetwork$RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/RequestNetworkController;

.field private final val$requestListener:Lcom/dz/scanner/RequestNetwork$RequestListener;

.field private final val$requestNetwork:Lcom/dz/scanner/RequestNetwork;

.field private final val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dz/scanner/RequestNetworkController;Lcom/dz/scanner/RequestNetwork;Lcom/dz/scanner/RequestNetwork$RequestListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/RequestNetworkController$3;->this$0:Lcom/dz/scanner/RequestNetworkController;

    iput-object p2, p0, Lcom/dz/scanner/RequestNetworkController$3;->val$requestNetwork:Lcom/dz/scanner/RequestNetwork;

    iput-object p3, p0, Lcom/dz/scanner/RequestNetworkController$3;->val$requestListener:Lcom/dz/scanner/RequestNetwork$RequestListener;

    iput-object p4, p0, Lcom/dz/scanner/RequestNetworkController$3;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    iget-object v0, p0, Lcom/dz/scanner/RequestNetworkController$3;->val$requestNetwork:Lcom/dz/scanner/RequestNetwork;

    invoke-virtual {v0}, Lcom/dz/scanner/RequestNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/dz/scanner/RequestNetworkController$3$1;

    iget-object v2, p0, Lcom/dz/scanner/RequestNetworkController$3;->val$requestListener:Lcom/dz/scanner/RequestNetwork$RequestListener;

    iget-object v3, p0, Lcom/dz/scanner/RequestNetworkController$3;->val$tag:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, p2}, Lcom/dz/scanner/RequestNetworkController$3$1;-><init>(Lcom/dz/scanner/RequestNetworkController$3;Lcom/dz/scanner/RequestNetwork$RequestListener;Ljava/lang/String;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/dz/scanner/RequestNetworkController$3;->val$requestNetwork:Lcom/dz/scanner/RequestNetwork;

    invoke-virtual {v0}, Lcom/dz/scanner/RequestNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/dz/scanner/RequestNetworkController$3$2;

    iget-object v3, p0, Lcom/dz/scanner/RequestNetworkController$3;->val$requestListener:Lcom/dz/scanner/RequestNetwork$RequestListener;

    iget-object v4, p0, Lcom/dz/scanner/RequestNetworkController$3;->val$tag:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/dz/scanner/RequestNetworkController$3$2;-><init>(Lcom/dz/scanner/RequestNetworkController$3;Lokhttp3/Response;Lcom/dz/scanner/RequestNetwork$RequestListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
