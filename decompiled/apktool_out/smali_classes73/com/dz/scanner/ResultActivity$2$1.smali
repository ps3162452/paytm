.class Lcom/dz/scanner/ResultActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/ResultActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/dz/scanner/ResultActivity$2;


# direct methods
.method constructor <init>(Lcom/dz/scanner/ResultActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetNext(Lcom/dz/scanner/ResultActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v1}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dz/scanner/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/IpiActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetNext(Lcom/dz/scanner/ResultActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "amo"

    iget-object v2, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v2}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetedittext1(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetNext(Lcom/dz/scanner/ResultActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "up"

    iget-object v2, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v2}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgettextview7(Lcom/dz/scanner/ResultActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetNext(Lcom/dz/scanner/ResultActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nam"

    iget-object v2, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v2}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgettextview8(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetNext(Lcom/dz/scanner/ResultActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nm"

    iget-object v2, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v2}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgettextview15(Lcom/dz/scanner/ResultActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetNext(Lcom/dz/scanner/ResultActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "spn"

    iget-object v2, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v2}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetedittext2(Lcom/dz/scanner/ResultActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/ResultActivity$2$1;->this$1:Lcom/dz/scanner/ResultActivity$2;

    invoke-static {v1}, Lcom/dz/scanner/ResultActivity$2;->access$0(Lcom/dz/scanner/ResultActivity$2;)Lcom/dz/scanner/ResultActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/dz/scanner/ResultActivity;->-$$Nest$fgetNext(Lcom/dz/scanner/ResultActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/ResultActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
