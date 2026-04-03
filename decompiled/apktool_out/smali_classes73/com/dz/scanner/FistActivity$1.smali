.class Lcom/dz/scanner/FistActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/FistActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/FistActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/FistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-virtual {v1}, Lcom/dz/scanner/FistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/BanksActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "amount"

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v2}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetedittext1(Lcom/dz/scanner/FistActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "amouu"

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v2}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetedittext1(Lcom/dz/scanner/FistActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "upi"

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v2}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgettextview77(Lcom/dz/scanner/FistActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v2}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgettextview88(Lcom/dz/scanner/FistActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nm"

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v2}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgettextview10(Lcom/dz/scanner/FistActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "date"

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v2}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgettextview16(Lcom/dz/scanner/FistActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    iget-object v4, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v4}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgettextview90(Lcom/dz/scanner/FistActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pm"

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v2}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgettextview16(Lcom/dz/scanner/FistActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "utr"

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v2}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetutr(Lcom/dz/scanner/FistActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "spn"

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v2}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetspn(Lcom/dz/scanner/FistActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$1;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity;->-$$Nest$fgetbank(Lcom/dz/scanner/FistActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/FistActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
