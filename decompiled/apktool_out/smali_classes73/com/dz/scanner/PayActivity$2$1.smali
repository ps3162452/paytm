.class Lcom/dz/scanner/PayActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/PayActivity$2;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/dz/scanner/PayActivity$2;

.field private final val$orderId:Ljava/lang/String;

.field private final val$paymentUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dz/scanner/PayActivity$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/PayActivity$2$1;->this$1:Lcom/dz/scanner/PayActivity$2;

    iput-object p2, p0, Lcom/dz/scanner/PayActivity$2$1;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/dz/scanner/PayActivity$2$1;->val$paymentUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$2$1;->this$1:Lcom/dz/scanner/PayActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity$2;->access$0(Lcom/dz/scanner/PayActivity$2;)Lcom/dz/scanner/PayActivity;

    move-result-object v0

    const v1, 0x7f080274

    invoke-virtual {v0, v1}, Lcom/dz/scanner/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dz/scanner/PayActivity$2$1;->val$orderId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/dz/scanner/PayActivity$2$1;->this$1:Lcom/dz/scanner/PayActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity$2;->access$0(Lcom/dz/scanner/PayActivity$2;)Lcom/dz/scanner/PayActivity;

    move-result-object v0

    const v1, 0x7f0802b8

    invoke-virtual {v0, v1}, Lcom/dz/scanner/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/dz/scanner/PayActivity$2$1;->val$paymentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/dz/scanner/PayActivity$2$1;->this$1:Lcom/dz/scanner/PayActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity$2;->access$0(Lcom/dz/scanner/PayActivity$2;)Lcom/dz/scanner/PayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dz/scanner/PayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u2705 Payment page loading..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
