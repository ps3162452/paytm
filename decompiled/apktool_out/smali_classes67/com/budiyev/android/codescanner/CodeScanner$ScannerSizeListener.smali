.class final Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/budiyev/android/codescanner/CodeScannerView$SizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/CodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScannerSizeListener"
.end annotation


# instance fields
.field final this$0:Lcom/budiyev/android/codescanner/CodeScanner;


# direct methods
.method private constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;)V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$900(Lcom/budiyev/android/codescanner/CodeScanner;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1000(Lcom/budiyev/android/codescanner/CodeScanner;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1100(Lcom/budiyev/android/codescanner/CodeScanner;)I

    move-result v0

    if-eq p2, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1200(Lcom/budiyev/android/codescanner/CodeScanner;)Z

    move-result v0

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v2}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1300(Lcom/budiyev/android/codescanner/CodeScanner;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-virtual {v2}, Lcom/budiyev/android/codescanner/CodeScanner;->releaseResources()V

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1400(Lcom/budiyev/android/codescanner/CodeScanner;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$ScannerSizeListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0, p1, p2}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1500(Lcom/budiyev/android/codescanner/CodeScanner;II)V

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
