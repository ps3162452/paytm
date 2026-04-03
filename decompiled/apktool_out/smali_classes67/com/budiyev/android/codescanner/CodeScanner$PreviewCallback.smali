.class final Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/CodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreviewCallback"
.end annotation


# instance fields
.field final this$0:Lcom/budiyev/android/codescanner/CodeScanner;


# direct methods
.method private constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1300(Lcom/budiyev/android/codescanner/CodeScanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1600(Lcom/budiyev/android/codescanner/CodeScanner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1700(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/ScanMode;

    move-result-object v0

    sget-object v1, Lcom/budiyev/android/codescanner/ScanMode;->PREVIEW:Lcom/budiyev/android/codescanner/ScanMode;

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1800(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/DecoderWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getDecoder()Lcom/budiyev/android/codescanner/Decoder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/budiyev/android/codescanner/Decoder;->getState()Lcom/budiyev/android/codescanner/Decoder$State;

    move-result-object v0

    sget-object v2, Lcom/budiyev/android/codescanner/Decoder$State;->IDLE:Lcom/budiyev/android/codescanner/Decoder$State;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$PreviewCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/CodeScanner;->access$1900(Lcom/budiyev/android/codescanner/CodeScanner;)Lcom/budiyev/android/codescanner/CodeScannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/CodeScannerView;->getFrameRect()Lcom/budiyev/android/codescanner/Rect;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/budiyev/android/codescanner/Rect;->getWidth()I

    move-result v0

    if-lt v0, v3, :cond_0

    invoke-virtual {v5}, Lcom/budiyev/android/codescanner/Rect;->getHeight()I

    move-result v0

    if-lt v0, v3, :cond_0

    new-instance v0, Lcom/budiyev/android/codescanner/DecodeTask;

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getImageSize()Lcom/budiyev/android/codescanner/Point;

    move-result-object v2

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getPreviewSize()Lcom/budiyev/android/codescanner/Point;

    move-result-object v3

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getViewSize()Lcom/budiyev/android/codescanner/Point;

    move-result-object v4

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getDisplayOrientation()I

    move-result v6

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->shouldReverseHorizontal()Z

    move-result v7

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/budiyev/android/codescanner/DecodeTask;-><init>([BLcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Rect;IZ)V

    invoke-virtual {v8, v0}, Lcom/budiyev/android/codescanner/Decoder;->decode(Lcom/budiyev/android/codescanner/DecodeTask;)V

    goto :goto_0
.end method
