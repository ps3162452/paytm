.class Lcom/dz/scanner/PayActivity$3;
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

    iput-object p1, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetcheck_status(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v1}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetsta(Lcom/dz/scanner/PayActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/dz/scanner/RequestNetwork;->setParams(Ljava/util/HashMap;I)V

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetcheck_status(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork;

    move-result-object v0

    const-string v1, "GET"

    const-string v2, "https://techbhai.online/gautam/check.php?order_id="

    iget-object v3, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

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

    const/16 v4, 0x77

    aput-byte v4, v3, v5

    const-string v4, "6bfa0a"

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v4}, Lcom/dz/scanner/PayActivity;->-$$Nest$fget_check_status_request_listener(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork$RequestListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dz/scanner/RequestNetwork;->startRequestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dz/scanner/RequestNetwork$RequestListener;)V

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

    iget-object v1, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/dz/scanner/PayActivity$3$1;

    invoke-direct {v2, p0}, Lcom/dz/scanner/PayActivity$3$1;-><init>(Lcom/dz/scanner/PayActivity$3;)V

    invoke-virtual {v2}, Lcom/dz/scanner/PayActivity$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fputsta(Lcom/dz/scanner/PayActivity;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetsta(Lcom/dz/scanner/PayActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetsta(Lcom/dz/scanner/PayActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetStatus(Lcom/dz/scanner/PayActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Status"

    const-string v2, "Done"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-virtual {v0}, Lcom/dz/scanner/PayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Payment Successfully Enjoy "

    invoke-static {v0, v1}, Lcom/dz/scanner/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgeti(Lcom/dz/scanner/PayActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-virtual {v1}, Lcom/dz/scanner/PayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/YetuuActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgeti(Lcom/dz/scanner/PayActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/PayActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-virtual {v0}, Lcom/dz/scanner/PayActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetcheck_status(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v1}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetsta(Lcom/dz/scanner/PayActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/dz/scanner/RequestNetwork;->setParams(Ljava/util/HashMap;I)V

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity;->-$$Nest$fgetcheck_status(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork;

    move-result-object v0

    const-string v1, "GET"

    const-string v2, "https://techbhai.online/gautam/check.php?order_id="

    iget-object v3, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

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

    const-string v4, "0f1f44"

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dz/scanner/PayActivity$3;->this$0:Lcom/dz/scanner/PayActivity;

    invoke-static {v4}, Lcom/dz/scanner/PayActivity;->-$$Nest$fget_check_status_request_listener(Lcom/dz/scanner/PayActivity;)Lcom/dz/scanner/RequestNetwork$RequestListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dz/scanner/RequestNetwork;->startRequestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dz/scanner/RequestNetwork$RequestListener;)V

    goto :goto_0
.end method
