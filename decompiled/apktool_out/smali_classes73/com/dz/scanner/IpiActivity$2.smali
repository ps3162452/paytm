.class Lcom/dz/scanner/IpiActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/IpiActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/IpiActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/IpiActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/IpiActivity$2;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f070099

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$2;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetline1(Lcom/dz/scanner/IpiActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$2;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetline2(Lcom/dz/scanner/IpiActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$2;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetline3(Lcom/dz/scanner/IpiActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/dz/scanner/IpiActivity$2;->this$0:Lcom/dz/scanner/IpiActivity;

    invoke-static {v0}, Lcom/dz/scanner/IpiActivity;->-$$Nest$fgetline4(Lcom/dz/scanner/IpiActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
