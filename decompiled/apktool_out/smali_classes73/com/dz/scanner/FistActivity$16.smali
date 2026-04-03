.class Lcom/dz/scanner/FistActivity$16;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/FistActivity;->_FadeOut(Landroid/view/View;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/FistActivity;

.field private final val$_view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/dz/scanner/FistActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/FistActivity$16;->this$0:Lcom/dz/scanner/FistActivity;

    iput-object p2, p0, Lcom/dz/scanner/FistActivity$16;->val$_view:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dz/scanner/FistActivity$16;)Lcom/dz/scanner/FistActivity;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$16;->this$0:Lcom/dz/scanner/FistActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$16;->this$0:Lcom/dz/scanner/FistActivity;

    new-instance v1, Lcom/dz/scanner/FistActivity$16$1;

    iget-object v2, p0, Lcom/dz/scanner/FistActivity$16;->val$_view:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/dz/scanner/FistActivity$16$1;-><init>(Lcom/dz/scanner/FistActivity$16;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/dz/scanner/FistActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
