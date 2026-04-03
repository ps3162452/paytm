.class Lcom/dz/scanner/MainActivity$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/MainActivity$3;->onDecoded(Lcom/google/zxing/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/dz/scanner/MainActivity$3;

.field private final val$result:Lcom/google/zxing/Result;


# direct methods
.method constructor <init>(Lcom/dz/scanner/MainActivity$3;Lcom/google/zxing/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/MainActivity$3$1;->this$1:Lcom/dz/scanner/MainActivity$3;

    iput-object p2, p0, Lcom/dz/scanner/MainActivity$3$1;->val$result:Lcom/google/zxing/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/MainActivity$3$1;->this$1:Lcom/dz/scanner/MainActivity$3;

    invoke-static {v0}, Lcom/dz/scanner/MainActivity$3;->access$0(Lcom/dz/scanner/MainActivity$3;)Lcom/dz/scanner/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/MainActivity$3$1;->val$result:Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dz/scanner/MainActivity;->-$$Nest$fputResult(Lcom/dz/scanner/MainActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dz/scanner/MainActivity$3$1;->this$1:Lcom/dz/scanner/MainActivity$3;

    invoke-static {v0}, Lcom/dz/scanner/MainActivity$3;->access$0(Lcom/dz/scanner/MainActivity$3;)Lcom/dz/scanner/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/MainActivity;->-$$Nest$fgetintent(Lcom/dz/scanner/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Result"

    iget-object v2, p0, Lcom/dz/scanner/MainActivity$3$1;->this$1:Lcom/dz/scanner/MainActivity$3;

    invoke-static {v2}, Lcom/dz/scanner/MainActivity$3;->access$0(Lcom/dz/scanner/MainActivity$3;)Lcom/dz/scanner/MainActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/dz/scanner/MainActivity;->-$$Nest$fgetResult(Lcom/dz/scanner/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/MainActivity$3$1;->this$1:Lcom/dz/scanner/MainActivity$3;

    invoke-static {v0}, Lcom/dz/scanner/MainActivity$3;->access$0(Lcom/dz/scanner/MainActivity$3;)Lcom/dz/scanner/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/MainActivity;->-$$Nest$fgetintent(Lcom/dz/scanner/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/MainActivity$3$1;->this$1:Lcom/dz/scanner/MainActivity$3;

    invoke-static {v1}, Lcom/dz/scanner/MainActivity$3;->access$0(Lcom/dz/scanner/MainActivity$3;)Lcom/dz/scanner/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dz/scanner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/ResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/MainActivity$3$1;->this$1:Lcom/dz/scanner/MainActivity$3;

    invoke-static {v0}, Lcom/dz/scanner/MainActivity$3;->access$0(Lcom/dz/scanner/MainActivity$3;)Lcom/dz/scanner/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/MainActivity$3$1;->this$1:Lcom/dz/scanner/MainActivity$3;

    invoke-static {v1}, Lcom/dz/scanner/MainActivity$3;->access$0(Lcom/dz/scanner/MainActivity$3;)Lcom/dz/scanner/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/dz/scanner/MainActivity;->-$$Nest$fgetintent(Lcom/dz/scanner/MainActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
