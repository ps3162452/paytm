.class Lcom/dz/scanner/WebsActivity$2;
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

    iput-object p1, p0, Lcom/dz/scanner/WebsActivity$2;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$2;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetnest(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/WebsActivity$2;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-virtual {v1}, Lcom/dz/scanner/WebsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$2;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetnest(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/WebsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
