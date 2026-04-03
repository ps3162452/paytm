.class Lcom/dz/scanner/StutussActivity$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/StutussActivity;->initializeLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/StutussActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/StutussActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/StutussActivity$3;->this$0:Lcom/dz/scanner/StutussActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dz/scanner/StutussActivity$3;)Lcom/dz/scanner/StutussActivity;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$3;->this$0:Lcom/dz/scanner/StutussActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dz/scanner/StutussActivity$3;->this$0:Lcom/dz/scanner/StutussActivity;

    new-instance v1, Lcom/dz/scanner/StutussActivity$3$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/StutussActivity$3$1;-><init>(Lcom/dz/scanner/StutussActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/dz/scanner/StutussActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
