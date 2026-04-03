.class Lcom/dz/scanner/BanksActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/BanksActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/BanksActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/BanksActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    add-int/lit8 v1, p3, -0x1

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fputrealPos(Lcom/dz/scanner/BanksActivity;D)V

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgethistory(Lcom/dz/scanner/BanksActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-virtual {v1}, Lcom/dz/scanner/BanksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/HistoryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgethistory(Lcom/dz/scanner/BanksActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some1"

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v3}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetrealPos(Lcom/dz/scanner/BanksActivity;)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "line1"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgethistory(Lcom/dz/scanner/BanksActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some2"

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v3}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetrealPos(Lcom/dz/scanner/BanksActivity;)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "line2"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgethistory(Lcom/dz/scanner/BanksActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some3"

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v3}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetrealPos(Lcom/dz/scanner/BanksActivity;)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "line3"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgethistory(Lcom/dz/scanner/BanksActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some4"

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v3}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetrealPos(Lcom/dz/scanner/BanksActivity;)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "line4"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgethistory(Lcom/dz/scanner/BanksActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some5"

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v3}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetrealPos(Lcom/dz/scanner/BanksActivity;)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "line5"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgethistory(Lcom/dz/scanner/BanksActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some6"

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v3}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetrealPos(Lcom/dz/scanner/BanksActivity;)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "line6"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgethistory(Lcom/dz/scanner/BanksActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some7"

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v3}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetrealPos(Lcom/dz/scanner/BanksActivity;)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "line7"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgethistory(Lcom/dz/scanner/BanksActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "some8"

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetlistee(Lcom/dz/scanner/BanksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v3}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgetrealPos(Lcom/dz/scanner/BanksActivity;)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "line9"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/BanksActivity$2;->this$0:Lcom/dz/scanner/BanksActivity;

    invoke-static {v0}, Lcom/dz/scanner/BanksActivity;->-$$Nest$fgethistory(Lcom/dz/scanner/BanksActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/BanksActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
