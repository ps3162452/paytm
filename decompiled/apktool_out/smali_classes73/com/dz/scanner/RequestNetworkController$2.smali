.class Lcom/dz/scanner/RequestNetworkController$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/RequestNetworkController;->getClient()Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/RequestNetworkController;


# direct methods
.method constructor <init>(Lcom/dz/scanner/RequestNetworkController;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/RequestNetworkController$2;->this$0:Lcom/dz/scanner/RequestNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
