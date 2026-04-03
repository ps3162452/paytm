.class Lcom/dz/scanner/PayActivity$2$2;
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


# direct methods
.method constructor <init>(Lcom/dz/scanner/PayActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/PayActivity$2$2;->this$1:Lcom/dz/scanner/PayActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/PayActivity$2$2;->this$1:Lcom/dz/scanner/PayActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/PayActivity$2;->access$0(Lcom/dz/scanner/PayActivity$2;)Lcom/dz/scanner/PayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dz/scanner/PayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "payment_url not found"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
