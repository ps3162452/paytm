.class final Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/CodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SurfaceCallback"
.end annotation


# instance fields
.field final this$0:Lcom/budiyev/android/codescanner/CodeScanner;


# direct methods
.method private constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1202(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2100(Lcom/budiyev/android/codescanner/CodeScanner;)V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2000(Lcom/budiyev/android/codescanner/CodeScanner;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2000(Lcom/budiyev/android/codescanner/CodeScanner;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$SurfaceCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2100(Lcom/budiyev/android/codescanner/CodeScanner;)V

    return-void
.end method
