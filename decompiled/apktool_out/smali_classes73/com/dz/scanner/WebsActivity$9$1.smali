.class Lcom/dz/scanner/WebsActivity$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/WebsActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/dz/scanner/WebsActivity$9;


# direct methods
.method constructor <init>(Lcom/dz/scanner/WebsActivity$9;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v1}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetnumbe(Lcom/dz/scanner/WebsActivity;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fputnumbe(Lcom/dz/scanner/WebsActivity;D)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetnumbe(Lcom/dz/scanner/WebsActivity;)D

    move-result-wide v2

    add-double/2addr v2, v6

    invoke-static {v0, v2, v3}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fputnumbe(Lcom/dz/scanner/WebsActivity;D)V

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetnumbe(Lcom/dz/scanner/WebsActivity;)D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetimageview10(Lcom/dz/scanner/WebsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f070130

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetnumbe(Lcom/dz/scanner/WebsActivity;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetimageview10(Lcom/dz/scanner/WebsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f070131

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetnumbe(Lcom/dz/scanner/WebsActivity;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetimageview10(Lcom/dz/scanner/WebsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f070132

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetnumbe(Lcom/dz/scanner/WebsActivity;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetimageview10(Lcom/dz/scanner/WebsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f070133

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetnumbe(Lcom/dz/scanner/WebsActivity;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetimageview10(Lcom/dz/scanner/WebsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fgetnumbe(Lcom/dz/scanner/WebsActivity;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/dz/scanner/WebsActivity$9$1;->this$1:Lcom/dz/scanner/WebsActivity$9;

    invoke-static {v0}, Lcom/dz/scanner/WebsActivity$9;->access$0(Lcom/dz/scanner/WebsActivity$9;)Lcom/dz/scanner/WebsActivity;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/dz/scanner/WebsActivity;->-$$Nest$fputnumbe(Lcom/dz/scanner/WebsActivity;D)V

    :cond_5
    return-void
.end method
