.class Lcom/dz/scanner/YetuuActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/YetuuActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/YetuuActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/YetuuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/YetuuActivity$9;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/dz/scanner/YetuuActivity$9;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-static {v0}, Lcom/dz/scanner/YetuuActivity;->-$$Nest$fgetnest(Lcom/dz/scanner/YetuuActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/YetuuActivity$9;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-static {v0}, Lcom/dz/scanner/YetuuActivity;->-$$Nest$fgetnest(Lcom/dz/scanner/YetuuActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "https://t.me/+ZliGAAJIsZlhNTll"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/YetuuActivity$9;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-static {v0}, Lcom/dz/scanner/YetuuActivity;->-$$Nest$fgetnest(Lcom/dz/scanner/YetuuActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/YetuuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
