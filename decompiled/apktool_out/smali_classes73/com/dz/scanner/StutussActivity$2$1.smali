.class Lcom/dz/scanner/StutussActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/StutussActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/dz/scanner/StutussActivity$2;


# direct methods
.method constructor <init>(Lcom/dz/scanner/StutussActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/StutussActivity$2$1;->this$1:Lcom/dz/scanner/StutussActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$2$1;->this$1:Lcom/dz/scanner/StutussActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity$2;->access$0(Lcom/dz/scanner/StutussActivity$2;)Lcom/dz/scanner/StutussActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity;->-$$Nest$fgettextview1(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$2$1;->this$1:Lcom/dz/scanner/StutussActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity$2;->access$0(Lcom/dz/scanner/StutussActivity$2;)Lcom/dz/scanner/StutussActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity;->-$$Nest$fgettextview3(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$2$1;->this$1:Lcom/dz/scanner/StutussActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity$2;->access$0(Lcom/dz/scanner/StutussActivity$2;)Lcom/dz/scanner/StutussActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity;->-$$Nest$fgetupi(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$2$1;->this$1:Lcom/dz/scanner/StutussActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity$2;->access$0(Lcom/dz/scanner/StutussActivity$2;)Lcom/dz/scanner/StutussActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity;->-$$Nest$fgetusername(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$2$1;->this$1:Lcom/dz/scanner/StutussActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity$2;->access$0(Lcom/dz/scanner/StutussActivity$2;)Lcom/dz/scanner/StutussActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity;->-$$Nest$fgetnm(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$2$1;->this$1:Lcom/dz/scanner/StutussActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity$2;->access$0(Lcom/dz/scanner/StutussActivity$2;)Lcom/dz/scanner/StutussActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity;->-$$Nest$fgetsimpleamount(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$2$1;->this$1:Lcom/dz/scanner/StutussActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity$2;->access$0(Lcom/dz/scanner/StutussActivity$2;)Lcom/dz/scanner/StutussActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity;->-$$Nest$fgetpese(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$2$1;->this$1:Lcom/dz/scanner/StutussActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity$2;->access$0(Lcom/dz/scanner/StutussActivity$2;)Lcom/dz/scanner/StutussActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity;->-$$Nest$fgetlinear5(Lcom/dz/scanner/StutussActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$2$1;->this$1:Lcom/dz/scanner/StutussActivity$2;

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity$2;->access$0(Lcom/dz/scanner/StutussActivity$2;)Lcom/dz/scanner/StutussActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/StutussActivity;->-$$Nest$fgettextview2(Lcom/dz/scanner/StutussActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
