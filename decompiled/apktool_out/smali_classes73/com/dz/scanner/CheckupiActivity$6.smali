.class Lcom/dz/scanner/CheckupiActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/CheckupiActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/CheckupiActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/CheckupiActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/CheckupiActivity$6;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f070099

    iget-object v0, p0, Lcom/dz/scanner/CheckupiActivity$6;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-static {v0}, Lcom/dz/scanner/CheckupiActivity;->-$$Nest$fgetline1(Lcom/dz/scanner/CheckupiActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/dz/scanner/CheckupiActivity$6;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-static {v0}, Lcom/dz/scanner/CheckupiActivity;->-$$Nest$fgetline2(Lcom/dz/scanner/CheckupiActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/dz/scanner/CheckupiActivity$6;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-static {v0}, Lcom/dz/scanner/CheckupiActivity;->-$$Nest$fgetline3(Lcom/dz/scanner/CheckupiActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/dz/scanner/CheckupiActivity$6;->this$0:Lcom/dz/scanner/CheckupiActivity;

    invoke-static {v0}, Lcom/dz/scanner/CheckupiActivity;->-$$Nest$fgetline4(Lcom/dz/scanner/CheckupiActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
