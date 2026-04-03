.class Lcom/dz/scanner/WebsActivity$3;
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

    iput-object p1, p0, Lcom/dz/scanner/WebsActivity$3;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$3;->this$0:Lcom/dz/scanner/WebsActivity;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetintent(Lcom/dz/scanner/WebsActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
