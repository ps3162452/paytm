.class Lcom/dz/scanner/WebsActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/WebsActivity;->initializeLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/WebsActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/WebsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/WebsActivity$7;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dz/scanner/WebsActivity$7;)Lcom/dz/scanner/WebsActivity;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$7;->this$0:Lcom/dz/scanner/WebsActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "8.8.8.8"

    const/16 v3, 0x35

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$7;->this$0:Lcom/dz/scanner/WebsActivity;

    new-instance v1, Lcom/dz/scanner/WebsActivity$7$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/WebsActivity$7$1;-><init>(Lcom/dz/scanner/WebsActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/dz/scanner/WebsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
