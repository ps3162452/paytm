.class Lcom/dz/scanner/CheckupiActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/CheckupiActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/CheckupiActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/CheckupiActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/CheckupiActivity$10;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/CheckupiActivity$10;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-static {v0}, Lcom/dz/scanner/CheckupiActivity;->-$$Nest$fgetinte(Lcom/dz/scanner/CheckupiActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/CheckupiActivity$10;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-virtual {v1}, Lcom/dz/scanner/CheckupiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/BanksActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/CheckupiActivity$10;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-static {v0}, Lcom/dz/scanner/CheckupiActivity;->-$$Nest$fgetinte(Lcom/dz/scanner/CheckupiActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sani"

    iget-object v2, p0, Lcom/dz/scanner/CheckupiActivity$10;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-static {v2}, Lcom/dz/scanner/CheckupiActivity;->-$$Nest$fgetsanny(Lcom/dz/scanner/CheckupiActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/CheckupiActivity$10;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-static {v0}, Lcom/dz/scanner/CheckupiActivity;->-$$Nest$fgetinte(Lcom/dz/scanner/CheckupiActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/CheckupiActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
