.class Lcom/dz/scanner/WebsActivity$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/WebsActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/dz/scanner/WebsActivity$7;


# direct methods
.method constructor <init>(Lcom/dz/scanner/WebsActivity$7;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/WebsActivity$7$1;->this$1:Lcom/dz/scanner/WebsActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$7$1;->this$1:Lcom/dz/scanner/WebsActivity$7;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$7;->access$0(Lcom/dz/scanner/WebsActivity$7;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dz/scanner/WebsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No Internet! Closing..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$7$1;->this$1:Lcom/dz/scanner/WebsActivity$7;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$7;->access$0(Lcom/dz/scanner/WebsActivity$7;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dz/scanner/WebsActivity;->finish()V

    return-void
.end method
