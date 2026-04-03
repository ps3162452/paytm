.class Lcom/dz/scanner/FistActivity$11;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/FistActivity;->initializeLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/FistActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/FistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/FistActivity$11;->this$0:Lcom/dz/scanner/FistActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dz/scanner/FistActivity$11;)Lcom/dz/scanner/FistActivity;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$11;->this$0:Lcom/dz/scanner/FistActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dz/scanner/FistActivity$11;->this$0:Lcom/dz/scanner/FistActivity;

    new-instance v1, Lcom/dz/scanner/FistActivity$11$1;

    invoke-direct {v1, p0}, Lcom/dz/scanner/FistActivity$11$1;-><init>(Lcom/dz/scanner/FistActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/dz/scanner/FistActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
