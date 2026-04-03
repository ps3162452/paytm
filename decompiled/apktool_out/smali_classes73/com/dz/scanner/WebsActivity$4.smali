.class Lcom/dz/scanner/WebsActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/WebsActivity;->initialize(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-virtual {v1}, Lcom/dz/scanner/WebsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/BanksActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "amount"

    const-string v2, "75665"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "amouu"

    const-string v2, "7547655"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "upi"

    const-string v2, "liloteach@paytm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "Sani Meena"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nm"

    const-string v2, "SM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "date"

    const-string v2, "16:80 PM"

    const-string v3, ", "

    const-string v4, "2025"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pm"

    const-string v2, "73.03 PM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "utr"

    const-string v2, "83737373737373"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "spn"

    const-string v2, "747464"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$4;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/WebsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
