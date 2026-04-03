.class Lcom/dz/scanner/MainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/MainActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/MainActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/MainActivity$1;->this$0:Lcom/dz/scanner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/MainActivity$1;->this$0:Lcom/dz/scanner/MainActivity;

    invoke-static {v0}, Lcom/dz/scanner/MainActivity;->-$$Nest$fgetfile_picker(Lcom/dz/scanner/MainActivity;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lcom/dz/scanner/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
