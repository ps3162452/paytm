.class Lcom/dz/scanner/MainActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/budiyev/android/codescanner/DecodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/MainActivity;->initializeLogic()V
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

    iput-object p1, p0, Lcom/dz/scanner/MainActivity$3;->this$0:Lcom/dz/scanner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dz/scanner/MainActivity$3;)Lcom/dz/scanner/MainActivity;
    .locals 1

    iget-object v0, p0, Lcom/dz/scanner/MainActivity$3;->this$0:Lcom/dz/scanner/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onDecoded(Lcom/google/zxing/Result;)V
    .locals 2
    .param p1    # Lcom/google/zxing/Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/dz/scanner/MainActivity$3;->this$0:Lcom/dz/scanner/MainActivity;

    new-instance v1, Lcom/dz/scanner/MainActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcom/dz/scanner/MainActivity$3$1;-><init>(Lcom/dz/scanner/MainActivity$3;Lcom/google/zxing/Result;)V

    invoke-virtual {v0, v1}, Lcom/dz/scanner/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
