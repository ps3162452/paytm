.class final Lcom/budiyev/android/codescanner/Decoder$DecoderThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecoderThread"
.end annotation


# instance fields
.field final this$0:Lcom/budiyev/android/codescanner/Decoder;


# direct methods
.method public constructor <init>(Lcom/budiyev/android/codescanner/Decoder;)V
    .locals 3

    iput-object p1, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "23da4c"

    const/16 v2, -0x7c5f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x51t
        0x40t
        0x49t
        0x5t
        0x51t
        0x0t
        0x5dt
        0x57t
        0x1t
        0x13t
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    sget-object v1, Lcom/budiyev/android/codescanner/Decoder$State;->IDLE:Lcom/budiyev/android/codescanner/Decoder$State;

    invoke-static {v0, v1}, Lcom/budiyev/android/codescanner/Decoder;->access$000(Lcom/budiyev/android/codescanner/Decoder;Lcom/budiyev/android/codescanner/Decoder$State;)Z

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/Decoder;->access$100(Lcom/budiyev/android/codescanner/Decoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/Decoder;->access$200(Lcom/budiyev/android/codescanner/Decoder;)Lcom/budiyev/android/codescanner/DecodeTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/budiyev/android/codescanner/Decoder;->access$202(Lcom/budiyev/android/codescanner/Decoder;Lcom/budiyev/android/codescanner/DecodeTask;)Lcom/budiyev/android/codescanner/DecodeTask;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    sget-object v2, Lcom/budiyev/android/codescanner/Decoder$State;->DECODING:Lcom/budiyev/android/codescanner/Decoder$State;

    invoke-static {v1, v2}, Lcom/budiyev/android/codescanner/Decoder;->access$000(Lcom/budiyev/android/codescanner/Decoder;Lcom/budiyev/android/codescanner/Decoder$State;)Z

    iget-object v1, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    invoke-static {v1}, Lcom/budiyev/android/codescanner/Decoder;->access$300(Lcom/budiyev/android/codescanner/Decoder;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/budiyev/android/codescanner/DecodeTask;->decode(Lcom/google/zxing/MultiFormatReader;)Lcom/google/zxing/Result;
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    invoke-static {v1, v4}, Lcom/budiyev/android/codescanner/Decoder;->access$202(Lcom/budiyev/android/codescanner/Decoder;Lcom/budiyev/android/codescanner/DecodeTask;)Lcom/budiyev/android/codescanner/DecodeTask;

    iget-object v1, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    sget-object v2, Lcom/budiyev/android/codescanner/Decoder$State;->DECODED:Lcom/budiyev/android/codescanner/Decoder$State;

    invoke-static {v1, v2}, Lcom/budiyev/android/codescanner/Decoder;->access$000(Lcom/budiyev/android/codescanner/Decoder;Lcom/budiyev/android/codescanner/Decoder$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    invoke-static {v1}, Lcom/budiyev/android/codescanner/Decoder;->access$400(Lcom/budiyev/android/codescanner/Decoder;)Lcom/budiyev/android/codescanner/DecodeCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/budiyev/android/codescanner/DecodeCallback;->onDecoded(Lcom/google/zxing/Result;)V

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    invoke-static {v0}, Lcom/budiyev/android/codescanner/Decoder;->access$100(Lcom/budiyev/android/codescanner/Decoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Lcom/google/zxing/ReaderException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v0, p0, Lcom/budiyev/android/codescanner/Decoder$DecoderThread;->this$0:Lcom/budiyev/android/codescanner/Decoder;

    sget-object v2, Lcom/budiyev/android/codescanner/Decoder$State;->STOPPED:Lcom/budiyev/android/codescanner/Decoder$State;

    invoke-static {v0, v2}, Lcom/budiyev/android/codescanner/Decoder;->access$000(Lcom/budiyev/android/codescanner/Decoder;Lcom/budiyev/android/codescanner/Decoder$State;)Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :catchall_1
    move-exception v0

    throw v0
.end method
