.class Lcom/dz/scanner/PayActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dz/scanner/RequestNetwork$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/PayActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/PayActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dz/scanner/PayActivity$2;)Lcom/dz/scanner/PayActivity;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    return-object v0
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "payment_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "payment_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "orderId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "orderId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    new-instance v3, Lcom/dz/scanner/PayActivity$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/dz/scanner/PayActivity$2$1;-><init>(Lcom/dz/scanner/PayActivity$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/dz/scanner/PayActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetcheck_status(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v1}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetsta(Lcom/dz/scanner/PayActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/dz/scanner/RequestNetwork;->setParams(Ljava/util/HashMap;I)V

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetcheck_status(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork;

    move-result-object v0

    const-string v1, "GET"

    const-string v2, "https://techbhai.online/gautam/check.php?order_id="

    iget-object v3, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v3}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgettextview1(Lcom/dz/scanner/PayActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/16 v4, 0x71

    aput-byte v4, v3, v5

    const-string v4, "040c2c"

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v4}, Lcom/dz/scanner/PayActivity;->-$$Nest$fget_check_status_request_listener(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork$RequestListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dz/scanner/RequestNetwork;->startRequestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dz/scanner/RequestNetwork$RequestListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    new-instance v1, Lcom/dz/scanner/PayActivity$2$2;

    invoke-direct {v1, p0}, Lcom/dz/scanner/PayActivity$2$2;-><init>(Lcom/dz/scanner/PayActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/dz/scanner/PayActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    new-instance v2, Lcom/dz/scanner/PayActivity$2$4;

    invoke-direct {v2, p0, v0}, Lcom/dz/scanner/PayActivity$2$4;-><init>(Lcom/dz/scanner/PayActivity$2;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/dz/scanner/PayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/dz/scanner/PayActivity$2;->this$0:Lcom/dz/scanner/PayActivity;

    new-instance v1, Lcom/dz/scanner/PayActivity$2$3;

    invoke-direct {v1, p0}, Lcom/dz/scanner/PayActivity$2$3;-><init>(Lcom/dz/scanner/PayActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/dz/scanner/PayActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
