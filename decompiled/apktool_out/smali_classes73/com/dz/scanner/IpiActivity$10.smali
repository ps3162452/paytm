.class Lcom/dz/scanner/IpiActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/IpiActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/IpiActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/IpiActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetinte(Lcom/dz/scanner/IpiActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-virtual {v1}, Lcom/dz/scanner/IpiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/StutussActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetinte(Lcom/dz/scanner/IpiActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "amount"

    iget-object v2, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v2}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgettextView77(Lcom/dz/scanner/IpiActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetinte(Lcom/dz/scanner/IpiActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "upi"

    iget-object v2, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v2}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgeteditText1(Lcom/dz/scanner/IpiActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetinte(Lcom/dz/scanner/IpiActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v2}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgettextView88(Lcom/dz/scanner/IpiActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetinte(Lcom/dz/scanner/IpiActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nm"

    iget-object v2, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v2}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgettextview24(Lcom/dz/scanner/IpiActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetinte(Lcom/dz/scanner/IpiActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "spn"

    iget-object v2, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v2}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetspn(Lcom/dz/scanner/IpiActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$10;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetinte(Lcom/dz/scanner/IpiActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/IpiActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
