.class Lcom/dz/scanner/ProfileActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/ProfileActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/ProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/ProfileActivity$2;->this$0:Lcom/dz/scanner/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity$2;->this$0:Lcom/dz/scanner/ProfileActivity;

    invoke-static {v0}, Lcom/dz/scanner/ProfileActivity;->-$$Nest$fgetupi(Lcom/dz/scanner/ProfileActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/ProfileActivity$2;->this$0:Lcom/dz/scanner/ProfileActivity;

    invoke-virtual {v1}, Lcom/dz/scanner/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/HistoryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity$2;->this$0:Lcom/dz/scanner/ProfileActivity;

    invoke-static {v0}, Lcom/dz/scanner/ProfileActivity;->-$$Nest$fgetdata(Lcom/dz/scanner/ProfileActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nc"

    iget-object v2, p0, Lcom/dz/scanner/ProfileActivity$2;->this$0:Lcom/dz/scanner/ProfileActivity;

    invoke-static {v2}, Lcom/dz/scanner/ProfileActivity;->-$$Nest$fgetedittext_full(Lcom/dz/scanner/ProfileActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity$2;->this$0:Lcom/dz/scanner/ProfileActivity;

    invoke-static {v0}, Lcom/dz/scanner/ProfileActivity;->-$$Nest$fgetdata(Lcom/dz/scanner/ProfileActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nc1"

    iget-object v2, p0, Lcom/dz/scanner/ProfileActivity$2;->this$0:Lcom/dz/scanner/ProfileActivity;

    invoke-static {v2}, Lcom/dz/scanner/ProfileActivity;->-$$Nest$fgetedittext4(Lcom/dz/scanner/ProfileActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity$2;->this$0:Lcom/dz/scanner/ProfileActivity;

    invoke-static {v0}, Lcom/dz/scanner/ProfileActivity;->-$$Nest$fgetdata(Lcom/dz/scanner/ProfileActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nc2"

    iget-object v2, p0, Lcom/dz/scanner/ProfileActivity$2;->this$0:Lcom/dz/scanner/ProfileActivity;

    invoke-static {v2}, Lcom/dz/scanner/ProfileActivity;->-$$Nest$fgetedittext_short(Lcom/dz/scanner/ProfileActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/dz/scanner/ProfileActivity$2;->this$0:Lcom/dz/scanner/ProfileActivity;

    invoke-static {v0}, Lcom/dz/scanner/ProfileActivity;->-$$Nest$fgetupi(Lcom/dz/scanner/ProfileActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
