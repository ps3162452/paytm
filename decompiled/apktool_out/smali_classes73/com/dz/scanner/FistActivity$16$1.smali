.class Lcom/dz/scanner/FistActivity$16$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/FistActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/dz/scanner/FistActivity$16;

.field private final val$_view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/dz/scanner/FistActivity$16;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/FistActivity$16$1;->this$1:Lcom/dz/scanner/FistActivity$16;

    iput-object p2, p0, Lcom/dz/scanner/FistActivity$16$1;->val$_view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$16$1;->this$1:Lcom/dz/scanner/FistActivity$16;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity$16;->access$0(Lcom/dz/scanner/FistActivity$16;)Lcom/dz/scanner/FistActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$16$1;->val$_view:Landroid/view/View;

    const-string v3, "scaleX"

    invoke-virtual/range {v1 .. v7}, Lcom/dz/scanner/FistActivity;->_Animator(Landroid/view/View;Ljava/lang/String;DD)V

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$16$1;->this$1:Lcom/dz/scanner/FistActivity$16;

    invoke-static {v0}, Lcom/dz/scanner/FistActivity$16;->access$0(Lcom/dz/scanner/FistActivity$16;)Lcom/dz/scanner/FistActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$16$1;->val$_view:Landroid/view/View;

    const-string v3, "scaleY"

    invoke-virtual/range {v1 .. v7}, Lcom/dz/scanner/FistActivity;->_Animator(Landroid/view/View;Ljava/lang/String;DD)V

    return-void
.end method
