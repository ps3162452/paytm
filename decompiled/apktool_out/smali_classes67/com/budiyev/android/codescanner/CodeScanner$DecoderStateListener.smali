.class final Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/budiyev/android/codescanner/Decoder$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/CodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecoderStateListener"
.end annotation


# instance fields
.field final this$0:Lcom/budiyev/android/codescanner/CodeScanner;


# direct methods
.method private constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/budiyev/android/codescanner/Decoder$State;)Z
    .locals 3
    .param p1    # Lcom/budiyev/android/codescanner/Decoder$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    sget-object v1, Lcom/budiyev/android/codescanner/Decoder$State;->DECODED:Lcom/budiyev/android/codescanner/Decoder$State;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v1}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1700(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/ScanMode;

    move-result-object v1

    sget-object v2, Lcom/budiyev/android/codescanner/ScanMode;->PREVIEW:Lcom/budiyev/android/codescanner/ScanMode;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/budiyev/android/codescanner/ScanMode;->SINGLE:Lcom/budiyev/android/codescanner/ScanMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v1, v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1602(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z

    iget-object v1, p0, Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v1}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2300(Lcom/budiyev/android/codescanner/CodeScanner;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/budiyev/android/codescanner/CodeScanner$DecoderStateListener;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v2}, Lcom/budiyev/android/codescanner/CodeScanner;->access$2200(Lcom/budiyev/android/codescanner/CodeScanner;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
