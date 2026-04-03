.class Lcom/dz/scanner/YetuuActivity$8;
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

    iput-object p1, p0, Lcom/dz/scanner/YetuuActivity$8;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f000000    # 0.5f

    const v8, 0x3f333333    # 0.7f

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/dz/scanner/YetuuActivity$8;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-static {v0}, Lcom/dz/scanner/YetuuActivity;->-$$Nest$fgetneww(Lcom/dz/scanner/YetuuActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/YetuuActivity$8;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-virtual {v1}, Lcom/dz/scanner/YetuuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dz/scanner/PayActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/YetuuActivity$8;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-static {v0}, Lcom/dz/scanner/YetuuActivity;->-$$Nest$fgetneww(Lcom/dz/scanner/YetuuActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am"

    const-string v2, "149"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dz/scanner/YetuuActivity$8;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-static {v0}, Lcom/dz/scanner/YetuuActivity;->-$$Nest$fgetneww(Lcom/dz/scanner/YetuuActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dz/scanner/YetuuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
